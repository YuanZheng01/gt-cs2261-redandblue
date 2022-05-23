
//{{BLOCK(covers)

//======================================================================
//
//	covers, 512x512@4, 
//	+ palette 256 entries, not compressed
//	+ 700 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x64 
//	Total size: 512 + 22400 + 8192 = 31104
//
//	Time-stamp: 2022-04-23, 11:45:32
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_COVERS_H
#define GRIT_COVERS_H

#define coversTilesLen 22400
extern const unsigned short coversTiles[11200];

#define coversMapLen 8192
extern const unsigned short coversMap[4096];

#define coversPalLen 512
extern const unsigned short coversPal[256];

#endif // GRIT_COVERS_H

//}}BLOCK(covers)
