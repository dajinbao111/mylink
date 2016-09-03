.class public Lcom/autonavi/wh/navigation/engine/MidFavorite;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/autonavi/wh/navigation/server/favorite/GFavoriteCategory;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/server/favorite/GFavoriteCategory;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/engine/MidFavorite;->native_GDMID_ClearFavorite(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/autonavi/wh/navigation/server/favorite/GFavoriteCategory;Lcom/autonavi/wh/navigation/server/favorite/GFavoriteIcon;Lcom/autonavi/wh/navigation/server/poi/GPoi;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lcom/autonavi/wh/navigation/server/favorite/GFavoriteCategory;->nativeValue:I

    move-object/from16 v0, p1

    iget v2, v0, Lcom/autonavi/wh/navigation/server/favorite/GFavoriteIcon;->nativeValue:I

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    iget v3, v3, Lcom/autonavi/wh/navigation/server/GCoord;->x:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    iget v4, v4, Lcom/autonavi/wh/navigation/server/GCoord;->y:I

    move-object/from16 v0, p2

    iget v5, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lCategoryID:I

    move-object/from16 v0, p2

    iget v6, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lDistance:I

    move-object/from16 v0, p2

    iget v7, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lMatchCode:I

    move-object/from16 v0, p2

    iget v8, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lHilightFlag:I

    move-object/from16 v0, p2

    iget v9, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lAdminCode:I

    move-object/from16 v0, p2

    iget v10, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lPoiId:I

    move-object/from16 v0, p2

    iget-short v11, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->siELonOff:S

    move-object/from16 v0, p2

    iget-short v12, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->siELatOff:S

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->szName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->szAddr:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->szTel:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v0, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lPoiIndex:I

    move/from16 v16, v0

    move-object/from16 v0, p2

    iget-byte v0, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->ucFlag:B

    move/from16 v17, v0

    move-object/from16 v0, p2

    iget-byte v0, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->Reserved:B

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->usNodeId:S

    move/from16 v19, v0

    invoke-static/range {v1 .. v19}, Lcom/autonavi/wh/navigation/engine/MidFavorite;->native_GDMID_AddFavorite(IIIIIIIIIISSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBS)I

    move-result v1

    invoke-static {v1}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    return-object v1
.end method

.method static a(Lcom/autonavi/wh/navigation/server/favorite/GFavoriteCategory;[Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoiList;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/server/favorite/GFavoriteCategory;->ordinal()I

    move-result v0

    invoke-static {v0, p1}, Lcom/autonavi/wh/navigation/engine/MidFavorite;->native_GDMID_GetFavoriteList(I[Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoiList;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->nIndex:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->eCategory:Lcom/autonavi/wh/navigation/server/favorite/GFavoriteCategory;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->eCategory:Lcom/autonavi/wh/navigation/server/favorite/GFavoriteCategory;

    iget v2, v2, Lcom/autonavi/wh/navigation/server/favorite/GFavoriteCategory;->nativeValue:I

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->eIconID:Lcom/autonavi/wh/navigation/server/favorite/GFavoriteIcon;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->eIconID:Lcom/autonavi/wh/navigation/server/favorite/GFavoriteIcon;

    iget v3, v3, Lcom/autonavi/wh/navigation/server/favorite/GFavoriteIcon;->nativeValue:I

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/wh/navigation/server/poi/GPoi;

    iget-object v4, v4, Lcom/autonavi/wh/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    iget v4, v4, Lcom/autonavi/wh/navigation/server/GCoord;->x:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/wh/navigation/server/poi/GPoi;

    iget-object v5, v5, Lcom/autonavi/wh/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    iget v5, v5, Lcom/autonavi/wh/navigation/server/GCoord;->y:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/wh/navigation/server/poi/GPoi;

    iget v6, v6, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lCategoryID:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/wh/navigation/server/poi/GPoi;

    iget v7, v7, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lDistance:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/wh/navigation/server/poi/GPoi;

    iget v8, v8, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lMatchCode:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/wh/navigation/server/poi/GPoi;

    iget v9, v9, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lHilightFlag:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/wh/navigation/server/poi/GPoi;

    iget v10, v10, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lAdminCode:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/wh/navigation/server/poi/GPoi;

    iget v11, v11, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lPoiId:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/wh/navigation/server/poi/GPoi;

    iget-short v12, v12, Lcom/autonavi/wh/navigation/server/poi/GPoi;->siELonOff:S

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/wh/navigation/server/poi/GPoi;

    iget-short v13, v13, Lcom/autonavi/wh/navigation/server/poi/GPoi;->siELatOff:S

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/wh/navigation/server/poi/GPoi;

    iget-object v14, v14, Lcom/autonavi/wh/navigation/server/poi/GPoi;->szName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/wh/navigation/server/poi/GPoi;

    iget-object v15, v15, Lcom/autonavi/wh/navigation/server/poi/GPoi;->szAddr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/wh/navigation/server/poi/GPoi;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->szTel:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/wh/navigation/server/poi/GPoi;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lPoiIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/wh/navigation/server/poi/GPoi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-byte v0, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->ucFlag:B

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/wh/navigation/server/poi/GPoi;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-byte v0, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->Reserved:B

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/wh/navigation/server/poi/GPoi;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-short v0, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->usNodeId:S

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->Date:Lcom/autonavi/wh/navigation/server/GDate;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-byte v0, v0, Lcom/autonavi/wh/navigation/server/GDate;->year:B

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->Date:Lcom/autonavi/wh/navigation/server/GDate;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-byte v0, v0, Lcom/autonavi/wh/navigation/server/GDate;->month:B

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->Date:Lcom/autonavi/wh/navigation/server/GDate;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-byte v0, v0, Lcom/autonavi/wh/navigation/server/GDate;->day:B

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->Time:Lcom/autonavi/wh/navigation/server/GTime;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-byte v0, v0, Lcom/autonavi/wh/navigation/server/GTime;->hour:B

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->Time:Lcom/autonavi/wh/navigation/server/GTime;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-byte v0, v0, Lcom/autonavi/wh/navigation/server/GTime;->minute:B

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->Time:Lcom/autonavi/wh/navigation/server/GTime;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-byte v0, v0, Lcom/autonavi/wh/navigation/server/GTime;->second:B

    move/from16 v26, v0

    invoke-static/range {v1 .. v26}, Lcom/autonavi/wh/navigation/engine/MidFavorite;->native_GDMID_EditFavorite(IIIIIIIIIIISSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBSBBBBBB)I

    move-result v1

    invoke-static {v1}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method static a([II)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/wh/navigation/engine/MidFavorite;->native_GDMID_DelFavorite([II)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method private static native native_GDMID_AddFavorite(IIIIIIIIIISSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBS)I
.end method

.method private static native native_GDMID_ClearFavorite(I)I
.end method

.method private static native native_GDMID_DelFavorite([II)I
.end method

.method private static native native_GDMID_EditFavorite(IIIIIIIIIIISSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBSBBBBBB)I
.end method

.method private static native native_GDMID_GetFavoriteList(I[Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoiList;)I
.end method

.method private static native native_GDMID_GetFavoriteStatus([Lcom/autonavi/wh/navigation/server/favorite/GFavoriteStatus;)I
.end method
