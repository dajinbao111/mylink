.class public Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;
.super Ljava/lang/Object;


# instance fields
.field public nDir:I

.field public nDisToCar:I

.field public nEndTime:J

.field public nEventID:I

.field public nEventRange:I

.field public nMeshID:I

.field public nMsgID:I

.field public nRoadID:I

.field public nStartTime:J

.field public stPosition:Lcom/autonavi/wh/navigation/server/GCoord;

.field public szDescription:Ljava/lang/String;

.field public szEndOccured:Ljava/lang/String;

.field public szOccured:Ljava/lang/String;

.field public szStartOccured:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILcom/autonavi/wh/navigation/server/GCoord;IIIJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->nEventID:I

    iput p2, p0, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->nMsgID:I

    iput-object p3, p0, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->stPosition:Lcom/autonavi/wh/navigation/server/GCoord;

    iput p4, p0, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->nMeshID:I

    iput p5, p0, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->nRoadID:I

    iput p6, p0, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->nDir:I

    iput-wide p7, p0, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->nStartTime:J

    iput-wide p9, p0, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->nEndTime:J

    iput p11, p0, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->nEventRange:I

    iput-object p12, p0, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->szOccured:Ljava/lang/String;

    iput-object p13, p0, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->szStartOccured:Ljava/lang/String;

    iput-object p14, p0, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->szEndOccured:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->szDescription:Ljava/lang/String;

    move/from16 v0, p16

    iput v0, p0, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->nDisToCar:I

    return-void
.end method
