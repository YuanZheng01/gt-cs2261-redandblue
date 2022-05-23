
//{{BLOCK(BG0)

//======================================================================
//
//	BG0, 512x512@4, 
//	+ palette 256 entries, not compressed
//	+ 2 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x64 
//	Total size: 512 + 64 + 8192 = 8768
//
//	Time-stamp: 2022-04-13, 08:45:52
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BG0_H
#define GRIT_BG0_H

#define BG0TilesLen 64
extern const unsigned short BG0Tiles[32];

#define BG0MapLen 8192
extern const unsigned short BG0Map[4096];

#define BG0PalLen 512
extern const unsigned short BG0Pal[256];

#endif // GRIT_BG0_H

//}}BLOCK(BG0)
