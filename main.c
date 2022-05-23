/**
 * The basic structure of rythm game - Red and Blue!
 * Early Demo phase.
 * 
 * Now I kinda find a better UI style for this game... Probably gonna have some change on UI style.
 * 
 * Finished so for: Basic Game System, playble level, sound effect, Palettel Change.
 * 
 * Still needs to add: A better UI and more songs.
 * 
 * Bugs: In the TEST Stage, hikari didn't show up properly and mess up with Palette.
 * 
 * How to Play: Press A then start to get into game stage. AB will hit the red note, arrows will hit the blue note. When the song end, it will go to rating page, press A to restart the game.
 * 
 * 
 * 
 * Before the demo meeting, I'll try to make some update.
 * 
 * 
 * For 2261 MS only!
 * I do like to share my homework! No need to remain anonymous.
 * 
 * I made this only by me myself.
 * 
 * @author Zheng Yuan
 * @version 1.0
 * @userid zyuan300
 * @GTID 903764567
 */

#include <stdlib.h>
#include <stdio.h>
#include "mode0.h"
#include "gameSystem.h"
#include "sound.h"
#include "spritesheet.h"
#include "covers.h"

// Music
#include "redandblue.h"
#include "worldexecuteme.h"
#include "etherstrike.h"

// Background
//#include "BG0.h"
//#include "line.h"
#include "splash.h"
#include "menu.h"
#include "game.h"
#include "pause.h"
#include "rating.h"
#include "instruction.h"
#include "testMap1.h"
#include "testMap2.h"


OBJ_ATTR shadowOAM[128];

int shadowCount;

int timer; // Might change to a real "Timer" in future.

int frameCount;



extern score;
extern velocity;
extern int cheater;

int hOff;
int vOff;
int hikariOff;
int screenBlock;

SPRITE hikari;


enum {HIKARIFRONT, HIKARIBACK, HIKARIRIGHT, HIKARILEFT, HIKARIIDLE};

// Prototypes.
void initialize();

// State Prototypes.
// I made some change to state. Make it more easier to get familiar.
// Also I attach the visualization state picture in the files. Better check that first.
void goToSplash();
void splash();

void goToMenu();
void menu();

// void goToSetting();
// void setting();

// void goToSelect();
// void select();

void goToGame();
void game();

void goToPause();
void pause();

void goToRating();
void rating();

// For Menu
int ins;
int songID;

/// Not plan to use.///

// void goToStart();
// void start();
// void goToWin();
// void win();
// void goToLose();
// void lose();

// States.
enum {
    SPLASH,
    MENU,
    //SETTING,
    SELECT,
    GAME,
    PAUSE,
    RATING,
    INSTRUCTION,
    TEST
};
int state;

// Button Variables.
unsigned short buttons;
unsigned short oldButtons;

// Shadow OAM.
OBJ_ATTR shadowOAM[128];

int main() {
    initialize();

    while (39) {
        // Update button variables.
        oldButtons = buttons;
        buttons = BUTTONS;

        // State Machine.
        switch (state) {
        case SPLASH:
            splash();
            break;
        case MENU:
            menu();
            break;
        // case SETTING:
        //     setting();
        //     break;
        // case SELECT:
        //     select();
        //     break;
        case GAME:
            game();
            break;
        case PAUSE:
            pause();
            break;
        case RATING:
            rating();
            break;
        case INSTRUCTION:
            instruction();
            break;
        case TEST:
            test();
        }
    }
}

// Sets up GBA.
void initialize() {
    DMANow(3, splash, PALETTE, 256);
    
    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE; //| BG0_ENABLE | BG1_ENABLE; // Bitwise OR the BG(s) you want to use and Bitwise OR SPRITE_ENABLE if you want to use sprites.
    REG_BG0CNT = 0 | BG_CHARBLOCK(1) | BG_SCREENBLOCK(27) | BG_SIZE_SMALL;
    REG_BG1CNT = 0 | BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL;

    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    
    hideSprites();


    buttons = BUTTONS;
    oldButtons = 0;

    setupInterrupts();
    setupSounds();

    goToSplash();
}

// Sets up the splash state.
void goToSplash() {
    waitForVBlank();

    DMANow(3, splashPal, PALETTE, splashPalLen / 2);
    DMANow(3, splashTiles, &CHARBLOCK[0], splashTilesLen / 2);
    DMANow(3, splashMap, &SCREENBLOCK[28], splashMapLen / 2);

    state = SPLASH;
}

// Runs every frame of the splash state.
void splash() {
    if (BUTTON_PRESSED(BUTTON_START) || BUTTON_PRESSED(BUTTON_A)) {
        goToMenu();
    }
}

