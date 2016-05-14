.class public abstract Lcom/autonavi/navigation/api/safety/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/safety/a/b;


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

    invoke-static {v0}, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->valueOf(I)Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/autonavi/navigation/api/internal/a/a/e;->b(J)Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/navigation/api/safety/a/a;->a(Lcom/autonavi/navigation/api/safety/model/SafetyCategory;Lcom/autonavi/navigation/api/map/model/LatLng;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/autonavi/navigation/api/map/model/LatLng;)Z
    .locals 2

    sget-object v0, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->GSAFE_CATEGORY_ALL:Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/safety/a/a;->b(Lcom/autonavi/navigation/api/safety/model/SafetyCategory;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/map/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a([J)Z
    .locals 5

    const/4 v0, 0x0

    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-wide v3, p1, v1

    invoke-virtual {p0, v3, v4}, Lcom/autonavi/navigation/api/safety/a/a;->a(J)Z

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
