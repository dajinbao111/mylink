.class public Lcom/autonavi/navigation/api/poi/PoiManager$AddressQuery;
.super Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;-><init>(Ljava/lang/String;)V

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
    instance-of v2, p1, Lcom/autonavi/navigation/api/poi/PoiManager$AddressQuery;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/autonavi/navigation/api/poi/PoiManager$AddressQuery;

    iget-object v2, p0, Lcom/autonavi/navigation/api/poi/PoiManager$AddressQuery;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/autonavi/navigation/api/poi/PoiManager$AddressQuery;->a:Ljava/lang/String;

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/autonavi/navigation/api/poi/PoiManager$AddressQuery;->b:I

    iget v3, p1, Lcom/autonavi/navigation/api/poi/PoiManager$AddressQuery;->b:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method