// Sets up the menu state.
void goToMenu() {
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128);
    songID = 1;
    ins = 0;
    cheater = 0;

    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE; //| BG0_ENABLE | BG1_ENABLE; // Bitwise OR the BG(s) you want to use and Bitwise OR SPRITE_ENABLE if you want to use sprites.
    REG_BG0CNT = 0 | BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL;
    //REG_BG1CNT = 0 | BG_CHARBLOCK(1) | BG_SCREENBLOCK(28) | BG_SIZE_LARGE;

    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);

    DMANow(3, menuPal, PALETTE, menuPalLen / 2);

    DMANow(3, menuTiles, &CHARBLOCK[0], menuTilesLen / 2);
    DMANow(3, menuMap, &SCREENBLOCK[28], menuMapLen / 2);

    // This is for the larger BG1 to show the music cover.
    //DMANow(3, coversTiles, &CHARBLOCK[1], coversTilesLen / 2);
    //DMANow(3, coversMap, &SCREENBLOCK[28], coversMapLen / 2);

    state = MENU;
}

// Runs every frame of the menu state.
void menu() {
    // Will chance in future UI improvement.
    // Song Selection will happen in this part in future.
    if (BUTTON_PRESSED(BUTTON_START)) {
        if (ins) {
            goToInstruction();
        } else {
            initGame();
            goToGame();
            playSoundA(redandblue_data, redandblue_length, 0);
        }
    }

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        cheater += 1;
    }

    if (BUTTON_PRESSED(BUTTON_B)) {
        goToSplash();
    }

    // Only one song for now.
    // if (BUTTON_PRESSED(BUTTON_LEFT)) {
    //     switch (songID){
    //         case 1 :
    //             songID = 3;
    //             break;
    //         case 2 :
    //             songID = 1;
    //             break;
    //         case 3 :
    //             songID = 2;
    //             break;
    //     }
    // }
    // if (BUTTON_PRESSED(BUTTON_RIGHT)) {
    //     switch (songID){
    //         case 1 :
    //             songID = 2;
    //             break;
    //         case 2 :
    //             songID = 3;
    //             break;
    //         case 3 :
    //             songID = 1;
    //             break;
    //     }
    // }

    if (BUTTON_PRESSED(BUTTON_UP)) {
        if (ins){
            ins = 0;
            PALETTE[2] = PALETTE[3];
            PALETTE[3] = PALETTE[4]; 
        }
    }

    if (BUTTON_PRESSED(BUTTON_DOWN)) {
        if (!ins){
            ins = 1;
            PALETTE[3] = PALETTE[2];
            PALETTE[2] = PALETTE[4]; 
        }
    }

    // if (BUTTON_PRESSED(BUTTON_SELECT)) {
    //     goToSetting();
    // }
}

// Sets up the setting state.
// void goToSetting() {
//     waitForVBlank();
//     state = SETTING;
// }

// Runs every frame of the setting state.
// void setting() {
//     if (BUTTON_PRESSED(BUTTON_B)) {
//         goToMenu();
//     }
// }

// // Sets up the select state.
// void goToSelect() {}

// // Runs every frame of the select state.
// void select() {}

// Sets up the game state.
void goToGame() {
    waitForVBlank();

    DMANow(3, gamePal, PALETTE, gamePalLen / 2);

    DMANow(3, gameTiles, &CHARBLOCK[0], gameTilesLen / 2);
    DMANow(3, gameMap, &SCREENBLOCK[28], gameMapLen / 2);

    state = GAME;
}

// Runs every frame of the game state.
void game() {
    updateGame();
    drawGame();

    // Will modify in future UI improvement.
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToPause();
    }

    timer++;
}

// Sets up the pause state.
void goToPause() {
    hideSprites();
    DMANow(3, pausePal, PALETTE, pausePalLen / 2);
    DMANow(3, pauseTiles, &CHARBLOCK[0], pauseTilesLen / 2);
    DMANow(3, pauseMap, &SCREENBLOCK[28], pauseMapLen / 2);

    waitForVBlank();
    pauseSound();
    DMANow(3, shadowOAM, OAM, 128);
    state = PAUSE;
}

// Runs every frame of the pause state.
void pause() {
    // Will change in future UI improvement.
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        DMANow(3, gamePal, PALETTE, gamePalLen / 2);
        DMANow(3, gameTiles, &CHARBLOCK[0], gameTilesLen / 2);
        DMANow(3, gameMap, &SCREENBLOCK[28], gameMapLen / 2);
        waitForVBlank();
        unpauseSound();
        goToGame();
    }

    if (BUTTON_PRESSED(BUTTON_START)) {
        hideSprites();
        goToMenu();
    }
}

