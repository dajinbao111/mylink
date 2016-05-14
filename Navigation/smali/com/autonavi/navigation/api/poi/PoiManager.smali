.class public final Lcom/autonavi/navigation/api/poi/PoiManager;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/autonavi/navigation/api/poi/a/c;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getPoiManagerDelegate()Lcom/autonavi/navigation/api/poi/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager;->a:Lcom/autonavi/navigation/api/poi/a/c;

    return-void
.end method

.method private a(Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "query can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "adminCode can not be less than 0"

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;->getAdminCode()I

    move-result v0

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    const-string v0, "queryString can not be empty"

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;->getQueryString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public addOnDealerQueryResultListener(Lcom/autonavi/navigation/api/poi/PoiManager$OnDealerQueryResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager;->a:Lcom/autonavi/navigation/api/poi/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/poi/a/c;->a(Lcom/autonavi/navigation/api/poi/PoiManager$OnDealerQueryResultListener;)V

    return-void
.end method

.method public addOnPoiQueryResultListener(Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager;->a:Lcom/autonavi/navigation/api/poi/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/poi/a/c;->a(Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;)V

    return-void
.end method

.method public cancelQuery()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager;->a:Lcom/autonavi/navigation/api/poi/a/c;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/poi/a/c;->c()Z

    move-result v0

    return v0
.end method

.method public cloudQuery(Lcom/autonavi/navigation/api/poi/PoiManager$AddressQuery;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/poi/PoiManager;->a(Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager;->a:Lcom/autonavi/navigation/api/poi/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/poi/a/c;->b(Lcom/autonavi/navigation/api/poi/PoiManager$AddressQuery;)V

    return-void
.end method

.method public cloudQuery(Lcom/autonavi/navigation/api/poi/PoiManager$AroundQuery;)V
    .locals 2

    const-string v0, "query can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "centerPoint can not be empty"

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$AroundQuery;->getCenterPoint()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v1

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "radius can not be less than 0"

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$AroundQuery;->getRadius()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager;->a:Lcom/autonavi/navigation/api/poi/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/poi/a/c;->b(Lcom/autonavi/navigation/api/poi/PoiManager$AroundQuery;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cloudQuery(Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;)V
    .locals 2

    const-string v0, "query can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "adminCode can not be less than 0"

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;->getAdminCode()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager;->a:Lcom/autonavi/navigation/api/poi/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/poi/a/c;->b(Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cloudQuery(Lcom/autonavi/navigation/api/poi/PoiManager$CrossingQuery;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/poi/PoiManager;->a(Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager;->a:Lcom/autonavi/navigation/api/poi/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/poi/a/c;->b(Lcom/autonavi/navigation/api/poi/PoiManager$CrossingQuery;)V

    return-void
.end method

.method public cloudQuery(Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/poi/PoiManager;->a(Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager;->a:Lcom/autonavi/navigation/api/poi/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/poi/a/c;->b(Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;)V

    return-void
.end method

.method public cloudQuery(Lcom/autonavi/navigation/api/poi/PoiManager$TelQuery;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/poi/PoiManager;->a(Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager;->a:Lcom/autonavi/navigation/api/poi/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/poi/a/c;->b(Lcom/autonavi/navigation/api/poi/PoiManager$TelQuery;)V

    return-void
.end method

.method public getAllPoiCategories()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager;->a:Lcom/autonavi/navigation/api/poi/a/c;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/poi/a/c;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPoiCategories(I)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager;->a:Lcom/autonavi/navigation/api/poi/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/poi/a/c;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserPoiVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager;->a:Lcom/autonavi/navigation/api/poi/a/c;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/poi/a/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public query(Lcom/autonavi/navigation/api/poi/PoiManager$AddressQuery;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/poi/PoiManager;->a(Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager;->a:Lcom/autonavi/navigation/api/poi/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/poi/a/c;->a(Lcom/autonavi/navigation/api/poi/PoiManager$AddressQuery;)V

    return-void
.end method

.method public query(Lcom/autonavi/navigation/api/poi/PoiManager$AroundQuery;)V
    .locals 2

    const-string v0, "query can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "centerPoint can not be empty"

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$AroundQuery;->getCenterPoint()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v1

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "radius can not be less than 0"

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$AroundQuery;->getRadius()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager;->a:Lcom/autonavi/navigation/api/poi/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/poi/a/c;->a(Lcom/autonavi/navigation/api/poi/PoiManager$AroundQuery;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public query(Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;)V
    .locals 2

    const-string v0, "query can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "adminCode can not be less than 0"

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;->getAdminCode()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager;->a:Lcom/autonavi/navigation/api/poi/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/poi/a/c;->a(Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public query(Lcom/autonavi/navigation/api/poi/PoiManager$CrossingQuery;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/poi/PoiManager;->a(Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager;->a:Lcom/autonavi/navigation/api/poi/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/poi/a/c;->a(Lcom/autonavi/navigation/api/poi/PoiManager$CrossingQuery;)V

    return-void
.end method

.method public query(Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/poi/PoiManager;->a(Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager;->a:Lcom/autonavi/navigation/api/poi/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/poi/a/c;->a(Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;)V

    return-void
.end method

.method public query(Lcom/autonavi/navigation/api/poi/PoiManager$NearestQuery;)V
    .locals 2

    const-string v0, "query can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "latLng can not be null"

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$NearestQuery;->getTarget()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v1

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager;->a:Lcom/autonavi/navigation/api/poi/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/poi/a/c;->a(Lcom/autonavi/navigation/api/poi/PoiManager$NearestQuery;)V

    return-void
.end method

.method public query(Lcom/autonavi/navigation/api/poi/PoiManager$RouteQuery;)V
    .locals 2

    const-string v0, "query can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "radius can not be less than 0"

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$RouteQuery;->getRadius()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager;->a:Lcom/autonavi/navigation/api/poi/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/poi/a/c;->a(Lcom/autonavi/navigation/api/poi/PoiManager$RouteQuery;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public query(Lcom/autonavi/navigation/api/poi/PoiManager$TelQuery;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/poi/PoiManager;->a(Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager;->a:Lcom/autonavi/navigation/api/poi/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/poi/a/c;->a(Lcom/autonavi/navigation/api/poi/PoiManager$TelQuery;)V

    return-void
.end method

.method public queryAreaInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    const-string v1, "keyword can not be empty"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager;->a:Lcom/autonavi/navigation/api/poi/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/poi/a/c;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryAutoComplete(Ljava/lang/String;II)Ljava/util/List;
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "keyword can not be empty"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    const-string v3, "autoCompleteType can not be less than 0 or more than 4"

    if-ltz p3, :cond_0

    const/4 v0, 0x4

    if-le p3, v0, :cond_2

    :cond_0
    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Ljunit/framework/Assert;->assertFalse(Ljava/lang/String;Z)V

    const-string v0, "adminCode can not be less than 0"

    if-ltz p2, :cond_3

    :goto_2
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager;->a:Lcom/autonavi/navigation/api/poi/a/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/autonavi/navigation/api/poi/a/c;->a(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public queryCarDealer(Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "query can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "adminCode can not be less than 0"

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;->getAdminCode()I

    move-result v0

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    const-string v0, "radius can not be less than 0"

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;->getRadius()I

    move-result v3

    if-ltz v3, :cond_1

    :goto_1
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager;->a:Lcom/autonavi/navigation/api/poi/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/poi/a/c;->a(Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public removeOnDealerQueryResultListener(Lcom/autonavi/navigation/api/poi/PoiManager$OnDealerQueryResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager;->a:Lcom/autonavi/navigation/api/poi/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/poi/a/c;->b(Lcom/autonavi/navigation/api/poi/PoiManager$OnDealerQueryResultListener;)V

    return-void
.end method

.method public removeOnPoiQueryResultListener(Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager;->a:Lcom/autonavi/navigation/api/poi/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/poi/a/c;->b(Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;)V

    return-void
.end method

.method public setDisplayPoiCategory([I)Z
    .locals 2

    const-string v0, "poiCategorys can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "poiCategorys can not be empty"

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager;->a:Lcom/autonavi/navigation/api/poi/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/poi/a/c;->a([I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayPoiPriority([Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority;)Z
    .locals 2

    const-string v0, "displayPoiPrioritys can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "displayPoiPrioritys can not be empty"

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager;->a:Lcom/autonavi/navigation/api/poi/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/poi/a/c;->a([Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sortByDistance(Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string v0, "poiItems can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager;->a:Lcom/autonavi/navigation/api/poi/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/poi/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
