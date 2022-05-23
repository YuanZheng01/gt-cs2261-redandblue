/**
 * The basic structure of rythm game - Red and Blue!
 * Milestone 3 phase.
 * 
 * Game Part h. file.
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

// Structs
typedef struct  
{
    int id;

    int row;
    int col;
    // int rdel;    Not used for now. Probably for special mode.
    // int cdel;
    int width;
    int height;

    int xCalibrate;
    int yCalibrate;

    int active;
    int velocity;

    int currFrame;
} NOTE;

typedef struct  
{
    int row;
    int col;
    int width;
    int height;

    int xCalibrate;
    int yCalibrate;

    int active;
} INPUTLINE;

#define NOTECOUNT 9

extern int score;
extern int shadowCount;
extern int timer;
extern int cheater;

extern INPUTLINE line;
extern NOTE reds[NOTECOUNT];
extern NOTE blues[NOTECOUNT];

extern NOTE* red;
extern NOTE* blue;

#define MAPWIDTH (1024)

// extern NOTE[] queue; // was plan to set up a queue of note for a song. But still wondering what is a better way to calibrate with the song beat.

void initGame();
void updateGame();
void drawGame();

void initInputLine();
// void updateInputLine();
// void drawInputLine(); Will in the form of BG.

//void initNote(NOTE* note);
void initNotes();
void generateRed();
void generateBlue();
void updateNotes();
void drawNotes();
void hitRed();
void hitBlue();

void noteGenerator();
//void nextNode(NODE**);    // Featurue in future.

void drawScore(int x, int y);
void drawFrame();
void drawCombo();

void recycleNote(NOTE*);