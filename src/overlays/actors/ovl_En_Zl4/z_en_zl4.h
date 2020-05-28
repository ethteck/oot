#ifndef _Z_EN_ZL4_H_
#define _Z_EN_ZL4_H_

#include <ultra64.h>
#include <global.h>

struct EnZl4;

typedef void (*EnZl4ActionFunc)(struct EnZl4*, GlobalContext*);
typedef void (*EnZl4DrawFunc)(struct EnZl4*, GlobalContext*);

typedef struct EnZl4 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnZl4ActionFunc actionFunc;
    /* 0x0194 */ ColliderCylinder collider;
    /* 0x01E0 */ s16 unk_1E0;
    /* 0x01E2 */ char unk_1E2[0x26];
    /* 0x0208 */ u8 unk_208;
    /* 0x0209 */ u8 unk_209;
    /* 0x020A */ char unk_20A[0x3];
    /* 0x020D */ u8 unk_20D;
    /* 0x020E */ u8 unk_20E;
    /* 0x020F */ char unk_20F[0x9];
    /* 0x0218 */ Vec3s limbDrawTable[18];
    /* 0x0284 */ Vec3s transitionDrawTable[18];
} EnZl4; // size = 0x02F0

extern const ActorInit En_Zl4_InitVars;

#endif
