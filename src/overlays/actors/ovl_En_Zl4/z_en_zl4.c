/*
 * File: z_en_zl4.c
 * Overlay: ovl_En_Zl4
 * Description: Child Princess Zelda
 */

#include "z_en_zl4.h"

#define FLAGS 0x00000019

#define THIS ((EnZl4*)thisx)

void EnZl4_Init(Actor* thisx, GlobalContext* globalCtx);
void EnZl4_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnZl4_Update(Actor* thisx, GlobalContext* globalCtx);
void EnZl4_Draw(Actor* thisx, GlobalContext* globalCtx);

u16 EnZl4_GetText(GlobalContext* globalCtx, Actor* thisx);
s16 func_80B5B9B0(GlobalContext* globalCtx, Actor* thisx);
void func_80B5DE1C(EnZl4* this, GlobalContext* globalCtx);
void func_80B5E090(EnZl4* this, GlobalContext* globalCtx);
void func_80B5E108(EnZl4* this, GlobalContext* globalCtx);

const ActorInit En_Zl4_InitVars = {
    ACTOR_EN_ZL4,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_ZL4,
    sizeof(EnZl4),
    (ActorFunc)EnZl4_Init,
    (ActorFunc)EnZl4_Destroy,
    (ActorFunc)EnZl4_Update,
    (ActorFunc)EnZl4_Draw,
};

//todo sCylinderInit
ColliderCylinderInit D_80B5E780 =
{
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 10, 44, 0, { 0, 0, 0 } },
};

CollisionCheckInfoInit2 D_80B5E7AC = { 0x00, 0x0000, 0x0000, 0x0000, 0xFF };

struct_80034EC0_Entry D_80B5E7B8[] = {
    { 0x06000654, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },  { 0x0600E5C8, 1.0f, 0.0f, -1.0f, 0x02, -1.0f },
    { 0x0600EBC4, 1.0f, 0.0f, -1.0f, 0x00, -1.0f }, { 0x06010DF8, 1.0f, 0.0f, -1.0f, 0x02, -1.0f },
    { 0x06011248, 1.0f, 0.0f, -1.0f, 0x00, -1.0f }, { 0x06011698, 1.0f, 0.0f, -1.0f, 0x00, -1.0f },
    { 0x06011B34, 1.0f, 0.0f, -1.0f, 0x00, -8.0f }, { 0x060125E4, 1.0f, 0.0f, -1.0f, 0x02, 0.0f },
    { 0x06012E58, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },  { 0x06013280, 1.0f, 0.0f, -1.0f, 0x02, -1.0f },
    { 0x06013628, 1.0f, 0.0f, -1.0f, 0x00, -1.0f }, { 0x06013A50, 1.0f, 0.0f, -1.0f, 0x02, -1.0f },
    { 0x06013EA0, 1.0f, 0.0f, -1.0f, 0x00, -1.0f }, { 0x06015F14, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },
    { 0x060169B4, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },  { 0x06016D08, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },
    { 0x0601726C, 1.0f, 0.0f, -1.0f, 0x02, -1.0f }, { 0x06017818, 1.0f, 0.0f, -1.0f, 0x00, -8.0f },
    { 0x0601805C, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },  { 0x06018898, 1.0f, 0.0f, -1.0f, 0x02, -1.0f },
    { 0x0601910C, 1.0f, 0.0f, -1.0f, 0x00, -1.0f }, { 0x06019600, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },
    { 0x0601991C, 1.0f, 0.0f, -1.0f, 0x02, -1.0f }, { 0x0601A2FC, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },
    { 0x0601AAE0, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },  { 0x0601AE88, 1.0f, 0.0f, -1.0f, 0x00, -1.0f },
    { 0x0601B874, 1.0f, 0.0f, -1.0f, 0x02, 0.0f },  { 0x0601BCF0, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },
    { 0x0601C494, 1.0f, 0.0f, -1.0f, 0x00, -1.0f }, { 0x0601C7B0, 1.0f, 0.0f, -1.0f, 0x00, -1.0f },
    { 0x0601CE08, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },  { 0x0600F0A4, 1.0f, 0.0f, -1.0f, 0x02, 0.0f },
    { 0x0600F894, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },  { 0x06000654, 1.0f, 0.0f, -1.0f, 0x00, -8.0f },
};

