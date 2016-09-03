.class public Lcom/autonavi/wh/navigation/engine/MidConfigs;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->native_GDMID_SaveUserConfig()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->native_GDMID_SetAutoModeDayNight(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(I[Lcom/autonavi/wh/navigation/server/map/GBitmap;[Lcom/autonavi/wh/navigation/server/map/GBitmap;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    if-gtz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_2
    invoke-static {p0, p1, p2}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->native_GDMID_GetCarImage(I[Lcom/autonavi/wh/navigation/server/map/GBitmap;[Lcom/autonavi/wh/navigation/server/map/GBitmap;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/autonavi/wh/navigation/server/GParam;I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    iget v0, p0, Lcom/autonavi/wh/navigation/server/GParam;->nativeValue:I

    invoke-static {v0, p1}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->native_GDMID_PutInt(II)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/autonavi/wh/navigation/server/GParam;Lcom/autonavi/wh/navigation/server/GCoord;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 3

    if-nez p1, :cond_0

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/autonavi/wh/navigation/server/GParam;->nativeValue:I

    iget v1, p1, Lcom/autonavi/wh/navigation/server/GCoord;->x:I

    iget v2, p1, Lcom/autonavi/wh/navigation/server/GCoord;->y:I

    invoke-static {v0, v1, v2}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->native_GDMID_PutCoord(III)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/autonavi/wh/navigation/server/GParam;Lcom/autonavi/wh/navigation/server/GRect;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 5

    if-nez p1, :cond_0

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/autonavi/wh/navigation/server/GParam;->nativeValue:I

    iget v1, p1, Lcom/autonavi/wh/navigation/server/GRect;->left:I

    iget v2, p1, Lcom/autonavi/wh/navigation/server/GRect;->top:I

    iget v3, p1, Lcom/autonavi/wh/navigation/server/GRect;->right:I

    iget v4, p1, Lcom/autonavi/wh/navigation/server/GRect;->bottom:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->native_GDMID_PutRect(IIIII)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/autonavi/wh/navigation/server/GParam;Lcom/autonavi/wh/navigation/server/GSize;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 3

    if-nez p1, :cond_0

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/autonavi/wh/navigation/server/GParam;->nativeValue:I

    iget v1, p1, Lcom/autonavi/wh/navigation/server/GSize;->cx:I

    iget v2, p1, Lcom/autonavi/wh/navigation/server/GSize;->cy:I

    invoke-static {v0, v1, v2}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->native_GDMID_PutSize(III)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/autonavi/wh/navigation/server/GParam;Z)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    iget v0, p0, Lcom/autonavi/wh/navigation/server/GParam;->nativeValue:I

    invoke-static {v0, p1}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->native_GDMID_PutBoolean(IZ)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/autonavi/wh/navigation/server/GParam;[I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/autonavi/wh/navigation/server/GParam;->nativeValue:I

    invoke-static {v0, p1}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->native_GDMID_GetInt(I[I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/autonavi/wh/navigation/server/GParam;[Lcom/autonavi/wh/navigation/server/GCoord;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/autonavi/wh/navigation/server/GParam;->nativeValue:I

    invoke-static {v0, p1}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->native_GDMID_GetCoord(I[Lcom/autonavi/wh/navigation/server/GCoord;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/autonavi/wh/navigation/server/GParam;[Lcom/autonavi/wh/navigation/server/GRect;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/autonavi/wh/navigation/server/GParam;->nativeValue:I

    invoke-static {v0, p1}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->native_GDMID_GetRect(I[Lcom/autonavi/wh/navigation/server/GRect;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/autonavi/wh/navigation/server/GParam;[Lcom/autonavi/wh/navigation/server/GSize;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/autonavi/wh/navigation/server/GParam;->nativeValue:I

    invoke-static {v0, p1}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->native_GDMID_GetSize(I[Lcom/autonavi/wh/navigation/server/GSize;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/autonavi/wh/navigation/server/GParam;[Z)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/autonavi/wh/navigation/server/GParam;->nativeValue:I

    invoke-static {v0, p1}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->native_GDMID_GetBoolean(I[Z)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;[Lcom/autonavi/wh/navigation/server/config/GRegConfig;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->native_GDMID_GetRegisterConfig(Ljava/lang/String;[Lcom/autonavi/wh/navigation/server/config/GRegConfig;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Z)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->native_GDMID_EnableO2(Z)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(Z[Lcom/autonavi/wh/navigation/server/map/GPaletteList;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->native_GDMID_GetPaletteList(Z[Lcom/autonavi/wh/navigation/server/map/GPaletteList;)I

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
    invoke-static {p0}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->native_GDMID_GetResPath([Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method private static native native_GDMID_EnableO2(Z)I
.end method

.method private static native native_GDMID_GetBoolean(I[Z)I
.end method

.method private static native native_GDMID_GetCarImage(I[Lcom/autonavi/wh/navigation/server/map/GBitmap;[Lcom/autonavi/wh/navigation/server/map/GBitmap;)I
.end method

.method private static native native_GDMID_GetCoord(I[Lcom/autonavi/wh/navigation/server/GCoord;)I
.end method

.method private static native native_GDMID_GetInt(I[I)I
.end method

.method private static native native_GDMID_GetPaletteList(Z[Lcom/autonavi/wh/navigation/server/map/GPaletteList;)I
.end method

.method private static native native_GDMID_GetPriorityCategoryList([Lcom/autonavi/wh/navigation/server/map/GPriorityCategoryList;)I
.end method

.method private static native native_GDMID_GetRect(I[Lcom/autonavi/wh/navigation/server/GRect;)I
.end method

.method private static native native_GDMID_GetRegisterConfig(Ljava/lang/String;[Lcom/autonavi/wh/navigation/server/config/GRegConfig;)I
.end method

.method private static native native_GDMID_GetResPath([Ljava/lang/String;)I
.end method

.method private static native native_GDMID_GetSize(I[Lcom/autonavi/wh/navigation/server/GSize;)I
.end method

.method private static native native_GDMID_GetTurnIcon(I[Lcom/autonavi/wh/navigation/server/map/GBitmap;)I
.end method

.method private static native native_GDMID_PutBoolean(IZ)I
.end method

.method private static native native_GDMID_PutCoord(III)I
.end method

.method private static native native_GDMID_PutInt(II)I
.end method

.method private static native native_GDMID_PutRect(IIIII)I
.end method

.method private static native native_GDMID_PutSize(III)I
.end method

.method private static native native_GDMID_SaveUserConfig()I
.end method

.method private static native native_GDMID_SetAutoModeDayNight(I)I
.end method

.method private static native native_GDMID_SetPriorityCategory([II)I
.end method
