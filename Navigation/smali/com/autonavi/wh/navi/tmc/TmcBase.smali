.class public abstract Lcom/autonavi/wh/navi/tmc/TmcBase;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final ARG_FAIL:I = 0x1

.field public static final ARG_NEED_NOTIFY:I = 0x1

.field public static final ARG_NOT_NEED_NOTIFY:I = 0x0

.field public static final ARG_SUCC:I = 0x0

.field public static final TAG:Ljava/lang/String; = "TMC"

.field public static final TMC_STATUS:Ljava/lang/String; = "tmc_setting"

.field public static final UPDATE_FREQUENCY:I = 0x1d4c0

.field public static final UPDATE_INTERVAL:I = 0x1d4c0

.field public static final WHAT_AUTHENTICATE:I = 0x0

.field public static final WHAT_AUTHENTICATE_RESULT:I = 0x2

.field public static final WHAT_CLOSE_TMC:I = 0x4

.field public static final WHAT_OPEN_TMC:I = 0x5

.field public static final WHAT_UPDATETMC:I = 0x1

.field public static final WHAT_UPDATETMC_RESULT:I = 0x3


# instance fields
.field private final mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

.field protected mAuthorityId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mGetByteSync:Ljava/lang/Object;

.field private final mHandler:Landroid/os/Handler;

.field private mIsAuthenticated:Z

.field private mIsPaused:Z

.field private mIsUpdating:Z

.field protected mLastRequestCityNum:Ljava/lang/String;

.field private mLastUpdateTimeStamp:J

.field private final mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

.field protected mRequestTime:I

.field protected mSim:Ljava/lang/String;

