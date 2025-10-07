#!/usr/bin/env python3

import i3ipc

# Define mappings for workspace numbers
# WORKSPACE_NAMES = {
#     1: "main",
#     2: "code",
#     3: "work",
#     4: "git",
#     5: "communication",
#     6: "video",
#     7: "university",
#     8: "fun",
#     9: "misc"
# }

WORKSPACE_NAMES = {
    1: " main",              # Internet globe
    2: " code",              # Laptop
    3: " work",              # Briefcase
    4: " git",               # Git branch
    5: " msg",     # Message bubble
    6: " video",             # Video cam
    7: " uni",       # Graduation cap
    8: " fun",               # Controller
    9: " misc"              # Menu-like icon
}

def get_grouped_workspaces(i3):
    workspaces = i3.get_workspaces()
    # Initialize all groups (1-9) as inactive and not focused
    grouped = {num: {'active': False, 'focused': False} for num in range(1, 10)}

    for ws in workspaces:
        group = ws.num
        if group in grouped:
            grouped[group]['active'] = True
            if ws.focused:
                grouped[group]['focused'] = True

    output = []
    for group in sorted(grouped.keys()):
        # Get the mapped name or fallback to the number
        name = WORKSPACE_NAMES.get(group, str(group))
        if grouped[group]['focused']:
            # Focused group: highlight it
            output.append(f"%{{u#98C379}}%{{+u}}{name}%{{-u}}")
        elif grouped[group]['active']:
            # Active group: display normally
            output.append(name)
        else:
            # Inactive group: display it in a dim color
            output.append(f"%{{F#555555}}{name}%{{F-}}")
    # Add padding before the first element
    return "  " + " ".join(output)

def on_workspace_event(i3, _):
    print(get_grouped_workspaces(i3), flush=True)

if __name__ == "__main__":
    i3 = i3ipc.Connection()
    print(get_grouped_workspaces(i3), flush=True)
    # Listen to relevant events for instant updates
    i3.on("workspace::focus", on_workspace_event)
    i3.on("workspace::init", on_workspace_event)
    i3.on("workspace::empty", on_workspace_event)
    i3.on("workspace::move", on_workspace_event)
    i3.main()

