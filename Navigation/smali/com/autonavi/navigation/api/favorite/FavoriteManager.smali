.class public final Lcom/autonavi/navigation/api/favorite/FavoriteManager;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/autonavi/navigation/api/favorite/a/b;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getFavoriteManagerDelegate()Lcom/autonavi/navigation/api/favorite/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->a:Lcom/autonavi/navigation/api/favorite/a/b;

    return-void
.end method


# virtual methods
.method public clear()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->a:Lcom/autonavi/navigation/api/favorite/a/b;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/favorite/a/b;->a()Z

    move-result v0

    return v0
.end method

.method public clear(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;)Z
    .locals 1

    const-string v0, "cate can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->a:Lcom/autonavi/navigation/api/favorite/a/b;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/favorite/a/b;->a(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;)Z

    move-result v0

    return v0
.end method

.method public exists(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;Lcom/autonavi/navigation/api/map/model/LatLng;)Z
    .locals 1

    const-string v0, "cate can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "latLng can not be null"

    invoke-static {v0, p2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->a:Lcom/autonavi/navigation/api/favorite/a/b;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/favorite/a/b;->a(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;Lcom/autonavi/navigation/api/map/model/LatLng;)Z

    move-result v0

    return v0
.end method

.method public getAll(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;)Ljava/util/List;
    .locals 1

    const-string v0, "cate can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->a:Lcom/autonavi/navigation/api/favorite/a/b;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/favorite/a/b;->b(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public remove(J)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->a:Lcom/autonavi/navigation/api/favorite/a/b;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/favorite/a/b;->a(J)Z

    return-void
.end method

.method public remove(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;Lcom/autonavi/navigation/api/map/model/LatLng;)Z
    .locals 1

    const-string v0, "cate can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "latLng can not be null"

    invoke-static {v0, p2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->a:Lcom/autonavi/navigation/api/favorite/a/b;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/favorite/a/b;->b(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;Lcom/autonavi/navigation/api/map/model/LatLng;)Z

    move-result v0

    return v0
.end method

.method public remove([J)Z
    .locals 2

    const-string v0, "ids can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "ids can not be empty"

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->a:Lcom/autonavi/navigation/api/favorite/a/b;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/favorite/a/b;->a([J)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public save(Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;)Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;
    .locals 1

    const-string v0, "favoritePoi can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->a:Lcom/autonavi/navigation/api/favorite/a/b;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/favorite/a/b;->a(Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;)Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    move-result-object v0

    return-object v0
.end method

.method public varargs setDisplayOption(Z[Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;)Z
    .locals 1

    invoke-static {p2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->a:Lcom/autonavi/navigation/api/favorite/a/b;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/favorite/a/b;->a(Z[Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;)Z

    move-result v0

    return v0
.end method
