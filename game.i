# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
# 18 "game.c"
const unsigned short gameTiles[80] __attribute__((aligned(4)))=
{
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
 0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
 0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
 0x7777,0x7777,0x6666,0x6666,0x6666,0x6666,0x7777,0x7777,
 0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

 0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
 0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
};

const unsigned short gameMap[1024] __attribute__((aligned(4)))=
{
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0000,0x0000,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0000,0x0000,

 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0000,0x0000,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0000,0x0000,

 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0000,0x0000,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0000,0x0000,

 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0000,0x0000,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0000,0x0000,

 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0000,0x0000,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0000,0x0000,

 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0000,0x0000,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0000,0x0000,

 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0000,0x0000,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0000,0x0000,

 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0000,0x0000,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,
 0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0000,0x0000,

 0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,
 0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,
 0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,
 0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0000,0x0000,
 0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,
 0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,
 0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,
 0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,0x0000,0x0000,

 0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,
 0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,
 0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,
 0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,0x0000,0x0000,
 0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,
 0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,
 0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,
 0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,0x0000,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short gamePal[256] __attribute__((aligned(4)))=
{
 0x7C1F,0x0000,0x0000,0x0000,0x2819,0x6540,0x7BC0,0x7FFF,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};
