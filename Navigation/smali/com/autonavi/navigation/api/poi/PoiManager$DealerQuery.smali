.class public Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;
.super Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private g:Lcom/autonavi/navigation/api/map/model/LatLng;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdminCode()I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;->a:I

    return v0
.end method

.method public getCenterPoint()Lcom/autonavi/navigation/api/map/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;->g:Lcom/autonavi/navigation/api/map/model/LatLng;

    return-object v0
.end method

.method public getMotorCategory()I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;->b:I

    return v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getRadius()I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;->h:I

    return v0
.end method

.method public setAdminCode(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;->a:I

    return-void
.end method

.method public setCenterPoint(Lcom/autonavi/navigation/api/map/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;->g:Lcom/autonavi/navigation/api/map/model/LatLng;

    return-void
.end method

.method public setMotorCategory(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;->b:I

    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;->c:Ljava/lang/String;

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;->h:I

    return-void
.end method
