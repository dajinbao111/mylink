.class public Lcom/autonavi/wh/navi/tmc/TmcDataResult;
.super Lcom/autonavi/wh/navi/tmc/TmcComuResult;


# instance fields
.field public mDatas:[B

.field public resultCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/wh/navi/tmc/TmcComuResult;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/wh/navi/tmc/TmcDataResult;->resultCode:I

    return-void
.end method
