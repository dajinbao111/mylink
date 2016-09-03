.class public Lcom/autonavi/wh/navigation/engine/MidGuide;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Z)I
    .locals 1

    invoke-static {p0}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_GetDestinationAngle(Z)I

    move-result v0

    return v0
.end method

.method static a()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_BindRoad()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_SelectRoute(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(IIILcom/autonavi/navigation/api/map/model/LatLng;[Lcom/autonavi/wh/navigation/server/guide/GExpressWayList;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 6

    iget v3, p3, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    iget v4, p3, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    move v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_ICSearch(IIIII[Lcom/autonavi/wh/navigation/server/guide/GExpressWayList;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(J)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_AddGuideRoute(J)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(JLjava/lang/String;Z)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_SaveGuideRoute(JLjava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(JZZ[Lcom/autonavi/wh/navigation/server/guide/GPathStatisticList;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p4, :cond_0

    array-length v0, p4

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_GetPathStatisticInfo(JZZ[Lcom/autonavi/wh/navigation/server/guide/GPathStatisticList;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(JZ[Lcom/autonavi/wh/navigation/server/guide/GGuideRoadList;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p3, :cond_0

    array-length v0, p3

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_GetGuideRoadList(JZ[Lcom/autonavi/wh/navigation/server/guide/GGuideRoadList;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(J[I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_UpdateGuideTrafficInfo(J[I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(J[Lcom/autonavi/wh/navigation/server/guide/GGuideRouteInfo;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_GetGuideRouteInfo(J[Lcom/autonavi/wh/navigation/server/guide/GGuideRouteInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/autonavi/wh/navigation/engine/GDBL_Guide$GGuideCallback;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_SetSafeIconInfoCallBack(Lcom/autonavi/wh/navigation/engine/GDBL_Guide$GGuideCallback;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/autonavi/wh/navigation/server/guide/GDetourRoadInfo;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 20

    if-nez p0, :cond_0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v1

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRoadInfo;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRoadInfo;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    iget v4, v1, Lcom/autonavi/wh/navigation/server/GCoord;->x:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRoadInfo;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    iget v5, v1, Lcom/autonavi/wh/navigation/server/GCoord;->y:I

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRoadInfo;->StartTime:Lcom/autonavi/wh/navigation/server/GDateTime;

    if-nez v1, :cond_2

    new-instance v1, Lcom/autonavi/wh/navigation/server/GDateTime;

    new-instance v2, Lcom/autonavi/wh/navigation/server/GDate;

    invoke-direct {v2}, Lcom/autonavi/wh/navigation/server/GDate;-><init>()V

    new-instance v3, Lcom/autonavi/wh/navigation/server/GTime;

    invoke-direct {v3}, Lcom/autonavi/wh/navigation/server/GTime;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GDateTime;-><init>(Lcom/autonavi/wh/navigation/server/GDate;Lcom/autonavi/wh/navigation/server/GTime;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRoadInfo;->StartTime:Lcom/autonavi/wh/navigation/server/GDateTime;

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRoadInfo;->EndTime:Lcom/autonavi/wh/navigation/server/GDateTime;

    if-nez v1, :cond_3

    new-instance v1, Lcom/autonavi/wh/navigation/server/GDateTime;

    new-instance v2, Lcom/autonavi/wh/navigation/server/GDate;

    invoke-direct {v2}, Lcom/autonavi/wh/navigation/server/GDate;-><init>()V

    new-instance v3, Lcom/autonavi/wh/navigation/server/GTime;

    invoke-direct {v3}, Lcom/autonavi/wh/navigation/server/GTime;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GDateTime;-><init>(Lcom/autonavi/wh/navigation/server/GDate;Lcom/autonavi/wh/navigation/server/GTime;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRoadInfo;->EndTime:Lcom/autonavi/wh/navigation/server/GDateTime;

    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRoadInfo;->nIndex:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRoadInfo;->nMeshID:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRoadInfo;->nMeshRoadID:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRoadInfo;->eOption:Lcom/autonavi/wh/navigation/server/guide/GDetourOption;

    invoke-virtual {v6}, Lcom/autonavi/wh/navigation/server/guide/GDetourOption;->ordinal()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRoadInfo;->StartTime:Lcom/autonavi/wh/navigation/server/GDateTime;

    iget-object v7, v7, Lcom/autonavi/wh/navigation/server/GDateTime;->date:Lcom/autonavi/wh/navigation/server/GDate;

    iget-byte v7, v7, Lcom/autonavi/wh/navigation/server/GDate;->year:B

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRoadInfo;->StartTime:Lcom/autonavi/wh/navigation/server/GDateTime;

    iget-object v8, v8, Lcom/autonavi/wh/navigation/server/GDateTime;->date:Lcom/autonavi/wh/navigation/server/GDate;

    iget-byte v8, v8, Lcom/autonavi/wh/navigation/server/GDate;->month:B

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRoadInfo;->StartTime:Lcom/autonavi/wh/navigation/server/GDateTime;

    iget-object v9, v9, Lcom/autonavi/wh/navigation/server/GDateTime;->date:Lcom/autonavi/wh/navigation/server/GDate;

    iget-byte v9, v9, Lcom/autonavi/wh/navigation/server/GDate;->day:B

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRoadInfo;->StartTime:Lcom/autonavi/wh/navigation/server/GDateTime;

    iget-object v10, v10, Lcom/autonavi/wh/navigation/server/GDateTime;->time:Lcom/autonavi/wh/navigation/server/GTime;

    iget-byte v10, v10, Lcom/autonavi/wh/navigation/server/GTime;->hour:B

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRoadInfo;->StartTime:Lcom/autonavi/wh/navigation/server/GDateTime;

    iget-object v11, v11, Lcom/autonavi/wh/navigation/server/GDateTime;->time:Lcom/autonavi/wh/navigation/server/GTime;

    iget-byte v11, v11, Lcom/autonavi/wh/navigation/server/GTime;->minute:B

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRoadInfo;->StartTime:Lcom/autonavi/wh/navigation/server/GDateTime;

    iget-object v12, v12, Lcom/autonavi/wh/navigation/server/GDateTime;->time:Lcom/autonavi/wh/navigation/server/GTime;

    iget-byte v12, v12, Lcom/autonavi/wh/navigation/server/GTime;->second:B

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRoadInfo;->EndTime:Lcom/autonavi/wh/navigation/server/GDateTime;

    iget-object v13, v13, Lcom/autonavi/wh/navigation/server/GDateTime;->date:Lcom/autonavi/wh/navigation/server/GDate;

    iget-byte v13, v13, Lcom/autonavi/wh/navigation/server/GDate;->year:B

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRoadInfo;->EndTime:Lcom/autonavi/wh/navigation/server/GDateTime;

    iget-object v14, v14, Lcom/autonavi/wh/navigation/server/GDateTime;->date:Lcom/autonavi/wh/navigation/server/GDate;

    iget-byte v14, v14, Lcom/autonavi/wh/navigation/server/GDate;->month:B

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRoadInfo;->EndTime:Lcom/autonavi/wh/navigation/server/GDateTime;

    iget-object v15, v15, Lcom/autonavi/wh/navigation/server/GDateTime;->date:Lcom/autonavi/wh/navigation/server/GDate;

    iget-byte v15, v15, Lcom/autonavi/wh/navigation/server/GDate;->day:B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRoadInfo;->EndTime:Lcom/autonavi/wh/navigation/server/GDateTime;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/GDateTime;->time:Lcom/autonavi/wh/navigation/server/GTime;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-byte v0, v0, Lcom/autonavi/wh/navigation/server/GTime;->hour:B

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRoadInfo;->EndTime:Lcom/autonavi/wh/navigation/server/GDateTime;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/GDateTime;->time:Lcom/autonavi/wh/navigation/server/GTime;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-byte v0, v0, Lcom/autonavi/wh/navigation/server/GTime;->minute:B

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRoadInfo;->EndTime:Lcom/autonavi/wh/navigation/server/GDateTime;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/GDateTime;->time:Lcom/autonavi/wh/navigation/server/GTime;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-byte v0, v0, Lcom/autonavi/wh/navigation/server/GTime;->second:B

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/guide/GDetourRoadInfo;->szRoadName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v1 .. v19}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_AddDetourRoad(IIIIIIBBBBBBBBBBBBLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    goto/16 :goto_0
.end method

.method static a(Lcom/autonavi/wh/navigation/server/guide/GJourneyNotifyCB;Ljava/lang/Object;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_SetAddJourneyPointCB(Lcom/autonavi/wh/navigation/server/guide/GJourneyNotifyCB;Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/autonavi/wh/navigation/server/guide/GJourneyPointType;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/server/guide/GJourneyPointType;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_DelJourneyPoint(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/autonavi/wh/navigation/server/guide/GJourneyPointType;Lcom/autonavi/wh/navigation/server/poi/GPoi;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 19

    if-nez p1, :cond_0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/autonavi/wh/navigation/server/guide/GJourneyPointType;->ordinal()I

    move-result v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/wh/navigation/server/GCoord;->x:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    iget v3, v3, Lcom/autonavi/wh/navigation/server/GCoord;->y:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lCategoryID:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lDistance:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lMatchCode:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lHilightFlag:I

    move-object/from16 v0, p1

    iget v8, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lAdminCode:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lPoiId:I

    move-object/from16 v0, p1

    iget-short v10, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->siELonOff:S

    move-object/from16 v0, p1

    iget-short v11, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->siELatOff:S

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->szName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->szAddr:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->szTel:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v15, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lPoiIndex:I

    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->ucFlag:B

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->Reserved:B

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-short v0, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->usNodeId:S

    move/from16 v18, v0

    invoke-static/range {v1 .. v18}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_AddJourneyPoint(IIIIIIIIISSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBS)I

    move-result v1

    invoke-static {v1}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    goto :goto_0
.end method

.method static a(Lcom/autonavi/wh/navigation/server/guide/GSoundCallback;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_SetSoundCallback(Lcom/autonavi/wh/navigation/server/guide/GSoundCallback;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 18

    if-nez p0, :cond_0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v1

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->stPosition:Lcom/autonavi/wh/navigation/server/GCoord;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->stPosition:Lcom/autonavi/wh/navigation/server/GCoord;

    iget v3, v1, Lcom/autonavi/wh/navigation/server/GCoord;->x:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->stPosition:Lcom/autonavi/wh/navigation/server/GCoord;

    iget v4, v1, Lcom/autonavi/wh/navigation/server/GCoord;->y:I

    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->nEventID:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->nMsgID:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->nMeshID:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->nRoadID:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->nDir:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->nStartTime:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->nEndTime:J

    move-object/from16 v0, p0

    iget v12, v0, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->nEventRange:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->szOccured:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->szStartOccured:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->szEndOccured:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->szDescription:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->nDisToCar:I

    move/from16 v17, v0

    invoke-static/range {v1 .. v17}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_AddAvoidEventInfo(IIIIIIIJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;[J)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_LoadGuideRoute(Ljava/lang/String;[J)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(Z[J[II)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lt v0, p3, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_StartRouteCalculation(Z[J[II)I

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
    invoke-static {p0}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_GetGuideFlags([I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a([J)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_RouteRecalculate([J)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a([JI[I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_GetGuideRouteList([JI[I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a([Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;IZ)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_GetGuideClusterInfo([Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;IZ)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a([Lcom/autonavi/wh/navigation/server/guide/GGuideRoadTmcList;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_GetGuideRoadTMCList([Lcom/autonavi/wh/navigation/server/guide/GGuideRoadTmcList;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a([Lcom/autonavi/wh/navigation/server/guide/GManeuverInfo;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_GetManeuverInfo([Lcom/autonavi/wh/navigation/server/guide/GManeuverInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a([Lcom/autonavi/wh/navigation/server/guide/GRouteErrorInfo;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_GetRouteErrorInfo([Lcom/autonavi/wh/navigation/server/guide/GRouteErrorInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a([Lcom/autonavi/wh/navigation/server/poi/GPoi;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 2

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_GetJourneyPoint([Lcom/autonavi/wh/navigation/server/poi/GPoi;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a([[Lcom/autonavi/wh/navigation/server/guide/GCarParallelRoad;[I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_GetCarParallelRoads([[Lcom/autonavi/wh/navigation/server/guide/GCarParallelRoad;[I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static b()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_AbortRouteCalculation()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static b(I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_ChangeCarRoad(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static b(J)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_DelGuideRoute(J)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static b([Lcom/autonavi/wh/navigation/server/poi/GPoi;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 2

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_GetCurrentJourneyPoint([Lcom/autonavi/wh/navigation/server/poi/GPoi;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static c()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_StopGuide()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static c(J)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_SelectGuideRoute(J)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static d()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_StartGuidance()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static d(J)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_StartGuide(J)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static e()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_StopGuidance()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static e(J)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_GuideTheRoute(J)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static f()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_SpeakNaviSound()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static f(J)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_Demoing(J)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static g(J)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_ContinueDemo(J)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static g()Z
    .locals 1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_CheckDeviate()Z

    move-result v0

    return v0
.end method

.method static h()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_StartDemo()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static i()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/MidGuide;->native_GDMID_StopDemo()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method private static native native_GDMID_AbortRouteCalculation()I
.end method

.method private static native native_GDMID_AddAvoidEventInfo(IIIIIIIJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private static native native_GDMID_AddDetourRoad(IIIIIIBBBBBBBBBBBBLjava/lang/String;)I
.end method

.method private static native native_GDMID_AddGuideRoute(J)I
.end method

.method private static native native_GDMID_AddJourneyPoint(IIIIIIIIISSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBS)I
.end method

.method private static native native_GDMID_BindRoad()I
.end method

.method private static native native_GDMID_ChangeCarRoad(I)I
.end method

.method private static native native_GDMID_CheckDeviate()Z
.end method

.method private static native native_GDMID_ClearDetourRoad()I
.end method

.method private static native native_GDMID_ClearGuideRoute()I
.end method

.method private static native native_GDMID_ClearJourneyPoint()I
.end method

.method private static native native_GDMID_ContinueDemo(J)I
.end method

.method private static native native_GDMID_DelDetourRoad([II)I
.end method

.method private static native native_GDMID_DelGuideRoute(J)I
.end method

.method private static native native_GDMID_DelJourneyPoint(I)I
.end method

.method private static native native_GDMID_Demoing(J)I
.end method

.method private static native native_GDMID_EditDetourRoad(IIIIIIBBBBBBBBBBBBLjava/lang/String;)I
.end method

.method private static native native_GDMID_GetCarParallelRoads([[Lcom/autonavi/wh/navigation/server/guide/GCarParallelRoad;[I)I
.end method

.method private static native native_GDMID_GetCurrentJourneyPoint([Lcom/autonavi/wh/navigation/server/poi/GPoi;)I
.end method

.method private static native native_GDMID_GetDestinationAngle(Z)I
.end method

.method private static native native_GDMID_GetDetourRoadList([Lcom/autonavi/wh/navigation/server/guide/GDetourRoadList;)I
.end method

.method private static native native_GDMID_GetGuideClusterInfo([Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;IZ)I
.end method

.method private static native native_GDMID_GetGuideFlags([I)I
.end method

.method private static native native_GDMID_GetGuideRoadList(JZ[Lcom/autonavi/wh/navigation/server/guide/GGuideRoadList;)I
.end method

.method private static native native_GDMID_GetGuideRoadTMCList([Lcom/autonavi/wh/navigation/server/guide/GGuideRoadTmcList;)I
.end method

.method private static native native_GDMID_GetGuideRouteInfo(J[Lcom/autonavi/wh/navigation/server/guide/GGuideRouteInfo;)I
.end method

.method private static native native_GDMID_GetGuideRouteList([JI[I)I
.end method

.method private static native native_GDMID_GetJourneyPoint([Lcom/autonavi/wh/navigation/server/poi/GPoi;)I
.end method

.method private static native native_GDMID_GetManeuverInfo([Lcom/autonavi/wh/navigation/server/guide/GManeuverInfo;)I
.end method

.method private static native native_GDMID_GetMultiManeuverInfo([[Lcom/autonavi/wh/navigation/server/guide/GManeuverInfo;IZ[I)I
.end method

.method private static native native_GDMID_GetPathStatisticInfo(JZZ[Lcom/autonavi/wh/navigation/server/guide/GPathStatisticList;)I
.end method

.method private static native native_GDMID_GetRouteErrorInfo([Lcom/autonavi/wh/navigation/server/guide/GRouteErrorInfo;)I
.end method

.method private static native native_GDMID_GuideTheRoute(J)I
.end method

.method private static native native_GDMID_ICSearch(IIIII[Lcom/autonavi/wh/navigation/server/guide/GExpressWayList;)I
.end method

.method private static native native_GDMID_IsDetoured(II[Z)I
.end method

.method private static native native_GDMID_LoadGuideRoute(Ljava/lang/String;[J)I
.end method

.method private static native native_GDMID_RemoveGuideRoute(J)I
.end method

.method private static native native_GDMID_RepeatNaviSound()I
.end method

.method private static native native_GDMID_RouteRecalculate([J)I
.end method

.method private static native native_GDMID_SaveGuideRoute(JLjava/lang/String;Z)I
.end method

.method private static native native_GDMID_SelectGuideRoute(J)I
.end method

.method private static native native_GDMID_SelectRoute(I)I
.end method

.method private static native native_GDMID_SetAddJourneyPointCB(Lcom/autonavi/wh/navigation/server/guide/GJourneyNotifyCB;Ljava/lang/Object;)I
.end method

.method private static native native_GDMID_SetSafeIconInfoCallBack(Lcom/autonavi/wh/navigation/engine/GDBL_Guide$GGuideCallback;)I
.end method

.method private static native native_GDMID_SetSoundCallback(Lcom/autonavi/wh/navigation/server/guide/GSoundCallback;)I
.end method

.method private static native native_GDMID_SpeakNaviSound()I
.end method

.method private static native native_GDMID_StartDemo()I
.end method

.method private static native native_GDMID_StartGuidance()I
.end method

.method private static native native_GDMID_StartGuide(J)I
.end method

.method private static native native_GDMID_StartRouteCalculation(Z[J[II)I
.end method

.method private static native native_GDMID_StopDemo()I
.end method

.method private static native native_GDMID_StopGuidance()I
.end method

.method private static native native_GDMID_StopGuide()I
.end method

.method private static native native_GDMID_UpdateGuideTrafficInfo(J[I)I
.end method