// Sets up the rating state.
void goToRating() {
    hideSprites();
    DMANow(3, ratingPal, PALETTE, ratingPalLen / 2);
    DMANow(3, ratingTiles, &CHARBLOCK[0], ratingTilesLen / 2);
    DMANow(3, ratingMap, &SCREENBLOCK[28], ratingMapLen / 2);
    drawScore(SCREENWIDTH / 2 + 40, 80);
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128);
    cheater = 0;
    state = RATING;
}

// Runs every frame of the rating state.
void rating() {
    //drawScore();
    if (BUTTON_PRESSED(BUTTON_START) || BUTTON_PRESSED(BUTTON_A) || BUTTON_PRESSED(BUTTON_B)) {
        goToMenu();
    }

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        cheater++;
    }

    if (cheater == 39) {
        goToTest();
    }     
}

// Sets up the instruction state.
void goToInstruction() {
    hideSprites();
    DMANow(3, instructionPal, PALETTE, instructionPalLen / 2);
    DMANow(3, instructionTiles, &CHARBLOCK[0], instructionTilesLen / 2);
    DMANow(3, instructionMap, &SCREENBLOCK[28], instructionMapLen / 2);
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128);
    state = INSTRUCTION;
}

void instruction() {
    if (BUTTON_PRESSED(BUTTON_A) || BUTTON_PRESSED(BUTTON_B) || BUTTON_PRESSED(BUTTON_START)) {
        goToMenu();
    }
}


// Bonus.
void goToTest() {
    waitForVBlank();

    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE;

    DMANow(3, testMap1Pal, PALETTE, testMap1PalLen / 2);

    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(23) | BG_SIZE_SMALL | BG_4BPP;
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(24) | BG_SIZE_WIDE | BG_4BPP;

    DMANow(3, testMap1Tiles, &CHARBLOCK[0], testMap1TilesLen / 2);
    DMANow(3, testMap1Map, &SCREENBLOCK[24], testMap1MapLen / 2);
    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;

    DMANow(3, testMap2Tiles, &CHARBLOCK[1], testMap2TilesLen / 2);
    DMANow(3, testMap2Map, &SCREENBLOCK[23], testMap2MapLen / 2);

    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;

    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen/2);
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen/2);

    vOff = 0;
    hOff = 0;

    hikariOff = 0;

    screenBlock = 24;

    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128);

    initTest();
    initPlayer();

    cheater = 0;
    state = TEST;
}

void test() {
    // if (cheater > 39) {
    //     goToSplash();
    // }
    updateTest();
    drawTest();
}

void initTest() {
    initPlayer();
}

void updateTest() {
    updatePlayer();
}

void drawTest() {
    //drawPlayer();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128);

    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;
}

void initPlayer() {
    hikari.width = 32;
    hikari.height = 32;
    hikari.rdel = 1;
    hikari.cdel = 1;

    hikari.worldCol = SCREENHEIGHT / 2 - hikari.height / 2 + vOff;
    hikari.worldCol = SCREENWIDTH / 2 - hikari.width / 2 + hOff;
    hikari.aniCounter = 0;
    hikari.curFrame = 0;
    hikari.numFrames = 3;
    hikari.aniState = HIKARIFRONT;
}

void updatePlayer() {
    // if (hikari.aniState != HIKARIIDLE) {
    //     hikari.prevAniState = hikari.aniState;
    //     hikari.aniState = HIKARIIDLE;
    // }
    // if (hikari.aniCounter % 15 == 0) {
    //     hikari.curFrame = (hikari.curFrame + 1) % hikari.numFrames;
    // }
    if (BUTTON_HELD(BUTTON_RIGHT)) {
        // hikari.aniState = HIKARIRIGHT;

        if (hikari.worldCol + hikari.width < MAPWIDTH - 1) {
            hikari.worldCol += hikari.cdel;
        }
        
        if (screenBlock < 27 && (hOff < (MAPWIDTH - SCREENWIDTH)) && (hikari.worldCol - hikariOff > SCREENWIDTH / 3)) {
            hOff += hikari.cdel; 
            hikariOff += hikari.cdel;
        } else if (screenBlock == 27){
            goToMenu();
        }
    }
    
    // if (hikari.aniState == HIKARIIDLE) {
    //     hikari.curFrame = 1;
    //     hikari.aniCounter = 0;
    //     hikari.aniState = hikari.prevAniState;
    // } else {
    //     hikari.aniCounter++; 
    // }

    if (hOff > 256) {
        screenBlock++;
        hOff -= 256;
    
        REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(screenBlock) | BG_SIZE_WIDE | BG_4BPP;
    }

    if (hikariOff > 512) {
        hikariOff -= 512;
    }

    REG_BG1HOFF = hOff;
    //animatePlayer();
}

// void animatePlayer() {
//     hikari.prevAniState = hikari.aniState;
//     hikari.aniState = HIKARIFRONT;

//     if(hikari.aniCounter % 20 == 0) {
//         hikari.curFrame = (hikari.curFrame + 1) % hikari.numFrames;
//     }

