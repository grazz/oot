/*
 * File: z_oceff_storm.c
 * Overlay: ovl_Oceff_Storm
 * Description: Song of Storms Effect
 */

#include "z_oceff_storm.h"

#define FLAGS 0x02000030

#define THIS ((OceffStorm*)thisx)

void OceffStorm_Init(Actor* thisx, GlobalContext* globalCtx);
void OceffStorm_Destroy(Actor* thisx, GlobalContext* globalCtx);
void OceffStorm_Update(Actor* thisx, GlobalContext* globalCtx);
void OceffStorm_Draw(Actor* thisx, GlobalContext* globalCtx);

void OceffStorm_Draw2(Actor* thisx, GlobalContext* globalCtx);

void OceffStorm_DefaultAction(OceffStorm* this, GlobalContext* globalCtx);
void OceffStorm_UnkAction(OceffStorm* this, GlobalContext* globalCtx);

const ActorInit Oceff_Storm_InitVars = {
    ACTOR_OCEFF_STORM,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(OceffStorm),
    (ActorFunc)OceffStorm_Init,
    (ActorFunc)OceffStorm_Destroy,
    (ActorFunc)OceffStorm_Update,
    (ActorFunc)OceffStorm_Draw,
};

#include "z_oceff_storm_gfx.c"

void OceffStorm_SetupAction(OceffStorm* this, OceffStormActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void OceffStorm_Init(Actor* thisx, GlobalContext* globalCtx) {
    OceffStorm* this = THIS;
    OceffStorm_SetupAction(this, OceffStorm_DefaultAction);
    this->posYOffAdd = 0;
    this->counter = 0;
    this->primColorAlpha = 0;
    this->vtxAlpha = 0;
    this->actor.scale.y = 0.0f;
    this->actor.scale.z = 0.0f;
    this->actor.scale.x = 0.0f;
    this->posYOff = this->posYOffAdd;

    if (this->actor.params == 1) {
        OceffStorm_SetupAction(this, OceffStorm_UnkAction);
        this->actor.draw = OceffStorm_Draw2;
    } else {
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_OKARINA_EFFECT, this->actor.posRot.pos.x,
                    this->actor.posRot.pos.y - 30.0f, this->actor.posRot.pos.z, 0, 0, 0, 1);
    }
}

void OceffStorm_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    OceffStorm* this = THIS;
    Player* player = PLAYER;

    func_800876C8(globalCtx);
    if (gSaveContext.nayrusLoveTimer) {
        player->unk_692 |= 0x40;
    }
}

void OceffStorm_DefaultAction(OceffStorm* this, GlobalContext* globalCtx) {
    if (this->counter < 20) {
        this->primColorAlpha = (s8)(this->counter * 5.0f);
    } else if (this->counter > 80) {
        this->primColorAlpha = (s8)((100 - this->counter) * 5.0f);
    } else {
        this->primColorAlpha = 100;
    }

    if (this->counter < 10 || this->counter >= 90) {
        this->vtxAlpha = 0;
    } else {
        if (this->counter <= 65) {
            if (this->vtxAlpha <= 200) {
                this->vtxAlpha += 10;
            }
            this->actor.scale.x = this->actor.scale.z = 0.4f;
            this->actor.scale.y = 0.3f;
        } else if (this->counter > 65) {
            this->vtxAlpha = (90 - this->counter) * 10;
        } else {
            this->vtxAlpha = 255;
            this->actor.scale.x = this->actor.scale.z = 0.4f;
        }
    }

    if (this->counter > 60) {
        this->actor.posRot.pos.y += this->posYOff * 0.01f;
        this->posYOff += this->posYOffAdd;
        this->posYOffAdd += 10;
    }

    if (this->counter < 100) {
        this->counter++;
    } else {
        Actor_Kill(&this->actor);
    }
}

void OceffStorm_UnkAction(OceffStorm* this, GlobalContext* globalCtx) {
    if (this->primColorAlpha < 100) {
        this->primColorAlpha += 5;
    }
    // ! @bug Actor_Kill is never called so the actor will stay alive forever
}

void OceffStorm_Update(Actor* thisx, GlobalContext* globalCtx) {
    OceffStorm* this = THIS;
    Player* player = PLAYER;

    this->actor.posRot.pos = player->actor.posRot.pos;
    this->actor.shape.rot.y = func_8005A9F4(ACTIVE_CAM);
    this->actionFunc(this, globalCtx);
}

void OceffStorm_Draw2(Actor* thisx, GlobalContext* globalCtx) {
    u32 scroll;
    OceffStorm* this = THIS;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    scroll = globalCtx->state.frames & 0xFFF;
    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_oceff_storm.c", 449);
    gDPPipeSync(gfxCtx->polyXlu.p++);
    if (1) {}
    gfxCtx->polyXlu.p = func_80093F34(gfxCtx->polyXlu.p);
    gDPSetAlphaDither(gfxCtx->polyXlu.p++, G_AD_NOISE);
    gDPSetColorDither(gfxCtx->polyXlu.p++, G_CD_NOISE);
    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0x80, 0x80, 200, 200, 150, this->primColorAlpha);
    gSPDisplayList(gfxCtx->polyXlu.p++, sTextureDL);
    gSPDisplayList(gfxCtx->polyXlu.p++, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, scroll * 8, scroll * 4, 64, 64, 1,
                                                         scroll * 4, scroll * 4, 64, 64));
    gSPTextureRectangle(gfxCtx->polyXlu.p++, 0, 0, (SCREEN_WIDTH << 2), (SCREEN_HEIGHT << 2), G_TX_RENDERTILE, 0, 0,
                        140, (1 << 15) | (31 << 10) | 884);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_oceff_storm.c", 477);
}

void OceffStorm_Draw(Actor* thisx, GlobalContext* globalCtx) {
    u32 scroll;
    OceffStorm* this;
    GraphicsContext* gfxCtx;
    Vtx* vtxPtr;
    Gfx* dispRefs[4];

    this = THIS;
    vtxPtr = vertices;
    scroll = globalCtx->state.frames & 0xFFF;
    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_oceff_storm.c", 486);

    func_80093D84(globalCtx->state.gfxCtx);

    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0x80, 0x80, 0xFF, 0xFF, 0xC8, 0xFF);
    gDPSetEnvColor(gfxCtx->polyXlu.p++, 0x96, 0x96, 0x00, 0x80);
    gDPSetAlphaDither(gfxCtx->polyXlu.p++, G_AD_NOISE);
    gDPSetColorDither(gfxCtx->polyXlu.p++, G_CD_NOISE);

    vtxPtr[0].v.cn[3] = vtxPtr[6].v.cn[3] = vtxPtr[16].v.cn[3] = vtxPtr[25].v.cn[3] = this->vtxAlpha >> 1;
    vtxPtr[10].v.cn[3] = vtxPtr[22].v.cn[3] = this->vtxAlpha;

    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_oceff_storm.c", 498),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(gfxCtx->polyXlu.p++, sCylinderTexDl);
    gSPDisplayList(gfxCtx->polyXlu.p++, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, scroll * 4, (0 - scroll) * 8, 32,
                                                         32, 1, scroll * 8, (0 - scroll) * 12, 32, 32));
    gSPDisplayList(gfxCtx->polyXlu.p++, sCylinderDl);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_oceff_storm.c", 512);

    OceffStorm_Draw2(&this->actor, globalCtx);
}
