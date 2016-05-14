.class public abstract Lcom/autonavi/navigation/api/data/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/data/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/navigation/api/map/model/LatLng;)Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/data/a/a;->c(Lcom/autonavi/navigation/api/map/model/LatLng;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/data/a/a;->e(I)Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/data/a/a;->b(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/data/a/a;->e(I)Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->hasData:Z

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/data/a/a;->c(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/autonavi/navigation/api/map/model/LatLng;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/data/a/a;->c(Lcom/autonavi/navigation/api/map/model/LatLng;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/data/a/a;->a(I)Z

    move-result v0

    goto :goto_0
.end method
