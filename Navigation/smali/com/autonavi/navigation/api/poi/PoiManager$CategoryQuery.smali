.class public Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;
.super Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/autonavi/navigation/api/map/model/LatLng;

.field private final g:Lcom/autonavi/navigation/api/poi/model/PoiCategory;


# direct methods
.method public constructor <init>(Lcom/autonavi/navigation/api/poi/model/PoiCategory;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;-><init>()V

    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;->g:Lcom/autonavi/navigation/api/poi/model/PoiCategory;

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
    instance-of v2, p1, Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;

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
    check-cast p1, Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;

    iget-object v2, p0, Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;->a:Ljava/lang/String;

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;->b:I

    iget v3, p1, Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;->b:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getAdminCode()I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;->b:I

    return v0
.end method

.method public getPoiCategory()Lcom/autonavi/navigation/api/poi/model/PoiCategory;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;->g:Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Lcom/autonavi/navigation/api/map/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;->c:Lcom/autonavi/navigation/api/map/model/LatLng;

    return-object v0
.end method

.method public seTtarget(Lcom/autonavi/navigation/api/map/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;->c:Lcom/autonavi/navigation/api/map/model/LatLng;

    return-void
.end method

.method public setAdminCode(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;->b:I

    return-void
.end method

.method public setQueryString(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;->a:Ljava/lang/String;

    return-object p0
.end method
