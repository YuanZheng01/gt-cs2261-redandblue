
//{{BLOCK(rating)

//======================================================================
//
//	rating, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 86 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 2752 + 2048 = 5312
//
//	Time-stamp: 2022-04-26, 15:01:47
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_RATING_H
#define GRIT_RATING_H

#define ratingTilesLen 2752
extern const unsigned short ratingTiles[1376];

#define ratingMapLen 2048
extern const unsigned short ratingMap[1024];

#define ratingPalLen 512
extern const unsigned short ratingPal[256];

#endif // GRIT_RATING_H

//}}BLOCK(rating)
