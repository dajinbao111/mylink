.class public final Lcom/autonavi/navigation/api/data/DataManager;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/autonavi/navigation/api/data/a/b;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getDataManagerDelegate()Lcom/autonavi/navigation/api/data/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/data/DataManager;->a:Lcom/autonavi/navigation/api/data/a/b;

    return-void
.end method


# virtual methods
.method public getAdminAreaDetail(I)Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/data/DataManager;->a:Lcom/autonavi/navigation/api/data/a/b;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/data/a/b;->e(I)Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;

    move-result-object v0

    return-object v0
.end method

.method public getAdminAreaDetail(Lcom/autonavi/navigation/api/map/model/LatLng;)Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/data/DataManager;->a:Lcom/autonavi/navigation/api/data/a/b;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/data/a/b;->a(Lcom/autonavi/navigation/api/map/model/LatLng;)Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;

    move-result-object v0

    return-object v0
.end method

.method public getAdminAreas(I)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/data/DataManager;->a:Lcom/autonavi/navigation/api/data/a/b;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/data/a/b;->b(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdminCode(I)I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/data/DataManager;->a:Lcom/autonavi/navigation/api/data/a/b;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/data/a/b;->d(I)I

    move-result v0

    return v0
.end method

.method public getAdminCode(Lcom/autonavi/navigation/api/map/model/LatLng;)I
    .locals 1

    const-string v0, "latLng can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/data/DataManager;->a:Lcom/autonavi/navigation/api/data/a/b;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/data/a/b;->c(Lcom/autonavi/navigation/api/map/model/LatLng;)I

    move-result v0

    return v0
.end method

.method public getAllDownloadedAdminAreas()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/data/DataManager;->a:Lcom/autonavi/navigation/api/data/a/b;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/data/a/b;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllProvinces()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/data/DataManager;->a:Lcom/autonavi/navigation/api/data/a/b;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/data/a/b;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadedAdminAreas(I)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/data/DataManager;->a:Lcom/autonavi/navigation/api/data/a/b;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/data/a/b;->c(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasAdminAreaData(I)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/data/DataManager;->a:Lcom/autonavi/navigation/api/data/a/b;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/data/a/b;->a(I)Z

    move-result v0

    return v0
.end method

.method public hasAdminAreaData(Lcom/autonavi/navigation/api/map/model/LatLng;)Z
    .locals 1

    const-string v0, "latLng can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/data/DataManager;->a:Lcom/autonavi/navigation/api/data/a/b;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/data/a/b;->b(Lcom/autonavi/navigation/api/map/model/LatLng;)Z

    move-result v0

    return v0
.end method

.method public isSupportTraffic(I)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/data/DataManager;->a:Lcom/autonavi/navigation/api/data/a/b;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/data/a/b;->f(I)Z

    move-result v0

    return v0
.end method
