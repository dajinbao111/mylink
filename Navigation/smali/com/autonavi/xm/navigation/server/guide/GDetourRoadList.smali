.class public Lcom/autonavi/xm/navigation/server/guide/GDetourRoadList;
.super Ljava/lang/Object;


# instance fields
.field public nNumberOfDetourRoad:I

.field public pDetourRoad:[Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/guide/GDetourRoadList;->nNumberOfDetourRoad:I

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/guide/GDetourRoadList;->pDetourRoad:[Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;

    return-void
.end method
