.class public Lcom/autonavi/navigation/api/guide/model/TurnByTurnInfo;
.super Ljava/lang/Object;


# instance fields
.field public angleIds:[I

.field public crossType:Lcom/autonavi/navigation/api/guide/model/CrossType;

.field public currentRoadName:Ljava/lang/String;

.field public destinationDirect:I

.field public existRoadAngleId:I

.field public laneIds:[B

.field public laneLeftFlag:B

.field public laneRightFlag:B

.field public nextAngleIds:[I

.field public nextCrossType:Lcom/autonavi/navigation/api/guide/model/CrossType;

.field public nextExistRoadAngleId:I

.field public nextNodeDis:I

.field public nextRoadName:Ljava/lang/String;

.field public runningDirect:I

.field public turnId:I

.field public type:Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;


# direct methods
.method public constructor <init>(Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;Lcom/autonavi/navigation/api/guide/model/CrossType;[ILcom/autonavi/navigation/api/guide/model/CrossType;[IIIIILjava/lang/String;Ljava/lang/String;[BBBII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnInfo;->type:Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

    iput-object p2, p0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnInfo;->crossType:Lcom/autonavi/navigation/api/guide/model/CrossType;

    iput-object p3, p0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnInfo;->angleIds:[I

    iput-object p4, p0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnInfo;->nextCrossType:Lcom/autonavi/navigation/api/guide/model/CrossType;

    iput-object p5, p0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnInfo;->nextAngleIds:[I

    iput p6, p0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnInfo;->turnId:I

    iput p7, p0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnInfo;->existRoadAngleId:I

    iput p8, p0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnInfo;->nextExistRoadAngleId:I

    iput p9, p0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnInfo;->nextNodeDis:I

    iput-object p10, p0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnInfo;->nextRoadName:Ljava/lang/String;

    iput-object p11, p0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnInfo;->currentRoadName:Ljava/lang/String;

    iput-object p12, p0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnInfo;->laneIds:[B

    iput-byte p13, p0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnInfo;->laneLeftFlag:B

    iput-byte p14, p0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnInfo;->laneRightFlag:B

    move/from16 v0, p15

    iput v0, p0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnInfo;->runningDirect:I

    move/from16 v0, p16

    iput v0, p0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnInfo;->destinationDirect:I

    return-void
.end method


# virtual methods
.method public isContinueGuiding()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnInfo;->nextAngleIds:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnInfo;->nextAngleIds:[I

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
