.class public Lcom/autonavi/xm/navigation/server/config/GRegConfig;
.super Ljava/lang/Object;


# instance fields
.field public eDeviceIDType:I

.field public eRegMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/config/GRegConfig;->eRegMode:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/config/GRegConfig;->eDeviceIDType:I

    return-void
.end method
