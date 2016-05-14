.class public Lcom/autonavi/xm/navi/tmc/TmcLoginResult;
.super Lcom/autonavi/xm/navi/tmc/TmcComuResult;


# instance fields
.field private mRemainDays:I

.field private mRtnStatusDesc:Ljava/lang/String;

.field private mSessionId:J

.field private mValidTimeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xm/navi/tmc/TmcComuResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getmRemainDays()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/navi/tmc/TmcLoginResult;->mRemainDays:I

    return v0
.end method

.method public getmRtnStatusDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/tmc/TmcLoginResult;->mRtnStatusDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getmSessionId()J
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/xm/navi/tmc/TmcLoginResult;->mSessionId:J

    return-wide v0
.end method

.method public getmValidTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/xm/navi/tmc/TmcLoginResult;->mValidTimeStamp:J

    return-wide v0
.end method

.method public setmRemainDays(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/xm/navi/tmc/TmcLoginResult;->mRemainDays:I

    return-void
.end method

.method public setmRtnStatusDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/tmc/TmcLoginResult;->mRtnStatusDesc:Ljava/lang/String;

    return-void
.end method

.method public setmSessionId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/autonavi/xm/navi/tmc/TmcLoginResult;->mSessionId:J

    return-void
.end method

.method public setmValidTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/autonavi/xm/navi/tmc/TmcLoginResult;->mValidTimeStamp:J

    return-void
.end method
