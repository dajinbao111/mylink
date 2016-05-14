.class public Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;
.super Lcom/autonavi/navigation/api/poi/PoiManager$Query;


# instance fields
.field protected d:Lcom/autonavi/navigation/api/poi/model/PoiCategory;

.field protected e:I

.field protected f:Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/navigation/api/poi/PoiManager$Query;-><init>()V

    sget-object v0, Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;->DEFAULT:Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;

    iput-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;->f:Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;

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
    instance-of v2, p1, Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;

    iget-object v2, p0, Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;->d:Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    iget-object v3, p1, Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;->d:Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;->e:I

    iget v3, p1, Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;->e:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;->f:Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;

    iget-object v3, p1, Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;->f:Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;

    invoke-virtual {v2, v3}, Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getOrderBy()Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;->f:Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;

    return-object v0
.end method

.method public getPoiCategory()Lcom/autonavi/navigation/api/poi/model/PoiCategory;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;->d:Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    return-object v0
.end method

.method public getQueryItemSize()I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;->e:I

    return v0
.end method

.method public setOrderBy(Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;)Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;->f:Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;

    return-object p0
.end method

.method public setPoiCategory(Lcom/autonavi/navigation/api/poi/model/PoiCategory;)Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;->d:Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    return-object p0
.end method

.method public setQueryItemSize(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;->e:I

    return-void
.end method
