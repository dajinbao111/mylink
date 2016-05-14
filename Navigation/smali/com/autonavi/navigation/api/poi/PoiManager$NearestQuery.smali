.class public Lcom/autonavi/navigation/api/poi/PoiManager$NearestQuery;
.super Lcom/autonavi/navigation/api/poi/PoiManager$Query;


# instance fields
.field private a:Lcom/autonavi/navigation/api/map/model/LatLng;


# direct methods
.method public constructor <init>(Lcom/autonavi/navigation/api/map/model/LatLng;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/navigation/api/poi/PoiManager$Query;-><init>()V

    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/PoiManager$NearestQuery;->a:Lcom/autonavi/navigation/api/map/model/LatLng;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/autonavi/navigation/api/poi/PoiManager$NearestQuery;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/autonavi/navigation/api/poi/PoiManager$NearestQuery;

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager$NearestQuery;->a:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget-object v1, p1, Lcom/autonavi/navigation/api/poi/PoiManager$NearestQuery;->a:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getTarget()Lcom/autonavi/navigation/api/map/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager$NearestQuery;->a:Lcom/autonavi/navigation/api/map/model/LatLng;

    return-object v0
.end method

.method public setTarget(Lcom/autonavi/navigation/api/map/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/PoiManager$NearestQuery;->a:Lcom/autonavi/navigation/api/map/model/LatLng;

    return-void
.end method
