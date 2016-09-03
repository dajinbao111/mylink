.class public Lcom/autonavi/wh/navigation/server/location/GGpsSataStd;
.super Ljava/lang/Object;


# instance fields
.field public nAzi:[S

.field public nDb:[S

.field public nLe:[S

.field public nSataCnt:S

.field public nSataId:[S

.field public nTickTime:I


# direct methods
.method public constructor <init>(S[S[S[S[SI)V
    .locals 2

    const/16 v1, 0xc

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [S

    iput-object v0, p0, Lcom/autonavi/wh/navigation/server/location/GGpsSataStd;->nSataId:[S

    new-array v0, v1, [S

    iput-object v0, p0, Lcom/autonavi/wh/navigation/server/location/GGpsSataStd;->nLe:[S

    new-array v0, v1, [S

    iput-object v0, p0, Lcom/autonavi/wh/navigation/server/location/GGpsSataStd;->nAzi:[S

    new-array v0, v1, [S

    iput-object v0, p0, Lcom/autonavi/wh/navigation/server/location/GGpsSataStd;->nDb:[S

    iput-short p1, p0, Lcom/autonavi/wh/navigation/server/location/GGpsSataStd;->nSataCnt:S

    iput-object p2, p0, Lcom/autonavi/wh/navigation/server/location/GGpsSataStd;->nSataId:[S

    iput-object p3, p0, Lcom/autonavi/wh/navigation/server/location/GGpsSataStd;->nLe:[S

    iput-object p4, p0, Lcom/autonavi/wh/navigation/server/location/GGpsSataStd;->nAzi:[S

    iput-object p5, p0, Lcom/autonavi/wh/navigation/server/location/GGpsSataStd;->nDb:[S

    iput p6, p0, Lcom/autonavi/wh/navigation/server/location/GGpsSataStd;->nTickTime:I

    return-void
.end method
