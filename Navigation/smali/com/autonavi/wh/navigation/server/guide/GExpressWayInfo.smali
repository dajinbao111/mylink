.class public Lcom/autonavi/wh/navigation/server/guide/GExpressWayInfo;
.super Ljava/lang/Object;


# instance fields
.field public nFlag:I

.field public nIndex:I

.field public nLat:I

.field public nLon:I

.field public nMeshID:I

.field public nMeshRoadID:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/wh/navigation/server/guide/GExpressWayInfo;->nIndex:I

    iput p2, p0, Lcom/autonavi/wh/navigation/server/guide/GExpressWayInfo;->nMeshID:I

    iput p3, p0, Lcom/autonavi/wh/navigation/server/guide/GExpressWayInfo;->nMeshRoadID:I

    iput p4, p0, Lcom/autonavi/wh/navigation/server/guide/GExpressWayInfo;->nFlag:I

    iput p5, p0, Lcom/autonavi/wh/navigation/server/guide/GExpressWayInfo;->nLon:I

    iput p6, p0, Lcom/autonavi/wh/navigation/server/guide/GExpressWayInfo;->nLat:I

    return-void
.end method
