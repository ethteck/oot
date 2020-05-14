#ifndef _Z_OCEFF_SPOT_H_
#define _Z_OCEFF_SPOT_H_

#include <ultra64.h>
#include <global.h>

struct OceffSpot;

typedef void (*OceffSpotActionFunc)(struct OceffSpot*, GlobalContext*);

typedef struct OceffSpot {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ z_Light* light1;
    /* 0x0150 */ LightInfoPositional lightInfo1;
    /* 0x0160 */ z_Light* light2;
    /* 0x0164 */ LightInfoPositional lightInfo2;
    /* 0x0174 */ f32 unk_174;
    /* 0x0178 */ u16 timer;
    /* 0x017C */ OceffSpotActionFunc actionFunc;
} OceffSpot; // size = 0x0180

extern const ActorInit Oceff_Spot_InitVars;

#endif
