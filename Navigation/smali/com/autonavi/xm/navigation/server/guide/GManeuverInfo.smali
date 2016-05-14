.class public Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;
.super Ljava/lang/Object;


# instance fields
.field public nID:I

.field public nNextArrivalTime:I

.field public nNextDis:I

.field public nTotalArrivalTime:I

.field public nTotalRemainDis:I

.field public nTurnID:I

.field public szCurRoadName:Ljava/lang/String;

.field public szNextRoadName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;->nID:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;->nTurnID:I

    iput p3, p0, Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;->nNextDis:I

    iput p4, p0, Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;->nNextArrivalTime:I

    iput p5, p0, Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;->nTotalRemainDis:I

    iput p6, p0, Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;->nTotalArrivalTime:I

    iput-object p7, p0, Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;->szCurRoadName:Ljava/lang/String;

    iput-object p8, p0, Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;->szNextRoadName:Ljava/lang/String;

    return-void
.end method
