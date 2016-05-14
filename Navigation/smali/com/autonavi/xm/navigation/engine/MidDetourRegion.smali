.class public Lcom/autonavi/xm/navigation/engine/MidDetourRegion;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/autonavi/xm/navigation/server/GCoord;[Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget v1, p0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-static {v0, v1, p1}, Lcom/autonavi/xm/navigation/engine/MidDetourRegion;->native_GDMID_PtInRgnRect(II[Z)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->eOption:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->szRegionName:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->szRegionName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v1

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->eOption:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    sget-object v2, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;->GDETOUR_OPTION_CUSTOMIZE:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    if-ne v1, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->StartTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->EndTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    if-nez v1, :cond_3

    :cond_2
    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->StartTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/GDateTime;->date:Lcom/autonavi/xm/navigation/server/GDate;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->StartTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/GDateTime;->time:Lcom/autonavi/xm/navigation/server/GTime;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->EndTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/GDateTime;->date:Lcom/autonavi/xm/navigation/server/GDate;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->EndTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/GDateTime;->time:Lcom/autonavi/xm/navigation/server/GTime;

    if-nez v1, :cond_5

    :cond_4
    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->nIndex:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->nDis:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v3, v3, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v4, v4, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->eOption:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    invoke-virtual {v5}, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;->ordinal()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->StartTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iget-object v6, v6, Lcom/autonavi/xm/navigation/server/GDateTime;->date:Lcom/autonavi/xm/navigation/server/GDate;

    iget-byte v6, v6, Lcom/autonavi/xm/navigation/server/GDate;->year:B

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->StartTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iget-object v7, v7, Lcom/autonavi/xm/navigation/server/GDateTime;->date:Lcom/autonavi/xm/navigation/server/GDate;

    iget-byte v7, v7, Lcom/autonavi/xm/navigation/server/GDate;->month:B

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->StartTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iget-object v8, v8, Lcom/autonavi/xm/navigation/server/GDateTime;->date:Lcom/autonavi/xm/navigation/server/GDate;

    iget-byte v8, v8, Lcom/autonavi/xm/navigation/server/GDate;->day:B

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->StartTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iget-object v9, v9, Lcom/autonavi/xm/navigation/server/GDateTime;->time:Lcom/autonavi/xm/navigation/server/GTime;

    iget-byte v9, v9, Lcom/autonavi/xm/navigation/server/GTime;->hour:B

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->StartTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iget-object v10, v10, Lcom/autonavi/xm/navigation/server/GDateTime;->time:Lcom/autonavi/xm/navigation/server/GTime;

    iget-byte v10, v10, Lcom/autonavi/xm/navigation/server/GTime;->minute:B

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->StartTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iget-object v11, v11, Lcom/autonavi/xm/navigation/server/GDateTime;->time:Lcom/autonavi/xm/navigation/server/GTime;

    iget-byte v11, v11, Lcom/autonavi/xm/navigation/server/GTime;->second:B

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->EndTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iget-object v12, v12, Lcom/autonavi/xm/navigation/server/GDateTime;->date:Lcom/autonavi/xm/navigation/server/GDate;

    iget-byte v12, v12, Lcom/autonavi/xm/navigation/server/GDate;->year:B

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->EndTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iget-object v13, v13, Lcom/autonavi/xm/navigation/server/GDateTime;->date:Lcom/autonavi/xm/navigation/server/GDate;

    iget-byte v13, v13, Lcom/autonavi/xm/navigation/server/GDate;->month:B

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->EndTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iget-object v14, v14, Lcom/autonavi/xm/navigation/server/GDateTime;->date:Lcom/autonavi/xm/navigation/server/GDate;

    iget-byte v14, v14, Lcom/autonavi/xm/navigation/server/GDate;->day:B

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->EndTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iget-object v15, v15, Lcom/autonavi/xm/navigation/server/GDateTime;->time:Lcom/autonavi/xm/navigation/server/GTime;

    iget-byte v15, v15, Lcom/autonavi/xm/navigation/server/GTime;->hour:B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->EndTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/GDateTime;->time:Lcom/autonavi/xm/navigation/server/GTime;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/GTime;->minute:B

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->EndTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/GDateTime;->time:Lcom/autonavi/xm/navigation/server/GTime;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/GTime;->second:B

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->szRegionName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v1 .. v18}, Lcom/autonavi/xm/navigation/engine/MidDetourRegion;->native_GDMID_AddRgnAvoidInfo(IIIIIBBBBBBBBBBBBLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    goto/16 :goto_0
.end method

.method static a([II)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-ge v0, p1, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/MidDetourRegion;->native_GDMID_DelRgnAvoidInfo([II)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a([Lcom/autonavi/xm/navigation/server/guide/GDetourRegionList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/MidDetourRegion;->native_GDMID_GetAllRgnAvoidInfo([Lcom/autonavi/xm/navigation/server/guide/GDetourRegionList;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static b(Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->eOption:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->szRegionName:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->szRegionName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v1

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->eOption:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    sget-object v2, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;->GDETOUR_OPTION_CUSTOMIZE:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    if-ne v1, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->StartTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->EndTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    if-nez v1, :cond_3

    :cond_2
    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->StartTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/GDateTime;->date:Lcom/autonavi/xm/navigation/server/GDate;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->StartTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/GDateTime;->time:Lcom/autonavi/xm/navigation/server/GTime;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->EndTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/GDateTime;->date:Lcom/autonavi/xm/navigation/server/GDate;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->EndTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/GDateTime;->time:Lcom/autonavi/xm/navigation/server/GTime;

    if-nez v1, :cond_5

    :cond_4
    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->nIndex:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->nDis:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v3, v3, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v4, v4, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->eOption:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    invoke-virtual {v5}, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;->ordinal()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->StartTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iget-object v6, v6, Lcom/autonavi/xm/navigation/server/GDateTime;->date:Lcom/autonavi/xm/navigation/server/GDate;

    iget-byte v6, v6, Lcom/autonavi/xm/navigation/server/GDate;->year:B

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->StartTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iget-object v7, v7, Lcom/autonavi/xm/navigation/server/GDateTime;->date:Lcom/autonavi/xm/navigation/server/GDate;

    iget-byte v7, v7, Lcom/autonavi/xm/navigation/server/GDate;->month:B

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->StartTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iget-object v8, v8, Lcom/autonavi/xm/navigation/server/GDateTime;->date:Lcom/autonavi/xm/navigation/server/GDate;

    iget-byte v8, v8, Lcom/autonavi/xm/navigation/server/GDate;->day:B

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->StartTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iget-object v9, v9, Lcom/autonavi/xm/navigation/server/GDateTime;->time:Lcom/autonavi/xm/navigation/server/GTime;

    iget-byte v9, v9, Lcom/autonavi/xm/navigation/server/GTime;->hour:B

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->StartTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iget-object v10, v10, Lcom/autonavi/xm/navigation/server/GDateTime;->time:Lcom/autonavi/xm/navigation/server/GTime;

    iget-byte v10, v10, Lcom/autonavi/xm/navigation/server/GTime;->minute:B

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->StartTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iget-object v11, v11, Lcom/autonavi/xm/navigation/server/GDateTime;->time:Lcom/autonavi/xm/navigation/server/GTime;

    iget-byte v11, v11, Lcom/autonavi/xm/navigation/server/GTime;->second:B

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->EndTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iget-object v12, v12, Lcom/autonavi/xm/navigation/server/GDateTime;->date:Lcom/autonavi/xm/navigation/server/GDate;

    iget-byte v12, v12, Lcom/autonavi/xm/navigation/server/GDate;->year:B

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->EndTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iget-object v13, v13, Lcom/autonavi/xm/navigation/server/GDateTime;->date:Lcom/autonavi/xm/navigation/server/GDate;

    iget-byte v13, v13, Lcom/autonavi/xm/navigation/server/GDate;->month:B

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->EndTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iget-object v14, v14, Lcom/autonavi/xm/navigation/server/GDateTime;->date:Lcom/autonavi/xm/navigation/server/GDate;

    iget-byte v14, v14, Lcom/autonavi/xm/navigation/server/GDate;->day:B

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->EndTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iget-object v15, v15, Lcom/autonavi/xm/navigation/server/GDateTime;->time:Lcom/autonavi/xm/navigation/server/GTime;

    iget-byte v15, v15, Lcom/autonavi/xm/navigation/server/GTime;->hour:B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->EndTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/GDateTime;->time:Lcom/autonavi/xm/navigation/server/GTime;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/GTime;->minute:B

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->EndTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/GDateTime;->time:Lcom/autonavi/xm/navigation/server/GTime;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/GTime;->second:B

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->szRegionName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v1 .. v18}, Lcom/autonavi/xm/navigation/engine/MidDetourRegion;->native_GDMID_EditRgnAvoidInfo(IIIIIBBBBBBBBBBBBLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static native native_GDMID_AddRgnAvoidInfo(IIIIIBBBBBBBBBBBBLjava/lang/String;)I
.end method

.method public static native native_GDMID_DelRgnAvoidInfo([II)I
.end method

.method public static native native_GDMID_EditRgnAvoidInfo(IIIIIBBBBBBBBBBBBLjava/lang/String;)I
.end method

.method public static native native_GDMID_GetAllRgnAvoidInfo([Lcom/autonavi/xm/navigation/server/guide/GDetourRegionList;)I
.end method

.method public static native native_GDMID_PtInRgnRect(II[Z)I
.end method
