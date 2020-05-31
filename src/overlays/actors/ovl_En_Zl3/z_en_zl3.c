/*
 * File: z_en_zl3.c
 * Overlay: ovl_En_Zl3
 * Description: Adult Zelda
 */

#include "z_en_zl3.h"

#include <vt.h>

#define FLAGS 0x00000010

#define THIS ((EnZl3*)thisx)

void EnZl3_Init(Actor* thisx, GlobalContext* globalCtx);
void EnZl3_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnZl3_Update(Actor* thisx, GlobalContext* globalCtx);
void EnZl3_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B533B0(EnZl3* this, GlobalContext* globalCtx);
void func_80B5458C(EnZl3* this, GlobalContext* globalCtx);
void func_80B55550(EnZl3* this, GlobalContext* globalCtx);
void func_80B555A4(EnZl3* this, GlobalContext* globalCtx);
void func_80B55604(EnZl3* this, GlobalContext* globalCtx);
void func_80B5566C(EnZl3* this, GlobalContext* globalCtx);
void func_80B556CC(EnZl3* this, GlobalContext* globalCtx);
void func_80B5572C(EnZl3* this, GlobalContext* globalCtx);
void func_80B56658(EnZl3* this, GlobalContext* globalCtx);
void func_80B566AC(EnZl3* this, GlobalContext* globalCtx);
void func_80B5670C(EnZl3* this, GlobalContext* globalCtx);
void func_80B5676C(EnZl3* this, GlobalContext* globalCtx);
void func_80B567CC(EnZl3* this, GlobalContext* globalCtx);
void func_80B5682C(EnZl3* this, GlobalContext* globalCtx);
void func_80B568B4(EnZl3* this, GlobalContext* globalCtx);
void func_80B5691C(EnZl3* this, GlobalContext* globalCtx);
void func_80B5697C(EnZl3* this, GlobalContext* globalCtx);
void func_80B569E4(EnZl3* this, GlobalContext* globalCtx);
void func_80B56A68(EnZl3* this, GlobalContext* globalCtx);
void func_80B56AE0(EnZl3* this, GlobalContext* globalCtx);
void func_80B56B54(EnZl3* this, GlobalContext* globalCtx);
void func_80B56BA8(EnZl3* this, GlobalContext* globalCtx);
void func_80B56C24(EnZl3* this, GlobalContext* globalCtx);
void func_80B56C84(EnZl3* this, GlobalContext* globalCtx);
void func_80B56CE4(EnZl3* this, GlobalContext* globalCtx);
void func_80B56D44(EnZl3* this, GlobalContext* globalCtx);
void func_80B58D50(EnZl3* this, GlobalContext* globalCtx);
void func_80B58DB0(EnZl3* this, GlobalContext* globalCtx);
void func_80B58E10(EnZl3* this, GlobalContext* globalCtx);
void func_80B58E7C(EnZl3* this, GlobalContext* globalCtx);
void func_80B58EF4(EnZl3* this, GlobalContext* globalCtx);
void func_80B58F6C(EnZl3* this, GlobalContext* globalCtx);
void func_80B58FDC(EnZl3* this, GlobalContext* globalCtx);
void func_80B5904C(EnZl3* this, GlobalContext* globalCtx);
void func_80B590BC(EnZl3* this, GlobalContext* globalCtx);
void func_80B5912C(EnZl3* this, GlobalContext* globalCtx);
void func_80B591BC(EnZl3* this, GlobalContext* globalCtx);
void func_80B5922C(EnZl3* this, GlobalContext* globalCtx);
void func_80B592A8(EnZl3* this, GlobalContext* globalCtx);
void func_80B59340(EnZl3* this, GlobalContext* globalCtx);
void func_80B593D0(EnZl3* this, GlobalContext* globalCtx);
void func_80B5944C(EnZl3* this, GlobalContext* globalCtx);
void func_80B59DB8(EnZl3* this, GlobalContext* globalCtx);
void func_80B59FE8(EnZl3* this, GlobalContext* globalCtx);
void func_80B59FF4(EnZl3* this, GlobalContext* globalCtx);
void func_80B5A1D0(EnZl3* this, GlobalContext* globalCtx);

