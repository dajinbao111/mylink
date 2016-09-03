.class public Lcom/autonavi/wh/navigation/engine/MidSafeInfo;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/autonavi/wh/navigation/server/safe/GSafeCategory;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/autonavi/wh/navigation/server/safe/GSafeCategory;->nativeValue:I

    invoke-static {v0}, Lcom/autonavi/wh/navigation/engine/MidSafeInfo;->native_GDMID_ClearUserSafeInfo(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/autonavi/wh/navigation/server/safe/GSafeCategory;[Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfoList;)Lcom/autonavi/wh/navigation/server/GStatus;
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
    iget v0, p0, Lcom/autonavi/wh/navigation/server/safe/GSafeCategory;->nativeValue:I

    invoke-static {v0, p1}, Lcom/autonavi/wh/navigation/engine/MidSafeInfo;->native_GDMID_GetUserSafeInfoList(I[Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfoList;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfo;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 8

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfo;->eCategory:Lcom/autonavi/wh/navigation/server/safe/GSafeCategory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfo;->coord:Lcom/autonavi/wh/navigation/server/GCoord;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfo;->nIndex:I

    iget v1, p0, Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfo;->lAdminCode:I

    iget-object v2, p0, Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfo;->eCategory:Lcom/autonavi/wh/navigation/server/safe/GSafeCategory;

    iget v2, v2, Lcom/autonavi/wh/navigation/server/safe/GSafeCategory;->nativeValue:I

    iget-object v3, p0, Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfo;->coord:Lcom/autonavi/wh/navigation/server/GCoord;

    iget v3, v3, Lcom/autonavi/wh/navigation/server/GCoord;->x:I

    iget-object v4, p0, Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfo;->coord:Lcom/autonavi/wh/navigation/server/GCoord;

    iget v4, v4, Lcom/autonavi/wh/navigation/server/GCoord;->y:I

    iget-short v5, p0, Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfo;->nSpeed:S

    iget-short v6, p0, Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfo;->nAngle:S

    iget-object v7, p0, Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfo;->szName:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/autonavi/wh/navigation/engine/MidSafeInfo;->native_GDMID_AddUserSafeInfo(IIIIISSLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a([II)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/wh/navigation/engine/MidSafeInfo;->native_GDMID_DelUserSafeInfo([II)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static b(Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfo;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 8

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfo;->eCategory:Lcom/autonavi/wh/navigation/server/safe/GSafeCategory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfo;->coord:Lcom/autonavi/wh/navigation/server/GCoord;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfo;->nIndex:I

    iget v1, p0, Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfo;->lAdminCode:I

    iget-object v2, p0, Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfo;->eCategory:Lcom/autonavi/wh/navigation/server/safe/GSafeCategory;

    iget v2, v2, Lcom/autonavi/wh/navigation/server/safe/GSafeCategory;->nativeValue:I

    iget-object v3, p0, Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfo;->coord:Lcom/autonavi/wh/navigation/server/GCoord;

    iget v3, v3, Lcom/autonavi/wh/navigation/server/GCoord;->x:I

    iget-object v4, p0, Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfo;->coord:Lcom/autonavi/wh/navigation/server/GCoord;

    iget v4, v4, Lcom/autonavi/wh/navigation/server/GCoord;->y:I

    iget-short v5, p0, Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfo;->nSpeed:S

    iget-short v6, p0, Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfo;->nAngle:S

    iget-object v7, p0, Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfo;->szName:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/autonavi/wh/navigation/engine/MidSafeInfo;->native_GDMID_EditUserSafeInfo(IIIIISSLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method private static native native_GDMID_AddUserSafeInfo(IIIIISSLjava/lang/String;)I
.end method

.method private static native native_GDMID_ClearUserSafeInfo(I)I
.end method

.method private static native native_GDMID_DelUserSafeInfo([II)I
.end method

.method private static native native_GDMID_EditUserSafeInfo(IIIIISSLjava/lang/String;)I
.end method

.method private static native native_GDMID_GetUserSafeInfoList(I[Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfoList;)I
.end method

.method private static native native_GDMID_SetUserSafePath(Ljava/lang/String;)I
.end method