.field private final mTmcUpdateListeners:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>(Lcom/autonavi/navigation/api/map/AnMap;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mGetByteSync:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mLastUpdateTimeStamp:J

    iput-boolean v2, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mIsUpdating:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mSim:Ljava/lang/String;

    iput v2, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mRequestTime:I

    new-instance v0, Lcom/autonavi/wh/navi/tmc/TmcBase$1;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navi/tmc/TmcBase$1;-><init>(Lcom/autonavi/wh/navi/tmc/TmcBase;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    iput-object p2, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mIsPaused:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mTmcUpdateListeners:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$002(Lcom/autonavi/wh/navi/tmc/TmcBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mIsUpdating:Z

    return p1
.end method

.method private auth(Z)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v3, v1, v0, v1, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private handleAuthenticate(Landroid/os/Message;)V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "TMC"

    const-string v2, "authenticate...satrt..."

    invoke-static {v1, v2}, Lcom/autonavi/wh/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lcom/autonavi/wh/navi/tmc/TmcBase;->getLoginUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/autonavi/wh/navi/tmc/LoginThread;

    iget-object v3, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v1, v0}, Lcom/autonavi/wh/navi/tmc/LoginThread;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    invoke-virtual {v2}, Lcom/autonavi/wh/navi/tmc/LoginThread;->start()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleAuthenticateResult(Landroid/os/Message;)Z
    .locals 9

    const v8, 0x7f0b0127

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_0

    move v1, v2

    :goto_0
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/tmc/TmcBase;->parseLoginString(Ljava/lang/String;)Lcom/autonavi/wh/navi/tmc/TmcComuResult;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/tmc/TmcLoginResult;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/tmc/TmcBase;->getLoginBackInfo(Lcom/autonavi/wh/navi/tmc/TmcLoginResult;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v4, v0}, Lcom/autonavi/wh/navi/tmc/TmcBase;->showToast(Ljava/lang/String;Z)V

    const-string v0, "TMC"

    const-string v4, "authenticate...succ...show leiteng notify..."

    invoke-static {v0, v4}, Lcom/autonavi/wh/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    const-wide/16 v4, -0x1

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/tmc/TmcLoginResult;->getmSessionId()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    const-string v0, "TMC"

    const-string v2, "authenticate...fail...devices is out of service"

    invoke-static {v0, v2}, Lcom/autonavi/wh/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mContext:Landroid/content/Context;

    const v2, 0x7f0b012a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/autonavi/wh/navi/tmc/TmcBase;->showToast(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    const-string v0, "TMC"

    const-string v1, "authenticate...finish..."

    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    goto :goto_2

    :cond_3
    :try_start_1
    const-string v0, "TMC"

    const-string v4, "authenticate...succ..."

    invoke-static {v0, v4}, Lcom/autonavi/wh/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v0, "TMC"

    const-string v2, "authenticate...fail...parse data fail"

    invoke-static {v0, v2}, Lcom/autonavi/wh/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/autonavi/wh/navi/tmc/TmcBase;->showToast(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_4
    const-string v0, "TMC"

    const-string v2, "authenticate...fail...server not return"

    invoke-static {v0, v2}, Lcom/autonavi/wh/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/autonavi/wh/navi/tmc/TmcBase;->showToast(Ljava/lang/String;Z)V

    goto :goto_3
.end method

.method private handleUpdateTmc(Landroid/os/Message;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "TMC"

    const-string v3, "get...start..."

    invoke-static {v0, v3}, Lcom/autonavi/wh/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/autonavi/wh/navi/tmc/TmcBase;->getCurCityNum()I

    move-result v3

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autonavi/navigation/api/AnApi;->getDataManager()Lcom/autonavi/navigation/api/data/DataManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/autonavi/navigation/api/data/DataManager;->isSupportTraffic(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/tmc/TmcBase;->getTmcUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/autonavi/wh/navi/tmc/UpdateThread;

    iget-object v3, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v1, v0}, Lcom/autonavi/wh/navi/tmc/UpdateThread;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    invoke-virtual {v2}, Lcom/autonavi/wh/navi/tmc/UpdateThread;->start()V

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mIsUpdating:Z

    const-string v3, "TMC"

    const-string v4, "get...current city not support tmc..."

    invoke-static {v3, v4}, Lcom/autonavi/wh/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    new-instance v4, Lcom/autonavi/navigation/api/map/AnMap$TrafficDataSource;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/autonavi/navigation/api/map/AnMap$TrafficDataSource;-><init>(I[B)V

    invoke-virtual {v3, v4}, Lcom/autonavi/navigation/api/map/AnMap;->setTrafficDataSource(Lcom/autonavi/navigation/api/map/AnMap$TrafficDataSource;)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mContext:Landroid/content/Context;

    const v3, 0x7f0b012b

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/autonavi/wh/navi/tmc/TmcBase;->showToast(Ljava/lang/String;Z)V

    invoke-direct {p0, v2}, Lcom/autonavi/wh/navi/tmc/TmcBase;->notifyUpdateResult(Z)V

    const-string v0, "TMC"

    const-string v1, "get...finish..."

    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleUpdateTmcResult(Landroid/os/Message;)V
    .locals 9

    const v8, 0x7f0b0127

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_1

    move v1, v0

    :goto_0
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-nez v3, :cond_2

    :goto_1
    if-eqz v0, :cond_5

    :try_start_0
    new-instance v2, Lcom/autonavi/wh/navi/tmc/TmcDataResult;

    invoke-direct {v2}, Lcom/autonavi/wh/navi/tmc/TmcDataResult;-><init>()V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, v2, Lcom/autonavi/wh/navi/tmc/TmcDataResult;->mDatas:[B

    iget-object v0, v2, Lcom/autonavi/wh/navi/tmc/TmcDataResult;->mDatas:[B

    const/4 v3, 0x2

    aget-byte v0, v0, v3

    shr-int/lit8 v0, v0, 0x5

    and-int/lit8 v0, v0, 0x7

    int-to-byte v0, v0

    const-string v3, "TMC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get...flag..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/autonavi/wh/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/tmc/TmcBase;->notifyUpdateResult(Z)V

    const-string v0, "TMC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get...succ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/autonavi/wh/navi/tmc/TmcDataResult;->mDatas:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/autonavi/wh/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/autonavi/navigation/api/map/AnMap;->setTrafficEnabled(ZZ)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    new-instance v3, Lcom/autonavi/navigation/api/map/AnMap$TrafficDataSource;

    const/4 v4, 0x0

    iget-object v2, v2, Lcom/autonavi/wh/navi/tmc/TmcDataResult;->mDatas:[B

    invoke-direct {v3, v4, v2}, Lcom/autonavi/navigation/api/map/AnMap$TrafficDataSource;-><init>(I[B)V

    invoke-virtual {v0, v3}, Lcom/autonavi/navigation/api/map/AnMap;->setTrafficDataSource(Lcom/autonavi/navigation/api/map/AnMap$TrafficDataSource;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mLastUpdateTimeStamp:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    const-string v0, "TMC"

    const-string v1, "get...finish"

    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    if-ne v6, v0, :cond_4

    :try_start_1
    const-string v0, "TMC"

    const-string v2, "get...authenticate is out of date..."

    invoke-static {v0, v2}, Lcom/autonavi/wh/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mIsAuthenticated:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mLastUpdateTimeStamp:J

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/autonavi/wh/navi/tmc/TmcBase;->update(ZZ)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    new-instance v2, Lcom/autonavi/navigation/api/map/AnMap$TrafficDataSource;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/autonavi/navigation/api/map/AnMap$TrafficDataSource;-><init>(I[B)V

    invoke-virtual {v0, v2}, Lcom/autonavi/navigation/api/map/AnMap;->setTrafficDataSource(Lcom/autonavi/navigation/api/map/AnMap$TrafficDataSource;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v0, "TMC"

    const-string v2, "get...fail...exception..."

    invoke-static {v0, v2}, Lcom/autonavi/wh/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/autonavi/wh/navi/tmc/TmcBase;->showToast(Ljava/lang/String;Z)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    new-instance v1, Lcom/autonavi/navigation/api/map/AnMap$TrafficDataSource;

    invoke-direct {v1, v6, v7}, Lcom/autonavi/navigation/api/map/AnMap$TrafficDataSource;-><init>(I[B)V

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setTrafficDataSource(Lcom/autonavi/navigation/api/map/AnMap$TrafficDataSource;)V

    goto :goto_2

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mContext:Landroid/content/Context;

    const v2, 0x7f0b012c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/autonavi/wh/navi/tmc/TmcBase;->showToast(Ljava/lang/String;Z)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    new-instance v2, Lcom/autonavi/navigation/api/map/AnMap$TrafficDataSource;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/autonavi/navigation/api/map/AnMap$TrafficDataSource;-><init>(I[B)V

    invoke-virtual {v0, v2}, Lcom/autonavi/navigation/api/map/AnMap;->setTrafficDataSource(Lcom/autonavi/navigation/api/map/AnMap$TrafficDataSource;)V

    goto :goto_2

    :cond_5
    const-string v0, "TMC"

    const-string v2, "get...fail...server not return data..."

    invoke-static {v0, v2}, Lcom/autonavi/wh/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0127

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/autonavi/wh/navi/tmc/TmcBase;->showToast(Ljava/lang/String;Z)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    new-instance v2, Lcom/autonavi/navigation/api/map/AnMap$TrafficDataSource;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/autonavi/navigation/api/map/AnMap$TrafficDataSource;-><init>(I[B)V

    invoke-virtual {v0, v2}, Lcom/autonavi/navigation/api/map/AnMap;->setTrafficDataSource(Lcom/autonavi/navigation/api/map/AnMap$TrafficDataSource;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

.method private notifyUpdateResult(Z)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mTmcUpdateListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/tmc/TmcUpdateListener;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Lcom/autonavi/wh/navi/tmc/TmcUpdateListener;->tmcUpdate(Ljava/lang/Boolean;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private showToast(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateTmcData(Z)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v0, v2, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public addTmcUpdateCallback(Lcom/autonavi/wh/navi/tmc/TmcUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mTmcUpdateListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mTmcUpdateListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public create()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mIsPaused:Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public destory()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mIsPaused:Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected getBytes(Ljava/io/InputStream;)[B
    .locals 6

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mGetByteSync:Ljava/lang/Object;

    monitor-enter v2

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit v2

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x400

    :try_start_1
    new-array v1, v1, [B

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_4
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_3
.end method

.method protected getCurCityNum()I
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMyAdminCode()I

    move-result v0

    const v1, 0x186a0

    if-lt v0, v1, :cond_0

    const v1, 0xf423f

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    div-int/lit16 v1, v0, 0x2710

    const/16 v2, 0xb

    if-eq v1, v2, :cond_2

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_2

    const/16 v2, 0x32

    if-ne v1, v2, :cond_3

    :cond_2
    div-int/lit16 v0, v0, 0x2710

    mul-int/lit16 v0, v0, 0x2710

    goto :goto_0

    :cond_3
    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x64

    goto :goto_0
.end method

.method protected getCurCityNumString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/tmc/TmcBase;->getCurCityNum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCurTimeFormatter()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mRequestTime:I

    if-nez v1, :cond_0

    iget v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mRequestTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mRequestTime:I

    const-string v0, "0"

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mRequestTime:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mRequestTime:I

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    aget-object v1, v1, v3

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLastUpdateTimeStamp()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mLastUpdateTimeStamp:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract getLoginBackInfo(Lcom/autonavi/wh/navi/tmc/TmcLoginResult;)Ljava/lang/String;
.end method

.method protected abstract getLoginUrl()Ljava/lang/String;
.end method

.method public getTmcStatus()Z
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tmc_setting"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected abstract getTmcUrl()Ljava/lang/String;
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return v1

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/autonavi/wh/navi/tmc/TmcBase;->handleAuthenticate(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/autonavi/wh/navi/tmc/TmcBase;->handleAuthenticateResult(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mIsAuthenticated:Z

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_0

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/autonavi/wh/navi/tmc/TmcBase;->update(ZZ)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v1}, Lcom/autonavi/wh/navi/tmc/TmcBase;->notifyUpdateResult(Z)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/autonavi/wh/navi/tmc/TmcBase;->getTmcStatus()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mIsPaused:Z

    if-eqz v2, :cond_2

    iput-boolean v1, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mIsUpdating:Z

    iget-object v2, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v1, v1, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mIsUpdating:Z

    invoke-direct {p0, p1}, Lcom/autonavi/wh/navi/tmc/TmcBase;->handleUpdateTmc(Landroid/os/Message;)V

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mIsUpdating:Z

    invoke-direct {p0, v1}, Lcom/autonavi/wh/navi/tmc/TmcBase;->notifyUpdateResult(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/navigation/api/map/AnMap;->setTrafficEnabled(ZZ)V
    :try_end_0
    .catch Landroid/accounts/NetworkErrorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_3
    iput-boolean v1, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mIsUpdating:Z

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/tmc/TmcBase;->getTmcStatus()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p1}, Lcom/autonavi/wh/navi/tmc/TmcBase;->handleUpdateTmcResult(Landroid/os/Message;)V

    iget-object v2, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v1, v1, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1}, Lcom/autonavi/wh/navi/tmc/TmcBase;->notifyUpdateResult(Z)V

    :try_start_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/navigation/api/map/AnMap;->setTrafficEnabled(ZZ)V
    :try_end_1
    .catch Landroid/accounts/NetworkErrorException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :pswitch_4
    :try_start_2
    iget-object v2, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    const/4 v3, 0x5

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_5

    :goto_2
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/autonavi/navigation/api/map/AnMap;->setTrafficEnabled(ZZ)V
    :try_end_2
    .catch Landroid/accounts/NetworkErrorException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onCityChanged()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mLastUpdateTimeStamp:J

    return-void
.end method

.method protected abstract parseLoginString(Ljava/lang/String;)Lcom/autonavi/wh/navi/tmc/TmcComuResult;
.end method

.method protected abstract parseTmcDataString(Ljava/io/InputStream;)Lcom/autonavi/wh/navi/tmc/TmcComuResult;
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mIsPaused:Z

    return-void
.end method

.method public removeTmcUpdateCallback(Lcom/autonavi/wh/navi/tmc/TmcUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mTmcUpdateListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mTmcUpdateListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mIsPaused:Z

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mIsUpdating:Z

    invoke-virtual {p0, v0, v0}, Lcom/autonavi/wh/navi/tmc/TmcBase;->update(ZZ)V

    return-void
.end method

.method public setTmcVisiblility(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->isTrafficEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0, p1, p1}, Lcom/autonavi/navigation/api/map/AnMap;->setTrafficEnabled(ZZ)V
    :try_end_0
    .catch Landroid/accounts/NetworkErrorException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public switchTmc(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tmc_setting"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mLastUpdateTimeStamp:J

    if-eqz p1, :cond_0

    invoke-virtual {p0, v3, v3}, Lcom/autonavi/wh/navi/tmc/TmcBase;->update(ZZ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v2}, Lcom/autonavi/wh/navi/tmc/TmcBase;->notifyUpdateResult(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/navigation/api/map/AnMap;->setTrafficEnabled(ZZ)V
    :try_end_0
    .catch Landroid/accounts/NetworkErrorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/accounts/NetworkErrorException;->printStackTrace()V

    goto :goto_0
.end method

.method public update(ZZ)V
    .locals 8

    const-wide/32 v6, 0x1d4c0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "TMC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update...isForceOpen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "...isNeedNotify:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tmc_setting"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-boolean v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mIsPaused:Z

    if-eqz v0, :cond_2

    const-string v0, "TMC"

    const-string v1, "update,tmc is paused..."

    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/wh/navi/tmc/TmcBase;->getTmcStatus()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mIsUpdating:Z

    if-eqz v0, :cond_3

    const-string v0, "TMC"

    const-string v1, "update...tmc is updating...try again later..."

    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0129

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/autonavi/wh/navi/tmc/TmcBase;->showToast(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mLastUpdateTimeStamp:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-lez v0, :cond_5

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mIsAuthenticated:Z

    if-nez v0, :cond_4

    const-string v0, "TMC"

    const-string v1, "update...but not authenticated...do authenticate..."

    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/autonavi/wh/navi/tmc/TmcBase;->auth(Z)V

    goto :goto_0

    :cond_4
    const-string v0, "TMC"

    const-string v1, "update..."

    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/autonavi/wh/navi/tmc/TmcBase;->updateTmcData(Z)V

    goto :goto_0

    :cond_5
    const-string v0, "TMC"

    const-string v1, "update...tmc update is too frequent..."

    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/wh/navi/tmc/TmcBase;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_6
    const-string v0, "TMC"

    const-string v1, "update...tmc is closed..."

    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
