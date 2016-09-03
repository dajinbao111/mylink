.class public Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;
.super Ljava/lang/Object;


# instance fields
.field public euCrossType:Lcom/autonavi/wh/navigation/server/guide/GCrossType;

.field public euGuideInfoType:Lcom/autonavi/wh/navigation/server/guide/GGuidanceInfoType;

.field public euNextCrossType:Lcom/autonavi/wh/navigation/server/guide/GCrossType;

.field public n8LaneLeftFlag:B

.field public n8LaneRightFlag:B

.field public nExistAngleID:I

.field public nNextExistAngleID:I

.field public nNextNodeDis:I

.field public nTurnId:I

.field public stGuideShape:Lcom/autonavi/wh/navigation/server/guide/GGuideShape;

.field public stNextGuideShape:Lcom/autonavi/wh/navigation/server/guide/GGuideShape;

.field public szCurrentRoadName:Ljava/lang/String;

.field public szLaneID:[B

.field public szNextRoadName:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILcom/autonavi/wh/navigation/server/guide/GGuideShape;ILcom/autonavi/wh/navigation/server/guide/GGuideShape;IIIILjava/lang/String;Ljava/lang/String;[BBB)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/autonavi/wh/navigation/server/guide/GGuidanceInfoType;->valueOf(I)Lcom/autonavi/wh/navigation/server/guide/GGuidanceInfoType;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;->euGuideInfoType:Lcom/autonavi/wh/navigation/server/guide/GGuidanceInfoType;

    invoke-static {p2}, Lcom/autonavi/wh/navigation/server/guide/GCrossType;->valueOf(I)Lcom/autonavi/wh/navigation/server/guide/GCrossType;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;->euCrossType:Lcom/autonavi/wh/navigation/server/guide/GCrossType;

    iput-object p3, p0, Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;->stGuideShape:Lcom/autonavi/wh/navigation/server/guide/GGuideShape;

    invoke-static {p4}, Lcom/autonavi/wh/navigation/server/guide/GCrossType;->valueOf(I)Lcom/autonavi/wh/navigation/server/guide/GCrossType;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;->euNextCrossType:Lcom/autonavi/wh/navigation/server/guide/GCrossType;

    iput-object p5, p0, Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;->stNextGuideShape:Lcom/autonavi/wh/navigation/server/guide/GGuideShape;

    iput p6, p0, Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;->nTurnId:I

    iput p7, p0, Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;->nExistAngleID:I

    iput p8, p0, Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;->nNextExistAngleID:I

    iput p9, p0, Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;->nNextNodeDis:I

    iput-object p10, p0, Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;->szNextRoadName:Ljava/lang/String;

    iput-object p11, p0, Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;->szCurrentRoadName:Ljava/lang/String;

    iput-object p12, p0, Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;->szLaneID:[B

    iput-byte p13, p0, Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;->n8LaneLeftFlag:B

    iput-byte p14, p0, Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;->n8LaneRightFlag:B

    return-void
.end method