// todo sCylinderInit
ColliderCylinderInit_Set3 D_80B5A410 = {
    { COLTYPE_UNK0, 0x00, 0x00, 0x09, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 25, 80, 0, { 0, 0, 0 } },
};

u32 D_80B5A43C[] = { 0x060030C8, 0x06003C48, 0x06004048, 0x06004548, 0x06004948, 0x06004D48, 0x06005148, 0x00000000 };
u32 D_80B5A45C[] = { 0x06003508, 0x06005548, 0x06005948 };
u32 D_80B5A468[] = { 0x00000000 };
u32 D_80B5A46C[] = { 0x00000000, 0x00000000, 0x00000000 };
u32 D_80B5A478[] = { 0x00000000, 0x41200000, 0x00000000 };
u32 D_80B5A484[] = { 0x00000000 };
u32 D_80B5A488[] = { 0x00000000, 0x00000000, 0x00000000 };
u32 D_80B5A494[] = { 0xFFFFFFFF };
u32 D_80B5A498[] = { 0x43140000, 0x43820000, 0xC2AE0000 };
u32 D_80B5A4A4[] = { 0xC1400000, 0x43820000, 0xC3130000, 0x42280000, 0x43820000, 0x41500000 };
u32 D_80B5A4BC[] = { 0x00000000 };

static EnZl3ActionFunc sActionFuncs[] = {
    func_80B59DB8, func_80B55550, func_80B555A4, func_80B55604, func_80B5566C, func_80B556CC, func_80B5572C,
    func_80B56658, func_80B566AC, func_80B5670C, func_80B5676C, func_80B567CC, func_80B5682C, func_80B568B4,
    func_80B5691C, func_80B5697C, func_80B569E4, func_80B56A68, func_80B56AE0, func_80B56B54, func_80B56BA8,
    func_80B56C24, func_80B56C84, func_80B56CE4, func_80B56D44, func_80B58D50, func_80B58DB0, func_80B58E10,
    func_80B58E7C, func_80B58EF4, func_80B58F6C, func_80B58FDC, func_80B5904C, func_80B590BC, func_80B5912C,
    func_80B591BC, func_80B5922C, func_80B592A8, func_80B59340, func_80B593D0,
};

u32 D_80B5A560[] = {
    func_80B5458C,
    func_80B5944C,
};

static EnZl3DrawFunc sDrawFuncs[] = {
    func_80B59FE8,
    func_80B59FF4,
    func_80B5A1D0,
};

const ActorInit En_Zl3_InitVars = {
    ACTOR_EN_ZL3,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_ZL2,
    sizeof(EnZl3),
    (ActorFunc)EnZl3_Init,
    (ActorFunc)EnZl3_Destroy,
    (ActorFunc)EnZl3_Update,
    (ActorFunc)EnZl3_Draw,
};

