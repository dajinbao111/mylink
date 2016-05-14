.class public Lcom/autonavi/navigation/api/route/DetourRegionManager;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/autonavi/navigation/api/route/a/b;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getDetourRegionManagerDelegate()Lcom/autonavi/navigation/api/route/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/DetourRegionManager;->a:Lcom/autonavi/navigation/api/route/a/b;

    return-void
.end method


# virtual methods
.method public clear()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/DetourRegionManager;->a:Lcom/autonavi/navigation/api/route/a/b;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/route/a/b;->b()Z

    move-result v0

    return v0
.end method

.method public contains(Lcom/autonavi/navigation/api/map/model/LatLng;)Z
    .locals 1

    const-string v0, "point can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/DetourRegionManager;->a:Lcom/autonavi/navigation/api/route/a/b;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/route/a/b;->a(Lcom/autonavi/navigation/api/map/model/LatLng;)Z

    move-result v0

    return v0
.end method

.method public getAll()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/DetourRegionManager;->a:Lcom/autonavi/navigation/api/route/a/b;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/route/a/b;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/DetourRegionManager;->a:Lcom/autonavi/navigation/api/route/a/b;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/route/a/b;->a(I)Z

    move-result v0

    return v0
.end method

.method public remove([I)Z
    .locals 2

    const-string v0, "ids can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "ids can not be empty"

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/DetourRegionManager;->a:Lcom/autonavi/navigation/api/route/a/b;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/route/a/b;->a([I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public save(Lcom/autonavi/navigation/api/route/model/DetourRegion;)Z
    .locals 1

    const-string v0, "region can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/DetourRegionManager;->a:Lcom/autonavi/navigation/api/route/a/b;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/route/a/b;->a(Lcom/autonavi/navigation/api/route/model/DetourRegion;)Z

    move-result v0

    return v0
.end method
