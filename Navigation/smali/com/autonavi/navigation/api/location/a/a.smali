.class public abstract Lcom/autonavi/navigation/api/location/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/location/a/c;


# instance fields
.field protected a:Lcom/autonavi/navigation/api/map/model/LatLng;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-direct {v0, v1, v1}, Lcom/autonavi/navigation/api/map/model/LatLng;-><init>(II)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/location/a/a;->a:Lcom/autonavi/navigation/api/map/model/LatLng;

    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/navigation/api/map/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/location/a/a;->a:Lcom/autonavi/navigation/api/map/model/LatLng;

    return-void
.end method

.method public a(IIJ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(I[IJ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/location/Location;J)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/autonavi/navigation/api/location/a/b;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
