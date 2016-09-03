.class public Lcom/autonavi/wh/navigation/server/guide/GCarParallelRoad;
.super Ljava/lang/Object;


# instance fields
.field public nID:I

.field public szRoadName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/wh/navigation/server/guide/GCarParallelRoad;->nID:I

    iput-object p2, p0, Lcom/autonavi/wh/navigation/server/guide/GCarParallelRoad;->szRoadName:Ljava/lang/String;

    return-void
.end method
