.class public Lcom/autonavi/wh/navigation/server/guide/GDetourRegionList;
.super Ljava/lang/Object;


# instance fields
.field public nNumberOfDetourRegion:I

.field public pDetourRegion:[Lcom/autonavi/wh/navigation/server/guide/GDetourRegionInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[Lcom/autonavi/wh/navigation/server/guide/GDetourRegionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/wh/navigation/server/guide/GDetourRegionList;->nNumberOfDetourRegion:I

    iput-object p2, p0, Lcom/autonavi/wh/navigation/server/guide/GDetourRegionList;->pDetourRegion:[Lcom/autonavi/wh/navigation/server/guide/GDetourRegionInfo;

    return-void
.end method
