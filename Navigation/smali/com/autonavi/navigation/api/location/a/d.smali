.class public final Lcom/autonavi/navigation/api/location/a/d;
.super Lcom/autonavi/navigation/api/location/a/a;


# static fields
.field private static c:Ljava/util/GregorianCalendar;


# instance fields
.field private final b:Lcom/autonavi/xm/navigation/engine/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/navigation/api/location/a/a;-><init>()V

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/e;->a()Lcom/autonavi/xm/navigation/engine/e;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/location/a/d;->b:Lcom/autonavi/xm/navigation/engine/e;

    return-void
.end method

.method private a(Landroid/location/Location;I)Z
    .locals 11

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/location/GGpsAzi;

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v0, v3, p2}, Lcom/autonavi/xm/navigation/server/location/GGpsAzi;-><init>(II)V

    new-instance v3, Lcom/autonavi/xm/navigation/server/location/GGpsAlt;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    mul-double/2addr v4, v9

    double-to-int v4, v4

    invoke-direct {v3, v4, p2}, Lcom/autonavi/xm/navigation/server/location/GGpsAlt;-><init>(II)V

    new-instance v4, Lcom/autonavi/xm/navigation/server/location/GGpsSpd;

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v5, v7

    mul-double/2addr v5, v9

    double-to-int v5, v5

    invoke-direct {v4, v5, p2}, Lcom/autonavi/xm/navigation/server/location/GGpsSpd;-><init>(II)V

    new-instance v5, Lcom/autonavi/xm/navigation/server/location/GGpsMistake;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v5, v6, p2}, Lcom/autonavi/xm/navigation/server/location/GGpsMistake;-><init>(II)V

    iget-object v6, p0, Lcom/autonavi/navigation/api/location/a/d;->b:Lcom/autonavi/xm/navigation/engine/e;

    invoke-virtual {v6, v0}, Lcom/autonavi/xm/navigation/engine/e;->a(Ljava/lang/Object;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v6, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v6, :cond_0

    move v0, v1

    :goto_0
    iget-object v6, p0, Lcom/autonavi/navigation/api/location/a/d;->b:Lcom/autonavi/xm/navigation/engine/e;

    invoke-virtual {v6, v3}, Lcom/autonavi/xm/navigation/engine/e;->a(Ljava/lang/Object;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v3

    sget-object v6, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v3, v6, :cond_1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/autonavi/navigation/api/location/a/d;->b:Lcom/autonavi/xm/navigation/engine/e;

    invoke-virtual {v3, v4}, Lcom/autonavi/xm/navigation/engine/e;->a(Ljava/lang/Object;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v3

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v3, v4, :cond_2

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/autonavi/navigation/api/location/a/d;->b:Lcom/autonavi/xm/navigation/engine/e;

    invoke-virtual {v3, v5}, Lcom/autonavi/xm/navigation/engine/e;->a(Ljava/lang/Object;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v3

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v3, v4, :cond_3

    if-eqz v0, :cond_3

    :goto_3
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method private b(Landroid/location/Location;I)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v0, "satellites"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "status"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    :goto_0
    new-instance v4, Lcom/autonavi/xm/navigation/server/location/GGpsSataNum;

    invoke-direct {v4, v0, p2}, Lcom/autonavi/xm/navigation/server/location/GGpsSataNum;-><init>(II)V

    new-instance v5, Lcom/autonavi/xm/navigation/server/location/GGpsStatus;

    const/4 v0, 0x2

    if-ne v2, v0, :cond_0

    const/16 v0, 0x41

    :goto_1
    int-to-byte v0, v0

    invoke-direct {v5, v0, p2}, Lcom/autonavi/xm/navigation/server/location/GGpsStatus;-><init>(BI)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/a/d;->b:Lcom/autonavi/xm/navigation/engine/e;

    invoke-virtual {v0, v4}, Lcom/autonavi/xm/navigation/engine/e;->a(Ljava/lang/Object;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v2, :cond_1

    move v0, v3

    :goto_2
    iget-object v2, p0, Lcom/autonavi/navigation/api/location/a/d;->b:Lcom/autonavi/xm/navigation/engine/e;

    invoke-virtual {v2, v5}, Lcom/autonavi/xm/navigation/engine/e;->a(Ljava/lang/Object;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v2

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v2, v4, :cond_2

    if-eqz v0, :cond_2

    :goto_3
    return v3

    :cond_0
    const/16 v0, 0x56

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    move v3, v1

    goto :goto_3

    :cond_3
    move v0, v1

    move v2, v1

    goto :goto_0
.end method

.method private c(Landroid/location/Location;I)Z
    .locals 7

    const/4 v0, 0x1

    sget-object v1, Lcom/autonavi/navigation/api/location/a/d;->c:Ljava/util/GregorianCalendar;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/GregorianCalendar;

    const-string v2, "GMT+08:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    sput-object v1, Lcom/autonavi/navigation/api/location/a/d;->c:Ljava/util/GregorianCalendar;

    :cond_0
    sget-object v1, Lcom/autonavi/navigation/api/location/a/d;->c:Ljava/util/GregorianCalendar;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    new-instance v1, Lcom/autonavi/xm/navigation/server/location/GGpsDate;

    sget-object v2, Lcom/autonavi/navigation/api/location/a/d;->c:Ljava/util/GregorianCalendar;

    invoke-virtual {v2, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/lit16 v2, v2, -0x7d0

    sget-object v3, Lcom/autonavi/navigation/api/location/a/d;->c:Ljava/util/GregorianCalendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/autonavi/navigation/api/location/a/d;->c:Ljava/util/GregorianCalendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-direct {v1, v2, v3, v4, p2}, Lcom/autonavi/xm/navigation/server/location/GGpsDate;-><init>(IIII)V

    new-instance v2, Lcom/autonavi/xm/navigation/server/location/GGpsTime;

    sget-object v3, Lcom/autonavi/navigation/api/location/a/d;->c:Ljava/util/GregorianCalendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    sget-object v4, Lcom/autonavi/navigation/api/location/a/d;->c:Ljava/util/GregorianCalendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    sget-object v5, Lcom/autonavi/navigation/api/location/a/d;->c:Ljava/util/GregorianCalendar;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-direct {v2, v3, v4, v5, p2}, Lcom/autonavi/xm/navigation/server/location/GGpsTime;-><init>(IIII)V

    iget-object v3, p0, Lcom/autonavi/navigation/api/location/a/d;->b:Lcom/autonavi/xm/navigation/engine/e;

    invoke-virtual {v3, v1}, Lcom/autonavi/xm/navigation/engine/e;->a(Ljava/lang/Object;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/autonavi/navigation/api/location/a/d;->b:Lcom/autonavi/xm/navigation/engine/e;

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navigation/engine/e;->a(Ljava/lang/Object;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Landroid/location/Location;I)Z
    .locals 7

    const-wide v5, 0x412e848000000000L    # 1000000.0

    new-instance v1, Lcom/autonavi/xm/navigation/server/location/GGpsPos;

    invoke-direct {v1}, Lcom/autonavi/xm/navigation/server/location/GGpsPos;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v5

    double-to-int v0, v2

    iget-object v2, p0, Lcom/autonavi/navigation/api/location/a/d;->a:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget v2, v2, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    add-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v0, v3

    iget-object v3, p0, Lcom/autonavi/navigation/api/location/a/d;->a:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget v3, v3, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    add-int/2addr v3, v0

    if-lez v2, :cond_0

    const/16 v0, 0x45

    :goto_0
    int-to-byte v0, v0

    iput-byte v0, v1, Lcom/autonavi/xm/navigation/server/location/GGpsPos;->cLon:B

    if-lez v3, :cond_1

    const/16 v0, 0x4e

    :goto_1
    int-to-byte v0, v0

    iput-byte v0, v1, Lcom/autonavi/xm/navigation/server/location/GGpsPos;->cLat:B

    iput v2, v1, Lcom/autonavi/xm/navigation/server/location/GGpsPos;->lLonS:I

    iput v3, v1, Lcom/autonavi/xm/navigation/server/location/GGpsPos;->lLatS:I

    iput p2, v1, Lcom/autonavi/xm/navigation/server/location/GGpsPos;->nTickTime:I

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/a/d;->b:Lcom/autonavi/xm/navigation/engine/e;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/e;->a(Ljava/lang/Object;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_0
    const/16 v0, 0x57

    goto :goto_0

    :cond_1
    const/16 v0, 0x53

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/a/d;->b:Lcom/autonavi/xm/navigation/engine/e;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/navigation/engine/e;->a(Z)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/a/d;->b:Lcom/autonavi/xm/navigation/engine/e;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/e;->c()Z

    move-result v0

    return v0
.end method

.method public a(IIJ)Z
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/autonavi/navigation/api/location/a/a;->a(IIJ)Z

    new-instance v0, Lcom/autonavi/xm/navigation/server/location/GPulseData;

    long-to-int v1, p3

    invoke-direct {v0, p2, p1, v1}, Lcom/autonavi/xm/navigation/server/location/GPulseData;-><init>(III)V

    iget-object v1, p0, Lcom/autonavi/navigation/api/location/a/d;->b:Lcom/autonavi/xm/navigation/engine/e;

    invoke-virtual {v1, v0}, Lcom/autonavi/xm/navigation/engine/e;->a(Ljava/lang/Object;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I[IJ)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length v1, p2

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/autonavi/navigation/api/location/a/a;->a(I[IJ)Z

    new-instance v1, Lcom/autonavi/xm/navigation/server/location/GGyroData;

    array-length v2, p2

    long-to-int v3, p3

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/autonavi/xm/navigation/server/location/GGyroData;-><init>(II[II)V

    iget-object v2, p0, Lcom/autonavi/navigation/api/location/a/d;->b:Lcom/autonavi/xm/navigation/engine/e;

    invoke-virtual {v2, v1}, Lcom/autonavi/xm/navigation/engine/e;->a(Ljava/lang/Object;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Landroid/location/Location;J)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/autonavi/navigation/api/location/a/a;->a(Landroid/location/Location;J)Z

    long-to-int v3, p2

    if-nez p1, :cond_1

    new-instance v2, Lcom/autonavi/xm/navigation/server/location/GGpsStatus;

    const/16 v4, 0x56

    invoke-direct {v2, v4, v3}, Lcom/autonavi/xm/navigation/server/location/GGpsStatus;-><init>(BI)V

    iget-object v3, p0, Lcom/autonavi/navigation/api/location/a/d;->b:Lcom/autonavi/xm/navigation/engine/e;

    invoke-virtual {v3, v2}, Lcom/autonavi/xm/navigation/engine/e;->a(Ljava/lang/Object;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/autonavi/navigation/api/location/a/d;->d(Landroid/location/Location;I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    :goto_1
    invoke-direct {p0, p1, v3}, Lcom/autonavi/navigation/api/location/a/d;->a(Landroid/location/Location;I)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    move v2, v0

    :goto_2
    invoke-direct {p0, p1, v3}, Lcom/autonavi/navigation/api/location/a/d;->b(Landroid/location/Location;I)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    move v2, v0

    :goto_3
    invoke-direct {p0, p1, v3}, Lcom/autonavi/navigation/api/location/a/d;->c(Landroid/location/Location;I)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    :goto_4
    iget-object v1, p0, Lcom/autonavi/navigation/api/location/a/d;->b:Lcom/autonavi/xm/navigation/engine/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/xm/navigation/engine/e;->a(J)V

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4
.end method

.method public a(Lcom/autonavi/navigation/api/location/a/b;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/autonavi/navigation/api/location/a/a;->a(Lcom/autonavi/navigation/api/location/a/b;)Z

    iget-object v1, p0, Lcom/autonavi/navigation/api/location/a/d;->b:Lcom/autonavi/xm/navigation/engine/e;

    new-instance v2, Lcom/autonavi/xm/navigation/server/location/GECompassData;

    iget v3, p1, Lcom/autonavi/navigation/api/location/a/b;->a:I

    iget v4, p1, Lcom/autonavi/navigation/api/location/a/b;->b:I

    iget v5, p1, Lcom/autonavi/navigation/api/location/a/b;->c:I

    invoke-direct {v2, v3, v4, v5}, Lcom/autonavi/xm/navigation/server/location/GECompassData;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navigation/engine/e;->a(Lcom/autonavi/xm/navigation/server/location/GECompassData;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
