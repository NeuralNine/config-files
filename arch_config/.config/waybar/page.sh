#!/usr/bin/env bash

page=$1

icons=( "" "" "" "" "" "" "" "" "" "" "󰝚" )

to_page() {
  (( $1 <=  3 )) && echo 1 && return
  (( $1 <=  6 )) && echo 2 && return
  (( $1 <=  9 )) && echo 3 && return
  (( $1 <= 12 )) && echo 4 && return
  (( $1 <= 15 )) && echo 5 && return
  (( $1 <= 18 )) && echo 6 && return
  (( $1 <= 21 )) && echo 7 && return
  (( $1 <= 24 )) && echo 8 && return
  (( $1 <= 27 )) && echo 9 && return
  echo 10
}

is_occupied() {
  while read -r ws_id; do
    (( $(to_page "$ws_id") == page )) && return 0
  done < <(hyprctl clients | awk '/workspace:/ {print $2}')
  return 1
}

emit() {
  local classes=()

  if (( $1 == page )); then
    classes+=(active)
  else
    is_occupied && classes+=(occupied)
  fi

  if ((${#classes[@]})); then
    printf '{"text":"%s","class":"%s"}\n' \
           "${icons[page]}" "$(IFS=' '; echo "${classes[*]}")"
  else
    printf '{"text":"%s"}\n' "${icons[page]}"
  fi
}

active_ws=$(hyprctl activeworkspace | awk '/^ID /{print $2}')
current_page=$(to_page "${active_ws:-1}")
emit "$current_page"
current_occ=$(is_occupied && echo 1 || echo 0)

socket="$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock"
socat -U - UNIX-CONNECT:"$socket" | while read -r line; do
  [[ $line =~ ^(workspace|openwindow|closewindow|movewindow) ]] || continue

  if [[ $line == workspace* ]]; then
    ws=${line#*>>}; ws=${ws%% *}
    new_page=$(to_page "$ws")
  else
    new_page=$current_page
  fi
  new_occ=$(is_occupied && echo 1 || echo 0)

  if (( new_page != current_page || new_occ != current_occ )); then
    emit "$new_page"
    current_page=$new_page
    current_occ=$new_occ
  fi
done

