.class public Lcom/autonavi/xm/navigation/server/guide/GRoadInfo;
.super Ljava/lang/Object;


# instance fields
.field public coord:Lcom/autonavi/xm/navigation/server/GCoord;

.field public nDistance:I

.field public nID:I

.field public nMeshID:I

.field public nMeshRoadID:I

.field public nRoadType:I

.field public szRoadName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIILcom/autonavi/xm/navigation/server/GCoord;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/guide/GRoadInfo;->nID:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/guide/GRoadInfo;->nRoadType:I

    iput p3, p0, Lcom/autonavi/xm/navigation/server/guide/GRoadInfo;->nDistance:I

    iput-object p4, p0, Lcom/autonavi/xm/navigation/server/guide/GRoadInfo;->coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iput-object p5, p0, Lcom/autonavi/xm/navigation/server/guide/GRoadInfo;->szRoadName:Ljava/lang/String;

    iput p6, p0, Lcom/autonavi/xm/navigation/server/guide/GRoadInfo;->nMeshID:I

    iput p7, p0, Lcom/autonavi/xm/navigation/server/guide/GRoadInfo;->nMeshRoadID:I

    return-void
.end method
