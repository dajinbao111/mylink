.class public Lcom/autonavi/wh/navigation/server/guide/GGuideRoadList;
.super Ljava/lang/Object;


# instance fields
.field public nNumberOfRoad:I

.field public pGuideRoadInfo:[Lcom/autonavi/wh/navigation/server/guide/GGuideRoadInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[Lcom/autonavi/wh/navigation/server/guide/GGuideRoadInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/wh/navigation/server/guide/GGuideRoadList;->nNumberOfRoad:I

    iput-object p2, p0, Lcom/autonavi/wh/navigation/server/guide/GGuideRoadList;->pGuideRoadInfo:[Lcom/autonavi/wh/navigation/server/guide/GGuideRoadInfo;

    return-void
.end method
