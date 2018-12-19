#define MIDNIGHT_ROLLOVER		864000	//number of deciseconds in a day


//Human Overlays Indexes/////////
#define SPECIES_LAYER			23		// mutantrace colors... these are on a seperate layer in order to prvent
#define BODY_LAYER				22		//underwear, undershirts, eyes, lips(makeup)
#define MUTATIONS_LAYER			21		//Tk headglows etc.
#define AUGMENTS_LAYER			20
#define DAMAGE_LAYER			19		//damage indicators (cuts and burns)
#define UNIFORM_LAYER			18
#define ID_LAYER				17
#define SHOES_LAYER				16
#define GLOVES_LAYER			15
#define EARS_LAYER				14
#define SUIT_LAYER				13
#define GLASSES_LAYER			12
#define BELT_LAYER				11		//Possible make this an overlay of somethign required to wear a belt?
#define SUIT_STORE_LAYER		10
#define BACK_LAYER				9
#define HAIR_LAYER				8		//TODO: make part of head layer?
#define FACEMASK_LAYER			7
#define HEAD_LAYER				6
#define HANDCUFF_LAYER			5
#define LEGCUFF_LAYER			4
#define L_HAND_LAYER			3
#define R_HAND_LAYER			2		//Having the two hands seperate seems rather silly, merge them together? It'll allow for code to be reused on mobs with arbitarily many hands
#define FIRE_LAYER				1		//If you're on fire
#define TOTAL_LAYERS			23		//KEEP THIS UP-TO-DATE OR SHIT WILL BREAK ;_;

//Security levels
#define SEC_LEVEL_GREEN	0
#define SEC_LEVEL_BLUE	1
#define SEC_LEVEL_RED	2
#define SEC_LEVEL_DELTA	3

//some arbitrary defines to be used by self-pruning global lists. (see master_controller)
#define PROCESS_KILL 26	//Used to trigger removal from a processing list

#define MANIFEST_ERROR_NAME		1
#define MANIFEST_ERROR_COUNT	2
#define MANIFEST_ERROR_ITEM		4

#define TRANSITIONEDGE			7 //Distance from edge to move to another z-level



//HUD styles. Please ensure HUD_VERSIONS is the same as the maximum index. Index order defines how they are cycled in F12.
#define HUD_STYLE_STANDARD 1
#define HUD_STYLE_REDUCED 2
#define HUD_STYLE_NOHUD 3


#define HUD_VERSIONS 3	//used in show_hud()
//1 = standard hud
//2 = reduced hud (just hands and intent switcher)
//3 = no hud (for screenshots)

#define MINERAL_MATERIAL_AMOUNT 2000
//The amount of materials you get from a sheet of mineral like iron/diamond/glass etc


#define CLICK_CD_MELEE 8
#define CLICK_CD_RANGE 4
#define CLICK_CD_BREAKOUT 100
#define CLICK_CD_HANDCUFFED 10
#define CLICK_CD_TKSTRANGLE 10
#define CLICK_CD_RESIST 20
//click cooldowns, in tenths of a second


#define BE_CLOSE 1		//in the case of a silicon, to select if they need to be next to the atom
#define NO_DEXTERY 1	//if other mobs (monkeys, aliens, etc) can use this
//used by canUseTopic()

//singularity defines
#define STAGE_ONE 1
#define STAGE_TWO 3
#define STAGE_THREE 5
#define STAGE_FOUR 7
#define STAGE_FIVE 9


//SOUND:
#define SOUND_MINIMUM_PRESSURE 10
#define FALLOFF_SOUNDS	1
#define SURROUND_CAP	7
