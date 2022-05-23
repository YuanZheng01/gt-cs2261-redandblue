/**
 * The basic structure of rythm game - Red and Blue!
 * Milestone 3 phase.
 * 
 * Game Part c. file.
 * 
 * A little rush... Will make most method more clear and short in next MS.
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

// Effect Sound
#include "hitsound.h"

OBJ_ATTR shadowOAM[128];

// Didn't make an UI for now, but it do update.
int frame;
int score;
int velocity = 3;

int cheater;

int combo;
int perfectCount;
int greatCount;
int goodCount;
int badCount;

INPUTLINE line;
NOTE reds[NOTECOUNT];
NOTE blues[NOTECOUNT];

int* gameR;
int* gameB;

int gameRcount;
int gameBcount;

// Pointers point to the first note that close to input line.
NOTE* red;
NOTE* blue;

// Store the frame that the note should generate based on velocity.
//Red and Blue pace{15, 40, 65, 90, 115...} However it's seems like noe correct...
// Seems like it use 24 frame as base...

// this will take a lot of time. Based on the situation will only use one song.
// (But I love other two...)

// For now, I decide to record a video and calibrate with it. The full song will in the next milestone.
int redandblueR[] = {111, 313, 491, 538, 684, 730, 778, 860, 916, 965, 1016, 1065, 1139, 1183, 1232, 1255, 1302, 1349, 1397, 1447, 1472, 1519, 1660, 1682, 1733, 1828, 1878, 1921, 2025, 2141, 2158, 2204, 2294, 3159, 3189, 3211, 3236, 3260, 3286, 3307, 3332, 3355, 3377, 3404, 3427, 3452, 3472, 3498, 3519, 3547, 3595, 3644, 3692, 3763, 3808, 3855, 3909, 3931, 4027, 4120, 4217, 4314, 4334, 4456, 4476, 4505, 4550, 4596, 4690, 4715, 4739, 4765, 4790, 4825, 4848, 4873, 4923, 4944, 4969, 5002, 5027, 5050, 5074, 5097, 5122, 5144, 5170, 5192, 5217, 5240, 5264, 5301, 5322, 5350, 5398, 5422, 5445, 5457, 5486, 5505, 5555, 5673, 5698, 5745, 5863, 5884, 5937, 5958, 5982, 6029, 6056, 6082, 6127, 6154, 6176, 6217, 6245, 6318, 6363, 6412,  6436, 6458, 6508, 6604, 6628, 6651, 6699, 6724, 6741, 6788, 6819, 6838, 6894, 0};
int redandblueB[] = {111, 313, 587, 635, 706, 755, 802, 860, 943, 991, 1041, 1065, 1113, 1161, 1207, 1255, 1280, 1327, 1372, 1424, 1447, 1493,  1660, 1710, 1754, 1828, 1853, 1900, 2025, 2150, 2163, 2260, 2344, 2400, 2448, 2498, 2543, 2590, 2638, 2687, 2734, 2782, 2831, 2879, 2921, 2971, 3017, 3070, 3119, 3572, 3617, 3666, 3712, 3738, 3786, 3834, 3879, 3931, 4027, 4120, 4217, 4359, 4385, 4404, 4430, 4525, 4574, 4596, 4690, 4727, 4752, 4778, 4815, 4835, 4862, 4884, 4912, 4933, 4954, 4980, 5015, 5039, 5062, 5110, 5133, 5157, 5205, 5229, 5252, 5287, 5315, 5338, 5362, 5385, 5410, 5433, 5457, 5577, 5601, 5647, 5765, 5790, 5834, 5863, 5884, 5937, 5958, 5982, 6029, 6056, 6082, 6127, 6154, 6176, 6217, 6267, 6318, 6338, 6412, 6508, 6531, 6557, 6604, 6628, 6651, 6699, 6724, 6741, 6788, 6819, 6838, 6894, 0};

// Backup
//int redandblueR[] = {111, 313, 491, 538, 587, 635, 684, 730, 778, 825, 870, 916, 965, 1016, 1113, 1161, 1207, 1253, 1302, 1349, 1397, 1445, 1493, 1541, 1588, 1635, 1682, 1733, 1781, 1826, 1878, 1921, 1971, 2016, 2065, 2109, 2158, 2210, 2258, 2306, 2356, 2403, 2448, 2498, 2543, 2590, 2638, 2687, 2734, 2782, 2831, 2879, 2921, 2971, 3017, 3070, 3119, 3159, 3211, 3260, 3307, 3355, 3404, 3452, 3498, 3547, 3595, 3644, 3692, 3738, 3786, 3834, 3879, 3927, 3975, 4024, 4075, 4120, 4168, 4219, 4263, 4314, 4359, 4404, 4456, 4505, 4550, 4596, 4715, 4765, 4815, 4862, 4912, 4954, 5002, 5050, 5097, 5144, 5192, 5240, 5287, 5338, 5385, 5433, 5486, 5527, 5577, 5622, 5672, 5718, 5764, 5810, 5860, 5909, 5957, 6004, 6052, 6099, 6149, 6195, 6245, 6291, 6338, 6388, 6436, 6480, 6531, 6578, 6628, 6676, 6724, 6769, 6819, 6868};
//int redandblueB[] = {111, 313, 511, 562, 609, 659, 706, 755, 802, 848, 895, 943, 991, 1041, 1089, 1139, 1183, 1232, 1280, 1327, 1372, 1424, 1472, 1519, 1567, 1617, 1663, 1710, 1754, 1801, 1853, 1900, 1946, 1992, 2041, 2091, 2140, 2187, 2229, 2279, 2329, 2371, 2422, 2472, 2520, 2565, 2617, 2665, 2713, 2760, 2807, 2852, 2901, 2944, 2994, 3043, 3091, 3141, 3189, 3236, 3286, 3332, 3427, 3472, 3519, 3572, 3617, 3666, 3712, 3763, 3808, 3855, 3909, 3954, 3998, 4049, 4096, 4146, 4192, 4239, 4286, 4334, 4385, 4430, 4476, 4525, 4574, 4621, 4739, 4790, 4835, 4884, 4933, 4980, 5027, 5074, 5122, 5170, 5217, 5264, 5315, 5362, 5410, 5457, 5505, 5555, 5601, 5651, 5699, 5746, 5793, 5838, 5887, 5932, 5981, 6030, 6078, 6125, 6171, 6218, 6267, 6314, 6363, 6414, 6458, 6508, 6557, 6604, 6651, 6696, 6741, 6788, 6838, 6884};

int worldexecutemeR[];
int worldexecutemeB[];

int etherstrikeR[];
int etherstrikeB[];

// Store when to generate a note
// For each song.

void initGame() {
    score = 0;
    frame = 0;

    combo = 0;
    perfectCount = 0;
    greatCount = 0;
    goodCount = 0;
    badCount = 0;
    gameBcount = 0;
    gameRcount = 0;

    initInputLine();
    initNotes();
    // Point to the first note in list.

    red = reds;
    blue = blues;

    gameR = redandblueR[0];
    gameB = redandblueB[0];
    
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128);
}

void updateGame() {
    noteGenerator();
    updateInputLine();
    updateNotes();
    frame++;
}

// Will make it more like a rythm game after sprite... It not suppose to be a square...
// At least it working...
void drawGame() {
    hideSprites();

    drawCombo();
    drawNotes();
    drawScore(SCREENWIDTH, 0);
    // drawFrame();    // Will hide in gameplay.
    shadowCount = 0;

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128);
}

void initInputLine() {
    line.row = 128;
    line.col = 0;
    line.width = 16;
    line.height = 16;

    // Calculate the middle of figure, in future it will be a real line.
    line.yCalibrate = 8;

    line.active = 1;
}

// Will add more sound effect in sound channel 2.
void updateInputLine() {
    if (BUTTON_PRESSED(BUTTON_A) || BUTTON_PRESSED(BUTTON_B)) {
        hitRed();
    }

    if (BUTTON_PRESSED(BUTTON_LEFT) || BUTTON_PRESSED(BUTTON_RIGHT) || BUTTON_PRESSED(BUTTON_UP) ||BUTTON_PRESSED(BUTTON_DOWN)) {
        hitBlue();
    }
}

// Great Removed
void hitRed() {
    // The valid input range and input timing catch for red.
        if (red->row + red->yCalibrate > line.row + line.yCalibrate - 50 
            && red->row + red->yCalibrate < line.row + line.yCalibrate + 30
            && red->active) {
            
            // Perfect
            if (red->row + red->yCalibrate > line.row + line.yCalibrate - 10 
                && red->row + red->yCalibrate < line.row + line.yCalibrate + 5) {
                score += 100;
                perfectCount++;
                combo++;

                recycleNote(red);
                red = &reds[(red->id + 1) % NOTECOUNT];
            // Great
            } else if (red->row + red->yCalibrate > line.row + line.yCalibrate - 25 
                && red->row + red->yCalibrate < line.row + line.yCalibrate + 15) {
                score += 80;
                greatCount++;
                combo++;

                recycleNote(red);
                red = &reds[(red->id + 1) % NOTECOUNT];
            // Bad
            } else {
                score += 10;
                badCount++;
                combo = 0;

                playSoundB(hitsound_data, hitsound_length, 0);

                recycleNote(red);
                red = &reds[(red->id + 1) % NOTECOUNT];
            }
        }
}

void hitBlue() {
    // The valid input range and input timing catch for red.
        if (blue->row + blue->yCalibrate > line.row + line.yCalibrate - 60 
            && blue->row + blue->yCalibrate < line.row + line.yCalibrate + 60
            && blue->active) {
            
            // Perfect
            if (blue->row + blue->yCalibrate > line.row + line.yCalibrate - 10 
                && blue->row + blue->yCalibrate < line.row + line.yCalibrate + 5) {
                score += 100;
                perfectCount++;
                combo++;

                recycleNote(blue);
                blue = &blues[(blue->id + 1) % NOTECOUNT];
            // Great
            } else if (blue->row + blue->yCalibrate > line.row + line.yCalibrate - 25 
                && blue->row + blue->yCalibrate < line.row + line.yCalibrate + 15) {
                score += 80;
                greatCount++;
                combo++;

                recycleNote(blue);
                blue = &blues[(blue->id + 1) % NOTECOUNT];
            // Bad
            } else {
                score += 10;
                badCount++;
                combo = 0;

                playSoundB(hitsound_data, hitsound_length, 0);

                recycleNote(blue);
                blue = &blues[(blue->id + 1) % NOTECOUNT];
            }
        }
}

// Not used for now.
// void initNote(NOTE* note) {
//     note->id = 
//     note->active = 0;
//     note->col = 0;
//     note->row = 0;

//     note->height = 16;
//     note->width = 16;

//     note->xCalibrate = 8;
//     note->velocity = 1; //  Velocity will based on the setting.
// }

void recycleNote(NOTE* note) {
    note->active = 0;
    note->col = 0;
    note->row = 0;
    note->height = 4;
    note->width = 32;
    note->yCalibrate = 8;
    note->currFrame = 0;
}

void initNotes() {
    for (int i = 0; i < NOTECOUNT; i++) {
        // Initial red note.
        reds[i].id = i;
        reds[i].active = 0;
        reds[i].col = 0;
        reds[i].row = 0;
        reds[i].height = 4;
        reds[i].width = 32;
        reds[i].yCalibrate = 8;
        reds[i].velocity = velocity;
        reds[i].currFrame = 0;


        // Initial blue note.
        blues[i].id = i;
        blues[i].active = 0;
        blues[i].col = 0;
        blues[i].row = 0;
        blues[i].height = 4;
        blues[i].width = 32;
        blues[i].yCalibrate = 8;
        blues[i].velocity = velocity;
        blues[i].currFrame = 0;
    }
}

void generateRed() {
    // Find the first note after red pointer.
    // Initalize it and add to screen.
    for (int i = 0; i < NOTECOUNT; i++) {
        if (!reds[(i + red->id) % NOTECOUNT].active) {
            reds[(i + red->id) % NOTECOUNT].col = (SCREENWIDTH / 3) - (reds[i % NOTECOUNT].width / 2);
            reds[(i + red->id) % NOTECOUNT].row = 0;
            reds[(i + red->id) % NOTECOUNT].active = 1;
            return;
        }
    }
}

void generateBlue() {
    // Find the first note after blue pointer.
    // Initalize it and add to screen.
    for (int i = 0; i < NOTECOUNT; i++) {
        if (!blues[(i + blue->id) % NOTECOUNT].active) {
            blues[(i + blue->id) % NOTECOUNT].col = (2 * SCREENWIDTH / 3) - (blues[i % NOTECOUNT].width / 2);
            blues[(i + blue->id) % NOTECOUNT].row = 0;
            blues[(i + blue->id) % NOTECOUNT].active = 1;
            return;
        }
    }
}

// Will focus on note come from differnt direction and movement.
void updateNotes() {
    // When out of screen, deactive it. Make the next node become the current node.
    if (red->row >= line.row + line.yCalibrate + 30) {
        recycleNote(red);
        playSoundB(hitsound_data, hitsound_length, 0);
        PALETTE[1] = PALETTE[4];
        red = &reds[(red->id + 1) % 9];
        combo = 0;
    }

    if (blue->row >= line.row + line.yCalibrate + 30) {
        recycleNote(blue);
        playSoundB(hitsound_data, hitsound_length, 0);
        blue = &blues[(blue->id + 1) % 9];
        PALETTE[1] = PALETTE[5];
        combo = 0;
    }

    // Update active notes.
    for (int i = 0; i < NOTECOUNT; i++) {
        if (cheater == 9 && reds[i].row + reds[i].yCalibrate > line.row + line.yCalibrate - 5 
                && reds[i].row + reds[i].yCalibrate < line.row + line.yCalibrate + 5) {
                    hitRed();
                    playSoundB(hitsound_data, hitsound_length, 0);
                    PALETTE[2] = PALETTE[4];
        }

        if (cheater == 9 && blues[i].row + blues[i].yCalibrate > line.row + line.yCalibrate - 5 
                && blues[i].row + blues[i].yCalibrate < line.row + line.yCalibrate + 5) {
                    hitBlue();
                    playSoundB(hitsound_data, hitsound_length, 0);
                    PALETTE[3] = PALETTE[5];
        }

        if (reds[i].active) {
            reds[i].row += reds[i].velocity;
        }
        if (blues[i].active) {
            blues[i].row += blues[i].velocity;
        }
    }
}

// BTW the reason it flash on the top since it deactive the node that go outside of screen.
// Then it immediatly active the next one.
void drawNotes() {
    for (int i = 0; i < NOTECOUNT; i++) {
        if (reds[i].active) {
            shadowOAM[shadowCount].attr0 = reds[i].row | ATTR0_4BPP | ATTR0_WIDE;
            shadowOAM[shadowCount].attr1 = reds[i].col | ATTR1_SMALL;
            shadowOAM[shadowCount++].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(reds[i].currFrame * 4 , 4);
            reds[i].currFrame = (reds[i].currFrame + 1) % 3;
        } else {
            shadowOAM[shadowCount++].attr0 = ATTR0_HIDE;
        }
        if (blues[i].active) {
            shadowOAM[shadowCount].attr0 = blues[i].row | ATTR0_4BPP | ATTR0_WIDE;
            shadowOAM[shadowCount].attr1 = blues[i].col | ATTR1_SMALL;
            shadowOAM[shadowCount++].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(blues[i].currFrame * 4 , 5);
            blues[i].currFrame = (blues[i].currFrame + 1) % 3;
        } else {
            shadowOAM[shadowCount++].attr0 = ATTR0_HIDE;
        }
    }
}

// Simple for now, will become way much complex in future.
void noteGenerator() {
    // The logic will change in future. Just for test.
    if (frame == (redandblueB[gameBcount] - (line.row / velocity))) {
        generateBlue();
        gameBcount++;
    }

    if (frame == (redandblueR[gameRcount] - (line.row / velocity))) {
        generateRed();
        gameRcount++;
    }
}



void drawScore(int x, int y) {
    int temp = score;
    for (int i = 0; i < 8 && temp != 0; i++) {
        shadowOAM[shadowCount].attr0 = (ROWMASK & y) | ATTR0_SQUARE;
        shadowOAM[shadowCount].attr1 = (COLMASK & (x - (1 + i) * 16)) | ATTR1_SMALL;
        shadowOAM[shadowCount++].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((temp % 10) * 2, 1 * 2);
        temp /= 10;
    }
}

void drawCombo() {
    int temp = combo;
    int len = 0;
    int xoff = 0;
    while (temp > 0) {
        len++;
        temp /= 10;
    }
    temp = combo;

    switch(len) {
        case 1:
            xoff = -8;
            break;
        case 2:
            xoff = 0;
            break;
        case 3:
            xoff = 8;
            break;
        case 4:
            xoff = 16;
            break;
    }

    for (int i = 0; i < len && temp != 0; i++) {
        shadowOAM[shadowCount].attr0 = (ROWMASK & 100) | ATTR0_SQUARE;
        shadowOAM[shadowCount].attr1 = (COLMASK & (SCREENWIDTH / 2 + xoff - i * 16)) | ATTR1_SMALL;
        shadowOAM[shadowCount++].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((temp % 10) * 2, 1 * 2);
        temp /= 10;
    }
}

void drawFrame() {
    int temp = frame;
    for (int i = 0; i < 6 && temp != 0; i++) {
        shadowOAM[shadowCount].attr0 = (ROWMASK & 16) | ATTR0_SQUARE;
        shadowOAM[shadowCount].attr1 = (COLMASK & (SCREENWIDTH - (1 + i) * 16)) | ATTR1_SMALL;
        shadowOAM[shadowCount++].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((temp % 10) * 2, 1 * 2);
        temp /= 10;
    }
}

// void drawRating() {
//     int sco = score;
//     int per = perfectCount;
//     int gre = greatCount;
//     int goo = goodCount;
//     int bad = badCount;
// }