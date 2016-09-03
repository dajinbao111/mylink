.class public Lcom/autonavi/wh/navigation/engine/MidPoi;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/MidPoi;->native_GDMID_AbortSearchPOI()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(I[Lcom/autonavi/wh/navigation/server/poi/GAdareaInfoEx;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/wh/navigation/engine/MidPoi;->native_GDMID_GetAdareaInfoEx(I[Lcom/autonavi/wh/navigation/server/poi/GAdareaInfoEx;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(I[Lcom/autonavi/wh/navigation/server/poi/GAdareaList;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/wh/navigation/engine/MidPoi;->native_GDMID_GetAdareaWithDataList(I[Lcom/autonavi/wh/navigation/server/poi/GAdareaList;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(I[Lcom/autonavi/wh/navigation/server/poi/GAdareaList;Lcom/autonavi/wh/navigation/server/poi/GAdareaType;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Lcom/autonavi/wh/navigation/server/poi/GAdareaType;->ordinal()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/autonavi/wh/navigation/engine/MidPoi;->native_GDMID_GetAdareaListLimited(I[Lcom/autonavi/wh/navigation/server/poi/GAdareaList;I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(I[Lcom/autonavi/wh/navigation/server/poi/GPoiCategoryList;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/wh/navigation/engine/MidPoi;->native_GDMID_GetPOICategoryList(I[Lcom/autonavi/wh/navigation/server/poi/GPoiCategoryList;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/autonavi/wh/navigation/server/GCoord;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 2

    if-nez p0, :cond_0

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/autonavi/wh/navigation/server/GCoord;->x:I

    iget v1, p0, Lcom/autonavi/wh/navigation/server/GCoord;->y:I

    invoke-static {v0, v1}, Lcom/autonavi/wh/navigation/engine/MidPoi;->native_GDMID_RequestNearestPOI(II)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/autonavi/wh/navigation/server/poi/G4SSearchCondition;[[Lcom/autonavi/wh/navigation/server/poi/G4SDealerInfo;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 7

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/autonavi/wh/navigation/server/poi/G4SSearchCondition;->nAdminCode:I

    iget-object v1, p0, Lcom/autonavi/wh/navigation/server/poi/G4SSearchCondition;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/autonavi/wh/navigation/server/poi/G4SSearchCondition;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    iget v1, v1, Lcom/autonavi/wh/navigation/server/GCoord;->x:I

    :goto_1
    iget-object v3, p0, Lcom/autonavi/wh/navigation/server/poi/G4SSearchCondition;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/autonavi/wh/navigation/server/poi/G4SSearchCondition;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/wh/navigation/server/GCoord;->y:I

    :cond_2
    iget v3, p0, Lcom/autonavi/wh/navigation/server/poi/G4SSearchCondition;->nAroundRange:I

    iget v4, p0, Lcom/autonavi/wh/navigation/server/poi/G4SSearchCondition;->eMotorType:I

    iget-object v5, p0, Lcom/autonavi/wh/navigation/server/poi/G4SSearchCondition;->szKeyword:Ljava/lang/String;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/autonavi/wh/navigation/engine/MidPoi;->native_GDMID_Search4SDealer(IIIIILjava/lang/String;[[Lcom/autonavi/wh/navigation/server/poi/G4SDealerInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method static a(Lcom/autonavi/wh/navigation/server/poi/GAdareaType;I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/server/poi/GAdareaType;->ordinal()I

    move-result v0

    invoke-static {v0, p1}, Lcom/autonavi/wh/navigation/engine/MidPoi;->native_GDMID_SetCurAdarea(II)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/autonavi/wh/navigation/server/poi/GCandidateCondition;[Lcom/autonavi/wh/navigation/server/poi/GCandidateList;)Lcom/autonavi/wh/navigation/server/GStatus;
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
    iget-object v0, p0, Lcom/autonavi/wh/navigation/server/poi/GCandidateCondition;->eCandidateType:Lcom/autonavi/wh/navigation/server/poi/GCandidateType;

    iget v0, v0, Lcom/autonavi/wh/navigation/server/poi/GCandidateType;->nativeValue:I

    iget-object v1, p0, Lcom/autonavi/wh/navigation/server/poi/GCandidateCondition;->szKeyword:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/autonavi/wh/navigation/engine/MidPoi;->native_GDMID_GetCandidateList(ILjava/lang/String;[Lcom/autonavi/wh/navigation/server/poi/GCandidateList;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/autonavi/wh/navigation/server/poi/GCoordTel;[I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-gtz v1, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/autonavi/wh/navigation/server/poi/GCoordTel;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navigation/server/poi/GCoordTel;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    iget v1, v0, Lcom/autonavi/wh/navigation/server/GCoord;->x:I

    iget-object v0, p0, Lcom/autonavi/wh/navigation/server/poi/GCoordTel;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    iget v0, v0, Lcom/autonavi/wh/navigation/server/GCoord;->y:I

    :goto_1
    iget-object v2, p0, Lcom/autonavi/wh/navigation/server/poi/GCoordTel;->eFlag:Lcom/autonavi/wh/navigation/server/poi/GCoordTelType;

    invoke-virtual {v2}, Lcom/autonavi/wh/navigation/server/poi/GCoordTelType;->ordinal()I

    move-result v2

    iget v3, p0, Lcom/autonavi/wh/navigation/server/poi/GCoordTel;->lTelAreaCode:I

    invoke-static {v2, v1, v0, v3, p1}, Lcom/autonavi/wh/navigation/engine/MidPoi;->native_GDMID_GetAdminCode(IIII[I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method static a(Lcom/autonavi/wh/navigation/server/poi/GGetPoiInput;[Lcom/autonavi/wh/navigation/server/poi/GPoiResult;)Lcom/autonavi/wh/navigation/server/GStatus;
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
    iget-short v0, p0, Lcom/autonavi/wh/navigation/server/poi/GGetPoiInput;->sIndex:S

    iget-short v1, p0, Lcom/autonavi/wh/navigation/server/poi/GGetPoiInput;->sNumberOfItemToGet:S

    invoke-static {v0, v1, p1}, Lcom/autonavi/wh/navigation/engine/MidPoi;->native_GDMID_GetPOIResult(SS[Lcom/autonavi/wh/navigation/server/poi/GPoiResult;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 8

    const/4 v6, 0x0

    if-nez p0, :cond_0

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v4, p0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    iget-object v0, p0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->eSearchType:Lcom/autonavi/wh/navigation/server/poi/GSearchType;

    iget v0, v0, Lcom/autonavi/wh/navigation/server/poi/GSearchType;->nativeValue:I

    iget v1, p0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->lCategoryID:I

    iget v2, p0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->lAroundRange:I

    if-eqz v4, :cond_2

    iget v3, v4, Lcom/autonavi/wh/navigation/server/GCoord;->x:I

    :goto_1
    if-eqz v4, :cond_3

    iget v4, v4, Lcom/autonavi/wh/navigation/server/GCoord;->y:I

    :goto_2
    iget-object v5, p0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->szKeyword:Ljava/lang/String;

    iget-object v7, p0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->eRoutePoiType:Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;

    if-eqz v7, :cond_1

    iget-object v6, p0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->eRoutePoiType:Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;

    iget v6, v6, Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;->nativeValue:I

    :cond_1
    invoke-static/range {v0 .. v6}, Lcom/autonavi/wh/navigation/engine/MidPoi;->native_GDMID_InitSearchCondition(IIIIILjava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v3, v6

    goto :goto_1

    :cond_3
    move v4, v6

    goto :goto_2
.end method

.method static a(Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;[Lcom/autonavi/wh/navigation/server/poi/GAdareaInfoList;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 8

    const/4 v6, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget-object v4, p0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    iget-object v0, p0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->eSearchType:Lcom/autonavi/wh/navigation/server/poi/GSearchType;

    iget v0, v0, Lcom/autonavi/wh/navigation/server/poi/GSearchType;->nativeValue:I

    iget v1, p0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->lCategoryID:I

    iget v2, p0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->lAroundRange:I

    if-eqz v4, :cond_3

    iget v3, v4, Lcom/autonavi/wh/navigation/server/GCoord;->x:I

    :goto_1
    if-eqz v4, :cond_4

    iget v4, v4, Lcom/autonavi/wh/navigation/server/GCoord;->y:I

    :goto_2
    iget-object v5, p0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->szKeyword:Ljava/lang/String;

    iget-object v7, p0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->eRoutePoiType:Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;

    if-eqz v7, :cond_2

    iget-object v6, p0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->eRoutePoiType:Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;

    iget v6, v6, Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;->nativeValue:I

    :cond_2
    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/autonavi/wh/navigation/engine/MidPoi;->native_GDMID_SearchAdareaInfo(IIIIILjava/lang/String;I[Lcom/autonavi/wh/navigation/server/poi/GAdareaInfoList;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v3, v6

    goto :goto_1

    :cond_4
    move v4, v6

    goto :goto_2
.end method

.method static a([BI)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/wh/navigation/engine/MidPoi;->native_GDMID_GetNetPoiData([BI)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a([I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 3

    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    aget v2, p0, v0

    if-gez v2, :cond_0

    :goto_0
    invoke-static {p0, v0}, Lcom/autonavi/wh/navigation/engine/MidPoi;->native_GDMID_SetUserPOITypes([II)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

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
    invoke-static {p0}, Lcom/autonavi/wh/navigation/engine/MidPoi;->native_GDMID_GetUserPoiVersion([Lcom/autonavi/wh/navigation/server/GVersion;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a([Lcom/autonavi/wh/navigation/server/poi/GDisplayPoiPriority;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 6

    const/4 v0, 0x0

    array-length v1, p0

    new-array v3, v1, [I

    new-array v4, v1, [I

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v5, p0, v2

    iget v5, v5, Lcom/autonavi/wh/navigation/server/poi/GDisplayPoiPriority;->poiDisplayLevel:I

    aput v5, v3, v2

    aget-object v5, p0, v2

    iget v5, v5, Lcom/autonavi/wh/navigation/server/poi/GDisplayPoiPriority;->nCategory:I

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    aget-object v2, p0, v0

    iget v2, v2, Lcom/autonavi/wh/navigation/server/poi/GDisplayPoiPriority;->nCategory:I

    if-gez v2, :cond_1

    :goto_1
    invoke-static {v3, v4, v0}, Lcom/autonavi/wh/navigation/engine/MidPoi;->native_GDMID_SetDisplayPoiPriority([I[II)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static a([Lcom/autonavi/wh/navigation/server/poi/GPoi;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/wh/navigation/engine/MidPoi;->native_GDMID_GetNearestPOI([Lcom/autonavi/wh/navigation/server/poi/GPoi;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static b(Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 8

    const/4 v6, 0x0

    if-nez p0, :cond_0

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v4, p0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    iget-object v0, p0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->eSearchType:Lcom/autonavi/wh/navigation/server/poi/GSearchType;

    iget v0, v0, Lcom/autonavi/wh/navigation/server/poi/GSearchType;->nativeValue:I

    iget v1, p0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->lCategoryID:I

    iget v2, p0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->lAroundRange:I

    if-eqz v4, :cond_2

    iget v3, v4, Lcom/autonavi/wh/navigation/server/GCoord;->x:I

    :goto_1
    if-eqz v4, :cond_3

    iget v4, v4, Lcom/autonavi/wh/navigation/server/GCoord;->y:I

    :goto_2
    iget-object v5, p0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->szKeyword:Ljava/lang/String;

    iget-object v7, p0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->eRoutePoiType:Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;

    if-eqz v7, :cond_1

    iget-object v6, p0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->eRoutePoiType:Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;

    iget v6, v6, Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;->nativeValue:I

    :cond_1
    invoke-static/range {v0 .. v6}, Lcom/autonavi/wh/navigation/engine/MidPoi;->native_GDMID_StartSearchPOI(IIIIILjava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v3, v6

    goto :goto_1

    :cond_3
    move v4, v6

    goto :goto_2
.end method

.method static c(Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;)Ljava/lang/String;
    .locals 8

    const/4 v6, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v4, p0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    iget-object v0, p0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->eSearchType:Lcom/autonavi/wh/navigation/server/poi/GSearchType;

    iget v0, v0, Lcom/autonavi/wh/navigation/server/poi/GSearchType;->nativeValue:I

    iget v1, p0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->lCategoryID:I

    iget v2, p0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->lAroundRange:I

    if-eqz v4, :cond_2

    iget v3, v4, Lcom/autonavi/wh/navigation/server/GCoord;->x:I

    :goto_1
    if-eqz v4, :cond_3

    iget v4, v4, Lcom/autonavi/wh/navigation/server/GCoord;->y:I

    :goto_2
    iget-object v5, p0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->szKeyword:Ljava/lang/String;

    iget-object v7, p0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->eRoutePoiType:Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;

    if-eqz v7, :cond_1

    iget-object v6, p0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->eRoutePoiType:Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;

    iget v6, v6, Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;->nativeValue:I

    :cond_1
    invoke-static/range {v0 .. v6}, Lcom/autonavi/wh/navigation/engine/MidPoi;->native_GDMID_StartNetPOI(IIIIILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v3, v6

    goto :goto_1

    :cond_3
    move v4, v6

    goto :goto_2
.end method

.method private static native native_GDMID_AbortSearchPOI()I
.end method

.method private static native native_GDMID_ConvAdaCode([I[IZ)I
.end method

.method private static native native_GDMID_FreePOIGateInfo([Lcom/autonavi/wh/navigation/server/poi/GPoiGateInfo;)I
.end method

.method private static native native_GDMID_FreeRelationshipPOI([Lcom/autonavi/wh/navigation/server/poi/GRelationshipPoiList;)I
.end method

.method private static native native_GDMID_FreeSettAreaInfo([Lcom/autonavi/wh/navigation/server/poi/GSettAreaInfo;)I
.end method

.method private static native native_GDMID_GetAdareaDataFlag(Ljava/lang/String;I[Z)I
.end method

.method private static native native_GDMID_GetAdareaDirList(Ljava/lang/String;I[Lcom/autonavi/wh/navigation/server/GDataDirInfo;I[I)I
.end method

.method private static native native_GDMID_GetAdareaInfoEx(I[Lcom/autonavi/wh/navigation/server/poi/GAdareaInfoEx;)I
.end method

.method private static native native_GDMID_GetAdareaList(I[Lcom/autonavi/wh/navigation/server/poi/GAdareaList;)I
.end method

.method private static native native_GDMID_GetAdareaListLimited(I[Lcom/autonavi/wh/navigation/server/poi/GAdareaList;I)I
.end method

.method private static native native_GDMID_GetAdareaWithDataList(I[Lcom/autonavi/wh/navigation/server/poi/GAdareaList;)I
.end method

.method private static native native_GDMID_GetAdminCode(IIII[I)I
.end method

.method private static native native_GDMID_GetAllAdareaList(I[Lcom/autonavi/wh/navigation/server/poi/GAdareaList;)I
.end method

.method private static native native_GDMID_GetCandidateList(ILjava/lang/String;[Lcom/autonavi/wh/navigation/server/poi/GCandidateList;)I
.end method

.method private static native native_GDMID_GetCurAdarea([Lcom/autonavi/wh/navigation/server/poi/GAdareaInfoEx;)I
.end method

.method private static native native_GDMID_GetDataVerByAdaCode(I[Lcom/autonavi/wh/navigation/server/GVersion;)I
.end method

.method private static native native_GDMID_GetNearestPOI([Lcom/autonavi/wh/navigation/server/poi/GPoi;)I
.end method

.method private static native native_GDMID_GetNetCandidateAdareaList([Lcom/autonavi/wh/navigation/server/poi/GAdareaList;)I
.end method

.method private static native native_GDMID_GetNetPoiData([BI)I
.end method

.method private static native native_GDMID_GetPOICategoryList(I[Lcom/autonavi/wh/navigation/server/poi/GPoiCategoryList;)I
.end method

.method public static native native_GDMID_GetPOIGateInfo(IIIIIIIISSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBS[Lcom/autonavi/wh/navigation/server/poi/GPoiGateInfo;)I
.end method

.method private static native native_GDMID_GetPOIResult(SS[Lcom/autonavi/wh/navigation/server/poi/GPoiResult;)I
.end method

.method private static native native_GDMID_GetPoiIndexVersion(Ljava/lang/String;[Lcom/autonavi/wh/navigation/server/GVersion;)I
.end method

.method private static native native_GDMID_GetRelationshipPOI(Lcom/autonavi/wh/navigation/server/poi/GPoi;[Lcom/autonavi/wh/navigation/server/poi/GRelationshipPoiList;)I
.end method

.method private static native native_GDMID_GetSettAreaInfo(Lcom/autonavi/wh/navigation/server/poi/GPoi;[Lcom/autonavi/wh/navigation/server/poi/GSettAreaInfo;)I
.end method

.method private static native native_GDMID_GetUserPoiVersion([Lcom/autonavi/wh/navigation/server/GVersion;)I
.end method

.method private static native native_GDMID_InitPOI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native native_GDMID_InitSearchCondition(IIIIILjava/lang/String;I)I
.end method

.method private static native native_GDMID_IsGlobalDataAvailable(Ljava/lang/String;[Z)I
.end method

.method private static native native_GDMID_RequestNearestPOI(II)I
.end method

.method private static native native_GDMID_Search4SDealer(IIIIILjava/lang/String;[[Lcom/autonavi/wh/navigation/server/poi/G4SDealerInfo;)I
.end method

.method private static native native_GDMID_SearchAdareaInfo(IIIIILjava/lang/String;I[Lcom/autonavi/wh/navigation/server/poi/GAdareaInfoList;)I
.end method

.method private static native native_GDMID_SetAdareaDataStatus(IZ)I
.end method

.method private static native native_GDMID_SetCurAdarea(II)I
.end method

.method private static native native_GDMID_SetDisplayPoiPriority([I[II)I
.end method

.method private static native native_GDMID_SetUserPOITypes([II)I
.end method

.method private static native native_GDMID_StartNetPOI(IIIIILjava/lang/String;I)Ljava/lang/String;
.end method

.method private static native native_GDMID_StartSearchPOI(IIIIILjava/lang/String;I)I
.end method

.method private static native native_GDMID_UninitPOI()I
.end method
