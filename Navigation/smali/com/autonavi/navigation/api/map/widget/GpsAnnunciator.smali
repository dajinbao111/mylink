.class public Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;
.super Landroid/widget/ImageView;

# interfaces
.implements Lcom/autonavi/navigation/api/location/LocationManager$GpsStatusCallback;
.implements Lcom/autonavi/navigation/api/location/LocationManager$LocationCallback;


# instance fields
.field private a:I

.field private final b:Lcom/autonavi/navigation/api/location/LocationManager;

.field private final c:Ljava/lang/Runnable;

.field private d:I

.field private e:Landroid/location/GpsStatus;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget v0, Lcom/autonavi/navigation/api/R$drawable;->ic_gps_nogps:I

    iput v0, p0, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->a:I

    new-instance v0, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator$1;

    invoke-direct {v0, p0}, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator$1;-><init>(Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->c:Ljava/lang/Runnable;

    iput v1, p0, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->e:Landroid/location/GpsStatus;

    sget v0, Lcom/autonavi/navigation/api/R$drawable;->ic_gps_nogps:I

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->setImageResource(I)V

    invoke-virtual {p0, v2, v1, v2, v1}, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->setPadding(IIII)V

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getLocationManager()Lcom/autonavi/navigation/api/location/LocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->b:Lcom/autonavi/navigation/api/location/LocationManager;

    return-void
.end method

.method static synthetic a(Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;)I
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->getSatelliteCount()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->a:I

    return p1
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->b:Lcom/autonavi/navigation/api/location/LocationManager;

    invoke-virtual {v0, p0}, Lcom/autonavi/navigation/api/location/LocationManager;->requestGpsStatusUpdates(Lcom/autonavi/navigation/api/location/LocationManager$GpsStatusCallback;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->b:Lcom/autonavi/navigation/api/location/LocationManager;

    invoke-virtual {v0, p0}, Lcom/autonavi/navigation/api/location/LocationManager;->removeLocationUpdates(Lcom/autonavi/navigation/api/location/LocationManager$LocationCallback;)V

    return-void
.end method

.method static synthetic b(Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->a:I

    return v0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->b:Lcom/autonavi/navigation/api/location/LocationManager;

    invoke-virtual {v0, p0}, Lcom/autonavi/navigation/api/location/LocationManager;->removeGpsStatusUpdates(Lcom/autonavi/navigation/api/location/LocationManager$GpsStatusCallback;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->b:Lcom/autonavi/navigation/api/location/LocationManager;

    invoke-virtual {v0, p0}, Lcom/autonavi/navigation/api/location/LocationManager;->removeLocationUpdates(Lcom/autonavi/navigation/api/location/LocationManager$LocationCallback;)V

    return-void
.end method

.method private getSatelliteCount()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->d:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->e:Landroid/location/GpsStatus;

    if-nez v1, :cond_2

    :cond_0
    move v1, v0

    :cond_1
    return v1

    :cond_2
    iget-object v1, p0, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->e:Landroid/location/GpsStatus;

    invoke-virtual {v1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public onGpsStatusChanged(ILandroid/location/GpsStatus;)V
    .locals 1

    iput-object p2, p0, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->e:Landroid/location/GpsStatus;

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    return-void
.end method

.method public onLocationStatusChanged(I)V
    .locals 1

    iput p1, p0, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->d:I

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->b()V

    :cond_0
    return-void
.end method

.method public setObtainGpsInfoEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->b()V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->a()V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->b()V

    goto :goto_0
.end method
