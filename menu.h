
//{{BLOCK(menu)

//======================================================================
//
//	menu, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 131 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 4192 + 2048 = 6752
//
//	Time-stamp: 2022-04-26, 17:13:52
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MENU_H
#define GRIT_MENU_H

#define menuTilesLen 4192
extern const unsigned short menuTiles[2096];

#define menuMapLen 2048
extern const unsigned short menuMap[1024];

#define menuPalLen 512
extern const unsigned short menuPal[256];

#endif // GRIT_MENU_H

//}}BLOCK(menu)
