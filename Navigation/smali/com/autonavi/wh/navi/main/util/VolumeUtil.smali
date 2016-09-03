.class public Lcom/autonavi/wh/navi/main/util/VolumeUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static naviVolumeToYfVolume(I)I
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x9

    if-ne v0, p0, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    int-to-double v0, p0

    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    add-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0
.end method

.method public static yfVolumeToNaviVolume(I)I
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-eq v0, p0, :cond_1

    const/4 v0, 0x2

    if-eq v0, p0, :cond_1

    const/4 v0, 0x3

    if-eq v0, p0, :cond_1

    const/4 v0, 0x4

    if-eq v0, p0, :cond_1

    const/4 v0, 0x5

    if-ne v0, p0, :cond_2

    :cond_1
    const/16 v0, 0x9

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p0, -0x4

    mul-int/lit8 v0, v0, 0x9

    goto :goto_0
.end method
