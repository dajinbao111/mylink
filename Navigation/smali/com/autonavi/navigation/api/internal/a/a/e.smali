.class public Lcom/autonavi/navigation/api/internal/a/a/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(J)I
    .locals 2

    const/16 v0, 0x3a

    shr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static a(III)J
    .locals 7

    if-gez p0, :cond_1

    neg-int v0, p0

    int-to-long v0, v0

    :goto_0
    const/16 v2, 0x1d

    shl-long/2addr v0, v2

    if-gez p0, :cond_3

    const-wide/high16 v2, 0x200000000000000L

    or-long/2addr v0, v2

    move-wide v2, v0

    :goto_1
    if-gez p1, :cond_2

    neg-int v0, p1

    int-to-long v0, v0

    :goto_2
    if-gez p1, :cond_0

    const-wide/32 v4, 0x10000000

    or-long/2addr v0, v4

    :cond_0
    int-to-long v4, p2

    const/16 v6, 0x3a

    shl-long/2addr v4, v6

    or-long/2addr v0, v2

    or-long/2addr v0, v4

    return-wide v0

    :cond_1
    int-to-long v0, p0

    goto :goto_0

    :cond_2
    int-to-long v0, p1

    goto :goto_2

    :cond_3
    move-wide v2, v0

    goto :goto_1
.end method

.method public static a(Lcom/autonavi/navigation/api/map/model/LatLng;I)J
    .locals 2

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    iget v1, p0, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    invoke-static {v0, v1, p1}, Lcom/autonavi/navigation/api/internal/a/a/e;->a(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(J)Lcom/autonavi/navigation/api/map/model/LatLng;
    .locals 8

    const-wide/32 v6, 0xfffffff

    const-wide/16 v4, 0x0

    and-long v0, p0, v6

    long-to-int v0, v0

    const-wide/32 v1, 0x10000000

    and-long/2addr v1, p0

    cmp-long v1, v1, v4

    if-eqz v1, :cond_1

    neg-int v0, v0

    move v1, v0

    :goto_0
    const/16 v0, 0x1d

    ushr-long v2, p0, v0

    and-long/2addr v2, v6

    long-to-int v0, v2

    const-wide/high16 v2, 0x200000000000000L

    and-long/2addr v2, p0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    neg-int v0, v0

    :cond_0
    new-instance v2, Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-direct {v2, v1, v0}, Lcom/autonavi/navigation/api/map/model/LatLng;-><init>(II)V

    return-object v2

    :cond_1
    move v1, v0

    goto :goto_0
.end method