extern SkeletonHeader D_06010D70;

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B533B0.s")
/*void func_80B533B0(EnZl3 *this, GlobalContext *globalCtx) {
    Actor* thisx = &this->actor;
    //if (thisx) {}

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder_Set3(globalCtx, &this->collider, thisx, &D_80B5A410);
}*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B533FC.s")

void EnZl3_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnZl3* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B53468.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B53488.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B534CC.s")

void func_80B53554(EnZl3* this, s16 arg1) {
    this->unk_244 = arg1;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B53568.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5357C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B53614.s")

void func_80B5366C(EnZl3* this, GlobalContext* globalCtx) {
    func_8002E4B4(globalCtx, &this->actor, 75.0f, 30.0f, 30.0f, 5);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B536B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B536C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B53764.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B537E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B538B0.s")

s32 EnZl3_FrameUpdateMatrix(EnZl3* this) {
    return SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}

u8 func_80B5396C(EnZl3* this) {
    return this->unk_3C8;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B53974.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B53980.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B53B64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B54360.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5458C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B54CE8.s")

s32 func_80B54DB4(EnZl3* this) {
    s32 params = this->actor.params >> 8;

    return params & 0xFF;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B54DC4.s")

s32 func_80B54DD4(EnZl3* this) {
    s32 params = this->actor.params;

    return params & 0xF;
}

void func_80B54DE0(EnZl3* this, GlobalContext* globalCtx) {
    s32 idx = this->unk_318;

    gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[idx].segment);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B54E14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B54EA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B54EF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B54F18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B54FB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55054.s")
/*void func_80B55054(EnZl3 *this) {
    struct Actor *attachedB;
    void *temp_v0;

    if (this->unk328 != 0) {
        attachedB = this->actor.attachedB;
        if (attachedB != 0) {
            temp_v0 = this + 0x2EC;
            if (this->unk2EC < 19.0f) {
                attachedB->unk1A8 = (f32) ((20.0f - *temp_v0) * 12.75f);
                *temp_v0 = (f32) (*temp_v0 + 1.0f);
                return;
            }
            this = this;
            Actor_Kill((Actor *) attachedB);
            this->actor.attachedB = NULL;
        }
    }
}*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B550F0.s")
/*void func_80B550F0(EnZl3 *this) {
    if (this->actor.attachedB != NULL) {
        this->actor.attachedB->posRot.pos.x = this->actor.posRot.pos.x;
        this->actor.attachedB->posRot.pos.y = (kREG(5) + -26.0f) + this->actor.posRot.pos.y;
        this->actor.attachedB->posRot.pos.z = this->actor.posRot.pos.z;
    }
}*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55144.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B551E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55220.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55268.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B552A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B552DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55334.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55368.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B553B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B553E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55408.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55444.s")

void func_80B55550(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    EnZl3_FrameUpdateMatrix(this);
    func_80B550F0(this);
    func_80B55444(this, globalCtx);
}

void func_80B555A4(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B53554(this, 2);
    func_80B550F0(this);
    func_80B55054(this);
    func_80B55444(this, globalCtx);
}

void func_80B55604(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B55144(this);
    func_80B552A8(this, EnZl3_FrameUpdateMatrix(this));
    func_80B55054(this);
    func_80B55444(this, globalCtx);
}

void func_80B5566C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B55334(this, EnZl3_FrameUpdateMatrix(this));
    func_80B55444(this, globalCtx);
}

void func_80B556CC(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B553B4(this, EnZl3_FrameUpdateMatrix(this));
    func_80B55444(this, globalCtx);
}

void func_80B5572C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B55444(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55780.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55808.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5582C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5585C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B558A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B559C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55A58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55A84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55AC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55B04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55B38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55B78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55BAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55C0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55C4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55C70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55CCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55D00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55DB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55E08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55E48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55E7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55EBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55EF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55F38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B55F6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5604C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56090.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56108.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56160.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B561A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B561E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56214.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B562F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5634C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5638C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B563C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56400.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56434.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56474.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B564A8.s")

void func_80B56658(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B564A8(this, globalCtx);
}

void func_80B566AC(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B55B04(this, EnZl3_FrameUpdateMatrix(this));
    func_80B564A8(this, globalCtx);
}

void func_80B5670C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B55B78(this, EnZl3_FrameUpdateMatrix(this));
    func_80B564A8(this, globalCtx);
}

void func_80B5676C(EnZl3* this, GlobalContext* globalCtx) {
    s32 something;

    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    something = EnZl3_FrameUpdateMatrix(this);
    func_80B559C4(this);
    func_80B55C4C(this, something);
}

void func_80B567CC(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B564A8(this, globalCtx);
}

void func_80B5682C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B55A58(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B55CCC(this, EnZl3_FrameUpdateMatrix(this));
    func_80B564A8(this, globalCtx);
    func_80B55D00(this, globalCtx);
}

void func_80B568B4(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B537E8(this);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B55DB0(this, globalCtx);
}

void func_80B5691C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B55E48(this, EnZl3_FrameUpdateMatrix(this));
    func_80B564A8(this, globalCtx);
}

void func_80B5697C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B55EBC(this, EnZl3_FrameUpdateMatrix(this));
    func_80B5585C(this);
    func_80B564A8(this, globalCtx);
}

void func_80B569E4(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B537E8(this);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B55F38(this, EnZl3_FrameUpdateMatrix(this));
    func_80B564A8(this, globalCtx);
    func_80B55F6C(this, globalCtx);
}

void func_80B56A68(EnZl3* this, GlobalContext* globalCtx) {
    s32 something;

    func_80B54DE0(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B537E8(this);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    something = EnZl3_FrameUpdateMatrix(this);
    func_80B564A8(this, globalCtx);
    func_80B56090(this, something);
}

void func_80B56AE0(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B537E8(this);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B55F38(this, EnZl3_FrameUpdateMatrix(this));
    func_80B56108(this, globalCtx);
}

void func_80B56B54(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B564A8(this, globalCtx);
}

void func_80B56BA8(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B561E0(this, EnZl3_FrameUpdateMatrix(this));
    func_80B564A8(this, globalCtx);
    func_80B56214(this, globalCtx);
}

void func_80B56C24(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B562F4(this, globalCtx);
}

void func_80B56C84(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B5638C(this, EnZl3_FrameUpdateMatrix(this));
    func_80B564A8(this, globalCtx);
}

void func_80B56CE4(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B56400(this, EnZl3_FrameUpdateMatrix(this));
    func_80B564A8(this, globalCtx);
}

void func_80B56D44(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    func_80B56474(this, EnZl3_FrameUpdateMatrix(this));
    func_80B564A8(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56DA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56DC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56DEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56E38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56EB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56EE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56F10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56F8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B56FAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57034.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57104.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B571A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B571FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57240.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57298.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B572F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57324.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57350.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B573C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B573FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57458.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57564.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B575B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B575D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B575F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5764C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B576C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57704.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5772C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57754.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B577BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57858.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57890.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57A74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57AAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57AE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57C54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57C7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57C8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57CB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57D60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57D80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57EAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57EEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57F1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B57F84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58014.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58214.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58268.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B582C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B584B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58624.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5884C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58898.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B588E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58938.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5899C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58A1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58A50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58AAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B58C08.s")

void func_80B58D50(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B57EAC(this, globalCtx);
}

void func_80B58DB0(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B57EEC(this, globalCtx);
}

void func_80B58E10(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    Actor_SetHeight(&this->actor, 60.0f);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B57F1C(this, globalCtx);
}

void func_80B58E7C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B53764(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B58014(this, globalCtx);
    func_80B536B4(this);
}

void func_80B58EF4(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B538B0(this);
    func_80B53764(this, globalCtx);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B58214(this, globalCtx);
}

void func_80B58F6C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B537E8(this);
    func_80B536C4(this);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B58268(this, globalCtx);
}

void func_80B58FDC(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B537E8(this);
    func_80B536C4(this);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B582C8(this, globalCtx);
}

void func_80B5904C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B537E8(this);
    func_80B536C4(this);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B584B4(this, globalCtx);
}

void func_80B590BC(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B537E8(this);
    func_80B536C4(this);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B58624(this, globalCtx);
}

void func_80B5912C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B536C4(this);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B56E38(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B57CB4(this, globalCtx);
    func_80B57D60(this, globalCtx);
    func_80B58A1C(this, globalCtx);
}

void func_80B591BC(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B536C4(this);
    func_80B538B0(this);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B58A50(this, globalCtx);
}

void func_80B5922C(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B536C4(this);
    func_80B57298(this);
    Actor_SetHeight(&this->actor, 60.0f);
    func_80B533FC(this, globalCtx);
    func_80B5366C(this, globalCtx);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B58AAC(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B592A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B59340.s")

void func_80B593D0(EnZl3* this, GlobalContext* globalCtx) {
    func_80B54DE0(this, globalCtx);
    func_80B536C4(this);
    func_80B57298(this);
    func_80B5366C(this, globalCtx);
    func_80B56E38(this, globalCtx);
    Actor_SetHeight(&this->actor, 60.0f);
    func_80B534CC(this);
    EnZl3_FrameUpdateMatrix(this);
    func_80B58C08(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5944C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B59698.s")

s32 func_80B59768(EnZl3* this, GlobalContext* globalCtx) {
    s32 cond = Flags_GetSwitch(globalCtx, 0x37) != 0;
    u8 curSpawn;

    if (cond) {
        cond = globalCtx->sceneNum == 0x4F;
        if (!cond) {
            cond = globalCtx->sceneNum == 0x1A;
            if (!cond) {
                cond = globalCtx->sceneNum == 0xE;
                if (!cond) {
                    cond = globalCtx->sceneNum == 0xF;
                }
            }
        }
    }

    if (cond) {
        curSpawn = globalCtx->curSpawn;
        if (((func_80B54DB4(this) == 0x20)) && (curSpawn == 0) && (gSaveContext.timer2Value <= 0)) {
            return 1;
        }
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B59828.s")

void func_80B59A80(EnZl3* this, GlobalContext* globalCtx) {
    if (func_80B59768(this, globalCtx)) {
        Audio_PlaySoundGeneral(NA_SE_OC_REVENGE, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B59AD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B59B6C.s")

void func_80B59DB8(EnZl3* this, GlobalContext* globalCtx) {
    s32 pad;
    ObjectContext* objCtx = &globalCtx->objectCtx;
    s32 objIndex = Object_GetIndex(objCtx, OBJECT_ZL2_ANIME2);
    s32 pad2;

    if (objIndex < 0) {
        osSyncPrintf(VT_FGCOL(RED) "En_Zl3_main_bankアニメーションのバンクを読めない!!!!!!!!!!!!\n" VT_RST);
        return;
    }

    if (Object_IsLoaded(objCtx, objIndex)) {
        this->unk_318 = objIndex;
        func_80B54DE0(this, globalCtx);
        func_80B59B6C(this, globalCtx);
    }
}

void EnZl3_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnZl3* this = THIS;

    if (this->action < 0 || this->action >= 40 || sActionFuncs[this->action] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    sActionFuncs[this->action](this, globalCtx);
}

void EnZl3_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnZl3* this = THIS;
    ActorShape* shape = &this->actor.shape;
    s32 val;

    osSyncPrintf("ゼルダ姫のEn_Zl3_Actor_ct通すよ!!!!!!!!!!!!!!!!!!!!!!!!!\n");
    ActorShape_Init(shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    shape->unk_14 = 0;
    func_80B533B0(this, globalCtx);
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06010D70, NULL, this->limbDrawTable, this->transitionDrawTable,
                     15);

    val = func_80B54DD4(this);
    switch (val) {
        case 1:
            gSaveContext.timer2State = 0;
            break;
        case 3:
            func_80B59A80(this, globalCtx);
            break;
    }

    osSyncPrintf("ゼルダ姫のEn_Zl3_Actor_ctは通った!!!!!!!!!!!!!!!!!!!!!!!!!\n");
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B59F74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B59FE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B59FF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl3/func_80B5A1D0.s")

void EnZl3_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnZl3* this = THIS;

    if (this->drawConfig < 0 || this->drawConfig >= 3 || sDrawFuncs[this->drawConfig] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    sDrawFuncs[this->drawConfig](this, globalCtx);
}