#include "z_en_zl4_cutscene_data.c"

u32 D_80B5FB14[] = {
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x0000001A, 0x00000015, 0x00000003,
};
u32 D_80B5FB3C[] = {
    0x00000000,
    0x00000000,
    0x00000000,
};
u32 D_80B5FB48[] = {
    0x060046F0,
    0x06004AF0,
    0x06004EF0,
    0x060052F0,
};
u32 D_80B5FB58[] = {
    0x06002AF0, 0x06002EF0, 0x060032F0, 0x060036F0, 0x06003AF0,
    0x06003EF0, 0x060042F0, 0x00000000, 0x00000000, 0x00000000,
};

extern SkeletonHeader D_0600E038;

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5B7B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5B888.s")

u16 EnZl4_GetText(GlobalContext* globalCtx, Actor* thisx) {
    u16 faceReaction = Text_GetFaceReaction(globalCtx, 0x16);
    u16 itemCount;
    s16 ret;
    if (faceReaction != 0) {
        return faceReaction;
    }

    itemCount = 0;
    if (CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD)) {
        itemCount = 1;
    }
    if (CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
        itemCount += 1;
    }
    if (CHECK_QUEST_ITEM(QUEST_ZORA_SAPPHIRE)) {
        itemCount += 1;
    }

    if (itemCount >= 2) {
        ret = 0x703D;
    } else {
        ret = 0x703C;
    }
    return ret;
}

s16 func_80B5B9B0(GlobalContext* globalCtx, Actor* thisx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        return 0;
    }
    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5B9E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5BB38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5BB78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5BBC0.s")

void func_80B5BC00(EnZl4* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5BC00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5BCDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/EnZl4_Init.s")
/*void EnZl4_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnZl4* this = THIS;

    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_0600E038, NULL, this->limbDrawTable, this->transitionDrawTable, 18);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 18.0f);
    func_80034EC0(&this->skelAnime, &D_80B5E7B8, 0x15);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_80B5E780);
    func_80061EFC(&this->actor.colChkInfo, NULL, &D_80B5E7AC);
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.unk_1F = 6;
    this->actor.textId = -1;
    this->unk_20E = 0;
    this->unk_20D = 0;

    if (gSaveContext.sceneSetupIndex >= 4) {
        func_80034EC0(&this->skelAnime, &D_80B5E7B8, 0);
        this->actionFunc = func_80B5E108;
    } else if (gSaveContext.eventChkInf[4] & 1) {
        func_80034EC0(&this->skelAnime, &D_80B5E7B8, 0);
        this->actionFunc = func_80B5E090;
    } else {
        if (gSaveContext.entranceIndex != 0x5F0) {
            func_80034EC0(&this->skelAnime, &D_80B5E7B8, 0x15);
            this->unk_209 = 0;
            this->unk_208 = 0;
        } else {
            func_80B5BC00(this, globalCtx);
            func_80034EC0(&this->skelAnime, &D_80B5E7B8, 0);
            this->unk_209 = 5;
            this->unk_208 = 0;
        }
        this->actionFunc = func_80B5DE1C;
    }
}*/

void EnZl4_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    EnZl4* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5BF90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5BFE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5C008.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5C160.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5C458.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5C984.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5CF70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5D3CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5D610.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5DAD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5DE1C.s")

void func_80B5E090(EnZl4 *this, GlobalContext *globalCtx) {
    func_800343CC(globalCtx, &this->actor, &this->unk_1E0, this->collider.dim.radius + 60.0f, EnZl4_GetText, func_80B5B9B0);
    func_80B5BB78(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5E108.s")

void EnZl4_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnZl4* this = THIS;
    ColliderCylinder* collider = &this->collider;

    if (this->actionFunc != func_80B5E108) {
        SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    }
    func_80B5B9E8(thisx);
    func_8002E4B4(globalCtx, thisx, 0.0f, 0.0f, 0.0f, 4);
    this->actionFunc(this, globalCtx);
    Collider_CylinderUpdate(thisx, collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, collider);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5E364.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5E4F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/EnZl4_Draw.s")