//     if(BUTTON_HELD(BUTTON_UP))
//         hikari.aniState = HIKARIBACK;
//     if(BUTTON_HELD(BUTTON_DOWN))
//         hikari.aniState = HIKARIFRONT;
//     if(BUTTON_HELD(BUTTON_LEFT))
//         hikari.aniState = HIKARILEFT;
//     if(BUTTON_HELD(BUTTON_RIGHT))
//         hikari.aniState = HIKARIRIGHT;

//     if (hikari.aniState == HIKARIIDLE) {
//         hikari.curFrame = 0;
//         hikari.aniCounter = 0;
//         hikari.aniState = hikari.prevAniState;
//     } else {
//         hikari.aniCounter++;
//     }
// }

// void drawPlayer() {
//     if (hikari.hide) {
//         shadowOAM[0].attr0 |= ATTR0_HIDE;
//     } else {
//         shadowOAM[0].attr0 = (ROWMASK & (hikari.worldRow - vOff)) | ATTR0_SQUARE;
//         shadowOAM[0].attr1 = (COLMASK & (hikari.worldCol - hOff)) | ATTR1_MEDIUM;
//         shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(hikari.aniState * 4, (hikari.curFrame * 4) + 8);
//     }
// }

// For Vblank and 
void setupInterrupts() {

	REG_IME = 0;

	// Set up the interrupt for VB
    REG_INTERRUPT = (ihp*) interruptHandler;
	REG_IE |= INT_VBLANK;
	REG_DISPSTAT |= INT_VBLANK_ENABLE;
    
    // Set up the interrupt handler for button.
    REG_IE |= INT_BUTTON;
    REG_KEYCNT |= BUTTON_A | BUTTON_B | BUTTON_UP | BUTTON_DOWN | BUTTON_LEFT | BUTTON_RIGHT | BUTTON_SELECT | BUTTON_START | KEYCNT_INT_ENABLE;

	REG_IME = 1;
}

void interruptHandler() {

	REG_IME = 0;

    /// When hit the note, change the bg color.
    if ((state == GAME)) {
        if (PALETTE[1] > 0) {
            colorDecay(&PALETTE[1]);
        }
        if (PALETTE[2] > 0) {
            colorDecay(&PALETTE[2]);
        }

        if (PALETTE[3] > 0) {
            colorDecay(&PALETTE[3]);
        }
    }
    if (state == GAME && (REG_IF & INT_BUTTON) && (~BUTTONS & (BUTTON_A | BUTTON_B))) {
        PALETTE[2] = PALETTE[4];
    }

    if (state == GAME && (REG_IF & INT_BUTTON) && (~BUTTONS & (BUTTON_UP | BUTTON_DOWN | BUTTON_LEFT | BUTTON_RIGHT))) {
        PALETTE[3] = PALETTE[5];
    }

	if(REG_IF & INT_VBLANK) {
        if (soundA.isPlaying) {

            // Handle soundA playing in the interruptHandler function
            soundA.vBlankCount = soundA.vBlankCount + 1;
            if (soundA.vBlankCount > soundA.duration) {
                if (soundA.loops) {
                    playSoundA(soundA.data, soundA.length, soundA.loops);
                } else {
                    soundA.isPlaying = 0;
                    dma[1].cnt = 0;
                    REG_TM0CNT = TIMER_OFF;
                    if (state == GAME) {
                        goToRating();
                    }
                }
            }
        }

        if (soundB.isPlaying) {

            // Handle soundB playing in the interruptHandler function
            soundB.vBlankCount = soundB.vBlankCount + 1;
            if (soundB.vBlankCount > soundB.duration) {
                if (soundB.loops) {
                    playSoundA(soundB.data, soundB.length, soundB.loops);
                } else {
                    soundB.isPlaying = 0;
                    dma[2].cnt = 0;
                    REG_TM1CNT = TIMER_OFF;
                }
            }
		}
	}

    REG_IF = REG_IF;

	REG_IME = 1;
}

void colorDecay(u16* color) {
    int red = (*color & 31) << 3;
    int green = ((*color >> 5) & 31) << 3;
    int blue = ((*color >> 10) & 31) << 3;
    if (red > 0) {
        red--;
    }
    if (green > 0) {
        green--;
    }
    if (blue > 0) {
        blue--;
    }
    
    *color = GBACOLOR(red, green, blue);
}

/// Not Plan to use ///

// // Sets up the start state.
// void goToStart() {}
// // Runs every frame of the start state.
// void start() {}
// // Sets up the win state.
// void goToWin() {}
// // Runs every frame of the win state.
// void win() {}
// // Sets up the lose state.
// void goToLose() {}
// // Runs every frame of the lose state.
// void lose() {}