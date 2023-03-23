//Datums for barks and bark accessories

/datum/bark
	var/name = "Default"
	var/id = "Default"
	var/soundpath //Path for the actual sound file used for the bark

	// Pitch vars. The actual range for a bark is [(pitch - (maxvariance*0.5)) to (pitch + (maxvariance*0.5))]
	// Make absolutely sure to take variance into account when curating a sound for bark purposes.
	var/minpitch = BARK_DEFAULT_MINPITCH
	var/maxpitch = BARK_DEFAULT_MAXPITCH
	var/minvariance = BARK_DEFAULT_MINVARY
	var/maxvariance = BARK_DEFAULT_MAXVARY

	// Speed vars. Speed determines the number of characters required for each bark, with lower speeds being faster with higher bark density
	var/minspeed = BARK_DEFAULT_MINSPEED
	var/maxspeed = BARK_DEFAULT_MAXSPEED

	// Visibility vars. Regardless of what's set below, these can still be obtained via adminbus and genetics. Rule of fun.
	var/list/ckeys_allowed
	var/ignore = FALSE //Controls whether or not this can be chosen in chargen
	var/allow_random = FALSE //Allows chargen randomization to use this. This is mainly to restrict the pool to sounds that fit well for most characters


// So the basic jist of the sound design here: We make use primarily of shorter instrument samples for barks. We would've went with animalese instead, but doing so would've involved quite a bit of overhead to saycode.
// Short instrument samples tend to sound surprisingly nice for barks, being able to be played in rapid succession without being outright obnoxious.
// It isn't just instruments that work well here, however. Anything that works well as a stab? Short attack, no sustain, a decent amount of release? Also works extremely well for barks.

/datum/bark/mutedc2
	name = "Muted String (Low)"
	id = "mutedc2"
	soundpath = 'sound/instruments/synthesis_samples/guitar/crisis_muted/C2.ogg'
	allow_random = TRUE

/datum/bark/mutedc3
	name = "Muted String (Medium)"
	id = "mutedc3"
	soundpath = 'sound/instruments/synthesis_samples/guitar/crisis_muted/C3.ogg'
	allow_random = TRUE

/datum/bark/mutedc4
	name = "Muted String (High)"
	id = "mutedc4"
	soundpath = 'sound/instruments/synthesis_samples/guitar/crisis_muted/C4.ogg'
	allow_random = TRUE

/datum/bark/banjoc3
	name = "Banjo (Medium)"
	id = "banjoc3"
	soundpath = 'sound/instruments/banjo/Cn3.ogg'
	allow_random = TRUE

/datum/bark/banjoc4
	name = "Banjo (High)"
	id = "banjoc4"
	soundpath = 'sound/instruments/banjo/Cn4.ogg'
	allow_random = TRUE

/datum/bark/squeaky
	name = "Squeaky"
	id = "squeak"
	soundpath = 'sound/items/toysqueak1.ogg'
	maxspeed = 4

/datum/bark/beep
	name = "Beepy"
	id = "beep"
	soundpath = 'sound/machines/terminal_select.ogg'
	maxpitch = 1 //Bringing the pitch higher just hurts your ears :<
	maxspeed = 4 //This soundbyte's too short for larger speeds to not sound awkward

/datum/bark/chitter
	name = "Chittery"
	id = "chitter"
	minspeed = 4 //Even with the sound being replaced with a unique, shorter sound, this is still a little too long for higher speeds
	soundpath = 'sound/voice/barks/chitter.ogg'

/datum/bark/synthetic_grunt
	name = "Synthetic (Grunt)"
	id = "synthgrunt"
	soundpath = 'sound/misc/bloop.ogg'

/datum/bark/synthetic
	name = "Synthetic (Normal)"
	id = "synth"
	soundpath = 'sound/machines/uplinkerror.ogg'

/datum/bark/bullet
	name = "Windy"
	id = "bullet"
	maxpitch = 1.6 //This works well with higher pitches!
	soundpath = 'sound/weapons/bulletflyby.ogg' //This works... Surprisingly well as a bark? It's neat!

/datum/bark/coggers
	name = "Brassy"
	id = "coggers"
	soundpath = 'sound/machines/clockcult/integration_cog_install.ogg' //Yet another unexpectedly good bark sound

/datum/bark/banjoahuh
	name = "Ahuh"
	id = "banjokazooie"
	soundpath = 'sound/voice/barks/ahuh.ogg'

