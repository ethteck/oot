/*
 * File: z_magic_dark.c
 * Overlay: ovl_Magic_Dark
 * Description: Nayru's Love
 */

#include "z_magic_dark.h"

#define FLAGS 0x02000010

#define THIS ((MagicDark*)thisx)

void MagicDark_Init(Actor* thisx, GlobalContext* globalCtx);
void MagicDark_Destroy(Actor* thisx, GlobalContext* globalCtx);
void MagicDark_Update(Actor* thisx, GlobalContext* globalCtx);
void MagicDark_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B874E4(Actor* thisx, GlobalContext* globalCtx);
void func_80B87A18(Actor* thisx, GlobalContext* globalCtx);
void func_80B8772C(GlobalContext* globalCtx, f32 arg1);

const ActorInit Magic_Dark_InitVars = {
    ACTOR_MAGIC_DARK,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(MagicDark),
    (ActorFunc)MagicDark_Init,
    (ActorFunc)MagicDark_Destroy,
    (ActorFunc)MagicDark_Update,
    (ActorFunc)MagicDark_Draw,
};

#include "z_magic_dark_cutscene_data.c"

void MagicDark_Init(Actor* thisx, GlobalContext* globalCtx) {
    MagicDark* this = THIS;
    Player* player = PLAYER;

    if (gSaveContext.linkAge != 0) {
        this->unk_15C = 0.4f;
    } else {
        this->unk_15C = 0.6f;
    }

    this->actor.posRot.pos = player->actor.posRot.pos;
    Actor_SetScale(&this->actor, 0.0f);
    this->actor.room = -1;

    if (gSaveContext.nayrusLoveTimer != 0) {
        this->actor.update = func_80B874E4;
        this->actor.draw = func_80B87A18;
        this->actor.scale.x = this->actor.scale.z = THIS->unk_15C * 1.6f;
        // THIS needed below to match and also used above for consistency
        this->actor.scale.y = THIS->unk_15C * 0.8f;
        this->unk_14C = 0;
        this->unk_14E = 0;
    } else {
        this->unk_14C = 0;
        gSaveContext.nayrusLoveTimer = 0;
    }
}

void MagicDark_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    if (gSaveContext.nayrusLoveTimer == 0) {
        func_800876C8(globalCtx);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Dark/func_80B874E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Dark/func_80B8772C.s")
/*void func_80B8772C(GlobalContext *globalCtx, f32 arg1) {
    f32 temp_f0;
    f32 temp_f10;
    s32 temp_v0;
    s32 temp_v0_2;
    u8 temp_t0;
    void *temp_a1;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    f32 phi_f12_2;
    void *phi_v1;
    s32 phi_v0;
    void *phi_a1;
    f32 phi_f0_2;
    void *phi_v1_2;
    s32 phi_v0_2;

    if (globalCtx->roomCtx.curRoom.unk_03 != 5) {
        phi_f12_2 = arg1;
        if (phi_f12_2 < 0.0f) {
            phi_f12_2 = 0.0f;
        }
        if (phi_f12_2 > 1.0f) {
            phi_f12_2 = 1.0f;
        }
        phi_f12_2 -= 0.2f;
        if (phi_f12_2 < 0.2f) {
            phi_f12_2 = 0.0f;
        }
        globalCtx->envCtx.unk_9E = (850.0f - globalCtx->envCtx.unk_D2) * phi_f12_2;
        if (phi_f12_2 == 0.0f) {
            phi_v1 = globalCtx + 0x10000;
            phi_v0 = 0;
loop_9:
            temp_v0 = phi_v0 + 1;
            temp_v1 = phi_v1 + 2;
            temp_v1->unkABA = (u16)0;
            phi_v1 = temp_v1;
            phi_v0 = temp_v0;
            if (temp_v0 != 3) {
                goto loop_9;
            }
            return;
        }
        temp_v1_2 = globalCtx + 0x10000;
        temp_f0 = phi_f12_2 * 5.0f;
        temp_a1 = globalCtx + 0x10000;
        phi_a1 = temp_a1;
        phi_f0_2 = temp_f0;
        phi_v1_2 = temp_v1_2;
        phi_v0_2 = 0;
        if (temp_f0 > 1.0f) {
            phi_a1 = temp_a1;
            phi_f0_2 = 1.0f;
            phi_v1_2 = temp_v1_2;
            phi_v0_2 = 0;
        }
loop_13:
        temp_t0 = phi_a1->unkAF3;
        temp_f10 = (f32) temp_t0;
        if ((s32) temp_t0 < 0) {
            temp_f10 += 4294967296.0f;
        }
        temp_v0_2 = phi_v0_2 + 1;
        temp_v1_3 = phi_v1_2 + 2;
        temp_v1_3->unkABA = (s16) (0 - (s32) (temp_f10 * phi_f0_2));
        phi_a1 += 1;
        phi_v1_2 = temp_v1_3;
        phi_v0_2 = temp_v0_2;
        if (temp_v0_2 != 3) {
            goto loop_13;
        }
    }
}*/

void MagicDark_Update(Actor *thisx, GlobalContext *globalCtx) {
    MagicDark* this = THIS;
    s32 pad;
    Player* player = PLAYER;

    func_8002F974(&this->actor, NA_SE_PL_MAGIC_SOUL_BALL);
    if (this->unk_14C < 0x23) {
        func_80B8772C(globalCtx, this->unk_14C * (1 / 45.0f));
        Math_SmoothScaleMaxMinF(&this->actor.scale.x, this->unk_15C * (1 / 12.000001f), 0.05f, 0.01f, 0.0001f);
        Actor_SetScale(&this->actor, this->actor.scale.x);
    } else if (this->unk_14C < 0x37) {
        Actor_SetScale(&this->actor, this->actor.scale.x * 0.9f);
        Math_SmoothScaleMaxMinF(&this->unk_154, player->unk_90C, 0.5f, 3.0f, 1.0f);
        if (this->unk_14C >= 0x31) {
            func_80B8772C(globalCtx, (0x36 - this->unk_14C) * 0.2f);
        }
    } else {
        this->actor.update = func_80B874E4;
        this->actor.draw = func_80B87A18;
        this->actor.scale.x =  this->actor.scale.z = THIS->unk_15C * 1.6f;
        // THIS needed below to match and also used above for consistency
        this->actor.scale.y = THIS->unk_15C * 0.8f;
        this->unk_14C = 0;
        this->unk_14E = 0;
    }
    this->unk_14C += 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Dark/func_80B87A18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Dark/MagicDark_Draw.s")
