.class public Lcom/autonavi/wh/navigation/engine/MidTmc;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    iget v0, v0, Lcom/autonavi/wh/navigation/server/GStatus;->nativeValue:I

    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/autonavi/wh/navigation/engine/MidTmc;->native_GDMID_GetTrafficAuthRequestParam(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static a()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/MidTmc;->native_GDMID_TMC_Prepare()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(IZ[Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/autonavi/wh/navigation/engine/MidTmc;->native_GDMID_TMC_GetDownloadSubUrl(IZ[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a([BI)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/wh/navigation/engine/MidTmc;->native_GDMID_TMC_CheckLoginData([BI)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public static a([BI[Lcom/autonavi/wh/navigation/server/tmc/GTrafficAuthResponse;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/autonavi/wh/navigation/engine/MidTmc;->native_GDMID_TrafficAuthParse([BI[Lcom/autonavi/wh/navigation/server/tmc/GTrafficAuthResponse;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a([I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/wh/navigation/engine/MidTmc;->native_GDMID_TMC_GetFrequency([I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a([Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/wh/navigation/engine/MidTmc;->native_GDMID_TMC_GetLoginSubUrl([Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a([Ljava/lang/String;[I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/wh/navigation/engine/MidTmc;->native_GDMID_TMC_GetURL([Ljava/lang/String;[I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a([[Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;[I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/wh/navigation/engine/MidTmc;->native_GDMID_GetEventInfo([[Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;[I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static b()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/MidTmc;->native_GDMID_TMC_Release()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static b([BI)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/wh/navigation/engine/MidTmc;->native_GDMID_TMC_ParseDownloadedData([BI)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static b([I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/wh/navigation/engine/MidTmc;->native_GDMID_TMC_SelectCity([I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static c()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/MidTmc;->native_GDMID_TMC_Close()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public static d()Z
    .locals 1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/MidTmc;->native_GDMID_TMC_IsSupport()Z

    move-result v0

    return v0
.end method

.method static e()I
    .locals 1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/MidTmc;->native_GDMID_TMC_HttpGetErrorCode()I

    move-result v0

    return v0
.end method

.method private static native native_GDMID_GetEventInfo([[Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;[I)I
.end method

.method private static native native_GDMID_GetTrafficAuthRequestParam(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method private static native native_GDMID_TMC_CheckLoginData([BI)I
.end method

.method private static native native_GDMID_TMC_Close()I
.end method

.method private static native native_GDMID_TMC_GetDownloadSubUrl(IZ[Ljava/lang/String;)I
.end method

.method private static native native_GDMID_TMC_GetFrequency([I)I
.end method

.method private static native native_GDMID_TMC_GetLoginSubUrl([Ljava/lang/String;)I
.end method

.method private static native native_GDMID_TMC_GetURL([Ljava/lang/String;[I)I
.end method

.method private static native native_GDMID_TMC_HttpGetErrorCode()I
.end method

.method private static native native_GDMID_TMC_IsShow()Z
.end method

.method private static native native_GDMID_TMC_IsSupport()Z
.end method

.method private static native native_GDMID_TMC_ParseDownloadedData([BI)I
.end method

.method private static native native_GDMID_TMC_Prepare()I
.end method

.method private static native native_GDMID_TMC_Release()I
.end method

.method private static native native_GDMID_TMC_SelectCity([I)I
.end method

.method private static native native_GDMID_TrafficAuthParse([BI[Lcom/autonavi/wh/navigation/server/tmc/GTrafficAuthResponse;)I
.end method
