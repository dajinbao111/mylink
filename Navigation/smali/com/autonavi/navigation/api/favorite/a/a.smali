.class public abstract Lcom/autonavi/navigation/api/favorite/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/favorite/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)Z
    .locals 2

    invoke-static {p1, p2}, Lcom/autonavi/navigation/api/internal/a/a/e;->a(J)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->valueOf(I)Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/autonavi/navigation/api/internal/a/a/e;->b(J)Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/navigation/api/favorite/a/a;->b(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;Lcom/autonavi/navigation/api/map/model/LatLng;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;Lcom/autonavi/navigation/api/map/model/LatLng;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/favorite/a/a;->b(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/autonavi/navigation/api/map/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs a(Z[Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/navigation/api/internal/a/b;->getSettingsDelegate()Lcom/autonavi/navigation/api/settings/a/b;

    move-result-object v2

    const-string v1, "favorite_display_option"

    invoke-interface {v2, v1, v0}, Lcom/autonavi/navigation/api/settings/a/b;->b(Ljava/lang/String;I)I

    move-result v1

    array-length v3, p2

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, p2, v1

    if-eqz p1, :cond_0

    iget v4, v4, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;->value:I

    or-int/2addr v0, v4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v4, v4, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;->value:I

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v0, v4

    goto :goto_1

    :cond_1
    const-string v1, "favorite_display_option"

    invoke-interface {v2, v1, v0}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public a([J)Z
    .locals 5

    const/4 v0, 0x0

    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-wide v3, p1, v1

    invoke-virtual {p0, v3, v4}, Lcom/autonavi/navigation/api/favorite/a/a;->a(J)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
