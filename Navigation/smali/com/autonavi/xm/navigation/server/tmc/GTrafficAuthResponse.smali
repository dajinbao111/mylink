.class public Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;
.super Ljava/lang/Object;


# static fields
.field public static final RESULT_EXCEPTION:I = 0x7d1

.field public static final RESULT_INVALID_PARAMETERS:I = 0x3eb

.field public static final RESULT_MAP_HAS_NOT_BEEN_ACTIVED:I = 0x3ec

.field public static final RESULT_PAYED_EXPIRED:I = 0x3ea

.field public static final RESULT_PAYED_FIRST_USE:I = 0x0

.field public static final RESULT_PAYED_LEFT_ONE_MONTH:I = 0x5

.field public static final RESULT_PAYED_NOT_FIRST_USE:I = 0x1

.field public static final RESULT_TMC_NOT_SUPPORT:I = 0x3ed

.field public static final RESULT_TRY_EXPIRED:I = 0x3e9

.field public static final RESULT_TRY_FOR_FIRST_TIME:I = 0x2

.field public static final RESULT_TRY_LEFT_ONE_MONTH:I = 0x4

.field public static final RESULT_TRY_NTO_FOR_FIRST_TIME:I = 0x3


# instance fields
.field public beginDate:Ljava/lang/String;

.field public endDate:Ljava/lang/String;

.field public remain:I

.field public result:I

.field public resultDesc:Ljava/lang/String;

.field public total:I

.field public used:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->result:I

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->resultDesc:Ljava/lang/String;

    iput p3, p0, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->total:I

    iput p4, p0, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->used:I

    iput p5, p0, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->remain:I

    iput-object p6, p0, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->beginDate:Ljava/lang/String;

    iput-object p7, p0, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->endDate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;

    iget v0, p0, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->result:I

    iget v1, p1, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->result:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->resultDesc:Ljava/lang/String;

    iget-object v1, p1, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->resultDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->total:I

    iget v1, p1, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->total:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->used:I

    iget v1, p1, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->used:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->remain:I

    iget v1, p1, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->remain:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->beginDate:Ljava/lang/String;

    iget-object v1, p1, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->beginDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->endDate:Ljava/lang/String;

    iget-object v1, p1, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->endDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrafficAuthResponse [result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->resultDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", used="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->used:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->remain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", beginDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->beginDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->endDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
