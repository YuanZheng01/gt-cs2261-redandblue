
//{{BLOCK(line)

//======================================================================
//
//	line, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 2 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 64 + 2048 = 2624
//
//	Time-stamp: 2022-04-14, 08:41:48
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LINE_H
#define GRIT_LINE_H

#define lineTilesLen 64
extern const unsigned short lineTiles[32];

#define lineMapLen 2048
extern const unsigned short lineMap[1024];

#define linePalLen 512
extern const unsigned short linePal[256];

#endif // GRIT_LINE_H

//}}BLOCK(line)
