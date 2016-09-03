.class public final Lcom/autonavi/navigation/api/guide/a/b;
.super Ljava/lang/Object;


# direct methods
.method private static a(Lcom/autonavi/wh/navigation/server/GStatus;)I
    .locals 2

    sget-object v0, Lcom/autonavi/navigation/api/guide/a/b$1;->a:[I

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/server/GStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static a(Lcom/autonavi/wh/navigation/server/GDateTime;)J
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/autonavi/wh/navigation/server/GDateTime;->date:Lcom/autonavi/wh/navigation/server/GDate;

    iget-byte v2, v2, Lcom/autonavi/wh/navigation/server/GDate;->year:B

    add-int/lit16 v2, v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/autonavi/wh/navigation/server/GDateTime;->date:Lcom/autonavi/wh/navigation/server/GDate;

    iget-byte v2, v2, Lcom/autonavi/wh/navigation/server/GDate;->month:B

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/autonavi/wh/navigation/server/GDateTime;->date:Lcom/autonavi/wh/navigation/server/GDate;

    iget-byte v2, v2, Lcom/autonavi/wh/navigation/server/GDate;->day:B

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/autonavi/wh/navigation/server/GDateTime;->time:Lcom/autonavi/wh/navigation/server/GTime;

    iget-byte v2, v2, Lcom/autonavi/wh/navigation/server/GTime;->hour:B

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/autonavi/wh/navigation/server/GDateTime;->time:Lcom/autonavi/wh/navigation/server/GTime;

    iget-byte v2, v2, Lcom/autonavi/wh/navigation/server/GTime;->minute:B

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/autonavi/wh/navigation/server/GDateTime;->time:Lcom/autonavi/wh/navigation/server/GTime;

    iget-byte v2, v2, Lcom/autonavi/wh/navigation/server/GTime;->second:B

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lcom/autonavi/wh/navigation/engine/GDBL_Guide;)Lcom/autonavi/navigation/api/guide/model/GuideInfo;
    .locals 12

    const/4 v0, 0x1

    const/4 v7, 0x0

    new-array v11, v0, [Lcom/autonavi/wh/navigation/server/guide/GManeuverInfo;

    invoke-virtual {p0, v11}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->a([Lcom/autonavi/wh/navigation/server/guide/GManeuverInfo;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_3

    new-array v1, v0, [I

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->a([I)Lcom/autonavi/wh/navigation/server/GStatus;

    aget v2, v1, v7

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_0

    move v8, v0

    :goto_0
    aget v2, v1, v7

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move v9, v0

    :goto_1
    aget v1, v1, v7

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    move v10, v0

    :goto_2
    new-instance v0, Lcom/autonavi/navigation/api/guide/model/GuideInfo;

    aget-object v1, v11, v7

    iget v1, v1, Lcom/autonavi/wh/navigation/server/guide/GManeuverInfo;->nTurnID:I

    aget-object v2, v11, v7

    iget v2, v2, Lcom/autonavi/wh/navigation/server/guide/GManeuverInfo;->nNextDis:I

    aget-object v3, v11, v7

    iget v3, v3, Lcom/autonavi/wh/navigation/server/guide/GManeuverInfo;->nNextArrivalTime:I

    aget-object v4, v11, v7

    iget v4, v4, Lcom/autonavi/wh/navigation/server/guide/GManeuverInfo;->nTotalRemainDis:I

    aget-object v5, v11, v7

    iget v5, v5, Lcom/autonavi/wh/navigation/server/guide/GManeuverInfo;->nTotalArrivalTime:I

    aget-object v6, v11, v7

    iget-object v6, v6, Lcom/autonavi/wh/navigation/server/guide/GManeuverInfo;->szCurRoadName:Ljava/lang/String;

    aget-object v7, v11, v7

    iget-object v7, v7, Lcom/autonavi/wh/navigation/server/guide/GManeuverInfo;->szNextRoadName:Ljava/lang/String;

    invoke-direct/range {v0 .. v10}, Lcom/autonavi/navigation/api/guide/model/GuideInfo;-><init>(IIIIILjava/lang/String;Ljava/lang/String;ZZZ)V

    :goto_3
    return-object v0

    :cond_0
    move v8, v7

    goto :goto_0

    :cond_1
    move v9, v7

    goto :goto_1

    :cond_2
    move v10, v7

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static a(Lcom/autonavi/wh/navigation/engine/GDBL_Guide;Lcom/autonavi/wh/navigation/server/GStatus;[Lcom/autonavi/wh/navigation/server/guide/GHGuideRoute;Lcom/autonavi/navigation/api/route/model/CalculationInput;)Lcom/autonavi/navigation/api/route/model/CalculationResult;
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NO_DATA:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne p1, v0, :cond_3

    new-array v0, v1, [Lcom/autonavi/wh/navigation/server/guide/GRouteErrorInfo;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->a([Lcom/autonavi/wh/navigation/server/guide/GRouteErrorInfo;)Lcom/autonavi/wh/navigation/server/GStatus;

    aget-object v1, v0, v3

    if-eqz v1, :cond_3

    aget-object v0, v0, v3

    iget-object v4, v0, Lcom/autonavi/wh/navigation/server/guide/GRouteErrorInfo;->pAdminCodeList:[I

    :goto_0
    new-instance v0, Lcom/autonavi/navigation/api/route/model/CalculationResult;

    invoke-static {p1}, Lcom/autonavi/navigation/api/guide/a/b;->a(Lcom/autonavi/wh/navigation/server/GStatus;)I

    move-result v1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/navigation/api/route/model/CalculationResult;-><init>(ILjava/util/List;Z[ILcom/autonavi/navigation/api/route/model/CalculationInput;)V

    :goto_1
    return-object v0

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    array-length v0, p2

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v7, p2

    move v4, v3

    move v6, v1

    :goto_2
    if-ge v4, v7, :cond_2

    aget-object v0, p2, v4

    invoke-static {p0, v0, p3}, Lcom/autonavi/navigation/api/guide/a/b;->a(Lcom/autonavi/wh/navigation/engine/GDBL_Guide;Lcom/autonavi/wh/navigation/server/guide/GHGuideRoute;Lcom/autonavi/navigation/api/route/model/CalculationInput;)Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v0, Lcom/autonavi/navigation/api/route/model/Route;->existDetourable:Z

    if-nez v0, :cond_1

    if-eqz v6, :cond_1

    move v0, v1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    move v6, v0

    goto :goto_2

    :cond_1
    move v0, v3

    goto :goto_3

    :cond_2
    new-instance v3, Lcom/autonavi/navigation/api/route/model/CalculationResult;

    invoke-static {p1}, Lcom/autonavi/navigation/api/guide/a/b;->a(Lcom/autonavi/wh/navigation/server/GStatus;)I

    move-result v4

    move-object v7, v2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/autonavi/navigation/api/route/model/CalculationResult;-><init>(ILjava/util/List;Z[ILcom/autonavi/navigation/api/route/model/CalculationInput;)V

    move-object v0, v3

    goto :goto_1

    :cond_3
    move-object v4, v2

    goto :goto_0
.end method

.method public static a(Lcom/autonavi/wh/navigation/server/guide/GDetourRegionInfo;)Lcom/autonavi/navigation/api/route/model/DetourRegion;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/autonavi/wh/navigation/server/guide/GDetourRegionInfo;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/wh/navigation/server/guide/GDetourRegionInfo;->eOption:Lcom/autonavi/wh/navigation/server/guide/GDetourOption;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/wh/navigation/server/guide/GDetourRegionInfo;->szRegionName:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/autonavi/wh/navigation/server/guide/GDetourRegionInfo;->eOption:Lcom/autonavi/wh/navigation/server/guide/GDetourOption;

    sget-object v2, Lcom/autonavi/wh/navigation/server/guide/GDetourOption;->GDETOUR_OPTION_CUSTOMIZE:Lcom/autonavi/wh/navigation/server/guide/GDetourOption;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/autonavi/wh/navigation/server/guide/GDetourRegionInfo;->StartTime:Lcom/autonavi/wh/navigation/server/GDateTime;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/wh/navigation/server/guide/GDetourRegionInfo;->EndTime:Lcom/autonavi/wh/navigation/server/GDateTime;

    if-eqz v1, :cond_0

    :cond_2
    new-instance v0, Lcom/autonavi/navigation/api/route/model/DetourRegion;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/route/model/DetourRegion;-><init>()V

    iget v1, p0, Lcom/autonavi/wh/navigation/server/guide/GDetourRegionInfo;->nIndex:I

    iput v1, v0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->id:I

    iget v1, p0, Lcom/autonavi/wh/navigation/server/guide/GDetourRegionInfo;->nDis:I

    iput v1, v0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->halfWidth:I

    new-instance v1, Lcom/autonavi/navigation/api/map/model/LatLng;

    iget-object v2, p0, Lcom/autonavi/wh/navigation/server/guide/GDetourRegionInfo;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/wh/navigation/server/GCoord;->y:I

    iget-object v3, p0, Lcom/autonavi/wh/navigation/server/guide/GDetourRegionInfo;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    iget v3, v3, Lcom/autonavi/wh/navigation/server/GCoord;->x:I

    invoke-direct {v1, v2, v3}, Lcom/autonavi/navigation/api/map/model/LatLng;-><init>(II)V

    iput-object v1, v0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->location:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget-object v1, p0, Lcom/autonavi/wh/navigation/server/guide/GDetourRegionInfo;->eOption:Lcom/autonavi/wh/navigation/server/guide/GDetourOption;

    invoke-virtual {v1}, Lcom/autonavi/wh/navigation/server/guide/GDetourOption;->ordinal()I

    move-result v1

    invoke-static {v1}, Lcom/autonavi/navigation/api/route/model/DetourOption;->valueOf(I)Lcom/autonavi/navigation/api/route/model/DetourOption;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->detourOption:Lcom/autonavi/navigation/api/route/model/DetourOption;

    iget-object v1, p0, Lcom/autonavi/wh/navigation/server/guide/GDetourRegionInfo;->StartTime:Lcom/autonavi/wh/navigation/server/GDateTime;

    invoke-static {v1}, Lcom/autonavi/navigation/api/guide/a/b;->a(Lcom/autonavi/wh/navigation/server/GDateTime;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->startTime:J

    iget-object v1, p0, Lcom/autonavi/wh/navigation/server/guide/GDetourRegionInfo;->EndTime:Lcom/autonavi/wh/navigation/server/GDateTime;

    invoke-static {v1}, Lcom/autonavi/navigation/api/guide/a/b;->a(Lcom/autonavi/wh/navigation/server/GDateTime;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->endTime:J

    iget-object v1, p0, Lcom/autonavi/wh/navigation/server/guide/GDetourRegionInfo;->szRegionName:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Lcom/autonavi/wh/navigation/server/guide/GRoadInfo;)Lcom/autonavi/navigation/api/route/model/Road;
    .locals 8

    new-instance v1, Lcom/autonavi/navigation/api/internal/ObjectId;

    invoke-direct {v1}, Lcom/autonavi/navigation/api/internal/ObjectId;-><init>()V

    iget v0, p0, Lcom/autonavi/wh/navigation/server/guide/GRoadInfo;->nID:I

    iput v0, v1, Lcom/autonavi/navigation/api/internal/ObjectId;->objectId:I

    iget v0, p0, Lcom/autonavi/wh/navigation/server/guide/GRoadInfo;->nMeshID:I

    iput v0, v1, Lcom/autonavi/navigation/api/internal/ObjectId;->meshId:I

    new-instance v0, Lcom/autonavi/navigation/api/route/model/Road;

    iget-object v2, p0, Lcom/autonavi/wh/navigation/server/guide/GRoadInfo;->szRoadName:Ljava/lang/String;

    iget v3, p0, Lcom/autonavi/wh/navigation/server/guide/GRoadInfo;->nRoadType:I

    iget v4, p0, Lcom/autonavi/wh/navigation/server/guide/GRoadInfo;->nMeshRoadID:I

    new-instance v5, Lcom/autonavi/navigation/api/map/model/LatLng;

    iget-object v6, p0, Lcom/autonavi/wh/navigation/server/guide/GRoadInfo;->coord:Lcom/autonavi/wh/navigation/server/GCoord;

    iget v6, v6, Lcom/autonavi/wh/navigation/server/GCoord;->y:I

    iget-object v7, p0, Lcom/autonavi/wh/navigation/server/guide/GRoadInfo;->coord:Lcom/autonavi/wh/navigation/server/GCoord;

    iget v7, v7, Lcom/autonavi/wh/navigation/server/GCoord;->x:I

    invoke-direct {v5, v6, v7}, Lcom/autonavi/navigation/api/map/model/LatLng;-><init>(II)V

    iget v6, p0, Lcom/autonavi/wh/navigation/server/guide/GRoadInfo;->nDistance:I

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/navigation/api/route/model/Road;-><init>(Lcom/autonavi/navigation/api/internal/ObjectId;Ljava/lang/String;IILcom/autonavi/navigation/api/map/model/LatLng;I)V

    return-object v0
.end method

.method public static a(Lcom/autonavi/wh/navigation/engine/GDBL_Guide;Lcom/autonavi/wh/navigation/server/guide/GHGuideRoute;Lcom/autonavi/navigation/api/route/model/CalculationInput;)Lcom/autonavi/navigation/api/route/model/Route;
    .locals 20

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/autonavi/wh/navigation/server/guide/GPathStatisticList;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->a(Lcom/autonavi/wh/navigation/server/guide/GHGuideRoute;ZZ[Lcom/autonavi/wh/navigation/server/guide/GPathStatisticList;)Lcom/autonavi/wh/navigation/server/GStatus;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/autonavi/wh/navigation/server/guide/GPathStatisticList;->pPathStat:[Lcom/autonavi/wh/navigation/server/guide/GPathStatisticInfo;

    const/4 v3, 0x0

    aget-object v15, v2, v3

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/autonavi/wh/navigation/server/guide/GGuideRouteInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->a(Lcom/autonavi/wh/navigation/server/guide/GHGuideRoute;[Lcom/autonavi/wh/navigation/server/guide/GGuideRouteInfo;)Lcom/autonavi/wh/navigation/server/GStatus;

    const/4 v3, 0x0

    aget-object v17, v2, v3

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->getStart()Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v18

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->getEnd()Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v19

    :goto_1
    if-nez p2, :cond_0

    new-instance v18, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/autonavi/wh/navigation/server/guide/GGuideRouteInfo;->JourneyPoints:[Lcom/autonavi/wh/navigation/server/poi/GPoi;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/autonavi/navigation/api/poi/a/b;->a(Lcom/autonavi/wh/navigation/server/poi/GPoi;)Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3, v4}, Lcom/autonavi/navigation/api/route/model/RoutePoint;-><init>(Lcom/autonavi/navigation/api/poi/model/Poi;Ljava/util/List;I)V

    new-instance v19, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/autonavi/wh/navigation/server/guide/GGuideRouteInfo;->JourneyPoints:[Lcom/autonavi/wh/navigation/server/poi/GPoi;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/autonavi/wh/navigation/server/guide/GGuideRouteInfo;->JourneyPoints:[Lcom/autonavi/wh/navigation/server/poi/GPoi;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/autonavi/navigation/api/poi/a/b;->a(Lcom/autonavi/wh/navigation/server/poi/GPoi;)Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3, v4}, Lcom/autonavi/navigation/api/route/model/RoutePoint;-><init>(Lcom/autonavi/navigation/api/poi/model/Poi;Ljava/util/List;I)V

    :cond_0
    new-instance v2, Lcom/autonavi/navigation/api/route/model/Route;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/autonavi/wh/navigation/server/guide/GHGuideRoute;->hGuideRoute:J

    iget v5, v15, Lcom/autonavi/wh/navigation/server/guide/GPathStatisticInfo;->nTotalDis:I

    iget v6, v15, Lcom/autonavi/wh/navigation/server/guide/GPathStatisticInfo;->nTotalChargeDis:I

    iget v7, v15, Lcom/autonavi/wh/navigation/server/guide/GPathStatisticInfo;->nTotalHighwayDis:I

    iget v8, v15, Lcom/autonavi/wh/navigation/server/guide/GPathStatisticInfo;->nTotalCircleDis:I

    iget v9, v15, Lcom/autonavi/wh/navigation/server/guide/GPathStatisticInfo;->nTotalHighDis:I

    iget v10, v15, Lcom/autonavi/wh/navigation/server/guide/GPathStatisticInfo;->nTotalMidDis:I

    iget v11, v15, Lcom/autonavi/wh/navigation/server/guide/GPathStatisticInfo;->nTotalLowDis:I

    iget v12, v15, Lcom/autonavi/wh/navigation/server/guide/GPathStatisticInfo;->nTotalCharge:I

    iget v13, v15, Lcom/autonavi/wh/navigation/server/guide/GPathStatisticInfo;->nTotalTollGate:I

    iget v14, v15, Lcom/autonavi/wh/navigation/server/guide/GPathStatisticInfo;->nTotalTrafficLight:I

    iget v15, v15, Lcom/autonavi/wh/navigation/server/guide/GPathStatisticInfo;->nTime:I

    move-object/from16 v0, v17

    iget v0, v0, Lcom/autonavi/wh/navigation/server/guide/GGuideRouteInfo;->nRule:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/autonavi/navigation/api/route/model/CalculationRule;->valueOf(I)Lcom/autonavi/navigation/api/route/model/CalculationRule;

    move-result-object v16

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/autonavi/wh/navigation/server/guide/GGuideRouteInfo;->bHasAvoidRoad:Z

    move/from16 v17, v0

    invoke-direct/range {v2 .. v19}, Lcom/autonavi/navigation/api/route/model/Route;-><init>(JIIIIIIIIIIILcom/autonavi/navigation/api/route/model/CalculationRule;ZLcom/autonavi/navigation/api/route/model/RoutePoint;Lcom/autonavi/navigation/api/route/model/RoutePoint;)V

    return-object v2

    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    :cond_2
    const/16 v19, 0x0

    goto :goto_1
.end method

.method public static a(Lcom/autonavi/wh/navigation/server/guide/GGuideRoadInfo;)Lcom/autonavi/navigation/api/route/model/RouteStep;
    .locals 15

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v14, Lcom/autonavi/navigation/api/internal/ObjectId;

    invoke-direct {v14}, Lcom/autonavi/navigation/api/internal/ObjectId;-><init>()V

    iget v0, p0, Lcom/autonavi/wh/navigation/server/guide/GGuideRoadInfo;->nMeshID:I

    iput v0, v14, Lcom/autonavi/navigation/api/internal/ObjectId;->meshId:I

    new-instance v0, Lcom/autonavi/navigation/api/route/model/RouteStep;

    iget v1, p0, Lcom/autonavi/wh/navigation/server/guide/GGuideRoadInfo;->nID:I

    iget v2, p0, Lcom/autonavi/wh/navigation/server/guide/GGuideRoadInfo;->nTurnID:I

    iget v3, p0, Lcom/autonavi/wh/navigation/server/guide/GGuideRoadInfo;->nNextDis:I

    iget v4, p0, Lcom/autonavi/wh/navigation/server/guide/GGuideRoadInfo;->nNextArrivalTime:I

    iget v5, p0, Lcom/autonavi/wh/navigation/server/guide/GGuideRoadInfo;->nTotalRemainDis:I

    iget-object v6, p0, Lcom/autonavi/wh/navigation/server/guide/GGuideRoadInfo;->szCurRoadName:Ljava/lang/String;

    iget-object v7, p0, Lcom/autonavi/wh/navigation/server/guide/GGuideRoadInfo;->szNextRoadName:Ljava/lang/String;

    iget v8, p0, Lcom/autonavi/wh/navigation/server/guide/GGuideRoadInfo;->nChinaRoadID:I

    iget v9, p0, Lcom/autonavi/wh/navigation/server/guide/GGuideRoadInfo;->eFlag:I

    iget-short v10, p0, Lcom/autonavi/wh/navigation/server/guide/GGuideRoadInfo;->nMeshRoadID:S

    new-instance v11, Lcom/autonavi/navigation/api/map/model/LatLng;

    iget v12, p0, Lcom/autonavi/wh/navigation/server/guide/GGuideRoadInfo;->lLat:I

    iget v13, p0, Lcom/autonavi/wh/navigation/server/guide/GGuideRoadInfo;->lLon:I

    invoke-direct {v11, v12, v13}, Lcom/autonavi/navigation/api/map/model/LatLng;-><init>(II)V

    iget v12, p0, Lcom/autonavi/wh/navigation/server/guide/GGuideRoadInfo;->nTrafficEventID:I

    iget v13, p0, Lcom/autonavi/wh/navigation/server/guide/GGuideRoadInfo;->eTrafficStream:I

    invoke-direct/range {v0 .. v14}, Lcom/autonavi/navigation/api/route/model/RouteStep;-><init>(IIIIILjava/lang/String;Ljava/lang/String;IIILcom/autonavi/navigation/api/map/model/LatLng;IILcom/autonavi/navigation/api/internal/ObjectId;)V

    goto :goto_0
.end method

.method private static a(J)Lcom/autonavi/wh/navigation/server/GDateTime;
    .locals 7

    const/4 v4, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v2, Lcom/autonavi/wh/navigation/server/GDateTime;

    new-instance v3, Lcom/autonavi/wh/navigation/server/GDate;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit16 v0, v0, -0x7d0

    if-lez v0, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit16 v0, v0, -0x7d0

    :goto_0
    int-to-byte v0, v0

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-byte v5, v5

    invoke-direct {v3, v0, v4, v5}, Lcom/autonavi/wh/navigation/server/GDate;-><init>(BBB)V

    new-instance v0, Lcom/autonavi/wh/navigation/server/GTime;

    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-byte v4, v4

    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-byte v5, v5

    const/16 v6, 0xd

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-byte v1, v1

    invoke-direct {v0, v4, v5, v1}, Lcom/autonavi/wh/navigation/server/GTime;-><init>(BBB)V

    invoke-direct {v2, v3, v0}, Lcom/autonavi/wh/navigation/server/GDateTime;-><init>(Lcom/autonavi/wh/navigation/server/GDate;Lcom/autonavi/wh/navigation/server/GTime;)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/autonavi/navigation/api/route/model/DetourRegion;)Lcom/autonavi/wh/navigation/server/guide/GDetourRegionInfo;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->location:Lcom/autonavi/navigation/api/map/model/LatLng;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->detourOption:Lcom/autonavi/navigation/api/route/model/DetourOption;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->name:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->detourOption:Lcom/autonavi/navigation/api/route/model/DetourOption;

    sget-object v2, Lcom/autonavi/navigation/api/route/model/DetourOption;->GDETOUR_OPTION_CUSTOMIZE:Lcom/autonavi/navigation/api/route/model/DetourOption;

    if-ne v1, v2, :cond_2

    iget-wide v1, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->startTime:J

    iget-wide v3, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->endTime:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    :cond_2
    new-instance v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRegionInfo;

    invoke-direct {v0}, Lcom/autonavi/wh/navigation/server/guide/GDetourRegionInfo;-><init>()V

    iget v1, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->id:I

    iput v1, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRegionInfo;->nIndex:I

    iget v1, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->halfWidth:I

    iput v1, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRegionInfo;->nDis:I

    new-instance v1, Lcom/autonavi/wh/navigation/server/GCoord;

    iget-object v2, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->location:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget v2, v2, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    iget-object v3, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->location:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget v3, v3, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    invoke-direct {v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GCoord;-><init>(II)V

    iput-object v1, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRegionInfo;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    iget-object v1, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->detourOption:Lcom/autonavi/navigation/api/route/model/DetourOption;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/model/DetourOption;->ordinal()I

    move-result v1

    invoke-static {v1}, Lcom/autonavi/wh/navigation/server/guide/GDetourOption;->valueOf(I)Lcom/autonavi/wh/navigation/server/guide/GDetourOption;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRegionInfo;->eOption:Lcom/autonavi/wh/navigation/server/guide/GDetourOption;

    iget-wide v1, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->startTime:J

    invoke-static {v1, v2}, Lcom/autonavi/navigation/api/guide/a/b;->a(J)Lcom/autonavi/wh/navigation/server/GDateTime;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRegionInfo;->StartTime:Lcom/autonavi/wh/navigation/server/GDateTime;

    iget-wide v1, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->endTime:J

    invoke-static {v1, v2}, Lcom/autonavi/navigation/api/guide/a/b;->a(J)Lcom/autonavi/wh/navigation/server/GDateTime;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRegionInfo;->EndTime:Lcom/autonavi/wh/navigation/server/GDateTime;

    iget-object v1, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRegionInfo;->szRegionName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Lcom/autonavi/navigation/api/route/model/Route;)Lcom/autonavi/wh/navigation/server/guide/GHGuideRoute;
    .locals 3

    new-instance v0, Lcom/autonavi/wh/navigation/server/guide/GHGuideRoute;

    iget-wide v1, p0, Lcom/autonavi/navigation/api/route/model/Route;->id:J

    invoke-direct {v0, v1, v2}, Lcom/autonavi/wh/navigation/server/guide/GHGuideRoute;-><init>(J)V

    return-object v0
.end method

.method public static a(Lcom/autonavi/wh/navigation/engine/GDBL_Guide;Z)Ljava/util/List;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array v2, v0, [[Lcom/autonavi/wh/navigation/server/guide/GCarParallelRoad;

    new-array v3, v0, [I

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->a([[Lcom/autonavi/wh/navigation/server/guide/GCarParallelRoad;[I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v4, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v4, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    aget v3, v3, v1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v2, v2, v1

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    new-instance v5, Lcom/autonavi/navigation/api/route/model/Road;

    invoke-direct {v5}, Lcom/autonavi/navigation/api/route/model/Road;-><init>()V

    new-instance v6, Lcom/autonavi/navigation/api/internal/ObjectId;

    invoke-direct {v6}, Lcom/autonavi/navigation/api/internal/ObjectId;-><init>()V

    iget v7, v4, Lcom/autonavi/wh/navigation/server/guide/GCarParallelRoad;->nID:I

    iput v7, v6, Lcom/autonavi/navigation/api/internal/ObjectId;->objectId:I

    iput-object v6, v5, Lcom/autonavi/navigation/api/route/model/Road;->id:Lcom/autonavi/navigation/api/internal/ObjectId;

    iget-object v4, v4, Lcom/autonavi/wh/navigation/server/guide/GCarParallelRoad;->szRoadName:Ljava/lang/String;

    iput-object v4, v5, Lcom/autonavi/navigation/api/route/model/Road;->name:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static a(Lcom/autonavi/navigation/api/settings/a/b;)Z
    .locals 2

    const-string v0, "has_route"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/autonavi/navigation/api/settings/a/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static a(Lcom/autonavi/wh/navigation/engine/a;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Z

    sget-object v2, Lcom/autonavi/wh/navigation/server/GParam;->G_GUIDE_STATUS:Lcom/autonavi/wh/navigation/server/GParam;

    invoke-virtual {p0, v2, v1}, Lcom/autonavi/wh/navigation/engine/a;->a(Lcom/autonavi/wh/navigation/server/GParam;[Z)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v2, v3, :cond_0

    aget-boolean v0, v1, v0

    :cond_0
    return v0
.end method

.method public static b(Lcom/autonavi/navigation/api/settings/a/b;)Z
    .locals 2

    const-string v0, "is_simulating"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/autonavi/navigation/api/settings/a/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
