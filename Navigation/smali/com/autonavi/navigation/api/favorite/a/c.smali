.class public final Lcom/autonavi/navigation/api/favorite/a/c;
.super Lcom/autonavi/navigation/api/favorite/a/a;


# instance fields
.field private final a:Lcom/autonavi/xm/navigation/engine/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/navigation/api/favorite/a/a;-><init>()V

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/d;->a()Lcom/autonavi/xm/navigation/engine/d;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/favorite/a/c;->a:Lcom/autonavi/xm/navigation/engine/d;

    return-void
.end method

.method private a(Lcom/autonavi/xm/navigation/server/favorite/GFavoriteIcon;)I
    .locals 2

    sget-object v0, Lcom/autonavi/navigation/api/favorite/a/c$1;->c:[I

    invoke-virtual {p1}, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteIcon;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xb

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_5
    const/16 v0, 0xc

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_8
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private a(Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;)Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;
    .locals 2

    sget-object v0, Lcom/autonavi/navigation/api/favorite/a/c$1;->b:[I

    invoke-virtual {p1}, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->DEFAULT:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->HISTORY:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->ENTERTAINMENT:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->CUSTOMER:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->SIGHT:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->FRIEND:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->COMPANY:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->HOME:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private a(Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;)Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v1, p1, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->eCategory:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    invoke-direct {p0, v1}, Lcom/autonavi/navigation/api/favorite/a/c;->a(Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;)Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    move-result-object v1

    iget-object v2, p1, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    invoke-static {v2}, Lcom/autonavi/navigation/api/poi/a/b;->a(Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v2

    iget-object v3, p1, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->eIconID:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteIcon;

    invoke-direct {p0, v3}, Lcom/autonavi/navigation/api/favorite/a/c;->a(Lcom/autonavi/xm/navigation/server/favorite/GFavoriteIcon;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;-><init>(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;Lcom/autonavi/navigation/api/poi/model/Poi;I)V

    iget-object v1, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v1

    iget-object v2, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->category:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->ordinal()I

    move-result v2

    invoke-static {v1, v2}, Lcom/autonavi/navigation/api/internal/a/a/e;->a(Lcom/autonavi/navigation/api/map/model/LatLng;I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->id:J

    goto :goto_0
.end method

.method private a(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/xm/navigation/server/poi/GPoi;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/server/poi/GPoi;-><init>()V

    new-instance v1, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v1}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>()V

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v2

    iget v2, v2, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    iput v2, v1, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v2

    iget v2, v2, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    iput v2, v1, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getTel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szTel:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szAddr:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getDistance()I

    move-result v1

    iput v1, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lDistance:I

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getAdminCode()I

    move-result v1

    iput v1, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lAdminCode:I

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getCategory()I

    move-result v1

    iput v1, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lCategoryID:I

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getMatchedLevel()I

    move-result v1

    iput v1, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lMatchCode:I

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getMatchedMask()I

    move-result v1

    iput v1, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lHilightFlag:I

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getTypeMask()I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->ucFlag:B

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getNodeId()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->usNodeId:S

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getOffsetLat()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->siELatOff:S

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getOffsetLng()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->siELonOff:S

    goto :goto_0
.end method

.method private b(Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 4

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/favorite/a/c;->e(Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;)Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/favorite/a/c;->a:Lcom/autonavi/xm/navigation/engine/d;

    iget-object v2, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->eCategory:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    iget-object v3, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->eIconID:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteIcon;

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    invoke-virtual {v1, v2, v3, v0}, Lcom/autonavi/xm/navigation/engine/d;->a(Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;Lcom/autonavi/xm/navigation/server/favorite/GFavoriteIcon;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 4

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/favorite/a/c;->e(Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;)Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;

    move-result-object v0

    iget-wide v1, p1, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->id:J

    invoke-static {v1, v2}, Lcom/autonavi/navigation/api/internal/a/a/e;->a(J)I

    move-result v1

    iget-object v2, p1, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->category:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/autonavi/navigation/api/favorite/a/c;->a:Lcom/autonavi/xm/navigation/engine/d;

    invoke-virtual {v1, v0}, Lcom/autonavi/xm/navigation/engine/d;->a(Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-wide v1, p1, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->id:J

    invoke-virtual {p0, v1, v2}, Lcom/autonavi/navigation/api/favorite/a/c;->a(J)Z

    iget-object v1, p0, Lcom/autonavi/navigation/api/favorite/a/c;->a:Lcom/autonavi/xm/navigation/engine/d;

    iget-object v2, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->eCategory:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    iget-object v3, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->eIconID:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteIcon;

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    invoke-virtual {v1, v2, v3, v0}, Lcom/autonavi/xm/navigation/engine/d;->a(Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;Lcom/autonavi/xm/navigation/server/favorite/GFavoriteIcon;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;)Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;
    .locals 2

    sget-object v0, Lcom/autonavi/navigation/api/favorite/a/c$1;->a:[I

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_DEFAULT:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_HISTORY:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_ENTERTAINMENT:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_CUSTOMER:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_SIGHT:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_FRIEND:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_COMPANY:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_HOME:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private d(Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;)Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;
    .locals 3

    new-instance v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v1, p1, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->category:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    iget-object v2, p1, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-direct {v0, v1, v2}, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;-><init>(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;Lcom/autonavi/navigation/api/poi/model/Poi;)V

    iget-object v1, p1, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v1

    iget-object v2, p1, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->category:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->ordinal()I

    move-result v2

    invoke-static {v1, v2}, Lcom/autonavi/navigation/api/internal/a/a/e;->a(Lcom/autonavi/navigation/api/map/model/LatLng;I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->id:J

    return-object v0
.end method

.method private e(Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;)Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;
    .locals 7

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->category:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->ordinal()I

    move-result v2

    iget v3, p1, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->iconId:I

    iget-object v4, p1, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-direct {p0, v4}, Lcom/autonavi/navigation/api/favorite/a/c;->a(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/xm/navigation/server/poi/GPoi;

    move-result-object v4

    new-instance v5, Lcom/autonavi/xm/navigation/server/GDate;

    invoke-direct {v5}, Lcom/autonavi/xm/navigation/server/GDate;-><init>()V

    new-instance v6, Lcom/autonavi/xm/navigation/server/GTime;

    invoke-direct {v6}, Lcom/autonavi/xm/navigation/server/GTime;-><init>()V

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;-><init>(IIILcom/autonavi/xm/navigation/server/poi/GPoi;Lcom/autonavi/xm/navigation/server/GDate;Lcom/autonavi/xm/navigation/server/GTime;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;)Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;
    .locals 4

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    iget-wide v0, p1, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/favorite/a/c;->c(Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_DUPLICATE_DATA:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    new-instance v1, Lcom/autonavi/navigation/api/AnException;

    invoke-direct {v1, v0}, Lcom/autonavi/navigation/api/AnException;-><init>(I)V

    throw v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/favorite/a/c;->b(Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NO_SPACE:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/favorite/a/c;->d(Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;)Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    move-result-object v0

    return-object v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/favorite/a/c;->a:Lcom/autonavi/xm/navigation/engine/d;

    sget-object v1, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_DEFAULT:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/d;->a(Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/navigation/api/favorite/a/c;->a:Lcom/autonavi/xm/navigation/engine/d;

    sget-object v1, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_HOME:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/d;->a(Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/navigation/api/favorite/a/c;->a:Lcom/autonavi/xm/navigation/engine/d;

    sget-object v1, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_COMPANY:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/d;->a(Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/navigation/api/favorite/a/c;->a:Lcom/autonavi/xm/navigation/engine/d;

    sget-object v1, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_SIGHT:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/d;->a(Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/navigation/api/favorite/a/c;->a:Lcom/autonavi/xm/navigation/engine/d;

    sget-object v1, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_FRIEND:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/d;->a(Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/navigation/api/favorite/a/c;->a:Lcom/autonavi/xm/navigation/engine/d;

    sget-object v1, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_CUSTOMER:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/d;->a(Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/navigation/api/favorite/a/c;->a:Lcom/autonavi/xm/navigation/engine/d;

    sget-object v1, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_ENTERTAINMENT:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/d;->a(Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/navigation/api/favorite/a/c;->a:Lcom/autonavi/xm/navigation/engine/d;

    sget-object v1, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_HISTORY:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/d;->a(Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;)Lcom/autonavi/xm/navigation/server/GStatus;

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/favorite/a/c;->a:Lcom/autonavi/xm/navigation/engine/d;

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/favorite/a/c;->c(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;)Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/d;->a(Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;)Ljava/util/List;
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v3, v0, [Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoiList;

    iget-object v0, p0, Lcom/autonavi/navigation/api/favorite/a/c;->a:Lcom/autonavi/xm/navigation/engine/d;

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/favorite/a/c;->c(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;)Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/autonavi/xm/navigation/engine/d;->a(Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;[Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoiList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    aget-object v0, v3, v2

    iget v4, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoiList;->nNumberOfItem:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v2

    iget-object v5, v5, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoiList;->pFavoritePOI:[Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;

    aget-object v5, v5, v1

    invoke-direct {p0, v5}, Lcom/autonavi/navigation/api/favorite/a/c;->a(Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;)Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public b(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;Lcom/autonavi/navigation/api/map/model/LatLng;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v3, v0, [Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoiList;

    iget-object v2, p0, Lcom/autonavi/navigation/api/favorite/a/c;->a:Lcom/autonavi/xm/navigation/engine/d;

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/favorite/a/c;->c(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;)Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/autonavi/xm/navigation/engine/d;->a(Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;[Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoiList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v2

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v2, v4, :cond_0

    aget-object v2, v3, v1

    iget v4, v2, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoiList;->nNumberOfItem:I

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v1

    iget-object v5, v5, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoiList;->pFavoritePOI:[Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;

    aget-object v5, v5, v2

    iget-object v6, v5, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    iget-object v6, v6, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v6, v6, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget v7, p2, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    if-ne v6, v7, :cond_2

    iget-object v6, v5, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    iget-object v6, v6, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v6, v6, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    iget v7, p2, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    if-ne v6, v7, :cond_2

    iget-object v2, p0, Lcom/autonavi/navigation/api/favorite/a/c;->a:Lcom/autonavi/xm/navigation/engine/d;

    new-array v3, v0, [I

    iget v4, v5, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->nIndex:I

    aput v4, v3, v1

    invoke-virtual {v2, v3, v0}, Lcom/autonavi/xm/navigation/engine/d;->a([II)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
