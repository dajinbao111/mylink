.class public Lcom/autonavi/xm/navi/tmc/LeiTengTmc;
.super Lcom/autonavi/xm/navi/tmc/TmcBase;


# static fields
.field protected static final LOGIN_PATH:Ljava/lang/String; = "r/check"

.field protected static final LeiTengHost:Ljava/lang/String; = "http://p.sgmparts.com/"

.field public static final TEST_LOGIN_PARAMS:Ljava/lang/String; = "?provider=anyo&pwd=anyouser&pm=newcruze_d2sc&serialNum=70402DE948409FE5"

.field protected static final TMC_PATH:Ljava/lang/String; = "r/tmc"


# instance fields
.field protected final PM:Ljava/lang/String;

.field protected final PROVIDER:Ljava/lang/String;

.field protected final PWD:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/autonavi/navigation/api/map/AnMap;Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/autonavi/xm/navi/tmc/TmcBase;-><init>(Lcom/autonavi/navigation/api/map/AnMap;Landroid/content/Context;)V

    const-string v0, "anyo"

    iput-object v0, p0, Lcom/autonavi/xm/navi/tmc/LeiTengTmc;->PROVIDER:Ljava/lang/String;

    const-string v0, "anyouser"

    iput-object v0, p0, Lcom/autonavi/xm/navi/tmc/LeiTengTmc;->PWD:Ljava/lang/String;

    const-string v0, "newcruze_d2sc"

    iput-object v0, p0, Lcom/autonavi/xm/navi/tmc/LeiTengTmc;->PM:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLoginBackInfo(Lcom/autonavi/xm/navi/tmc/TmcLoginResult;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/autonavi/xm/navi/tmc/TmcLoginResult;->mRtnSstatus:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/tmc/LeiTengTmc;->isNeedToShowMessage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/xm/navi/tmc/TmcLoginResult;->getmRtnStatusDesc()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLoginUrl()Ljava/lang/String;
    .locals 5

    const-string v0, "http://p.sgmparts.com/r/check?provider=anyo&pwd=anyouser&pm=newcruze_d2sc&serialNum=70402DE948409FE5"

    return-object v0
.end method

.method public getTmcUrl()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://p.sgmparts.com/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "r/tmc"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "validateid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/xm/navi/tmc/LeiTengTmc;->mAuthorityId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/tmc/LeiTengTmc;->getCurCityNumString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/xm/navi/tmc/LeiTengTmc;->mLastRequestCityNum:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/xm/navi/tmc/LeiTengTmc;->mLastRequestCityNum:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/tmc/LeiTengTmc;->getCurTimeFormatter()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/autonavi/xm/navi/tmc/LeiTengTmc;->getCurCityNumString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/autonavi/xm/navi/tmc/LeiTengTmc;->mLastRequestCityNum:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "citynum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/xm/navi/tmc/LeiTengTmc;->mLastRequestCityNum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "former_batchtime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "0"

    const/4 v2, 0x0

    iput v2, p0, Lcom/autonavi/xm/navi/tmc/LeiTengTmc;->mRequestTime:I

    goto :goto_0
.end method

.method protected isLoginStatusOK(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "0000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0002"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0003"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0004"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0005"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isNeedToShowMessage(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "0002"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0003"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0004"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0005"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0114"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0115"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0116"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0117"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0100"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0119"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0111"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0118"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0120"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected parseLoginString(Ljava/lang/String;)Lcom/autonavi/xm/navi/tmc/TmcComuResult;
    .locals 8

    const/4 v7, 0x0

    const-wide/16 v5, -0x1

    new-instance v1, Lcom/autonavi/xm/navi/tmc/TmcLoginResult;

    invoke-direct {v1}, Lcom/autonavi/xm/navi/tmc/TmcLoginResult;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "rs"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navi/tmc/TmcComuResult;->setmRtnSstatus(Ljava/lang/String;)V

    const-string v2, "rm"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, "sessionid"

    invoke-virtual {v2, v0, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    move-object v0, v1

    check-cast v0, Lcom/autonavi/xm/navi/tmc/TmcLoginResult;

    invoke-virtual {v0, v3, v4}, Lcom/autonavi/xm/navi/tmc/TmcLoginResult;->setmSessionId(J)V

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    iput-object v7, p0, Lcom/autonavi/xm/navi/tmc/LeiTengTmc;->mAuthorityId:Ljava/lang/String;

    :goto_0
    move-object v0, v1

    check-cast v0, Lcom/autonavi/xm/navi/tmc/TmcLoginResult;

    const-string v3, "sessionid"

    invoke-virtual {v2, v3, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/autonavi/xm/navi/tmc/TmcLoginResult;->setmSessionId(J)V

    move-object v0, v1

    check-cast v0, Lcom/autonavi/xm/navi/tmc/TmcLoginResult;

    const-string v3, "valid"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/autonavi/xm/navi/tmc/TmcLoginResult;->setmValidTimeStamp(J)V

    move-object v0, v1

    check-cast v0, Lcom/autonavi/xm/navi/tmc/TmcLoginResult;

    const-string v3, "rsdesc"

    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/autonavi/xm/navi/tmc/TmcLoginResult;->setmRtnStatusDesc(Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Lcom/autonavi/xm/navi/tmc/TmcLoginResult;

    const-string v3, "remain"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/autonavi/xm/navi/tmc/TmcLoginResult;->setmRemainDays(I)V

    :cond_0
    return-object v1

    :cond_1
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/tmc/LeiTengTmc;->mAuthorityId:Ljava/lang/String;

    goto :goto_0
.end method

.method protected parseTmcDataString(Ljava/io/InputStream;)Lcom/autonavi/xm/navi/tmc/TmcComuResult;
    .locals 3

    new-instance v1, Lcom/autonavi/xm/navi/tmc/TmcDataResult;

    invoke-direct {v1}, Lcom/autonavi/xm/navi/tmc/TmcDataResult;-><init>()V

    move-object v0, v1

    check-cast v0, Lcom/autonavi/xm/navi/tmc/TmcDataResult;

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navi/tmc/LeiTengTmc;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/autonavi/xm/navi/tmc/TmcDataResult;->mDatas:[B

    move-object v0, v1

    check-cast v0, Lcom/autonavi/xm/navi/tmc/TmcDataResult;

    iget-object v0, v0, Lcom/autonavi/xm/navi/tmc/TmcDataResult;->mDatas:[B

    if-nez v0, :cond_0

    const-string v0, "TMC"

    const-string v2, "no tmc data"

    invoke-static {v0, v2}, Lcom/autonavi/xm/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Lcom/autonavi/xm/navi/tmc/TmcDataResult;

    const/4 v2, 0x1

    iput v2, v0, Lcom/autonavi/xm/navi/tmc/TmcDataResult;->resultCode:I

    :goto_0
    return-object v1

    :cond_0
    move-object v0, v1

    check-cast v0, Lcom/autonavi/xm/navi/tmc/TmcDataResult;

    const/4 v2, 0x0

    iput v2, v0, Lcom/autonavi/xm/navi/tmc/TmcDataResult;->resultCode:I

    goto :goto_0
.end method