/datum/bark/bleat_bark
	name = "Bleat"
	id = "Bleat"
	soundpath = 'sound/voice/barks/bleat_bark.ogg'

/datum/bark/bottalk1
	name = "bot1"
	id = "bottalk_1"
	soundpath = 'sound/voice/barks/bottalk_1.ogg'

/datum/bark/bottalk2
	name = "bot2"
	id = "bottalk_2"
	soundpath = 'sound/voice/barks/bottalk_2.ogg'

/datum/bark/bottalk3
	name = "bot3"
	id = "bottalk_3"
	soundpath = 'sound/voice/barks/bottalk_3.ogg'

/datum/bark/bottalk4
	name = "bot4"
	id = "bottalk_4"
	soundpath = 'sound/voice/barks/bottalk_4.ogg'

/datum/bark/bug
	name = "bug"
	id = "bug"
	soundpath = 'sound/voice/barks/bug.ogg'

/datum/bark/caw
	name = "caw"
	id = "caw"
	soundpath = 'sound/voice/barks/caw.ogg'

/datum/bark/caw2
	name = "caw2"
	id = "caw2"
	soundpath = 'sound/voice/barks/caw2.ogg'

/datum/bark/caw3
	name = "caw3"
	id = "caw3"
	soundpath = 'sound/voice/barks/caw3.ogg'

/datum/bark/mothsqueak
	name = "mothsqueak"
	id = "mothsqueak"
	soundpath = 'sound/voice/barks/mothsqueak.ogg'

/datum/bark/pugdog
	name = "pug"
	id = "pug"
	soundpath = 'sound/voice/barks/pug.ogg'

/datum/bark/pugdog2
	name = "pug2"
	id = "pug2"
	soundpath = 'sound/voice/barks/pug2.ogg'

/datum/bark/speak1
	name = "speak_1"
	id = "speak_1"
	soundpath = 'sound/voice/barks/speak_1.ogg'

/datum/bark/speak2
	name = "speak_2"
	id = "speak_2"
	soundpath = 'sound/voice/barks/speak_2.ogg'

/datum/bark/speak3
	name = "speak_3"
	id = "speak_3"
	soundpath = 'sound/voice/barks/speak_3.ogg'

/datum/bark/speak4
	name = "speak_4"
	id = "speak_4"
	soundpath = 'sound/voice/barks/speak_4.ogg'

/datum/bark/zap
	name = "zap"
	id = "zap"
	soundpath = 'sound/voice/barks/zap.ogg'

// Genetics-only/admin-only sounds. These either clash hard with the audio design of the above sounds, or have some other form of audio design issue, but aren't *too* awful as a sometimes thing.
// Rule of fun very much applies to this section. Audio design is extremely important for the above section, but down here? No gods, no masters, pure anarchy.
// The min/max variables simply don't apply to these, as only chargen cares about them. As such, there's no need to define those.

/datum/bark/bikehorn
	name = "Bikehorn"
	id = "horn"
	soundpath = 'sound/instruments/bikehorn/Cn4.ogg'
	ignore = TRUE // This is an unusually quiet sound.

/datum/bark/bwoink
	name = "Bwoink"
	id = "bwoink"
	soundpath = 'sound/effects/adminhelp.ogg'
	ignore = TRUE // Emergent heart attack generation

/datum/bark/merp
	name = "Merp"
	id = "merp"
	soundpath = 'modular_citadel/sound/voice/merp.ogg'
	ignore = TRUE

/datum/bark/bark
	name = "Bark"
	id = "bark"
	soundpath = 'modular_citadel/sound/voice/bark1.ogg'
	ignore = TRUE

/datum/bark/nya
	name = "Nya"
	id = "nya"
	soundpath = 'modular_citadel/sound/voice/nya.ogg'
	ignore = TRUE

/datum/bark/moff
	name = "Moff"
	id = "moff"
	soundpath = 'modular_citadel/sound/voice/mothsqueak.ogg'
	ignore = TRUE

/datum/bark/weh
	name = "Weh"
	id = "weh"
	soundpath = 'modular_citadel/sound/voice/weh.ogg'
	ignore = TRUE

/datum/bark/honk
	name = "Annoying Honk"
	id = "honk"
	soundpath = 'sound/creatures/goose1.ogg'
	ignore = TRUE
