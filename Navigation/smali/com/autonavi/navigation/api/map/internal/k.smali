.class public final Lcom/autonavi/navigation/api/map/internal/k;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;)Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;-><init>()V

    iget v1, p0, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->result:I

    iput v1, v0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;->result:I

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->resultDesc:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;->resultDesc:Ljava/lang/String;

    iget v1, p0, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->total:I

    iput v1, v0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;->total:I

    iget v1, p0, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->used:I

    iput v1, v0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;->used:I

    iget v1, p0, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->remain:I

    iput v1, v0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;->remain:I

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->beginDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;->beginDate:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;->endDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;->endDate:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;)Lcom/autonavi/navigation/api/map/model/TrafficFlow;
    .locals 6

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/autonavi/navigation/api/map/model/TrafficFlow;

    invoke-direct {v2}, Lcom/autonavi/navigation/api/map/model/TrafficFlow;-><init>()V

    iget v0, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->nTotalDis:I

    iput v0, v2, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->totalDistance:I

    iget v0, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->nCarIndex:I

    iput v0, v2, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->carIndex:I

    iget v0, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->nCarDisFromStart:I

    iput v0, v2, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->carDistanceFromStart:I

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->nDestDisFromStart:[[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->nDestDisFromStart:[[I

    array-length v0, v0

    :goto_1
    new-array v3, v0, [[I

    iput-object v3, v2, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->destDistanceFromStart:[[I

    move v3, v1

    :goto_2
    if-ge v3, v0, :cond_2

    iget-object v4, v2, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->destDistanceFromStart:[[I

    iget-object v5, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->nDestDisFromStart:[[I

    aget-object v5, v5, v3

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_3
    iget v0, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->nNumberOfItem:I

    if-ge v1, v0, :cond_3

    new-instance v0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;-><init>()V

    iget-object v3, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->pItem:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;->sIndex:I

    iput v3, v0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->startIndex:I

    iget-object v3, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->pItem:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;->eIndex:I

    iput v3, v0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->endIndex:I

    iget-object v3, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->pItem:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;->nDisFromStart:I

    iput v3, v0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->distanceFromStart:I

    iget-object v3, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->pItem:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;->nDis:I

    iput v3, v0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->length:I

    iget-object v3, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->pItem:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;->szRoadNames:Ljava/lang/String;

    iput-object v3, v0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->roadNames:Ljava/lang/String;

    iget-object v3, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->pItem:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;->eTrafficStream:I

    iput v3, v0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->status:I

    iget-object v3, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->pItem:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;->nDelayTime:I

    iput v3, v0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->delayTime:I

    iget-object v3, v2, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->trafficFlowItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public static a(Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;)Lcom/autonavi/navigation/api/map/model/TrafficIncident;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/map/model/TrafficIncident;-><init>()V

    new-instance v1, Lcom/autonavi/navigation/api/internal/ObjectId;

    invoke-direct {v1}, Lcom/autonavi/navigation/api/internal/ObjectId;-><init>()V

    iput-object v1, v0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->objectId:Lcom/autonavi/navigation/api/internal/ObjectId;

    iget v1, p0, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;->nEventID:I

    iput v1, v0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->id:I

    iget v1, p0, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;->nMsgID:I

    iput v1, v0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->messageId:I

    new-instance v1, Lcom/autonavi/navigation/api/map/model/LatLng;

    iget-object v2, p0, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;->stPosition:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    iget-object v3, p0, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;->stPosition:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v3, v3, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    invoke-direct {v1, v2, v3}, Lcom/autonavi/navigation/api/map/model/LatLng;-><init>(II)V

    iput-object v1, v0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->location:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget-object v1, v0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->objectId:Lcom/autonavi/navigation/api/internal/ObjectId;

    iget v2, p0, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;->nMeshID:I

    iput v2, v1, Lcom/autonavi/navigation/api/internal/ObjectId;->meshId:I

    iget v1, p0, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;->nRoadID:I

    iput v1, v0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->roadId:I

    iget v1, p0, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;->nDir:I

    iput v1, v0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->direction:I

    iget-wide v1, p0, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;->nStartTime:J

    iput-wide v1, v0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->beginTime:J

    iget-wide v1, p0, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;->nEndTime:J

    iput-wide v1, v0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->endTime:J

    iget v1, p0, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;->nEventRange:I

    iput v1, v0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->range:I

    iget v1, p0, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;->nDisToCar:I

    iput v1, v0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->distance:I

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;->szOccured:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->place:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;->szStartOccured:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->beginRoad:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;->szEndOccured:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->endRoad:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;->szDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->description:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Lcom/autonavi/navigation/api/map/model/SnapshotOptions;)Lcom/autonavi/xm/navigation/server/map/GMinMapParam;
    .locals 7

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/autonavi/xm/navigation/server/map/GMinMapParam;

    invoke-direct {v1}, Lcom/autonavi/xm/navigation/server/map/GMinMapParam;-><init>()V

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/model/SnapshotOptions;->getMapMode()Lcom/autonavi/navigation/api/map/model/MapMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/model/MapMode;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;->valueOf(I)Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    move-result-object v0

    iput-object v0, v1, Lcom/autonavi/xm/navigation/server/map/GMinMapParam;->euMode:Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/model/SnapshotOptions;->getZoomLevel()Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->value:I

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->valueOfZoom(I)Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    move-result-object v0

    iput-object v0, v1, Lcom/autonavi/xm/navigation/server/map/GMinMapParam;->euLevel:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/model/SnapshotOptions;->getPoints()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Lcom/autonavi/xm/navigation/server/GCoord;

    iput-object v0, v1, Lcom/autonavi/xm/navigation/server/map/GMinMapParam;->pstPnts:[Lcom/autonavi/xm/navigation/server/GCoord;

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    new-instance v5, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/model/LatLng;

    iget v6, v0, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/model/LatLng;

    iget v0, v0, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    invoke-direct {v5, v6, v0}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    iget-object v0, v1, Lcom/autonavi/xm/navigation/server/map/GMinMapParam;->pstPnts:[Lcom/autonavi/xm/navigation/server/GCoord;

    aput-object v5, v0, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    iput v4, v1, Lcom/autonavi/xm/navigation/server/map/GMinMapParam;->nPntNum:I

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/model/SnapshotOptions;->getSize()Lcom/autonavi/navigation/api/settings/model/Size;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/navigation/api/settings/model/Size;->width:I

    iput v0, v1, Lcom/autonavi/xm/navigation/server/map/GMinMapParam;->cx:I

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/model/SnapshotOptions;->getSize()Lcom/autonavi/navigation/api/settings/model/Size;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/navigation/api/settings/model/Size;->height:I

    iput v0, v1, Lcom/autonavi/xm/navigation/server/map/GMinMapParam;->cy:I

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/model/SnapshotOptions;->getFlag()I

    move-result v0

    iput v0, v1, Lcom/autonavi/xm/navigation/server/map/GMinMapParam;->gMinMapFlag:I

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/model/SnapshotOptions;->getDayNightMode()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;->valueOf(I)Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;

    move-result-object v0

    iput-object v0, v1, Lcom/autonavi/xm/navigation/server/map/GMinMapParam;->nDayNightMode:Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/autonavi/navigation/api/map/model/TrafficIncident;)Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;-><init>()V

    iget v1, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->id:I

    iput v1, v0, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;->nEventID:I

    iget v1, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->messageId:I

    iput v1, v0, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;->nMsgID:I

    new-instance v1, Lcom/autonavi/xm/navigation/server/GCoord;

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->location:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget v2, v2, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->location:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget v3, v3, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    invoke-direct {v1, v2, v3}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;->stPosition:Lcom/autonavi/xm/navigation/server/GCoord;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->objectId:Lcom/autonavi/navigation/api/internal/ObjectId;

    iget v1, v1, Lcom/autonavi/navigation/api/internal/ObjectId;->meshId:I

    iput v1, v0, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;->nMeshID:I

    iget v1, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->roadId:I

    iput v1, v0, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;->nRoadID:I

    iget v1, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->direction:I

    iput v1, v0, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;->nDir:I

    iget-wide v1, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->beginTime:J

    iput-wide v1, v0, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;->nStartTime:J

    iget-wide v1, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->endTime:J

    iput-wide v1, v0, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;->nEndTime:J

    iget v1, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->range:I

    iput v1, v0, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;->nEventRange:I

    iget v1, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->distance:I

    iput v1, v0, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;->nDisToCar:I

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->place:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;->szOccured:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->beginRoad:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;->szStartOccured:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->endRoad:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;->szEndOccured:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->description:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;->szDescription:Ljava/lang/String;

    goto :goto_0
.end method
