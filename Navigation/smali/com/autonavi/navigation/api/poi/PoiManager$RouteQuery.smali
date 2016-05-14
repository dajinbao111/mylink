.class public Lcom/autonavi/navigation/api/poi/PoiManager$RouteQuery;
.super Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;-><init>()V

    iput p1, p0, Lcom/autonavi/navigation/api/poi/PoiManager$RouteQuery;->b:I

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
    instance-of v2, p1, Lcom/autonavi/navigation/api/poi/PoiManager$RouteQuery;

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
    check-cast p1, Lcom/autonavi/navigation/api/poi/PoiManager$RouteQuery;

    iget-object v2, p0, Lcom/autonavi/navigation/api/poi/PoiManager$RouteQuery;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/autonavi/navigation/api/poi/PoiManager$RouteQuery;->a:Ljava/lang/String;

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/autonavi/navigation/api/poi/PoiManager$RouteQuery;->b:I

    iget v3, p1, Lcom/autonavi/navigation/api/poi/PoiManager$RouteQuery;->b:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager$RouteQuery;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getRadius()I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager$RouteQuery;->b:I

    return v0
.end method

.method public setQueryString(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/PoiManager$RouteQuery;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/PoiManager$RouteQuery;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setRadius(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/poi/PoiManager$RouteQuery;->b:I

    return-void
.end method
