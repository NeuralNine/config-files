# Source: https://leahneukirchen.org/dotfiles/bin/dmoji

# made with: curl -sL https://raw.githubusercontent.com/milesj/emojibase/master/packages/data/en/data.raw.json  | jq -r '.[] | .emoji + "  " + (.label | ascii_upcase) + "  " + (.tags | .? | map("#" + .) | join(" "))'

EMOJI=$(sed '1,/^exit/d' $0 | dmenu -i -l 10 -fn 'Noto Emoji Regular' | grep -Po '^[^ ]*')
if [ "$EMOJI" ]; then
    printf %s "$EMOJI" | xclip -selection clipboard
    sleep 0.1
    xdotool key --clearmodifiers ctrl+shift+v
    exit $?
fi
exit 1
😀  Grinning Face  #face #grin
😃  Grinning Face With Big Eyes  #face #mouth #open #smile
😄  Grinning Face With Smiling Eyes  #eye #face #mouth #open #smile
😁  Beaming Face With Smiling Eyes  #eye #face #grin #smile
😆  Grinning Squinting Face  #face #laugh #mouth #satisfied #smile
😅  Grinning Face With Sweat  #cold #face #open #smile #sweat
🤣  Rolling On The Floor Laughing  #face #floor #laugh #rofl #rolling #rotfl
😂  Face With Tears Of Joy  #face #joy #laugh #tear
🙂  Slightly Smiling Face  #face #smile
🙃  Upside-Down Face  #face #upside-down
🫠  Melting Face #disappear #dissolve #liquid #melt
😉  Winking Face  #face #wink
😊  Smiling Face With Smiling Eyes  #blush #eye #face #smile
😇  Smiling Face With Halo  #angel #face #fantasy #halo #innocent
🥰  Smiling Face With Hearts  #adore #crush #hearts #in love
😍  Smiling Face With Heart-Eyes  #eye #face #love #smile
🤩  Star-Struck  #eyes #face #grinning #star
😘  Face Blowing A Kiss  #face #kiss
😗  Kissing Face  #face #kiss
☺️  Smiling Face  #face #outlined #relaxed #smile
😚  Kissing Face With Closed Eyes  #closed #eye #face #kiss
😙  Kissing Face With Smiling Eyes  #eye #face #kiss #smile
🥲  Smiling Face With Tear  #grateful #proud #relieved #smiling #tear #touched
😋  Face Savoring Food  #delicious #face #savouring #smile #yum
😛  Face With Tongue  #face #tongue
😜  Winking Face With Tongue  #eye #face #joke #tongue #wink
🤪  Zany Face  #eye #goofy #large #small
😝  Squinting Face With Tongue  #eye #face #horrible #taste #tongue
🤑  Money-Mouth Face  #face #money #mouth
🤗  Smiling Face With Open Hands  #face #hug #hugging #open hands #smiling face
🤭  Face With Hand Over Mouth  #whoops
🫢  Face With Open Eyes And Hand Over Mouth  #amazement #awe #disbelief #embarrass #scared #surprise
🫣  Face With Peeking Eye  #captivated #peep #stare
🤫  Shushing Face  #quiet #shush
🤔  Thinking Face  #face #thinking
🫡  Saluting Face  #ok #salute #sunny #troops #yes
🤐  Zipper-Mouth Face  #face #mouth #zipper
🤨  Face With Raised Eyebrow  #distrust #skeptic
😐️  Neutral Face  #deadpan #face #meh #neutral
😑  Expressionless Face  #expressionless #face #inexpressive #meh #unexpressive
😶  Face Without Mouth  #face #mouth #quiet #silent
🫥  Dotted Line Face  #depressed #disappear #hide #introvert #invisible
😶‍🌫️  Face In Clouds  #absentminded #face in the fog #head in clouds
😏  Smirking Face  #face #smirk
😒  Unamused Face  #face #unamused #unhappy
🙄  Face With Rolling Eyes  #eyeroll #eyes #face #rolling
😬  Grimacing Face  #face #grimace
😮‍💨  Face Exhaling  #exhale #gasp #groan #relief #whisper #whistle
🤥  Lying Face  #face #lie #pinocchio
😌  Relieved Face  #face #relieved
😔  Pensive Face  #dejected #face #pensive
😪  Sleepy Face  #face #good night #sleep
🤤  Drooling Face  #drooling #face
😴  Sleeping Face  #face #good night #sleep #zzz
😷  Face With Medical Mask  #cold #doctor #face #mask #sick
🤒  Face With Thermometer  #face #ill #sick #thermometer
🤕  Face With Head-Bandage  #bandage #face #hurt #injury
🤢  Nauseated Face  #face #nauseated #vomit
🤮  Face Vomiting  #puke #sick #vomit
🤧  Sneezing Face  #face #gesundheit #sneeze
🥵  Hot Face  #feverish #heat stroke #hot #red-faced #sweating
🥶  Cold Face  #blue-faced #cold #freezing #frostbite #icicles
🥴  Woozy Face  #dizzy #intoxicated #tipsy #uneven eyes #wavy mouth
😵  Face With Crossed-Out Eyes  #crossed-out eyes #dead #face #knocked out
😵‍💫  Face With Spiral Eyes  #dizzy #hypnotized #spiral #trouble #whoa
🤯  Exploding Head  #mind blown #shocked
🤠  Cowboy Hat Face  #cowboy #cowgirl #face #hat
🥳  Partying Face  #celebration #hat #horn #party
🥸  Disguised Face  #disguise #face #glasses #incognito #nose
😎  Smiling Face With Sunglasses  #bright #cool #face #sun #sunglasses
🤓  Nerd Face  #face #geek #nerd
🧐  Face With Monocle  #face #monocle #stuffy
😕  Confused Face  #confused #face #meh
🫤  Face With Diagonal Mouth  #disappointed #meh #skeptical #unsure
😟  Worried Face  #face #worried
🙁  Slightly Frowning Face  #face #frown
☹️  Frowning Face  #face #frown
😮  Face With Open Mouth  #face #mouth #open #sympathy
😯  Hushed Face  #face #hushed #stunned #surprised
😲  Astonished Face  #astonished #face #shocked #totally
😳  Flushed Face  #dazed #face #flushed
🥺  Pleading Face  #begging #mercy #puppy eyes
🥹  Face Holding Back Tears  #angry #cry #proud #resist #sad
😦  Frowning Face With Open Mouth  #face #frown #mouth #open
😧  Anguished Face  #anguished #face
😨  Fearful Face  #face #fear #fearful #scared
😰  Anxious Face With Sweat  #blue #cold #face #rushed #sweat
😥  Sad But Relieved Face  #disappointed #face #relieved #whew
😢  Crying Face  #cry #face #sad #tear
😭  Loudly Crying Face  #cry #face #sad #sob #tear
😱  Face Screaming In Fear  #face #fear #munch #scared #scream
😖  Confounded Face  #confounded #face
😣  Persevering Face  #face #persevere
😞  Disappointed Face  #disappointed #face
😓  Downcast Face With Sweat  #cold #face #sweat
😩  Weary Face  #face #tired #weary
😫  Tired Face  #face #tired
🥱  Yawning Face  #bored #tired #yawn
😤  Face With Steam From Nose  #face #triumph #won
😡  Enraged Face  #angry #enraged #face #mad #pouting #rage #red
😠  Angry Face  #anger #angry #face #mad
🤬  Face With Symbols On Mouth  #swearing
😈  Smiling Face With Horns  #face #fairy tale #fantasy #horns #smile
👿  Angry Face With Horns  #demon #devil #face #fantasy #imp
💀  Skull  #death #face #fairy tale #monster
☠️  Skull And Crossbones  #crossbones #death #face #monster #skull
💩  Pile Of Poo  #dung #face #monster #poo #poop
🤡  Clown Face  #clown #face
👹  Ogre  #creature #face #fairy tale #fantasy #monster
👺  Goblin  #creature #face #fairy tale #fantasy #monster
👻  Ghost  #creature #face #fairy tale #fantasy #monster
👽️  Alien  #creature #extraterrestrial #face #fantasy #ufo
👾  Alien Monster  #alien #creature #extraterrestrial #face #monster #ufo
🤖  Robot  #face #monster
😺  Grinning Cat  #cat #face #grinning #mouth #open #smile
😸  Grinning Cat With Smiling Eyes  #cat #eye #face #grin #smile
😹  Cat With Tears Of Joy  #cat #face #joy #tear
😻  Smiling Cat With Heart-Eyes  #cat #eye #face #heart #love #smile
😼  Cat With Wry Smile  #cat #face #ironic #smile #wry
😽  Kissing Cat  #cat #eye #face #kiss
🙀  Weary Cat  #cat #face #oh #surprised #weary
😿  Crying Cat  #cat #cry #face #sad #tear
😾  Pouting Cat  #cat #face #pouting
🙈  See-No-Evil Monkey  #evil #face #forbidden #monkey #see
🙉  Hear-No-Evil Monkey  #evil #face #forbidden #hear #monkey
🙊  Speak-No-Evil Monkey  #evil #face #forbidden #monkey #speak
💋  Kiss Mark  #kiss #lips
💌  Love Letter  #heart #letter #love #mail
💘  Heart With Arrow  #arrow #cupid
💝  Heart With Ribbon  #ribbon #valentine
💖  Sparkling Heart  #excited #sparkle
💗  Growing Heart  #excited #growing #nervous #pulse
💓  Beating Heart  #beating #heartbeat #pulsating
💞  Revolving Hearts  #revolving
💕  Two Hearts  #love
💟  Heart Decoration  #heart
❣️  Heart Exclamation  #exclamation #mark #punctuation
💔  Broken Heart  #break #broken
❤️‍🔥  Heart On Fire  #burn #heart #love #lust #sacred heart
❤️‍🩹  Mending Heart  #healthier #improving #mending #recovering #recuperating #well
❤️  Red Heart  #heart
🧡  Orange Heart  #orange
💛  Yellow Heart  #yellow
💚  Green Heart  #green
💙  Blue Heart  #blue
💜  Purple Heart  #purple
🤎  Brown Heart  #brown #heart
🖤  Black Heart  #black #evil #wicked
🤍  White Heart  #heart #white
💯  Hundred Points  #100 #full #hundred #score
💢  Anger Symbol  #angry #comic #mad
💥  Collision  #boom #comic
💫  Dizzy  #comic #star
💦  Sweat Droplets  #comic #splashing #sweat
💨  Dashing Away  #comic #dash #running
🕳️  Hole  #hole
💣️  Bomb  #comic
💬  Speech Balloon  #balloon #bubble #comic #dialog #speech
👁️‍🗨️  Eye In Speech Bubble  #balloon #bubble #eye #speech #witness
🗨️  Left Speech Bubble  #balloon #bubble #dialog #speech
🗯️  Right Anger Bubble  #angry #balloon #bubble #mad
💭  Thought Balloon  #balloon #bubble #comic #thought
💤  Zzz  #comic #good night #sleep #zzz
👋  Waving Hand  #hand #wave #waving
🤚  Raised Back Of Hand  #backhand #raised
🖐️  Hand With Fingers Splayed  #finger #hand #splayed
✋  Raised Hand  #hand #high 5 #high five
🖖  Vulcan Salute  #finger #hand #spock #vulcan
🫱  Rightwards Hand  #hand #right #rightward
🫲  Leftwards Hand  #hand #left #leftward
🫳  Palm Down Hand  #dismiss #drop #shoo
🫴  Palm Up Hand  #beckon #catch #come #offer
👌  Ok Hand  #hand #ok
🤌  Pinched Fingers  #fingers #hand gesture #interrogation #pinched #sarcastic
🤏  Pinching Hand  #small amount
✌️  Victory Hand  #hand #v #victory
🤞  Crossed Fingers  #cross #finger #hand #luck
🫰  Hand With Index Finger And Thumb Crossed  #expensive #heart #love #money #snap
🤟  Love-You Gesture  #hand #ily
🤘  Sign Of The Horns  #finger #hand #horns #rock-on
🤙  Call Me Hand  #call #hand #hang loose #shaka
👈️  Backhand Index Pointing Left  #backhand #finger #hand #index #point
👉️  Backhand Index Pointing Right  #backhand #finger #hand #index #point
👆️  Backhand Index Pointing Up  #backhand #finger #hand #point #up
🖕  Middle Finger  #finger #hand
👇️  Backhand Index Pointing Down  #backhand #down #finger #hand #point
☝️  Index Pointing Up  #finger #hand #index #point #up
🫵  Index Pointing At The Viewer  #point #you
👍️  Thumbs Up  #+1 #hand #thumb #up
👎️  Thumbs Down  #-1 #down #hand #thumb
✊  Raised Fist  #clenched #fist #hand #punch
👊  Oncoming Fist  #clenched #fist #hand #punch
🤛  Left-Facing Fist  #fist #leftwards
🤜  Right-Facing Fist  #fist #rightwards
👏  Clapping Hands  #clap #hand
🙌  Raising Hands  #celebration #gesture #hand #hooray #raised
🫶  Heart Hands  #love
👐  Open Hands  #hand #open
🤲  Palms Up Together  #prayer
🤝  Handshake  #agreement #hand #meeting #shake
🙏  Folded Hands  #ask #hand #high 5 #high five #please #pray #thanks
✍️  Writing Hand  #hand #write
💅  Nail Polish  #care #cosmetics #manicure #nail #polish
🤳  Selfie  #camera #phone
💪  Flexed Biceps  #biceps #comic #flex #muscle
🦾  Mechanical Arm  #accessibility #prosthetic
🦿  Mechanical Leg  #accessibility #prosthetic
🦵  Leg  #kick #limb
🦶  Foot  #kick #stomp
👂️  Ear  #body
🦻  Ear With Hearing Aid  #accessibility #hard of hearing
👃  Nose  #body
🧠  Brain  #intelligent
🫀  Anatomical Heart  #anatomical #cardiology #heart #organ #pulse
🫁  Lungs  #breath #exhalation #inhalation #organ #respiration
🦷  Tooth  #dentist
🦴  Bone  #skeleton
👀  Eyes  #eye #face
👁️  Eye  #body
👅  Tongue  #body
👄  Mouth  #lips
🫦  Biting Lip  #anxious #fear #flirting #nervous #uncomfortable #worried
👶  Baby  #young
🧒  Child  #gender-neutral #unspecified gender #young
👦  Boy  #young
👧  Girl  #virgo #young #zodiac
🧑  Person  #adult #gender-neutral #unspecified gender
👱  Person: Blond Hair  #blond #blond-haired person #hair
👨  Man  #adult
🧔  Person: Beard  #beard #person
🧔‍♂️  Man: Beard  #beard #man
🧔‍♀️  Woman: Beard  #beard #woman
👨‍🦰  Man: Red Hair  #adult #man #red hair
👨‍🦱  Man: Curly Hair  #adult #curly hair #man
👨‍🦳  Man: White Hair  #adult #man #white hair
👨‍🦲  Man: Bald  #adult #bald #man
👩  Woman  #adult
👩‍🦰  Woman: Red Hair  #adult #red hair #woman
🧑‍🦰  Person: Red Hair  #adult #gender-neutral #person #red hair #unspecified gender
👩‍🦱  Woman: Curly Hair  #adult #curly hair #woman
🧑‍🦱  Person: Curly Hair  #adult #curly hair #gender-neutral #person #unspecified gender
👩‍🦳  Woman: White Hair  #adult #white hair #woman
🧑‍🦳  Person: White Hair  #adult #gender-neutral #person #unspecified gender #white hair
👩‍🦲  Woman: Bald  #adult #bald #woman
🧑‍🦲  Person: Bald  #adult #bald #gender-neutral #person #unspecified gender
👱‍♀️  Woman: Blond Hair  #blond-haired woman #blonde #hair #woman
👱‍♂️  Man: Blond Hair  #blond #blond-haired man #hair #man
🧓  Older Person  #adult #gender-neutral #old #unspecified gender
👴  Old Man  #adult #man #old
👵  Old Woman  #adult #old #woman
🙍  Person Frowning  #frown #gesture
🙍‍♂️  Man Frowning  #frowning #gesture #man
🙍‍♀️  Woman Frowning  #frowning #gesture #woman
🙎  Person Pouting  #gesture #pouting
🙎‍♂️  Man Pouting  #gesture #man #pouting
🙎‍♀️  Woman Pouting  #gesture #pouting #woman
🙅  Person Gesturing No  #forbidden #gesture #hand #person gesturing no #prohibited
🙅‍♂️  Man Gesturing No  #forbidden #gesture #hand #man #man gesturing no #prohibited
🙅‍♀️  Woman Gesturing No  #forbidden #gesture #hand #prohibited #woman #woman gesturing no
🙆  Person Gesturing Ok  #gesture #hand #ok #person gesturing ok
🙆‍♂️  Man Gesturing Ok  #gesture #hand #man #man gesturing ok #ok
🙆‍♀️  Woman Gesturing Ok  #gesture #hand #ok #woman #woman gesturing ok
💁  Person Tipping Hand  #hand #help #information #sassy #tipping
💁‍♂️  Man Tipping Hand  #man #sassy #tipping hand
💁‍♀️  Woman Tipping Hand  #sassy #tipping hand #woman
🙋  Person Raising Hand  #gesture #hand #happy #raised
🙋‍♂️  Man Raising Hand  #gesture #man #raising hand
🙋‍♀️  Woman Raising Hand  #gesture #raising hand #woman
🧏  Deaf Person  #accessibility #deaf #ear #hear
🧏‍♂️  Deaf Man  #deaf #man
🧏‍♀️  Deaf Woman  #deaf #woman
🙇  Person Bowing  #apology #bow #gesture #sorry
🙇‍♂️  Man Bowing  #apology #bowing #favor #gesture #man #sorry
🙇‍♀️  Woman Bowing  #apology #bowing #favor #gesture #sorry #woman
🤦  Person Facepalming  #disbelief #exasperation #face #palm
🤦‍♂️  Man Facepalming  #disbelief #exasperation #facepalm #man
🤦‍♀️  Woman Facepalming  #disbelief #exasperation #facepalm #woman
🤷  Person Shrugging  #doubt #ignorance #indifference #shrug
🤷‍♂️  Man Shrugging  #doubt #ignorance #indifference #man #shrug
🤷‍♀️  Woman Shrugging  #doubt #ignorance #indifference #shrug #woman
🧑‍⚕️  Health Worker  #doctor #healthcare #nurse #therapist
👨‍⚕️  Man Health Worker  #doctor #healthcare #man #nurse #therapist
👩‍⚕️  Woman Health Worker  #doctor #healthcare #nurse #therapist #woman
🧑‍🎓  Student  #graduate
👨‍🎓  Man Student  #graduate #man #student
👩‍🎓  Woman Student  #graduate #student #woman
🧑‍🏫  Teacher  #instructor #professor
👨‍🏫  Man Teacher  #instructor #man #professor #teacher
👩‍🏫  Woman Teacher  #instructor #professor #teacher #woman
🧑‍⚖️  Judge  #justice #scales
👨‍⚖️  Man Judge  #judge #justice #man #scales
👩‍⚖️  Woman Judge  #judge #justice #scales #woman
🧑‍🌾  Farmer  #gardener #rancher
👨‍🌾  Man Farmer  #farmer #gardener #man #rancher
👩‍🌾  Woman Farmer  #farmer #gardener #rancher #woman
🧑‍🍳  Cook  #chef
👨‍🍳  Man Cook  #chef #cook #man
👩‍🍳  Woman Cook  #chef #cook #woman
🧑‍🔧  Mechanic  #electrician #plumber #tradesperson
👨‍🔧  Man Mechanic  #electrician #man #mechanic #plumber #tradesperson
👩‍🔧  Woman Mechanic  #electrician #mechanic #plumber #tradesperson #woman
🧑‍🏭  Factory Worker  #assembly #factory #industrial #worker
👨‍🏭  Man Factory Worker  #assembly #factory #industrial #man #worker
👩‍🏭  Woman Factory Worker  #assembly #factory #industrial #woman #worker
🧑‍💼  Office Worker  #architect #business #manager #white-collar
👨‍💼  Man Office Worker  #architect #business #man #manager #white-collar
👩‍💼  Woman Office Worker  #architect #business #manager #white-collar #woman
🧑‍🔬  Scientist  #biologist #chemist #engineer #physicist
👨‍🔬  Man Scientist  #biologist #chemist #engineer #man #physicist #scientist
👩‍🔬  Woman Scientist  #biologist #chemist #engineer #physicist #scientist #woman
🧑‍💻  Technologist  #coder #developer #inventor #software
👨‍💻  Man Technologist  #coder #developer #inventor #man #software #technologist
👩‍💻  Woman Technologist  #coder #developer #inventor #software #technologist #woman
🧑‍🎤  Singer  #actor #entertainer #rock #star
👨‍🎤  Man Singer  #actor #entertainer #man #rock #singer #star
👩‍🎤  Woman Singer  #actor #entertainer #rock #singer #star #woman
🧑‍🎨  Artist  #palette
👨‍🎨  Man Artist  #artist #man #palette
👩‍🎨  Woman Artist  #artist #palette #woman
🧑‍✈️  Pilot  #plane
👨‍✈️  Man Pilot  #man #pilot #plane
👩‍✈️  Woman Pilot  #pilot #plane #woman
🧑‍🚀  Astronaut  #rocket
👨‍🚀  Man Astronaut  #astronaut #man #rocket
👩‍🚀  Woman Astronaut  #astronaut #rocket #woman
🧑‍🚒  Firefighter  #firetruck
👨‍🚒  Man Firefighter  #firefighter #firetruck #man
👩‍🚒  Woman Firefighter  #firefighter #firetruck #woman
👮  Police Officer  #cop #officer #police
👮‍♂️  Man Police Officer  #cop #man #officer #police
👮‍♀️  Woman Police Officer  #cop #officer #police #woman
🕵️  Detective  #sleuth #spy
🕵️‍♂️  Man Detective  #detective #man #sleuth #spy
🕵️‍♀️  Woman Detective  #detective #sleuth #spy #woman
💂  Guard  #guard
💂‍♂️  Man Guard  #guard #man
💂‍♀️  Woman Guard  #guard #woman
🥷  Ninja  #fighter #hidden #stealth
👷  Construction Worker  #construction #hat #worker
👷‍♂️  Man Construction Worker  #construction #man #worker
👷‍♀️  Woman Construction Worker  #construction #woman #worker
🫅  Person With Crown  #monarch #noble #regal #royalty
🤴  Prince  #prince
👸  Princess  #fairy tale #fantasy
👳  Person Wearing Turban  #turban
👳‍♂️  Man Wearing Turban  #man #turban
👳‍♀️  Woman Wearing Turban  #turban #woman
👲  Person With Skullcap  #cap #gua pi mao #hat #person #skullcap
🧕  Woman With Headscarf  #headscarf #hijab #mantilla #tichel
🤵  Person In Tuxedo  #groom #person #tuxedo
🤵‍♂️  Man In Tuxedo  #man #tuxedo
🤵‍♀️  Woman In Tuxedo  #tuxedo #woman
👰  Person With Veil  #bride #person #veil #wedding
👰‍♂️  Man With Veil  #man #veil
👰‍♀️  Woman With Veil  #veil #woman
🤰  Pregnant Woman  #pregnant #woman
🫃  Pregnant Man  #belly #bloated #full #pregnant
🫄  Pregnant Person  #belly #bloated #full #pregnant
🤱  Breast-Feeding  #baby #breast #nursing
👩‍🍼  Woman Feeding Baby  #baby #feeding #nursing #woman
👨‍🍼  Man Feeding Baby  #baby #feeding #man #nursing
🧑‍🍼  Person Feeding Baby  #baby #feeding #nursing #person
👼  Baby Angel  #angel #baby #face #fairy tale #fantasy
🎅  Santa Claus  #celebration #christmas #claus #father #santa #santa claus
🤶  Mrs. Claus  #celebration #christmas #claus #mother #mrs. #mrs. claus
🧑‍🎄  Mx Claus  #claus, christmas
🦸  Superhero  #good #hero #heroine #superpower
🦸‍♂️  Man Superhero  #good #hero #man #superpower
🦸‍♀️  Woman Superhero  #good #hero #heroine #superpower #woman
🦹  Supervillain  #criminal #evil #superpower #villain
🦹‍♂️  Man Supervillain  #criminal #evil #man #superpower #villain
🦹‍♀️  Woman Supervillain  #criminal #evil #superpower #villain #woman
🧙  Mage  #sorcerer #sorceress #witch #wizard
🧙‍♂️  Man Mage  #sorcerer #wizard
🧙‍♀️  Woman Mage  #sorceress #witch
🧚  Fairy  #oberon #puck #titania
🧚‍♂️  Man Fairy  #oberon #puck
🧚‍♀️  Woman Fairy  #titania
🧛  Vampire  #dracula #undead
🧛‍♂️  Man Vampire  #dracula #undead
🧛‍♀️  Woman Vampire  #undead
🧜  Merperson  #mermaid #merman #merwoman
🧜‍♂️  Merman  #triton
🧜‍♀️  Mermaid  #merwoman
🧝  Elf  #magical
🧝‍♂️  Man Elf  #magical
🧝‍♀️  Woman Elf  #magical
🧞  Genie  #djinn
🧞‍♂️  Man Genie  #djinn
🧞‍♀️  Woman Genie  #djinn
🧟  Zombie  #undead #walking dead
🧟‍♂️  Man Zombie  #undead #walking dead
🧟‍♀️  Woman Zombie  #undead #walking dead
🧌  Troll  #fairy tale #fantasy #monster
💆  Person Getting Massage  #face #massage #salon
💆‍♂️  Man Getting Massage  #face #man #massage
💆‍♀️  Woman Getting Massage  #face #massage #woman
💇  Person Getting Haircut  #barber #beauty #haircut #parlor
💇‍♂️  Man Getting Haircut  #haircut #man
💇‍♀️  Woman Getting Haircut  #haircut #woman
🚶  Person Walking  #hike #walk #walking
🚶‍♂️  Man Walking  #hike #man #walk
🚶‍♀️  Woman Walking  #hike #walk #woman
🧍  Person Standing  #stand #standing
🧍‍♂️  Man Standing  #man #standing
🧍‍♀️  Woman Standing  #standing #woman
🧎  Person Kneeling  #kneel #kneeling
🧎‍♂️  Man Kneeling  #kneeling #man
🧎‍♀️  Woman Kneeling  #kneeling #woman
🧑‍🦯  Person With White Cane  #accessibility #blind
👨‍🦯  Man With White Cane  #accessibility #blind #man
👩‍🦯  Woman With White Cane  #accessibility #blind #woman
🧑‍🦼  Person In Motorized Wheelchair  #accessibility #wheelchair
👨‍🦼  Man In Motorized Wheelchair  #accessibility #man #wheelchair
👩‍🦼  Woman In Motorized Wheelchair  #accessibility #wheelchair #woman
🧑‍🦽  Person In Manual Wheelchair  #accessibility #wheelchair
👨‍🦽  Man In Manual Wheelchair  #accessibility #man #wheelchair
👩‍🦽  Woman In Manual Wheelchair  #accessibility #wheelchair #woman
🏃  Person Running  #marathon #running
🏃‍♂️  Man Running  #man #marathon #racing #running
🏃‍♀️  Woman Running  #marathon #racing #running #woman
💃  Woman Dancing  #dance #dancing #woman
🕺  Man Dancing  #dance #dancing #man
🕴️  Person In Suit Levitating  #business #person #suit
👯  People With Bunny Ears  #bunny ear #dancer #partying
👯‍♂️  Men With Bunny Ears  #bunny ear #dancer #men #partying
👯‍♀️  Women With Bunny Ears  #bunny ear #dancer #partying #women
🧖  Person In Steamy Room  #sauna #steam room
🧖‍♂️  Man In Steamy Room  #sauna #steam room
🧖‍♀️  Woman In Steamy Room  #sauna #steam room
🧗  Person Climbing  #climber
🧗‍♂️  Man Climbing  #climber
🧗‍♀️  Woman Climbing  #climber
🤺  Person Fencing  #fencer #fencing #sword
🏇  Horse Racing  #horse #jockey #racehorse #racing
⛷️  Skier  #ski #snow
🏂️  Snowboarder  #ski #snow #snowboard
🏌️  Person Golfing  #ball #golf
🏌️‍♂️  Man Golfing  #golf #man
🏌️‍♀️  Woman Golfing  #golf #woman
🏄️  Person Surfing  #surfing
🏄‍♂️  Man Surfing  #man #surfing
🏄‍♀️  Woman Surfing  #surfing #woman
🚣  Person Rowing Boat  #boat #rowboat
🚣‍♂️  Man Rowing Boat  #boat #man #rowboat
🚣‍♀️  Woman Rowing Boat  #boat #rowboat #woman
🏊️  Person Swimming  #swim
🏊‍♂️  Man Swimming  #man #swim
🏊‍♀️  Woman Swimming  #swim #woman
⛹️  Person Bouncing Ball  #ball
⛹️‍♂️  Man Bouncing Ball  #ball #man
⛹️‍♀️  Woman Bouncing Ball  #ball #woman
🏋️  Person Lifting Weights  #lifter #weight
🏋️‍♂️  Man Lifting Weights  #man #weight lifter
🏋️‍♀️  Woman Lifting Weights  #weight lifter #woman
🚴  Person Biking  #bicycle #biking #cyclist
🚴‍♂️  Man Biking  #bicycle #biking #cyclist #man
🚴‍♀️  Woman Biking  #bicycle #biking #cyclist #woman
🚵  Person Mountain Biking  #bicycle #bicyclist #bike #cyclist #mountain
🚵‍♂️  Man Mountain Biking  #bicycle #bike #cyclist #man #mountain
🚵‍♀️  Woman Mountain Biking  #bicycle #bike #biking #cyclist #mountain #woman
🤸  Person Cartwheeling  #cartwheel #gymnastics
🤸‍♂️  Man Cartwheeling  #cartwheel #gymnastics #man
🤸‍♀️  Woman Cartwheeling  #cartwheel #gymnastics #woman
🤼  People Wrestling  #wrestle #wrestler #bjj
🤼‍♂️  Men Wrestling  #men #wrestle #bjj
🤼‍♀️  Women Wrestling  #women #wrestle
🤽  Person Playing Water Polo  #polo #water
🤽‍♂️  Man Playing Water Polo  #man #water polo
🤽‍♀️  Woman Playing Water Polo  #water polo #woman
🤾  Person Playing Handball  #ball #handball
🤾‍♂️  Man Playing Handball  #handball #man
🤾‍♀️  Woman Playing Handball  #handball #woman
🤹  Person Juggling  #balance #juggle #multitask #skill
🤹‍♂️  Man Juggling  #juggling #man #multitask
🤹‍♀️  Woman Juggling  #juggling #multitask #woman
🧘  Person In Lotus Position  #meditation #yoga
🧘‍♂️  Man In Lotus Position  #meditation #yoga
🧘‍♀️  Woman In Lotus Position  #meditation #yoga
🛀  Person Taking Bath  #bath #bathtub
🛌  Person In Bed  #good night #hotel #sleep
🧑‍🤝‍🧑  People Holding Hands  #couple #hand #hold #holding hands #person
👭  Women Holding Hands  #couple #hand #holding hands #women
👫  Woman And Man Holding Hands  #couple #hand #hold #holding hands #man #woman
👬  Men Holding Hands  #couple #gemini #holding hands #man #men #twins #zodiac
💏  Kiss  #couple
👩‍❤️‍💋‍👨  Kiss: Woman, Man  #couple #kiss #man #woman
👨‍❤️‍💋‍👨  Kiss: Man, Man  #couple #kiss #man
👩‍❤️‍💋‍👩  Kiss: Woman, Woman  #couple #kiss #woman
💑  Couple With Heart  #couple #love
👩‍❤️‍👨  Couple With Heart: Woman, Man  #couple #couple with heart #love #man #woman
👨‍❤️‍👨  Couple With Heart: Man, Man  #couple #couple with heart #love #man
👩‍❤️‍👩  Couple With Heart: Woman, Woman  #couple #couple with heart #love #woman
👪️  Family  #family
👨‍👩‍👦  Family: Man, Woman, Boy  #boy #family #man #woman
👨‍👩‍👧  Family: Man, Woman, Girl  #family #girl #man #woman
👨‍👩‍👧‍👦  Family: Man, Woman, Girl, Boy  #boy #family #girl #man #woman
👨‍👩‍👦‍👦  Family: Man, Woman, Boy, Boy  #boy #family #man #woman
👨‍👩‍👧‍👧  Family: Man, Woman, Girl, Girl  #family #girl #man #woman
👨‍👨‍👦  Family: Man, Man, Boy  #boy #family #man
👨‍👨‍👧  Family: Man, Man, Girl  #family #girl #man
👨‍👨‍👧‍👦  Family: Man, Man, Girl, Boy  #boy #family #girl #man
👨‍👨‍👦‍👦  Family: Man, Man, Boy, Boy  #boy #family #man
👨‍👨‍👧‍👧  Family: Man, Man, Girl, Girl  #family #girl #man
👩‍👩‍👦  Family: Woman, Woman, Boy  #boy #family #woman
👩‍👩‍👧  Family: Woman, Woman, Girl  #family #girl #woman
👩‍👩‍👧‍👦  Family: Woman, Woman, Girl, Boy  #boy #family #girl #woman
👩‍👩‍👦‍👦  Family: Woman, Woman, Boy, Boy  #boy #family #woman
👩‍👩‍👧‍👧  Family: Woman, Woman, Girl, Girl  #family #girl #woman
👨‍👦  Family: Man, Boy  #boy #family #man
👨‍👦‍👦  Family: Man, Boy, Boy  #boy #family #man
👨‍👧  Family: Man, Girl  #family #girl #man
👨‍👧‍👦  Family: Man, Girl, Boy  #boy #family #girl #man
👨‍👧‍👧  Family: Man, Girl, Girl  #family #girl #man
👩‍👦  Family: Woman, Boy  #boy #family #woman
👩‍👦‍👦  Family: Woman, Boy, Boy  #boy #family #woman
👩‍👧  Family: Woman, Girl  #family #girl #woman
👩‍👧‍👦  Family: Woman, Girl, Boy  #boy #family #girl #woman
👩‍👧‍👧  Family: Woman, Girl, Girl  #family #girl #woman
🗣️  Speaking Head  #face #head #silhouette #speak #speaking
👤  Bust In Silhouette  #bust #silhouette
👥  Busts In Silhouette  #bust #silhouette
🫂  People Hugging  #goodbye #hello #hug #thanks
👣  Footprints  #clothing #footprint #print
🏻  Light Skin Tone  #skin tone #type 1–2
🏼  Medium-Light Skin Tone  #skin tone #type 3
🏽  Medium Skin Tone  #skin tone #type 4
🏾  Medium-Dark Skin Tone  #skin tone #type 5
🏿  Dark Skin Tone  #skin tone #type 6
🦰  Red Hair  #ginger #redhead
🦱  Curly Hair  #afro #curly #ringlets
🦳  White Hair  #gray #hair #old #white
🦲  Bald  #chemotherapy #hairless #no hair #shaven
🐵  Monkey Face  #face #monkey
🐒  Monkey  #monkey
🦍  Gorilla  #gorilla
🦧  Orangutan  #ape
🐶  Dog Face  #dog #face #pet
🐕️  Dog  #pet
🦮  Guide Dog  #accessibility #blind #guide
🐕‍🦺  Service Dog  #accessibility #assistance #dog #service
🐩  Poodle  #dog
🐺  Wolf  #face
🦊  Fox  #face
🦝  Raccoon  #curious #sly
🐱  Cat Face  #cat #face #pet
🐈️  Cat  #pet
🐈‍⬛  Black Cat  #black #cat #unlucky
🦁  Lion  #face #leo #zodiac
🐯  Tiger Face  #face #tiger
🐅  Tiger  #tiger
🐆  Leopard  #leopard
🐴  Horse Face  #face #horse
🐎  Horse  #equestrian #racehorse #racing
🦄  Unicorn  #face
🦓  Zebra  #stripe
🦌  Deer  #deer
🦬  Bison  #buffalo #herd #wisent
🐮  Cow Face  #cow #face
🐂  Ox  #bull #taurus #zodiac
🐃  Water Buffalo  #buffalo #water
🐄  Cow  #cow
🐷  Pig Face  #face #pig
🐖  Pig  #sow
🐗  Boar  #pig
🐽  Pig Nose  #face #nose #pig
🐏  Ram  #aries #male #sheep #zodiac
🐑  Ewe  #female #sheep
🐐  Goat  #capricorn #zodiac
🐪  Camel  #dromedary #hump
🐫  Two-Hump Camel  #bactrian #camel #hump
🦙  Llama  #alpaca #guanaco #vicuña #wool
🦒  Giraffe  #spots
🐘  Elephant  #elephant
🦣  Mammoth  #extinction #large #tusk #woolly
🦏  Rhinoceros  #rhinoceros
🦛  Hippopotamus  #hippo
🐭  Mouse Face  #face #mouse
🐁  Mouse  #mouse
🐀  Rat  #rat
🐹  Hamster  #face #pet
🐰  Rabbit Face  #bunny #face #pet #rabbit
🐇  Rabbit  #bunny #pet
🐿️  Chipmunk  #squirrel
🦫  Beaver  #dam
🦔  Hedgehog  #spiny
🦇  Bat  #vampire
🐻  Bear  #face
🐻‍❄️  Polar Bear  #arctic #bear #white
🐨  Koala  #face #marsupial
🐼  Panda  #face
🦥  Sloth  #lazy #slow
🦦  Otter  #fishing #playful
🦨  Skunk  #stink
🦘  Kangaroo  #australia #joey #jump #marsupial
🦡  Badger  #honey badger #pester
🐾  Paw Prints  #feet #paw #print
🦃  Turkey  #bird
🐔  Chicken  #bird
🐓  Rooster  #bird
🐣  Hatching Chick  #baby #bird #chick #hatching
🐤  Baby Chick  #baby #bird #chick
🐥  Front-Facing Baby Chick  #baby #bird #chick
🐦️  Bird  #bird
🐧  Penguin  #bird
🕊️  Dove  #bird #fly #peace
🦅  Eagle  #bird
🦆  Duck  #bird
🦢  Swan  #bird #cygnet #ugly duckling
🦉  Owl  #bird #wise
🦤  Dodo  #extinction #large #mauritius
🪶  Feather  #bird #flight #light #plumage
🦩  Flamingo  #flamboyant #tropical
🦚  Peacock  #bird #ostentatious #peahen #proud
🦜  Parrot  #bird #pirate #talk
🐸  Frog  #face
🐊  Crocodile  #crocodile
🐢  Turtle  #terrapin #tortoise
🦎  Lizard  #reptile
🐍  Snake  #bearer #ophiuchus #serpent #zodiac
🐲  Dragon Face  #dragon #face #fairy tale
🐉  Dragon  #fairy tale
🦕  Sauropod  #brachiosaurus #brontosaurus #diplodocus
🦖  T-Rex  #t-rex #tyrannosaurus rex
🐳  Spouting Whale  #face #spouting #whale
🐋  Whale  #whale
🐬  Dolphin  #flipper
🦭  Seal  #sea lion
🐟️  Fish  #pisces #zodiac
🐠  Tropical Fish  #fish #tropical
🐡  Blowfish  #fish
🦈  Shark  #fish
🐙  Octopus  #octopus
🐚  Spiral Shell  #shell #spiral
🪸  Coral  #ocean #reef
🐌  Snail  #snail
🦋  Butterfly  #insect #pretty
🐛  Bug  #insect
🐜  Ant  #insect
🐝  Honeybee  #bee #insect
🪲  Beetle  #bug #insect
🐞  Lady Beetle  #beetle #insect #ladybird #ladybug
🦗  Cricket  #grasshopper
🪳  Cockroach  #insect #pest #roach
🕷️  Spider  #insect
🕸️  Spider Web  #spider #web
🦂  Scorpion  #scorpio #zodiac
🦟  Mosquito  #disease #fever #malaria #pest #virus
🪰  Fly  #disease #maggot #pest #rotting
🪱  Worm  #annelid #earthworm #parasite
🦠  Microbe  #amoeba #bacteria #virus
💐  Bouquet  #flower
🌸  Cherry Blossom  #blossom #cherry #flower
💮  White Flower  #flower
🪷  Lotus  #buddhism #flower #hinduism #india #purity #vietnam
🏵️  Rosette  #plant
🌹  Rose  #flower
🥀  Wilted Flower  #flower #wilted
🌺  Hibiscus  #flower
🌻  Sunflower  #flower #sun
🌼  Blossom  #flower
🌷  Tulip  #flower
🌱  Seedling  #young
🪴  Potted Plant  #boring #grow #house #nurturing #plant #useless
🌲  Evergreen Tree  #tree
🌳  Deciduous Tree  #deciduous #shedding #tree
🌴  Palm Tree  #palm #tree
🌵  Cactus  #plant
🌾  Sheaf Of Rice  #ear #grain #rice
🌿  Herb  #leaf
☘️  Shamrock  #plant
🍀  Four Leaf Clover  #4 #clover #four #four-leaf clover #leaf
🍁  Maple Leaf  #falling #leaf #maple
🍂  Fallen Leaf  #falling #leaf
🍃  Leaf Fluttering In Wind  #blow #flutter #leaf #wind
🪹  Empty Nest  #nesting
🪺  Nest With Eggs  #nesting
🍇  Grapes  #fruit #grape
🍈  Melon  #fruit
🍉  Watermelon  #fruit
🍊  Tangerine  #fruit #orange
🍋  Lemon  #citrus #fruit
🍌  Banana  #fruit
🍍  Pineapple  #fruit
🥭  Mango  #fruit #tropical
🍎  Red Apple  #apple #fruit #red
🍏  Green Apple  #apple #fruit #green
🍐  Pear  #fruit
🍑  Peach  #fruit
🍒  Cherries  #berries #cherry #fruit #red
🍓  Strawberry  #berry #fruit
🫐  Blueberries  #berry #bilberry #blue #blueberry
🥝  Kiwi Fruit  #food #fruit #kiwi
🍅  Tomato  #fruit #vegetable
🫒  Olive  #food
🥥  Coconut  #palm #piña colada
🥑  Avocado  #food #fruit
🍆  Eggplant  #aubergine #vegetable
🥔  Potato  #food #vegetable
🥕  Carrot  #food #vegetable
🌽  Ear Of Corn  #corn #ear #maize #maze
🌶️  Hot Pepper  #hot #pepper
🫑  Bell Pepper  #capsicum #pepper #vegetable
🥒  Cucumber  #food #pickle #vegetable
🥬  Leafy Green  #bok choy #cabbage #kale #lettuce
🥦  Broccoli  #wild cabbage
🧄  Garlic  #flavoring
🧅  Onion  #flavoring
🍄  Mushroom  #toadstool
🥜  Peanuts  #food #nut #peanut #vegetable
🫘  Beans  #food #kidney #legume
🌰  Chestnut  #plant
🍞  Bread  #loaf
🥐  Croissant  #bread #breakfast #food #french #roll
🥖  Baguette Bread  #baguette #bread #food #french
🫓  Flatbread  #arepa #lavash #naan #pita
🥨  Pretzel  #twisted
🥯  Bagel  #bakery #breakfast #schmear
🥞  Pancakes  #breakfast #crêpe #food #hotcake #pancake
🧇  Waffle  #breakfast #indecisive #iron
🧀  Cheese Wedge  #cheese
🍖  Meat On Bone  #bone #meat
🍗  Poultry Leg  #bone #chicken #drumstick #leg #poultry
🥩  Cut Of Meat  #chop #lambchop #porkchop #steak
🥓  Bacon  #breakfast #food #meat
🍔  Hamburger  #burger
🍟  French Fries  #french #fries
🍕  Pizza  #cheese #slice
🌭  Hot Dog  #frankfurter #hotdog #sausage
🥪  Sandwich  #bread
🌮  Taco  #mexican
🌯  Burrito  #mexican #wrap
🫔  Tamale  #mexican #wrapped
🥙  Stuffed Flatbread  #falafel #flatbread #food #gyro #kebab #stuffed
🧆  Falafel  #chickpea #meatball
🥚  Egg  #breakfast #food
🍳  Cooking  #breakfast #egg #frying #pan
🥘  Shallow Pan Of Food  #casserole #food #paella #pan #shallow
🍲  Pot Of Food  #pot #stew
🫕  Fondue  #cheese #chocolate #melted #pot #swiss
🥣  Bowl With Spoon  #breakfast #cereal #congee
🥗  Green Salad  #food #green #salad
🍿  Popcorn  #popcorn
🧈  Butter  #dairy
🧂  Salt  #condiment #shaker
🥫  Canned Food  #can
🍱  Bento Box  #bento #box
🍘  Rice Cracker  #cracker #rice
🍙  Rice Ball  #ball #japanese #rice
🍚  Cooked Rice  #cooked #rice
🍛  Curry Rice  #curry #rice
🍜  Steaming Bowl  #bowl #noodle #ramen #steaming
🍝  Spaghetti  #pasta
🍠  Roasted Sweet Potato  #potato #roasted #sweet
🍢  Oden  #kebab #seafood #skewer #stick
🍣  Sushi  #sushi
🍤  Fried Shrimp  #fried #prawn #shrimp #tempura
🍥  Fish Cake With Swirl  #cake #fish #pastry #swirl
🥮  Moon Cake  #autumn #festival #yuèbǐng
🍡  Dango  #dessert #japanese #skewer #stick #sweet
🥟  Dumpling  #empanada #gyōza #jiaozi #pierogi #potsticker
🥠  Fortune Cookie  #prophecy
🥡  Takeout Box  #oyster pail
🦀  Crab  #cancer #zodiac
🦞  Lobster  #bisque #claws #seafood
🦐  Shrimp  #food #shellfish #small
🦑  Squid  #food #molusc
🦪  Oyster  #diving #pearl
🍦  Soft Ice Cream  #cream #dessert #ice #icecream #soft #sweet
🍧  Shaved Ice  #dessert #ice #shaved #sweet
🍨  Ice Cream  #cream #dessert #ice #sweet
🍩  Doughnut  #breakfast #dessert #donut #sweet
🍪  Cookie  #dessert #sweet
🎂  Birthday Cake  #birthday #cake #celebration #dessert #pastry #sweet
🍰  Shortcake  #cake #dessert #pastry #slice #sweet
🧁  Cupcake  #bakery #sweet
🥧  Pie  #filling #pastry
🍫  Chocolate Bar  #bar #chocolate #dessert #sweet
🍬  Candy  #dessert #sweet
🍭  Lollipop  #candy #dessert #sweet
🍮  Custard  #dessert #pudding #sweet
🍯  Honey Pot  #honey #honeypot #pot #sweet
🍼  Baby Bottle  #baby #bottle #drink #milk
🥛  Glass Of Milk  #drink #glass #milk
☕️  Hot Beverage  #beverage #coffee #drink #hot #steaming #tea
🫖  Teapot  #drink #pot #tea
🍵  Teacup Without Handle  #beverage #cup #drink #tea #teacup
🍶  Sake  #bar #beverage #bottle #cup #drink
🍾  Bottle With Popping Cork  #bar #bottle #cork #drink #popping
🍷  Wine Glass  #bar #beverage #drink #glass #wine
🍸️  Cocktail Glass  #bar #cocktail #drink #glass
🍹  Tropical Drink  #bar #drink #tropical
🍺  Beer Mug  #bar #beer #drink #mug
🍻  Clinking Beer Mugs  #bar #beer #clink #drink #mug
🥂  Clinking Glasses  #celebrate #clink #drink #glass
🥃  Tumbler Glass  #glass #liquor #shot #tumbler #whisky
🫗  Pouring Liquid  #drink #empty #glass #spill
🥤  Cup With Straw  #juice #soda
🧋  Bubble Tea  #bubble #milk #pearl #tea
🧃  Beverage Box  #beverage #box #juice #straw #sweet
🧉  Mate  #drink
🧊  Ice  #cold #ice cube #iceberg
🥢  Chopsticks  #hashi
🍽️  Fork And Knife With Plate  #cooking #fork #knife #plate
🍴  Fork And Knife  #cooking #cutlery #fork #knife
🥄  Spoon  #tableware
🔪  Kitchen Knife  #cooking #hocho #knife #tool #weapon
🫙  Jar  #condiment #container #empty #sauce #store
🏺  Amphora  #aquarius #cooking #drink #jug #zodiac
🌍️  Globe Showing Europe-Africa  #africa #earth #europe #globe #globe showing europe-africa #world
🌎️  Globe Showing Americas  #americas #earth #globe #globe showing americas #world
🌏️  Globe Showing Asia-Australia  #asia #australia #earth #globe #globe showing asia-australia #world
🌐  Globe With Meridians  #earth #globe #meridians #world
🗺️  World Map  #map #world
🗾  Map Of Japan  #japan #map #map of japan
🧭  Compass  #magnetic #navigation #orienteering
🏔️  Snow-Capped Mountain  #cold #mountain #snow
⛰️  Mountain  #mountain
🌋  Volcano  #eruption #mountain
🗻  Mount Fuji  #fuji #mountain
🏕️  Camping  #camping
🏖️  Beach With Umbrella  #beach #umbrella
🏜️  Desert  #desert
🏝️  Desert Island  #desert #island
🏞️  National Park  #park
🏟️  Stadium  #stadium
🏛️  Classical Building  #classical
🏗️  Building Construction  #construction
🧱  Brick  #bricks #clay #mortar #wall
🪨  Rock  #boulder #heavy #solid #stone
🪵  Wood  #log #lumber #timber
🛖  Hut  #house #roundhouse #yurt
🏘️  Houses  #houses
🏚️  Derelict House  #derelict #house
🏠️  House  #home
🏡  House With Garden  #garden #home #house
🏢  Office Building  #building
🏣  Japanese Post Office  #japanese #japanese post office #post
🏤  Post Office  #european #post
🏥  Hospital  #doctor #medicine
🏦  Bank  #building
🏨  Hotel  #building
🏩  Love Hotel  #hotel #love
🏪  Convenience Store  #convenience #store
🏫  School  #building
🏬  Department Store  #department #store
🏭️  Factory  #building
🏯  Japanese Castle  #castle #japanese
🏰  Castle  #european
💒  Wedding  #chapel #romance
🗼  Tokyo Tower  #tokyo #tower
🗽  Statue Of Liberty  #liberty #statue #statue of liberty
⛪️  Church  #christian #cross #religion
🕌  Mosque  #islam #muslim #religion
🛕  Hindu Temple  #hindu #temple
🕍  Synagogue  #jew #jewish #religion #temple
⛩️  Shinto Shrine  #religion #shinto #shrine
🕋  Kaaba  #islam #muslim #religion
⛲️  Fountain  #fountain
⛺️  Tent  #camping
🌁  Foggy  #fog
🌃  Night With Stars  #night #star
🏙️  Cityscape  #city
🌄  Sunrise Over Mountains  #morning #mountain #sun #sunrise
🌅  Sunrise  #morning #sun
🌆  Cityscape At Dusk  #city #dusk #evening #landscape #sunset
🌇  Sunset  #dusk #sun
🌉  Bridge At Night  #bridge #night
♨️  Hot Springs  #hot #hotsprings #springs #steaming
🎠  Carousel Horse  #carousel #horse
🛝  Playground Slide  #amusement park #play
🎡  Ferris Wheel  #amusement park #ferris #wheel
🎢  Roller Coaster  #amusement park #coaster #roller
💈  Barber Pole  #barber #haircut #pole
🎪  Circus Tent  #circus #tent
🚂  Locomotive  #engine #railway #steam #train
🚃  Railway Car  #car #electric #railway #train #tram #trolleybus
🚄  High-Speed Train  #railway #shinkansen #speed #train
🚅  Bullet Train  #bullet #railway #shinkansen #speed #train
🚆  Train  #railway
🚇️  Metro  #subway
🚈  Light Rail  #railway
🚉  Station  #railway #train
🚊  Tram  #trolleybus
🚝  Monorail  #vehicle
🚞  Mountain Railway  #car #mountain #railway
🚋  Tram Car  #car #tram #trolleybus
🚌  Bus  #vehicle
🚍️  Oncoming Bus  #bus #oncoming
🚎  Trolleybus  #bus #tram #trolley
🚐  Minibus  #bus
🚑️  Ambulance  #vehicle
🚒  Fire Engine  #engine #fire #truck
🚓  Police Car  #car #patrol #police
🚔️  Oncoming Police Car  #car #oncoming #police
🚕  Taxi  #vehicle
🚖  Oncoming Taxi  #oncoming #taxi
🚗  Automobile  #car
🚘️  Oncoming Automobile  #automobile #car #oncoming
🚙  Sport Utility Vehicle  #recreational #sport utility
🛻  Pickup Truck  #pick-up #pickup #truck
🚚  Delivery Truck  #delivery #truck
🚛  Articulated Lorry  #lorry #semi #truck
🚜  Tractor  #vehicle
🏎️  Racing Car  #car #racing
🏍️  Motorcycle  #racing
🛵  Motor Scooter  #motor #scooter
🦽  Manual Wheelchair  #accessibility
🦼  Motorized Wheelchair  #accessibility
🛺  Auto Rickshaw  #tuk tuk
🚲️  Bicycle  #bike
🛴  Kick Scooter  #kick #scooter
🛹  Skateboard  #board
🛼  Roller Skate  #roller #skate
🚏  Bus Stop  #bus #stop
🛣️  Motorway  #highway #road
🛤️  Railway Track  #railway #train
🛢️  Oil Drum  #drum #oil
⛽️  Fuel Pump  #diesel #fuel #fuelpump #gas #pump #station
🛞  Wheel  #circle #tire #turn
🚨  Police Car Light  #beacon #car #light #police #revolving
🚥  Horizontal Traffic Light  #light #signal #traffic
🚦  Vertical Traffic Light  #light #signal #traffic
🛑  Stop Sign  #octagonal #sign #stop
🚧  Construction  #barrier
⚓️  Anchor  #ship #tool
🛟  Ring Buoy  #float #life preserver #life saver #rescue #safety
⛵️  Sailboat  #boat #resort #sea #yacht
🛶  Canoe  #boat
🚤  Speedboat  #boat
🛳️  Passenger Ship  #passenger #ship
⛴️  Ferry  #boat #passenger
🛥️  Motor Boat  #boat #motorboat
🚢  Ship  #boat #passenger
✈️  Airplane  #aeroplane
🛩️  Small Airplane  #aeroplane #airplane
🛫  Airplane Departure  #aeroplane #airplane #check-in #departure #departures
🛬  Airplane Arrival  #aeroplane #airplane #arrivals #arriving #landing
🪂  Parachute  #hang-glide #parasail #skydive
💺  Seat  #chair
🚁  Helicopter  #vehicle
🚟  Suspension Railway  #railway #suspension
🚠  Mountain Cableway  #cable #gondola #mountain
🚡  Aerial Tramway  #aerial #cable #car #gondola #tramway
🛰️  Satellite  #space
🚀  Rocket  #space
🛸  Flying Saucer  #ufo
🛎️  Bellhop Bell  #bell #bellhop #hotel
🧳  Luggage  #packing #travel
⌛️  Hourglass Done  #sand #timer
⏳️  Hourglass Not Done  #hourglass #sand #timer
⌚️  Watch  #clock
⏰  Alarm Clock  #alarm #clock
⏱️  Stopwatch  #clock
⏲️  Timer Clock  #clock #timer
🕰️  Mantelpiece Clock  #clock
🕛️  Twelve O’Clock  #00 #12 #12:00 #clock #o’clock #twelve
🕧️  Twelve-Thirty  #12 #12:30 #clock #thirty #twelve
🕐️  One O’Clock  #00 #1 #1:00 #clock #one #o’clock
🕜️  One-Thirty  #1 #1:30 #clock #one #thirty
🕑️  Two O’Clock  #00 #2 #2:00 #clock #o’clock #two
🕝️  Two-Thirty  #2 #2:30 #clock #thirty #two
🕒️  Three O’Clock  #00 #3 #3:00 #clock #o’clock #three
🕞️  Three-Thirty  #3 #3:30 #clock #thirty #three
🕓️  Four O’Clock  #00 #4 #4:00 #clock #four #o’clock
🕟️  Four-Thirty  #4 #4:30 #clock #four #thirty
🕔️  Five O’Clock  #00 #5 #5:00 #clock #five #o’clock
🕠️  Five-Thirty  #5 #5:30 #clock #five #thirty
🕕️  Six O’Clock  #00 #6 #6:00 #clock #o’clock #six
🕡️  Six-Thirty  #6 #6:30 #clock #six #thirty
🕖️  Seven O’Clock  #00 #7 #7:00 #clock #o’clock #seven
🕢️  Seven-Thirty  #7 #7:30 #clock #seven #thirty
🕗️  Eight O’Clock  #00 #8 #8:00 #clock #eight #o’clock
🕣️  Eight-Thirty  #8 #8:30 #clock #eight #thirty
🕘️  Nine O’Clock  #00 #9 #9:00 #clock #nine #o’clock
🕤️  Nine-Thirty  #9 #9:30 #clock #nine #thirty
🕙️  Ten O’Clock  #00 #10 #10:00 #clock #o’clock #ten
🕥️  Ten-Thirty  #10 #10:30 #clock #ten #thirty
🕚️  Eleven O’Clock  #00 #11 #11:00 #clock #eleven #o’clock
🕦️  Eleven-Thirty  #11 #11:30 #clock #eleven #thirty
🌑  New Moon  #dark #moon
🌒  Waxing Crescent Moon  #crescent #moon #waxing
🌓  First Quarter Moon  #moon #quarter
🌔  Waxing Gibbous Moon  #gibbous #moon #waxing
🌕️  Full Moon  #full #moon
🌖  Waning Gibbous Moon  #gibbous #moon #waning
🌗  Last Quarter Moon  #moon #quarter
🌘  Waning Crescent Moon  #crescent #moon #waning
🌙  Crescent Moon  #crescent #moon
🌚  New Moon Face  #face #moon
🌛  First Quarter Moon Face  #face #moon #quarter
🌜️  Last Quarter Moon Face  #face #moon #quarter
🌡️  Thermometer  #weather
☀️  Sun  #bright #rays #sunny
🌝  Full Moon Face  #bright #face #full #moon
🌞  Sun With Face  #bright #face #sun
🪐  Ringed Planet  #saturn #saturnine
⭐️  Star  #star
🌟  Glowing Star  #glittery #glow #shining #sparkle #star
🌠  Shooting Star  #falling #shooting #star
🌌  Milky Way  #space
☁️  Cloud  #weather
⛅️  Sun Behind Cloud  #cloud #sun
⛈️  Cloud With Lightning And Rain  #cloud #rain #thunder
🌤️  Sun Behind Small Cloud  #cloud #sun
🌥️  Sun Behind Large Cloud  #cloud #sun
🌦️  Sun Behind Rain Cloud  #cloud #rain #sun
🌧️  Cloud With Rain  #cloud #rain
🌨️  Cloud With Snow  #cloud #cold #snow
🌩️  Cloud With Lightning  #cloud #lightning
🌪️  Tornado  #cloud #whirlwind
🌫️  Fog  #cloud
🌬️  Wind Face  #blow #cloud #face #wind
🌀  Cyclone  #dizzy #hurricane #twister #typhoon
🌈  Rainbow  #rain
🌂  Closed Umbrella  #clothing #rain #umbrella
☂️  Umbrella  #clothing #rain
☔️  Umbrella With Rain Drops  #clothing #drop #rain #umbrella
⛱️  Umbrella On Ground  #rain #sun #umbrella
⚡️  High Voltage  #danger #electric #lightning #voltage #zap
❄️  Snowflake  #cold #snow
☃️  Snowman  #cold #snow
⛄️  Snowman Without Snow  #cold #snow #snowman
☄️  Comet  #space
🔥  Fire  #flame #tool
💧  Droplet  #cold #comic #drop #sweat
🌊  Water Wave  #ocean #water #wave
🎃  Jack-O-Lantern  #celebration #halloween #jack #lantern
🎄  Christmas Tree  #celebration #christmas #tree
🎆  Fireworks  #celebration
🎇  Sparkler  #celebration #fireworks #sparkle
🧨  Firecracker  #dynamite #explosive #fireworks
✨  Sparkles  #* #sparkle #star
🎈  Balloon  #celebration
🎉  Party Popper  #celebration #party #popper #tada
🎊  Confetti Ball  #ball #celebration #confetti
🎋  Tanabata Tree  #banner #celebration #japanese #tree
🎍  Pine Decoration  #bamboo #celebration #japanese #pine
🎎  Japanese Dolls  #celebration #doll #festival #japanese #japanese dolls
🎏  Carp Streamer  #carp #celebration #streamer
🎐  Wind Chime  #bell #celebration #chime #wind
🎑  Moon Viewing Ceremony  #celebration #ceremony #moon
🧧  Red Envelope  #gift #good luck #hóngbāo #lai see #money
🎀  Ribbon  #celebration
🎁  Wrapped Gift  #box #celebration #gift #present #wrapped
🎗️  Reminder Ribbon  #celebration #reminder #ribbon
🎟️  Admission Tickets  #admission #ticket
🎫  Ticket  #admission
🎖️  Military Medal  #celebration #medal #military
🏆️  Trophy  #prize
🏅  Sports Medal  #medal
🥇  1ST Place Medal  #first #gold #medal
🥈  2ND Place Medal  #medal #second #silver
🥉  3RD Place Medal  #bronze #medal #third
⚽️  Soccer Ball  #ball #football #soccer
⚾️  Baseball  #ball
🥎  Softball  #ball #glove #underarm
🏀  Basketball  #ball #hoop
🏐  Volleyball  #ball #game
🏈  American Football  #american #ball #football
🏉  Rugby Football  #ball #football #rugby
🎾  Tennis  #ball #racquet
🥏  Flying Disc  #ultimate
🎳  Bowling  #ball #game
🏏  Cricket Game  #ball #bat #game
🏑  Field Hockey  #ball #field #game #hockey #stick
🏒  Ice Hockey  #game #hockey #ice #puck #stick
🥍  Lacrosse  #ball #goal #stick
🏓  Ping Pong  #ball #bat #game #paddle #table tennis
🏸  Badminton  #birdie #game #racquet #shuttlecock
🥊  Boxing Glove  #boxing #glove
🥋  Martial Arts Uniform  #judo #karate #martial arts #taekwondo #uniform
🥅  Goal Net  #goal #net
⛳️  Flag In Hole  #golf #hole
⛸️  Ice Skate  #ice #skate
🎣  Fishing Pole  #fish #pole
🤿  Diving Mask  #diving #scuba #snorkeling
🎽  Running Shirt  #athletics #running #sash #shirt
🎿  Skis  #ski #snow
🛷  Sled  #sledge #sleigh
🥌  Curling Stone  #game #rock
🎯  Bullseye  #dart #direct hit #game #hit #target
🪀  Yo-Yo  #fluctuate #toy
🪁  Kite  #fly #soar
🎱  Pool 8 Ball  #8 #ball #billiard #eight #game
🔮  Crystal Ball  #ball #crystal #fairy tale #fantasy #fortune #tool
🪄  Magic Wand  #magic #witch #wizard
🧿  Nazar Amulet  #bead #charm #evil-eye #nazar #talisman
🪬  Hamsa  #amulet #fatima #hand #mary #miriam #protection
🎮️  Video Game  #controller #game
🕹️  Joystick  #game #video game
🎰  Slot Machine  #game #slot
🎲  Game Die  #dice #die #game
🧩  Puzzle Piece  #clue #interlocking #jigsaw #piece #puzzle
🧸  Teddy Bear  #plaything #plush #stuffed #toy
🪅  PIñATA  #celebration #party
🪩  Mirror Ball  #dance #disco #glitter #party
🪆  Nesting Dolls  #doll #nesting #russia
♠️  Spade Suit  #card #game
♥️  Heart Suit  #card #game
♦️  Diamond Suit  #card #game
♣️  Club Suit  #card #game
♟️  Chess Pawn  #chess #dupe #expendable
🃏  Joker  #card #game #wildcard
🀄️  Mahjong Red Dragon  #game #mahjong #red
🎴  Flower Playing Cards  #card #flower #game #japanese #playing
🎭️  Performing Arts  #art #mask #performing #theater #theatre
🖼️  Framed Picture  #art #frame #museum #painting #picture
🎨  Artist Palette  #art #museum #painting #palette
🧵  Thread  #needle #sewing #spool #string
🪡  Sewing Needle  #embroidery #needle #sewing #stitches #sutures #tailoring
🧶  Yarn  #ball #crochet #knit
🪢  Knot  #rope #tangled #tie #twine #twist
👓️  Glasses  #clothing #eye #eyeglasses #eyewear
🕶️  Sunglasses  #dark #eye #eyewear #glasses
🥽  Goggles  #eye protection #swimming #welding
🥼  Lab Coat  #doctor #experiment #scientist
🦺  Safety Vest  #emergency #safety #vest
👔  Necktie  #clothing #tie
👕  T-Shirt  #clothing #shirt #tshirt
👖  Jeans  #clothing #pants #trousers
🧣  Scarf  #neck
🧤  Gloves  #hand
🧥  Coat  #jacket
🧦  Socks  #stocking
👗  Dress  #clothing
👘  Kimono  #clothing
🥻  Sari  #clothing #dress
🩱  One-Piece Swimsuit  #bathing suit
🩲  Briefs  #bathing suit #one-piece #swimsuit #underwear
🩳  Shorts  #bathing suit #pants #underwear
👙  Bikini  #clothing #swim
👚  Woman’S Clothes  #clothing #woman
👛  Purse  #clothing #coin
👜  Handbag  #bag #clothing #purse
👝  Clutch Bag  #bag #clothing #pouch
🛍️  Shopping Bags  #bag #hotel #shopping
🎒  Backpack  #bag #rucksack #satchel #school
🩴  Thong Sandal  #beach sandals #sandals #thong sandals #thongs #zōri
👞  Man’S Shoe  #clothing #man #shoe
👟  Running Shoe  #athletic #clothing #shoe #sneaker
🥾  Hiking Boot  #backpacking #boot #camping #hiking
🥿  Flat Shoe  #ballet flat #slip-on #slipper
👠  High-Heeled Shoe  #clothing #heel #shoe #woman
👡  Woman’S Sandal  #clothing #sandal #shoe #woman
🩰  Ballet Shoes  #ballet #dance
👢  Woman’S Boot  #boot #clothing #shoe #woman
👑  Crown  #clothing #king #queen
👒  Woman’S Hat  #clothing #hat #woman
🎩  Top Hat  #clothing #hat #top #tophat
🎓️  Graduation Cap  #cap #celebration #clothing #graduation #hat #university
🧢  Billed Cap  #baseball cap
🪖  Military Helmet  #army #helmet #military #soldier #warrior
⛑️  Rescue Worker’S Helmet  #aid #cross #face #hat #helmet
📿  Prayer Beads  #beads #clothing #necklace #prayer #religion
💄  Lipstick  #cosmetics #makeup
💍  Ring  #diamond
💎  Gem Stone  #diamond #gem #jewel
🔇  Muted Speaker  #mute #quiet #silent #speaker
🔈️  Speaker Low Volume  #soft
🔉  Speaker Medium Volume  #medium
🔊  Speaker High Volume  #loud
📢  Loudspeaker  #loud #public address
📣  Megaphone  #cheering
📯  Postal Horn  #horn #post #postal
🔔  Bell  #bell
🔕  Bell With Slash  #bell #forbidden #mute #quiet #silent
🎼  Musical Score  #music #score
🎵  Musical Note  #music #note
🎶  Musical Notes  #music #note #notes
🎙️  Studio Microphone  #mic #microphone #music #studio
🎚️  Level Slider  #level #music #slider
🎛️  Control Knobs  #control #knobs #music
🎤  Microphone  #karaoke #mic
🎧️  Headphone  #earbud
📻️  Radio  #video
🎷  Saxophone  #instrument #music #sax
🪗  Accordion  #concertina #squeeze box
🎸  Guitar  #instrument #music
🎹  Musical Keyboard  #instrument #keyboard #music #piano
🎺  Trumpet  #instrument #music
🎻  Violin  #instrument #music
🪕  Banjo  #music #stringed
🥁  Drum  #drumsticks #music
🪘  Long Drum  #beat #conga #drum #rhythm
📱  Mobile Phone  #cell #mobile #phone #telephone
📲  Mobile Phone With Arrow  #arrow #cell #mobile #phone #receive
☎️  Telephone  #phone
📞  Telephone Receiver  #phone #receiver #telephone
📟️  Pager  #pager
📠  Fax Machine  #fax
🔋  Battery  #battery
🪫  Low Battery  #electronic #low energy
🔌  Electric Plug  #electric #electricity #plug
💻️  Laptop  #computer #pc #personal
🖥️  Desktop Computer  #computer #desktop
🖨️  Printer  #computer
⌨️  Keyboard  #computer
🖱️  Computer Mouse  #computer
🖲️  Trackball  #computer
💽  Computer Disk  #computer #disk #minidisk #optical
💾  Floppy Disk  #computer #disk #floppy
💿️  Optical Disk  #cd #computer #disk #optical
📀  Dvd  #blu-ray #computer #disk #optical
🧮  Abacus  #calculation
🎥  Movie Camera  #camera #cinema #movie
🎞️  Film Frames  #cinema #film #frames #movie
📽️  Film Projector  #cinema #film #movie #projector #video
🎬️  Clapper Board  #clapper #movie
📺️  Television  #tv #video
📷️  Camera  #video
📸  Camera With Flash  #camera #flash #video
📹️  Video Camera  #camera #video #youtube #record
📼  Videocassette  #tape #vhs #video
🔍️  Magnifying Glass Tilted Left  #glass #magnifying #search #tool
🔎  Magnifying Glass Tilted Right  #glass #magnifying #search #tool
🕯️  Candle  #light
💡  Light Bulb  #bulb #comic #electric #idea #light
🔦  Flashlight  #electric #light #tool #torch
🏮  Red Paper Lantern  #bar #lantern #light #red
🪔  Diya Lamp  #diya #lamp #oil
📔  Notebook With Decorative Cover  #book #cover #decorated #notebook
📕  Closed Book  #book #closed
📖  Open Book  #book #open
📗  Green Book  #book #green
📘  Blue Book  #blue #book
📙  Orange Book  #book #orange
📚️  Books  #book
📓  Notebook  #notebook
📒  Ledger  #notebook
📃  Page With Curl  #curl #document #page
📜  Scroll  #paper
📄  Page Facing Up  #document #page
📰  Newspaper  #news #paper
🗞️  Rolled-Up Newspaper  #news #newspaper #paper #rolled
📑  Bookmark Tabs  #bookmark #mark #marker #tabs
🔖  Bookmark  #mark
🏷️  Label  #label
💰️  Money Bag  #bag #dollar #money #moneybag
🪙  Coin  #gold #metal #money #silver #treasure
💴  Yen Banknote  #banknote #bill #currency #money #note #yen
💵  Dollar Banknote  #banknote #bill #currency #dollar #money #note
💶  Euro Banknote  #banknote #bill #currency #euro #money #note
💷  Pound Banknote  #banknote #bill #currency #money #note #pound
💸  Money With Wings  #banknote #bill #fly #money #wings
💳️  Credit Card  #card #credit #money
🧾  Receipt  #accounting #bookkeeping #evidence #proof
💹  Chart Increasing With Yen  #chart #graph #growth #money #yen
✉️  Envelope  #email #letter
📧  E-Mail  #email #letter #mail
📨  Incoming Envelope  #e-mail #email #envelope #incoming #letter #receive
📩  Envelope With Arrow  #arrow #e-mail #email #envelope #outgoing
📤️  Outbox Tray  #box #letter #mail #outbox #sent #tray
📥️  Inbox Tray  #box #inbox #letter #mail #receive #tray
📦️  Package  #box #parcel
📫️  Closed Mailbox With Raised Flag  #closed #mail #mailbox #postbox
📪️  Closed Mailbox With Lowered Flag  #closed #lowered #mail #mailbox #postbox
📬️  Open Mailbox With Raised Flag  #mail #mailbox #open #postbox
📭️  Open Mailbox With Lowered Flag  #lowered #mail #mailbox #open #postbox
📮  Postbox  #mail #mailbox
🗳️  Ballot Box With Ballot  #ballot #box
✏️  Pencil  #pencil
✒️  Black Nib  #nib #pen
🖋️  Fountain Pen  #fountain #pen
🖊️  Pen  #ballpoint
🖌️  Paintbrush  #painting
🖍️  Crayon  #crayon
📝  Memo  #pencil
💼  Briefcase  #briefcase
📁  File Folder  #file #folder
📂  Open File Folder  #file #folder #open
🗂️  Card Index Dividers  #card #dividers #index
📅  Calendar  #date
📆  Tear-Off Calendar  #calendar
🗒️  Spiral Notepad  #note #pad #spiral
🗓️  Spiral Calendar  #calendar #pad #spiral
📇  Card Index  #card #index #rolodex
📈  Chart Increasing  #chart #graph #growth #trend #upward
📉  Chart Decreasing  #chart #down #graph #trend
📊  Bar Chart  #bar #chart #graph
📋️  Clipboard  #clipboard
📌  Pushpin  #pin
📍  Round Pushpin  #pin #pushpin
📎  Paperclip  #paperclip
🖇️  Linked Paperclips  #link #paperclip
📏  Straight Ruler  #ruler #straight edge
📐  Triangular Ruler  #ruler #set #triangle
✂️  Scissors  #cutting #tool
🗃️  Card File Box  #box #card #file
🗄️  File Cabinet  #cabinet #file #filing
🗑️  Wastebasket  #wastebasket
🔒️  Locked  #closed
🔓️  Unlocked  #lock #open #unlock
🔏  Locked With Pen  #ink #lock #nib #pen #privacy
🔐  Locked With Key  #closed #key #lock #secure
🔑  Key  #lock #password
🗝️  Old Key  #clue #key #lock #old
🔨  Hammer  #tool
🪓  Axe  #chop #hatchet #split #wood
⛏️  Pick  #mining #tool
⚒️  Hammer And Pick  #hammer #pick #tool
🛠️  Hammer And Wrench  #hammer #spanner #tool #wrench
🗡️  Dagger  #knife #weapon
⚔️  Crossed Swords  #crossed #swords #weapon
🔫  Water Pistol  #gun #handgun #pistol #revolver #tool #water #weapon
🪃  Boomerang  #australia #rebound #repercussion
🏹  Bow And Arrow  #archer #arrow #bow #sagittarius #zodiac
🛡️  Shield  #weapon
🪚  Carpentry Saw  #carpenter #lumber #saw #tool
🔧  Wrench  #spanner #tool
🪛  Screwdriver  #screw #tool
🔩  Nut And Bolt  #bolt #nut #tool
⚙️  Gear  #cog #cogwheel #tool
🗜️  Clamp  #compress #tool #vice
⚖️  Balance Scale  #balance #justice #libra #scale #zodiac
🦯  White Cane  #accessibility #blind
🔗  Link  #link
⛓️  Chains  #chain
🪝  Hook  #catch #crook #curve #ensnare #selling point
🧰  Toolbox  #chest #mechanic #tool
🧲  Magnet  #attraction #horseshoe #magnetic
🪜  Ladder  #climb #rung #step
⚗️  Alembic  #chemistry #tool
🧪  Test Tube  #chemist #chemistry #experiment #lab #science
🧫  Petri Dish  #bacteria #biologist #biology #culture #lab
🧬  Dna  #biologist #evolution #gene #genetics #life
🔬  Microscope  #science #tool
🔭  Telescope  #science #tool
📡  Satellite Antenna  #antenna #dish #satellite
💉  Syringe  #medicine #needle #shot #sick
🩸  Drop Of Blood  #bleed #blood donation #injury #medicine #menstruation
💊  Pill  #doctor #medicine #sick
🩹  Adhesive Bandage  #bandage
🩼  Crutch  #cane #disability #hurt #mobility aid #stick
🩺  Stethoscope  #doctor #heart #medicine
🩻  X-Ray  #bones #doctor #medical #skeleton
🚪  Door  #door
🛗  Elevator  #accessibility #hoist #lift
🪞  Mirror  #reflection #reflector #speculum
🪟  Window  #frame #fresh air #opening #transparent #view
🛏️  Bed  #hotel #sleep
🛋️  Couch And Lamp  #couch #hotel #lamp
🪑  Chair  #seat #sit
🚽  Toilet  #toilet
🪠  Plunger  #force cup #plumber #suction #toilet
🚿  Shower  #water
🛁  Bathtub  #bath
🪤  Mouse Trap  #bait #mousetrap #snare #trap
🪒  Razor  #sharp #shave
🧴  Lotion Bottle  #lotion #moisturizer #shampoo #sunscreen
🧷  Safety Pin  #diaper #punk rock
🧹  Broom  #cleaning #sweeping #witch
🧺  Basket  #farming #laundry #picnic
🧻  Roll Of Paper  #paper towels #toilet paper
🪣  Bucket  #cask #pail #vat
🧼  Soap  #bar #bathing #cleaning #lather #soapdish
🫧  Bubbles  #burp #clean #soap #underwater
🪥  Toothbrush  #bathroom #brush #clean #dental #hygiene #teeth
🧽  Sponge  #absorbing #cleaning #porous
🧯  Fire Extinguisher  #extinguish #fire #quench
🛒  Shopping Cart  #cart #shopping #trolley
🚬  Cigarette  #smoking
⚰️  Coffin  #death
🪦  Headstone  #cemetery #grave #graveyard #tombstone
⚱️  Funeral Urn  #ashes #death #funeral #urn
🗿  Moai  #face #moyai #statue
🪧  Placard  #demonstration #picket #protest #sign
🪪  Identification Card  #credentials #id #license #security
🏧  Atm Sign  #atm #atm sign #automated #bank #teller
🚮  Litter In Bin Sign  #litter #litter bin
🚰  Potable Water  #drinking #potable #water
♿️  Wheelchair Symbol  #access
🚹️  Men’S Room  #bathroom #lavatory #man #restroom #toilet #wc
🚺️  Women’S Room  #bathroom #lavatory #restroom #toilet #wc #woman
🚻  Restroom  #bathroom #lavatory #toilet #wc
🚼️  Baby Symbol  #baby #changing
🚾  Water Closet  #bathroom #closet #lavatory #restroom #toilet #water #wc
🛂  Passport Control  #control #passport
🛃  Customs  #customs
🛄  Baggage Claim  #baggage #claim
🛅  Left Luggage  #baggage #locker #luggage
⚠️  Warning  #warning
🚸  Children Crossing  #child #crossing #pedestrian #traffic
⛔️  No Entry  #entry #forbidden #no #not #prohibited #traffic
🚫  Prohibited  #entry #forbidden #no #not
🚳  No Bicycles  #bicycle #bike #forbidden #no #prohibited
🚭️  No Smoking  #forbidden #no #not #prohibited #smoking
🚯  No Littering  #forbidden #litter #no #not #prohibited
🚱  Non-Potable Water  #non-drinking #non-potable #water
🚷  No Pedestrians  #forbidden #no #not #pedestrian #prohibited
📵  No Mobile Phones  #cell #forbidden #mobile #no #phone
🔞  No One Under Eighteen  #18 #age restriction #eighteen #prohibited #underage
☢️  Radioactive  #sign
☣️  Biohazard  #sign
⬆️  Up Arrow  #arrow #cardinal #direction #north
↗️  Up-Right Arrow  #arrow #direction #intercardinal #northeast
➡️  Right Arrow  #arrow #cardinal #direction #east
↘️  Down-Right Arrow  #arrow #direction #intercardinal #southeast
⬇️  Down Arrow  #arrow #cardinal #direction #down #south
↙️  Down-Left Arrow  #arrow #direction #intercardinal #southwest
⬅️  Left Arrow  #arrow #cardinal #direction #west
↖️  Up-Left Arrow  #arrow #direction #intercardinal #northwest
↕️  Up-Down Arrow  #arrow
↔️  Left-Right Arrow  #arrow
↩️  Right Arrow Curving Left  #arrow
↪️  Left Arrow Curving Right  #arrow
⤴️  Right Arrow Curving Up  #arrow
⤵️  Right Arrow Curving Down  #arrow #down
🔃  Clockwise Vertical Arrows  #arrow #clockwise #reload
🔄  Counterclockwise Arrows Button  #anticlockwise #arrow #counterclockwise #withershins
🔙  Back Arrow  #arrow #back
🔚  End Arrow  #arrow #end
🔛  On! Arrow  #arrow #mark #on #on!
🔜  Soon Arrow  #arrow #soon
🔝  Top Arrow  #arrow #top #up
🛐  Place Of Worship  #religion #worship
⚛️  Atom Symbol  #atheist #atom
🕉️  Om  #hindu #religion
✡️  Star Of David  #david #jew #jewish #religion #star #star of david
☸️  Wheel Of Dharma  #buddhist #dharma #religion #wheel
☯️  Yin Yang  #religion #tao #taoist #yang #yin
✝️  Latin Cross  #christian #cross #religion
☦️  Orthodox Cross  #christian #cross #religion
☪️  Star And Crescent  #islam #muslim #religion
☮️  Peace Symbol  #peace
🕎  Menorah  #candelabrum #candlestick #religion
🔯  Dotted Six-Pointed Star  #fortune #star
♈️  Aries  #aries #ram #zodiac
♉️  Taurus  #bull #ox #taurus #zodiac
♊️  Gemini  #gemini #twins #zodiac
♋️  Cancer  #cancer #crab #zodiac
♌️  Leo  #leo #lion #zodiac
♍️  Virgo  #virgo #zodiac
♎️  Libra  #balance #justice #libra #scales #zodiac
♏️  Scorpio  #scorpio #scorpion #scorpius #zodiac
♐️  Sagittarius  #archer #sagittarius #zodiac
♑️  Capricorn  #capricorn #goat #zodiac
♒️  Aquarius  #aquarius #bearer #water #zodiac
♓️  Pisces  #fish #pisces #zodiac
⛎  Ophiuchus  #bearer #ophiuchus #serpent #snake #zodiac
🔀  Shuffle Tracks Button  #arrow #crossed
🔁  Repeat Button  #arrow #clockwise #repeat
🔂  Repeat Single Button  #arrow #clockwise #once
▶️  Play Button  #arrow #play #right #triangle
⏩️  Fast-Forward Button  #arrow #double #fast #forward
⏭️  Next Track Button  #arrow #next scene #next track #triangle
⏯️  Play Or Pause Button  #arrow #pause #play #right #triangle
◀️  Reverse Button  #arrow #left #reverse #triangle
⏪️  Fast Reverse Button  #arrow #double #rewind
⏮️  Last Track Button  #arrow #previous scene #previous track #triangle
🔼  Upwards Button  #arrow #button #red
⏫  Fast Up Button  #arrow #double
🔽  Downwards Button  #arrow #button #down #red
⏬  Fast Down Button  #arrow #double #down
⏸️  Pause Button  #bar #double #pause #vertical
⏹️  Stop Button  #square #stop
⏺️  Record Button  #circle #record
⏏️  Eject Button  #eject
🎦  Cinema  #camera #film #movie
🔅  Dim Button  #brightness #dim #low
🔆  Bright Button  #bright #brightness
📶  Antenna Bars  #antenna #bar #cell #mobile #phone
📳  Vibration Mode  #cell #mobile #mode #phone #telephone #vibration
📴  Mobile Phone Off  #cell #mobile #off #phone #telephone
♀️  Female Sign  #woman
♂️  Male Sign  #man
⚧️  Transgender Symbol  #transgender
✖️  Multiply  #cancel #multiplication #sign #x #×
➕  Plus  #+ #math #sign
➖  Minus  #- #math #sign #−
➗  Divide  #division #math #sign #÷
🟰  Heavy Equals Sign  #equality #math
♾️  Infinity  #forever #unbounded #universal
‼️  Double Exclamation Mark  #! #!! #bangbang #exclamation #mark
⁉️  Exclamation Question Mark  #! #!? #? #exclamation #interrobang #mark #punctuation #question
❓️  Red Question Mark  #? #mark #punctuation #question
❔  White Question Mark  #? #mark #outlined #punctuation #question
❕  White Exclamation Mark  #! #exclamation #mark #outlined #punctuation
❗️  Red Exclamation Mark  #! #exclamation #mark #punctuation
〰️  Wavy Dash  #dash #punctuation #wavy
💱  Currency Exchange  #bank #currency #exchange #money
💲  Heavy Dollar Sign  #currency #dollar #money
⚕️  Medical Symbol  #aesculapius #medicine #staff
♻️  Recycling Symbol  #recycle
⚜️  Fleur-De-Lis  #fleur-de-lis
🔱  Trident Emblem  #anchor #emblem #ship #tool #trident
📛  Name Badge  #badge #name
🔰  Japanese Symbol For Beginner  #beginner #chevron #japanese #japanese symbol for beginner #leaf
⭕️  Hollow Red Circle  #circle #large #o #red
✅  Check Mark Button  #button #check #mark #✓
☑️  Check Box With Check  #box #check #✓
✔️  Check Mark  #check #mark #✓
❌  Cross Mark  #cancel #cross #mark #multiplication #multiply #x #×
❎  Cross Mark Button  #mark #square #x #×
➰  Curly Loop  #curl #loop
➿  Double Curly Loop  #curl #double #loop
〽️  Part Alternation Mark  #mark #part
✳️  Eight-Spoked Asterisk  #* #asterisk
✴️  Eight-Pointed Star  #* #star
❇️  Sparkle  #*
©️  Copyright  #c
®️  Registered  #r
™️  Trade Mark  #mark #tm #trademark
#️⃣  Keycap: #  #keycap
*️⃣  Keycap: *  #keycap
0️⃣  Keycap: 0  #keycap
1️⃣  Keycap: 1  #keycap
2️⃣  Keycap: 2  #keycap
3️⃣  Keycap: 3  #keycap
4️⃣  Keycap: 4  #keycap
5️⃣  Keycap: 5  #keycap
6️⃣  Keycap: 6  #keycap
7️⃣  Keycap: 7  #keycap
8️⃣  Keycap: 8  #keycap
9️⃣  Keycap: 9  #keycap
🔟  Keycap: 10  #keycap
🔠  Input Latin Uppercase  #abcd #input #latin #letters #uppercase
🔡  Input Latin Lowercase  #abcd #input #latin #letters #lowercase
🔢  Input Numbers  #1234 #input #numbers
🔣  Input Symbols  #input #〒♪&%
🔤  Input Latin Letters  #abc #alphabet #input #latin #letters
🅰️  A Button (Blood Type)  #a #a button (blood type) #blood type
🆎  Ab Button (Blood Type)  #ab #ab button (blood type) #blood type
🅱️  B Button (Blood Type)  #b #b button (blood type) #blood type
🆑  Cl Button  #cl #cl button
🆒  Cool Button  #cool #cool button
🆓  Free Button  #free #free button
ℹ️  Information  #i
🆔  Id Button  #id #id button #identity
Ⓜ️  Circled M  #circle #circled m #m
🆕  New Button  #new #new button
🆖  Ng Button  #ng #ng button
🅾️  O Button (Blood Type)  #blood type #o #o button (blood type)
🆗  Ok Button  #ok #ok button
🅿️  P Button  #p #p button #parking
🆘  Sos Button  #help #sos #sos button
🆙  Up! Button  #mark #up #up! #up! button
🆚  Vs Button  #versus #vs #vs button
🈁  Japanese “Here” Button  #japanese #japanese “here” button #katakana #“here” #ココ
🈂️  Japanese “Service Charge” Button  #japanese #japanese “service charge” button #katakana #“service charge” #サ
🈷️  Japanese “Monthly Amount” Button  #ideograph #japanese #japanese “monthly amount” button #“monthly amount” #月
🈶  Japanese “Not Free Of Charge” Button  #ideograph #japanese #japanese “not free of charge” button #“not free of charge” #有
🈯️  Japanese “Reserved” Button  #ideograph #japanese #japanese “reserved” button #“reserved” #指
🉐  Japanese “Bargain” Button  #ideograph #japanese #japanese “bargain” button #“bargain” #得
🈹  Japanese “Discount” Button  #ideograph #japanese #japanese “discount” button #“discount” #割
🈚️  Japanese “Free Of Charge” Button  #ideograph #japanese #japanese “free of charge” button #“free of charge” #無
🈲  Japanese “Prohibited” Button  #ideograph #japanese #japanese “prohibited” button #“prohibited” #禁
🉑  Japanese “Acceptable” Button  #ideograph #japanese #japanese “acceptable” button #“acceptable” #可
🈸  Japanese “Application” Button  #ideograph #japanese #japanese “application” button #“application” #申
🈴  Japanese “Passing Grade” Button  #ideograph #japanese #japanese “passing grade” button #“passing grade” #合
🈳  Japanese “Vacancy” Button  #ideograph #japanese #japanese “vacancy” button #“vacancy” #空
㊗️  Japanese “Congratulations” Button  #ideograph #japanese #japanese “congratulations” button #“congratulations” #祝
㊙️  Japanese “Secret” Button  #ideograph #japanese #japanese “secret” button #“secret” #秘
🈺  Japanese “Open For Business” Button  #ideograph #japanese #japanese “open for business” button #“open for business” #営
🈵  Japanese “No Vacancy” Button  #ideograph #japanese #japanese “no vacancy” button #“no vacancy” #満
🔴  Red Circle  #circle #geometric #red
🟠  Orange Circle  #circle #orange
🟡  Yellow Circle  #circle #yellow
🟢  Green Circle  #circle #green
🔵  Blue Circle  #blue #circle #geometric
🟣  Purple Circle  #circle #purple
🟤  Brown Circle  #brown #circle
⚫️  Black Circle  #circle #geometric
⚪️  White Circle  #circle #geometric
🟥  Red Square  #red #square
🟧  Orange Square  #orange #square
🟨  Yellow Square  #square #yellow
🟩  Green Square  #green #square
🟦  Blue Square  #blue #square
🟪  Purple Square  #purple #square
🟫  Brown Square  #brown #square
⬛️  Black Large Square  #geometric #square
⬜️  White Large Square  #geometric #square
◼️  Black Medium Square  #geometric #square
◻️  White Medium Square  #geometric #square
◾️  Black Medium-Small Square  #geometric #square
◽️  White Medium-Small Square  #geometric #square
▪️  Black Small Square  #geometric #square
▫️  White Small Square  #geometric #square
🔶  Large Orange Diamond  #diamond #geometric #orange
🔷  Large Blue Diamond  #blue #diamond #geometric
🔸  Small Orange Diamond  #diamond #geometric #orange
🔹  Small Blue Diamond  #blue #diamond #geometric
🔺  Red Triangle Pointed Up  #geometric #red
🔻  Red Triangle Pointed Down  #down #geometric #red
💠  Diamond With A Dot  #comic #diamond #geometric #inside
🔘  Radio Button  #button #geometric #radio
🔳  White Square Button  #button #geometric #outlined #square
🔲  Black Square Button  #button #geometric #square
🏁  Chequered Flag  #checkered #chequered #racing
🚩  Triangular Flag  #post
🎌  Crossed Flags  #celebration #cross #crossed #japanese
🏴  Black Flag  #waving
🏳️  White Flag  #waving
🏳️‍🌈  Rainbow Flag  #pride #rainbow
🏳️‍⚧️  Transgender Flag  #flag #light blue #pink #transgender #white
🏴‍☠️  Pirate Flag  #jolly roger #pirate #plunder #treasure
🇦🇨  Flag: Ascension Island  #Ac #flag
🇦🇩  Flag: Andorra  #Ad #flag
🇦🇪  Flag: United Arab Emirates  #Ae #flag
🇦🇫  Flag: Afghanistan  #Af #flag
🇦🇬  Flag: Antigua & Barbuda  #Ag #flag
🇦🇮  Flag: Anguilla  #Ai #flag
🇦🇱  Flag: Albania  #Al #flag
🇦🇲  Flag: Armenia  #Am #flag
🇦🇴  Flag: Angola  #Ao #flag
🇦🇶  Flag: Antarctica  #Aq #flag
🇦🇷  Flag: Argentina  #Ar #flag
🇦🇸  Flag: American Samoa  #As #flag
🇦🇹  Flag: Austria  #At #flag
🇦🇺  Flag: Australia  #Au #flag
🇦🇼  Flag: Aruba  #Aw #flag
🇦🇽  Flag: ÅLAND Islands  #Ax #flag
🇦🇿  Flag: Azerbaijan  #Az #flag
🇧🇦  Flag: Bosnia & Herzegovina  #Ba #flag
🇧🇧  Flag: Barbados  #Bb #flag
🇧🇩  Flag: Bangladesh  #Bd #flag
🇧🇪  Flag: Belgium  #Be #flag
🇧🇫  Flag: Burkina Faso  #Bf #flag
🇧🇬  Flag: Bulgaria  #Bg #flag
🇧🇭  Flag: Bahrain  #Bh #flag
🇧🇮  Flag: Burundi  #Bi #flag
🇧🇯  Flag: Benin  #Bj #flag
🇧🇱  Flag: St. BARTHéLEMY  #Bl #flag
🇧🇲  Flag: Bermuda  #Bm #flag
🇧🇳  Flag: Brunei  #Bn #flag
🇧🇴  Flag: Bolivia  #Bo #flag
🇧🇶  Flag: Caribbean Netherlands  #Bq #flag
🇧🇷  Flag: Brazil  #Br #flag
🇧🇸  Flag: Bahamas  #Bs #flag
🇧🇹  Flag: Bhutan  #Bt #flag
🇧🇻  Flag: Bouvet Island  #Bv #flag
🇧🇼  Flag: Botswana  #Bw #flag
🇧🇾  Flag: Belarus  #By #flag
🇧🇿  Flag: Belize  #Bz #flag
🇨🇦  Flag: Canada  #Ca #flag
🇨🇨  Flag: Cocos (Keeling) Islands  #Cc #flag
🇨🇩  Flag: Congo - Kinshasa  #Cd #flag
🇨🇫  Flag: Central African Republic  #Cf #flag
🇨🇬  Flag: Congo - Brazzaville  #Cg #flag
🇨🇭  Flag: Switzerland  #Ch #flag
🇨🇮  Flag: CôTE D’Ivoire  #Ci #flag
🇨🇰  Flag: Cook Islands  #Ck #flag
🇨🇱  Flag: Chile  #Cl #flag
🇨🇲  Flag: Cameroon  #Cm #flag
🇨🇳  Flag: China  #Cn #flag
🇨🇴  Flag: Colombia  #Co #flag
🇨🇵  Flag: Clipperton Island  #Cp #flag
🇨🇷  Flag: Costa Rica  #Cr #flag
🇨🇺  Flag: Cuba  #Cu #flag
🇨🇻  Flag: Cape Verde  #Cv #flag
🇨🇼  Flag: CURAçAO  #Cw #flag
🇨🇽  Flag: Christmas Island  #Cx #flag
🇨🇾  Flag: Cyprus  #Cy #flag
🇨🇿  Flag: Czechia  #Cz #flag
🇩🇪  Flag: Germany  #De #flag
🇩🇬  Flag: Diego Garcia  #Dg #flag
🇩🇯  Flag: Djibouti  #Dj #flag
🇩🇰  Flag: Denmark  #Dk #flag
🇩🇲  Flag: Dominica  #Dm #flag
🇩🇴  Flag: Dominican Republic  #Do #flag
🇩🇿  Flag: Algeria  #Dz #flag
🇪🇦  Flag: Ceuta & Melilla  #Ea #flag
🇪🇨  Flag: Ecuador  #Ec #flag
🇪🇪  Flag: Estonia  #Ee #flag
🇪🇬  Flag: Egypt  #Eg #flag
🇪🇭  Flag: Western Sahara  #Eh #flag
🇪🇷  Flag: Eritrea  #Er #flag
🇪🇸  Flag: Spain  #Es #flag
🇪🇹  Flag: Ethiopia  #Et #flag
🇪🇺  Flag: European Union  #Eu #flag
🇫🇮  Flag: Finland  #Fi #flag
🇫🇯  Flag: Fiji  #Fj #flag
🇫🇰  Flag: Falkland Islands  #Fk #flag
🇫🇲  Flag: Micronesia  #Fm #flag
🇫🇴  Flag: Faroe Islands  #Fo #flag
🇫🇷  Flag: France  #Fr #flag
🇬🇦  Flag: Gabon  #Ga #flag
🇬🇧  Flag: United Kingdom  #Gb #flag
🇬🇩  Flag: Grenada  #Gd #flag
🇬🇪  Flag: Georgia  #Ge #flag
🇬🇫  Flag: French Guiana  #Gf #flag
🇬🇬  Flag: Guernsey  #Gg #flag
🇬🇭  Flag: Ghana  #Gh #flag
🇬🇮  Flag: Gibraltar  #Gi #flag
🇬🇱  Flag: Greenland  #Gl #flag
🇬🇲  Flag: Gambia  #Gm #flag
🇬🇳  Flag: Guinea  #Gn #flag
🇬🇵  Flag: Guadeloupe  #Gp #flag
🇬🇶  Flag: Equatorial Guinea  #Gq #flag
🇬🇷  Flag: Greece  #Gr #flag
🇬🇸  Flag: South Georgia & South Sandwich Islands  #Gs #flag
🇬🇹  Flag: Guatemala  #Gt #flag
🇬🇺  Flag: Guam  #Gu #flag
🇬🇼  Flag: Guinea-Bissau  #Gw #flag
🇬🇾  Flag: Guyana  #Gy #flag
🇭🇰  Flag: Hong Kong Sar China  #Hk #flag
🇭🇲  Flag: Heard & Mcdonald Islands  #Hm #flag
🇭🇳  Flag: Honduras  #Hn #flag
🇭🇷  Flag: Croatia  #Hr #flag
🇭🇹  Flag: Haiti  #Ht #flag
🇭🇺  Flag: Hungary  #Hu #flag
🇮🇨  Flag: Canary Islands  #Ic #flag
🇮🇩  Flag: Indonesia  #Id #flag
🇮🇪  Flag: Ireland  #Ie #flag
🇮🇱  Flag: Israel  #Il #flag
🇮🇲  Flag: Isle Of Man  #Im #flag
🇮🇳  Flag: India  #In #flag
🇮🇴  Flag: British Indian Ocean Territory  #Io #flag
🇮🇶  Flag: Iraq  #Iq #flag
🇮🇷  Flag: Iran  #Ir #flag
🇮🇸  Flag: Iceland  #Is #flag
🇮🇹  Flag: Italy  #It #flag
🇯🇪  Flag: Jersey  #Je #flag
🇯🇲  Flag: Jamaica  #Jm #flag
🇯🇴  Flag: Jordan  #Jo #flag
🇯🇵  Flag: Japan  #Jp #flag
🇰🇪  Flag: Kenya  #Ke #flag
🇰🇬  Flag: Kyrgyzstan  #Kg #flag
🇰🇭  Flag: Cambodia  #Kh #flag
🇰🇮  Flag: Kiribati  #Ki #flag
🇰🇲  Flag: Comoros  #Km #flag
🇰🇳  Flag: St. Kitts & Nevis  #Kn #flag
🇰🇵  Flag: North Korea  #Kp #flag
🇰🇷  Flag: South Korea  #Kr #flag
🇰🇼  Flag: Kuwait  #Kw #flag
🇰🇾  Flag: Cayman Islands  #Ky #flag
🇰🇿  Flag: Kazakhstan  #Kz #flag
🇱🇦  Flag: Laos  #La #flag
🇱🇧  Flag: Lebanon  #Lb #flag
🇱🇨  Flag: St. Lucia  #Lc #flag
🇱🇮  Flag: Liechtenstein  #Li #flag
🇱🇰  Flag: Sri Lanka  #Lk #flag
🇱🇷  Flag: Liberia  #Lr #flag
🇱🇸  Flag: Lesotho  #Ls #flag
🇱🇹  Flag: Lithuania  #Lt #flag
🇱🇺  Flag: Luxembourg  #Lu #flag
🇱🇻  Flag: Latvia  #Lv #flag
🇱🇾  Flag: Libya  #Ly #flag
🇲🇦  Flag: Morocco  #Ma #flag
🇲🇨  Flag: Monaco  #Mc #flag
🇲🇩  Flag: Moldova  #Md #flag
🇲🇪  Flag: Montenegro  #Me #flag
🇲🇫  Flag: St. Martin  #Mf #flag
🇲🇬  Flag: Madagascar  #Mg #flag
🇲🇭  Flag: Marshall Islands  #Mh #flag
🇲🇰  Flag: North Macedonia  #Mk #flag
🇲🇱  Flag: Mali  #Ml #flag
🇲🇲  Flag: Myanmar (Burma)  #Mm #flag
🇲🇳  Flag: Mongolia  #Mn #flag
🇲🇴  Flag: Macao Sar China  #Mo #flag
🇲🇵  Flag: Northern Mariana Islands  #Mp #flag
🇲🇶  Flag: Martinique  #Mq #flag
🇲🇷  Flag: Mauritania  #Mr #flag
🇲🇸  Flag: Montserrat  #Ms #flag
🇲🇹  Flag: Malta  #Mt #flag
🇲🇺  Flag: Mauritius  #Mu #flag
🇲🇻  Flag: Maldives  #Mv #flag
🇲🇼  Flag: Malawi  #Mw #flag
🇲🇽  Flag: Mexico  #Mx #flag
🇲🇾  Flag: Malaysia  #My #flag
🇲🇿  Flag: Mozambique  #Mz #flag
🇳🇦  Flag: Namibia  #Na #flag
🇳🇨  Flag: New Caledonia  #Nc #flag
🇳🇪  Flag: Niger  #Ne #flag
🇳🇫  Flag: Norfolk Island  #Nf #flag
🇳🇬  Flag: Nigeria  #Ng #flag
🇳🇮  Flag: Nicaragua  #Ni #flag
🇳🇱  Flag: Netherlands  #Nl #flag
🇳🇴  Flag: Norway  #No #flag
🇳🇵  Flag: Nepal  #Np #flag
🇳🇷  Flag: Nauru  #Nr #flag
🇳🇺  Flag: Niue  #Nu #flag
🇳🇿  Flag: New Zealand  #Nz #flag
🇴🇲  Flag: Oman  #Om #flag
🇵🇦  Flag: Panama  #Pa #flag
🇵🇪  Flag: Peru  #Pe #flag
🇵🇫  Flag: French Polynesia  #Pf #flag
🇵🇬  Flag: Papua New Guinea  #Pg #flag
🇵🇭  Flag: Philippines  #Ph #flag
🇵🇰  Flag: Pakistan  #Pk #flag
🇵🇱  Flag: Poland  #Pl #flag
🇵🇲  Flag: St. Pierre & Miquelon  #Pm #flag
🇵🇳  Flag: Pitcairn Islands  #Pn #flag
🇵🇷  Flag: Puerto Rico  #Pr #flag
🇵🇸  Flag: Palestinian Territories  #Ps #flag
🇵🇹  Flag: Portugal  #Pt #flag
🇵🇼  Flag: Palau  #Pw #flag
🇵🇾  Flag: Paraguay  #Py #flag
🇶🇦  Flag: Qatar  #Qa #flag
🇷🇪  Flag: RéUNION  #Re #flag
🇷🇴  Flag: Romania  #Ro #flag
🇷🇸  Flag: Serbia  #Rs #flag
🇷🇺  Flag: Russia  #Ru #flag
🇷🇼  Flag: Rwanda  #Rw #flag
🇸🇦  Flag: Saudi Arabia  #Sa #flag
🇸🇧  Flag: Solomon Islands  #Sb #flag
🇸🇨  Flag: Seychelles  #Sc #flag
🇸🇩  Flag: Sudan  #Sd #flag
🇸🇪  Flag: Sweden  #Se #flag
🇸🇬  Flag: Singapore  #Sg #flag
🇸🇭  Flag: St. Helena  #Sh #flag
🇸🇮  Flag: Slovenia  #Si #flag
🇸🇯  Flag: Svalbard & Jan Mayen  #Sj #flag
🇸🇰  Flag: Slovakia  #Sk #flag
🇸🇱  Flag: Sierra Leone  #Sl #flag
🇸🇲  Flag: San Marino  #Sm #flag
🇸🇳  Flag: Senegal  #Sn #flag
🇸🇴  Flag: Somalia  #So #flag
🇸🇷  Flag: Suriname  #Sr #flag
🇸🇸  Flag: South Sudan  #Ss #flag
🇸🇹  Flag: SãO TOMé & PRíNCIPE  #St #flag
🇸🇻  Flag: El Salvador  #Sv #flag
🇸🇽  Flag: Sint Maarten  #Sx #flag
🇸🇾  Flag: Syria  #Sy #flag
🇸🇿  Flag: Eswatini  #Sz #flag
🇹🇦  Flag: Tristan Da Cunha  #Ta #flag
🇹🇨  Flag: Turks & Caicos Islands  #Tc #flag
🇹🇩  Flag: Chad  #Td #flag
🇹🇫  Flag: French Southern Territories  #Tf #flag
🇹🇬  Flag: Togo  #Tg #flag
🇹🇭  Flag: Thailand  #Th #flag
🇹🇯  Flag: Tajikistan  #Tj #flag
🇹🇰  Flag: Tokelau  #Tk #flag
🇹🇱  Flag: Timor-Leste  #Tl #flag
🇹🇲  Flag: Turkmenistan  #Tm #flag
🇹🇳  Flag: Tunisia  #Tn #flag
🇹🇴  Flag: Tonga  #To #flag
🇹🇷  Flag: Turkey  #Tr #flag
🇹🇹  Flag: Trinidad & Tobago  #Tt #flag
🇹🇻  Flag: Tuvalu  #Tv #flag
🇹🇼  Flag: Taiwan  #Tw #flag
🇹🇿  Flag: Tanzania  #Tz #flag
🇺🇦  Flag: Ukraine  #Ua #flag
🇺🇬  Flag: Uganda  #Ug #flag
🇺🇲  Flag: U.S. Outlying Islands  #Um #flag
🇺🇳  Flag: United Nations  #Un #flag
🇺🇸  Flag: United States  #Us #flag
🇺🇾  Flag: Uruguay  #Uy #flag
🇺🇿  Flag: Uzbekistan  #Uz #flag
🇻🇦  Flag: Vatican City  #Va #flag
🇻🇨  Flag: St. Vincent & Grenadines  #Vc #flag
🇻🇪  Flag: Venezuela  #Ve #flag
🇻🇬  Flag: British Virgin Islands  #Vg #flag
🇻🇮  Flag: U.S. Virgin Islands  #Vi #flag
🇻🇳  Flag: Vietnam  #Vn #flag
🇻🇺  Flag: Vanuatu  #Vu #flag
🇼🇫  Flag: Wallis & Futuna  #Wf #flag
🇼🇸  Flag: Samoa  #Ws #flag
🇽🇰  Flag: Kosovo  #Xk #flag
🇾🇪  Flag: Yemen  #Ye #flag
🇾🇹  Flag: Mayotte  #Yt #flag
🇿🇦  Flag: South Africa  #Za #flag
🇿🇲  Flag: Zambia  #Zm #flag
🇿🇼  Flag: Zimbabwe  #Zw #flag
🏴󠁧󠁢󠁥󠁮󠁧󠁿  Flag: England  #flag #gbeng
🏴󠁧󠁢󠁳󠁣󠁴󠁿  Flag: Scotland  #flag #gbsct
🏴󠁧󠁢󠁷󠁬󠁳󠁿  Flag: Wales  #flag #gbwls
