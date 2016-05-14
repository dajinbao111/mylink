.class public Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;
.super Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected b:I

.field protected c:Lcom/autonavi/navigation/api/map/model/LatLng;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;-><init>()V

    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;

    iget-object v2, p0, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;->a:Ljava/lang/String;

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;->b:I

    iget v3, p1, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;->b:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;->c:Lcom/autonavi/navigation/api/map/model/LatLng;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;->c:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget-object v3, p1, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;->c:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {v2, v3}, Lcom/autonavi/navigation/api/map/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getAdminCode()I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;->b:I

    return v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Lcom/autonavi/navigation/api/map/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;->c:Lcom/autonavi/navigation/api/map/model/LatLng;

    return-object v0
.end method

.method public seTtarget(Lcom/autonavi/navigation/api/map/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;->c:Lcom/autonavi/navigation/api/map/model/LatLng;

    return-void
.end method

.method public setAdminCode(I)Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;->b:I

    return-object p0
.end method
