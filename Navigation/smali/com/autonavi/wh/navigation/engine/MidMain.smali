.class public Lcom/autonavi/wh/navigation/engine/MidMain;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/MidMain;->native_GDMID_Cleanup()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(IZ)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/wh/navigation/engine/MidMain;->native_GDMID_SetAdareaDataStatus(IZ)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/autonavi/wh/navigation/server/GCoord;Lcom/autonavi/wh/navigation/server/GCoord;[I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 4

    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/autonavi/wh/navigation/server/GCoord;->x:I

    iget v1, p0, Lcom/autonavi/wh/navigation/server/GCoord;->y:I

    iget v2, p1, Lcom/autonavi/wh/navigation/server/GCoord;->x:I

    iget v3, p1, Lcom/autonavi/wh/navigation/server/GCoord;->y:I

    invoke-static {v0, v1, v2, v3, p2}, Lcom/autonavi/wh/navigation/engine/MidMain;->native_GDMID_CalcDistance(IIII[I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/autonavi/wh/navigation/server/GCoord;[Ljava/lang/String;I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/autonavi/wh/navigation/server/GCoord;->x:I

    iget v1, p0, Lcom/autonavi/wh/navigation/server/GCoord;->y:I

    invoke-static {v0, v1, p1, p2}, Lcom/autonavi/wh/navigation/engine/MidMain;->native_GDMID_GeoCoordToSP(II[Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/autonavi/wh/navigation/server/GVersion;Lcom/autonavi/wh/navigation/server/GVersion;[Lcom/autonavi/wh/navigation/server/GVerCheckResult;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 10

    const/4 v9, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x1

    new-array v8, v0, [I

    iget-short v0, p0, Lcom/autonavi/wh/navigation/server/GVersion;->nData1:S

    iget-short v1, p0, Lcom/autonavi/wh/navigation/server/GVersion;->nData2:S

    iget-short v2, p0, Lcom/autonavi/wh/navigation/server/GVersion;->nData3:S

    iget-short v3, p0, Lcom/autonavi/wh/navigation/server/GVersion;->nData4:S

    iget-short v4, p1, Lcom/autonavi/wh/navigation/server/GVersion;->nData1:S

    iget-short v5, p1, Lcom/autonavi/wh/navigation/server/GVersion;->nData2:S

    iget-short v6, p1, Lcom/autonavi/wh/navigation/server/GVersion;->nData3:S

    iget-short v7, p1, Lcom/autonavi/wh/navigation/server/GVersion;->nData4:S

    invoke-static/range {v0 .. v8}, Lcom/autonavi/wh/navigation/engine/MidMain;->native_GDMID_EngineMapVerCompare(IIIIIIII[I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_1

    aget v1, v8, v9

    invoke-static {v1}, Lcom/autonavi/wh/navigation/server/GVerCheckResult;->valueOf(I)Lcom/autonavi/wh/navigation/server/GVerCheckResult;

    move-result-object v1

    aput-object v1, p2, v9

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/wh/navigation/engine/MidMain;->native_GDMID_Startup(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I[Lcom/autonavi/wh/navigation/server/GDataDirInfo;I[I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    array-length v0, p4

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/autonavi/wh/navigation/engine/MidMain;->native_GDMID_GetAdareaDirList(Ljava/lang/String;I[Lcom/autonavi/wh/navigation/server/GDataDirInfo;I[I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;I[Z)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/autonavi/wh/navigation/engine/MidMain;->native_GDMID_GetAdareaDataFlag(Ljava/lang/String;I[Z)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;[Lcom/autonavi/wh/navigation/server/GCoord;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/wh/navigation/engine/MidMain;->native_GDMID_SPToGeoCoord(Ljava/lang/String;[Lcom/autonavi/wh/navigation/server/GCoord;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;[Lcom/autonavi/wh/navigation/server/GVersion;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/wh/navigation/engine/MidMain;->native_GDMID_GetMapVersion(Ljava/lang/String;[Lcom/autonavi/wh/navigation/server/GVersion;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;[Z)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/wh/navigation/engine/MidMain;->native_GDMID_IsGlobalDataAvailable(Ljava/lang/String;[Z)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a([Lcom/autonavi/wh/navigation/server/GVersion;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/wh/navigation/engine/MidMain;->native_GDMID_GetEngineVersion([Lcom/autonavi/wh/navigation/server/GVersion;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static b(Lcom/autonavi/wh/navigation/server/GVersion;Lcom/autonavi/wh/navigation/server/GVersion;[Lcom/autonavi/wh/navigation/server/GVerCheckResult;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 10

    const/4 v9, 0x0

    if-eqz p1, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x1

    new-array v8, v0, [I

    iget-short v0, p0, Lcom/autonavi/wh/navigation/server/GVersion;->nData1:S

    iget-short v1, p0, Lcom/autonavi/wh/navigation/server/GVersion;->nData2:S

    iget-short v2, p0, Lcom/autonavi/wh/navigation/server/GVersion;->nData3:S

    iget-short v3, p0, Lcom/autonavi/wh/navigation/server/GVersion;->nData4:S

    iget-short v4, p1, Lcom/autonavi/wh/navigation/server/GVersion;->nData1:S

    iget-short v5, p1, Lcom/autonavi/wh/navigation/server/GVersion;->nData2:S

    iget-short v6, p1, Lcom/autonavi/wh/navigation/server/GVersion;->nData3:S

    iget-short v7, p1, Lcom/autonavi/wh/navigation/server/GVersion;->nData4:S

    invoke-static/range {v0 .. v8}, Lcom/autonavi/wh/navigation/engine/MidMain;->native_GDMID_MapMapVerCompare(IIIIIIII[I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_1

    aget v1, v8, v9

    invoke-static {v1}, Lcom/autonavi/wh/navigation/server/GVerCheckResult;->valueOf(I)Lcom/autonavi/wh/navigation/server/GVerCheckResult;

    move-result-object v1

    aput-object v1, p2, v9

    goto :goto_0
.end method

.method static b(Ljava/lang/String;[Lcom/autonavi/wh/navigation/server/GVersion;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/wh/navigation/engine/MidMain;->native_GDMID_GetResourceVersion(Ljava/lang/String;[Lcom/autonavi/wh/navigation/server/GVersion;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method private static native native_GDMID_CalcDistance(IIII[I)I
.end method

.method private static native native_GDMID_Cleanup()I
.end method

.method private static native native_GDMID_EngineMapVerCompare(IIIIIIII[I)I
.end method

.method private static native native_GDMID_GeoCoordToSP(II[Ljava/lang/String;I)I
.end method

.method private static native native_GDMID_GetAdareaDataFlag(Ljava/lang/String;I[Z)I
.end method

.method private static native native_GDMID_GetAdareaDirList(Ljava/lang/String;I[Lcom/autonavi/wh/navigation/server/GDataDirInfo;I[I)I
.end method

.method private static native native_GDMID_GetEngineVersion([Lcom/autonavi/wh/navigation/server/GVersion;)I
.end method

.method private static native native_GDMID_GetMapVersion(Ljava/lang/String;[Lcom/autonavi/wh/navigation/server/GVersion;)I
.end method

.method private static native native_GDMID_GetResourceVersion(Ljava/lang/String;[Lcom/autonavi/wh/navigation/server/GVersion;)I
.end method

.method private static native native_GDMID_IsGlobalDataAvailable(Ljava/lang/String;[Z)I
.end method

.method private static native native_GDMID_MapMapVerCompare(IIIIIIII[I)I
.end method

.method private static native native_GDMID_SPToGeoCoord(Ljava/lang/String;[Lcom/autonavi/wh/navigation/server/GCoord;)I
.end method

.method private static native native_GDMID_SetAdareaDataStatus(IZ)I
.end method

.method private static native native_GDMID_SetCallbackFun(Lcom/autonavi/wh/navigation/server/poi/GPoiBlCallback;)I
.end method

.method private static native native_GDMID_Startup(Ljava/lang/String;)I
.end method

.method private static native native_GDMID_WGSToGDCoord(II[Lcom/autonavi/wh/navigation/server/GCoord;)I
.end method
