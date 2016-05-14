.class public Lcom/autonavi/xm/navigation/engine/MidMap;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_DestoryView()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_CreateView(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(II)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_GetPixel(II)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public static a(IIII[I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-nez p4, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_GetTextureFromFBO(IIII[I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(J)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_PreDrawMapView(J)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(JI)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_MapViewZoomInEx(JI)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(JILcom/autonavi/xm/navigation/server/map/GMapViewMode;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p3, :cond_0

    iget v0, p3, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;->nativeValue:I

    :goto_0
    invoke-static {p0, p1, p2, v0}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_SetMapViewMode(JII)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(JIZ)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_RotateMapView(JIZ)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(JLcom/autonavi/xm/navigation/server/map/GMoveMap;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 3

    if-nez p2, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p2, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->eOP:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->nativeValue:I

    iget-object v1, p2, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v1, v1, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v2, p2, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-static {p0, p1, v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_MoveMapView(JIII)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(JLcom/autonavi/xm/navigation/server/map/GZoomLevel;I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget v0, p2, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->nativeValue:I

    invoke-static {p0, p1, v0, p3}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_MapViewZoomTo(JII)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(J[Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_GetMapViewCenterInfo(J[Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(J[Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_GetMapObjectInfo(J[Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/autonavi/xm/navigation/server/GCoord;I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    if-nez p0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget v1, p0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-static {v0, v1, p1}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_AdjustCar(III)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/autonavi/xm/navigation/server/GCoord;[Lcom/autonavi/xm/navigation/server/guide/GRoadInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget v1, p0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-static {v0, v1, p1}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_GetRoadInfoByCoord(II[Lcom/autonavi/xm/navigation/server/guide/GRoadInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/autonavi/xm/navigation/server/GCoordConvert;[Lcom/autonavi/xm/navigation/server/GCoord;[Lcom/autonavi/xm/navigation/server/GCoord;J)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 6

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/autonavi/xm/navigation/server/GCoordConvert;->GCC_SCR_TO_GEO:Lcom/autonavi/xm/navigation/server/GCoordConvert;

    if-ne p0, v0, :cond_2

    aget-object v0, p1, v2

    iget v1, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    aget-object v0, p1, v2

    iget v2, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    move-object v3, p2

    :goto_1
    iget v0, p0, Lcom/autonavi/xm/navigation/server/GCoordConvert;->nativeValue:I

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_CoordConvert(III[Lcom/autonavi/xm/navigation/server/GCoord;J)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0

    :cond_2
    aget-object v0, p2, v2

    iget v1, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    aget-object v0, p2, v2

    iget v2, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    move-object v3, p1

    goto :goto_1
.end method

.method public static a(Lcom/autonavi/xm/navigation/server/guide/GExpressWayInfo;Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 7

    iget v0, p0, Lcom/autonavi/xm/navigation/server/guide/GExpressWayInfo;->nIndex:I

    iget v1, p0, Lcom/autonavi/xm/navigation/server/guide/GExpressWayInfo;->nMeshID:I

    iget v2, p0, Lcom/autonavi/xm/navigation/server/guide/GExpressWayInfo;->nMeshRoadID:I

    iget v3, p0, Lcom/autonavi/xm/navigation/server/guide/GExpressWayInfo;->nFlag:I

    iget v4, p0, Lcom/autonavi/xm/navigation/server/guide/GExpressWayInfo;->nLat:I

    iget v5, p0, Lcom/autonavi/xm/navigation/server/guide/GExpressWayInfo;->nLon:I

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_ChangeIC(IIIIIIZ)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/autonavi/xm/navigation/server/map/GMapViewType;[J)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->nativeValue:I

    invoke-static {v0, p1}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_GetMapViewHandle(I[J)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/autonavi/xm/navigation/server/map/GMinMapParam;Lcom/autonavi/xm/navigation/server/map/GBitmap;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 10

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/map/GMinMapParam;->euMode:Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;->nativeValue:I

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/map/GMinMapParam;->euLevel:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    iget v1, v1, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->nativeValue:I

    iget-object v2, p0, Lcom/autonavi/xm/navigation/server/map/GMinMapParam;->pstPnts:[Lcom/autonavi/xm/navigation/server/GCoord;

    iget v3, p0, Lcom/autonavi/xm/navigation/server/map/GMinMapParam;->nPntNum:I

    iget v4, p0, Lcom/autonavi/xm/navigation/server/map/GMinMapParam;->cx:I

    iget v5, p0, Lcom/autonavi/xm/navigation/server/map/GMinMapParam;->cy:I

    iget v6, p0, Lcom/autonavi/xm/navigation/server/map/GMinMapParam;->gMinMapFlag:I

    iget-object v7, p0, Lcom/autonavi/xm/navigation/server/map/GMinMapParam;->nDayNightMode:Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;

    invoke-virtual {v7}, Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;->ordinal()I

    move-result v7

    iget-object v8, p0, Lcom/autonavi/xm/navigation/server/map/GMinMapParam;->szFile:Ljava/lang/String;

    move-object v9, p1

    invoke-static/range {v0 .. v9}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_ShowMinMap(II[Lcom/autonavi/xm/navigation/server/GCoord;IIIIILjava/lang/String;Lcom/autonavi/xm/navigation/server/map/GBitmap;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/autonavi/xm/navigation/server/map/GMoveMap;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 3

    if-nez p0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->eOP:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v1, v1, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v2, p0, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-static {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_MoveMap(III)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/autonavi/xm/navigation/server/map/GSelectParam;[[Ljava/lang/Object;[I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 6

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/map/GSelectParam;->eViewType:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/map/GSelectParam;->pos:Lcom/autonavi/xm/navigation/server/GCoord;

    if-eqz v0, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/map/GSelectParam;->eViewType:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->nativeValue:I

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/map/GSelectParam;->pos:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v1, v1, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v2, p0, Lcom/autonavi/xm/navigation/server/map/GSelectParam;->pos:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    iget v3, p0, Lcom/autonavi/xm/navigation/server/map/GSelectParam;->eCmd:I

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_SelectElementsByHit(IIII[[Ljava/lang/Object;[I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/autonavi/xm/navigation/server/map/GZoomLevel;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_ZoomTo(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/autonavi/xm/navigation/server/map/OnGetElementsCallback;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_SetGetElementCallback(Lcom/autonavi/xm/navigation/server/map/OnGetElementsCallback;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/autonavi/xm/navigation/server/poi/GPoi;Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 19

    if-nez p0, :cond_0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v1

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v1, v1, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lCategoryID:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lDistance:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lMatchCode:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lHilightFlag:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lAdminCode:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lPoiId:I

    move-object/from16 v0, p0

    iget-short v9, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->siELonOff:S

    move-object/from16 v0, p0

    iget-short v10, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->siELatOff:S

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szAddr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szTel:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lPoiIndex:I

    move-object/from16 v0, p0

    iget-byte v15, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->ucFlag:B

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Reserved:B

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->usNodeId:S

    move/from16 v17, v0

    move/from16 v18, p1

    invoke-static/range {v1 .. v18}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_MapViewPOI(IIIIIIIISSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBSZ)I

    move-result v1

    invoke-static {v1}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_MapViewSP(Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a([I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_GetMapScaleLevel([I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a([IIZ)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_FilterTMCEvent([IIZ)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a([Lcom/autonavi/xm/navigation/server/map/GCarInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_GetCarInfo([Lcom/autonavi/xm/navigation/server/map/GCarInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a([Lcom/autonavi/xm/navigation/server/map/GMapView;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_GetMapView([Lcom/autonavi/xm/navigation/server/map/GMapView;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public static a([Lcom/autonavi/xm/navigation/server/map/GZoomViewInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_GetCurrentZoomViewInfo([Lcom/autonavi/xm/navigation/server/map/GZoomViewInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static b()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_CloseZoomView()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static b(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_ViewTmc(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static b(J)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_DrawMapView(J)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static b(JI)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_MapViewZoomOutEx(JI)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static b(JIZ)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_AdjustMapViewElevationEx(JIZ)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_TMC_Update()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static c(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_PreDrawMap(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static c(J)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_GoToCCPMapView(J)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static d(J)I
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_GetMoveMapStatus(J)I

    move-result v0

    return v0
.end method

.method static d(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_DrawMap(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static e(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_ZoomIn(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static e(J)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_SetLocInfo(J)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static f(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_ZoomOut(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static g(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_ToNextViewMode(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static h(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_ViewCross(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static i(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_SetRgnAvoidRect(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static j(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/MidMap;->native_GDMID_ViewAvoidRegion(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method private static native native_GDMID_AdjustCar(III)I
.end method

.method private static native native_GDMID_AdjustMapElevation(I)I
.end method

.method private static native native_GDMID_AdjustMapViewElevationEx(JIZ)I
.end method

.method private static native native_GDMID_ChangeIC(IIIIIIZ)I
.end method

.method private static native native_GDMID_CloseZoomView()I
.end method

.method private static native native_GDMID_CoordConvert(III[Lcom/autonavi/xm/navigation/server/GCoord;J)I
.end method

.method private static native native_GDMID_CreateView(I)I
.end method

.method private static native native_GDMID_DestoryView()I
.end method

.method private static native native_GDMID_DrawMap(I)I
.end method

.method private static native native_GDMID_DrawMapView(J)I
.end method

.method private static native native_GDMID_FilterTMCEvent([IIZ)I
.end method

.method private static native native_GDMID_GetCarInfo([Lcom/autonavi/xm/navigation/server/map/GCarInfo;)I
.end method

.method private static native native_GDMID_GetCurrentZoomViewInfo([Lcom/autonavi/xm/navigation/server/map/GZoomViewInfo;)I
.end method

.method private static native native_GDMID_GetMapMode([I)I
.end method

.method private static native native_GDMID_GetMapObjectInfo(J[Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;)I
.end method

.method private static native native_GDMID_GetMapScaleLevel([I)I
.end method

.method private static native native_GDMID_GetMapView([Lcom/autonavi/xm/navigation/server/map/GMapView;)I
.end method

.method private static native native_GDMID_GetMapViewCenterInfo(J[Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;)I
.end method

.method private static native native_GDMID_GetMapViewHandle(I[J)I
.end method

.method private static native native_GDMID_GetMoveMapStatus(J)I
.end method

.method private static native native_GDMID_GetPixel(II)I
.end method

.method private static native native_GDMID_GetPreDrawMapStatus([I)I
.end method

.method private static native native_GDMID_GetRoadInfo([Lcom/autonavi/xm/navigation/server/poi/GPoi;III)I
.end method

.method private static native native_GDMID_GetRoadInfoByCoord(II[Lcom/autonavi/xm/navigation/server/guide/GRoadInfo;)I
.end method

.method private static native native_GDMID_GetTextureFromFBO(IIII[I)I
.end method

.method private static native native_GDMID_GoToCCP()I
.end method

.method private static native native_GDMID_GoToCCPMapView(J)I
.end method

.method private static native native_GDMID_MapViewPOI(IIIIIIIISSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBSZ)I
.end method

.method private static native native_GDMID_MapViewSP(Ljava/lang/String;Z)I
.end method

.method private static native native_GDMID_MapViewZoomInEx(JI)I
.end method

.method private static native native_GDMID_MapViewZoomOutEx(JI)I
.end method

.method private static native native_GDMID_MapViewZoomTo(JII)I
.end method

.method private static native native_GDMID_MoveMap(III)I
.end method

.method private static native native_GDMID_MoveMapByGeoCoord(II)I
.end method

.method private static native native_GDMID_MoveMapView(JIII)I
.end method

.method private static native native_GDMID_PreDrawMap(I)I
.end method

.method private static native native_GDMID_PreDrawMapView(J)I
.end method

.method private static native native_GDMID_ResetMapView(JI)I
.end method

.method private static native native_GDMID_RotateMap(I)I
.end method

.method private static native native_GDMID_RotateMapView(JIZ)I
.end method

.method private static native native_GDMID_SelectElementsByHit(IIII[[Ljava/lang/Object;[I)I
.end method

.method private static native native_GDMID_SetCarPosition(I)I
.end method

.method private static native native_GDMID_SetGetElementCallback(Lcom/autonavi/xm/navigation/server/map/OnGetElementsCallback;)I
.end method

.method private static native native_GDMID_SetLocInfo(J)I
.end method

.method private static native native_GDMID_SetMapMode(I)I
.end method

.method private static native native_GDMID_SetMapScaleLevel(I)I
.end method

.method private static native native_GDMID_SetMapViewMode(JII)I
.end method

.method private static native native_GDMID_SetRgnAvoidRect(I)I
.end method

.method private static native native_GDMID_SetShowPOIName(Z)I
.end method

.method private static native native_GDMID_ShowMinMap(II[Lcom/autonavi/xm/navigation/server/GCoord;IIIIILjava/lang/String;Lcom/autonavi/xm/navigation/server/map/GBitmap;)I
.end method

.method private static native native_GDMID_TMC_Update()I
.end method

.method private static native native_GDMID_ToNextViewMode(I)I
.end method

.method private static native native_GDMID_ViewAvoidRegion(I)I
.end method

.method private static native native_GDMID_ViewCross(I)I
.end method

.method private static native native_GDMID_ViewPOI(IIIIIIIISSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBSZ)I
.end method

.method private static native native_GDMID_ViewSP(Ljava/lang/String;Z)I
.end method

.method private static native native_GDMID_ViewTmc(I)I
.end method

.method private static native native_GDMID_ZoomIn(I)I
.end method

.method private static native native_GDMID_ZoomOut(I)I
.end method

.method private static native native_GDMID_ZoomTo(I)I
.end method
