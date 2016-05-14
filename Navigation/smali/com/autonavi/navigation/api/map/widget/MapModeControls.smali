.class public Lcom/autonavi/navigation/api/map/widget/MapModeControls;
.super Landroid/widget/ImageButton;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/navigation/api/map/widget/MapModeControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget v0, Lcom/autonavi/navigation/api/R$drawable;->ic_car_north_1:I

    iput v0, p0, Lcom/autonavi/navigation/api/map/widget/MapModeControls;->b:I

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/widget/MapModeControls;->a:Landroid/content/Context;

    sget v0, Lcom/autonavi/navigation/api/R$drawable;->ic_car_north_1:I

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/map/widget/MapModeControls;->setBackgroundResource(I)V

    return-void
.end method

.method private a(I)I
    .locals 3

    const/16 v0, 0x10

    const/4 v1, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x17

    if-ge p1, v2, :cond_2

    const/16 v0, 0xf

    goto :goto_0

    :cond_2
    const/16 v2, 0x2e

    if-ge p1, v2, :cond_3

    const/16 v0, 0xe

    goto :goto_0

    :cond_3
    const/16 v2, 0x44

    if-ge p1, v2, :cond_4

    const/16 v0, 0xd

    goto :goto_0

    :cond_4
    const/16 v2, 0x5a

    if-ge p1, v2, :cond_5

    const/16 v0, 0xc

    goto :goto_0

    :cond_5
    const/16 v2, 0x71

    if-ge p1, v2, :cond_6

    const/16 v0, 0xb

    goto :goto_0

    :cond_6
    const/16 v2, 0x87

    if-ge p1, v2, :cond_7

    const/16 v0, 0xa

    goto :goto_0

    :cond_7
    const/16 v2, 0x9e

    if-ge p1, v2, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    :cond_8
    const/16 v2, 0xb4

    if-ge p1, v2, :cond_9

    const/16 v0, 0x8

    goto :goto_0

    :cond_9
    const/16 v2, 0xcb

    if-ge p1, v2, :cond_a

    const/4 v0, 0x7

    goto :goto_0

    :cond_a
    const/16 v2, 0xe1

    if-ge p1, v2, :cond_b

    const/4 v0, 0x6

    goto :goto_0

    :cond_b
    const/16 v2, 0xf8

    if-ge p1, v2, :cond_c

    const/4 v0, 0x5

    goto :goto_0

    :cond_c
    const/16 v2, 0x10e

    if-ge p1, v2, :cond_d

    const/4 v0, 0x4

    goto :goto_0

    :cond_d
    const/16 v2, 0x125

    if-ge p1, v2, :cond_e

    const/4 v0, 0x3

    goto :goto_0

    :cond_e
    const/16 v2, 0x13b

    if-ge p1, v2, :cond_f

    const/4 v0, 0x2

    goto :goto_0

    :cond_f
    const/16 v2, 0x152

    if-ge p1, v2, :cond_10

    move v0, v1

    goto :goto_0

    :cond_10
    const/16 v2, 0x168

    if-lt p1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;I)I
    .locals 4

    const-string v0, "ic_car_north_%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/autonavi/navigation/api/internal/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private b(Landroid/content/Context;I)I
    .locals 4

    const-string v0, "ic_3d_%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/autonavi/navigation/api/internal/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public setCompassResource(Lcom/autonavi/navigation/api/map/model/CameraPosition;)V
    .locals 2

    iget v0, p0, Lcom/autonavi/navigation/api/map/widget/MapModeControls;->b:I

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->mode:Lcom/autonavi/navigation/api/map/model/MapMode;

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapMode;->MODE_3D:Lcom/autonavi/navigation/api/map/model/MapMode;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/widget/MapModeControls;->a:Landroid/content/Context;

    iget v1, p1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->bearing:I

    invoke-direct {p0, v1}, Lcom/autonavi/navigation/api/map/widget/MapModeControls;->a(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/autonavi/navigation/api/map/widget/MapModeControls;->b(Landroid/content/Context;I)I

    move-result v0

    :cond_0
    :goto_0
    iget v1, p0, Lcom/autonavi/navigation/api/map/widget/MapModeControls;->b:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/map/widget/MapModeControls;->setBackgroundResource(I)V

    iput v0, p0, Lcom/autonavi/navigation/api/map/widget/MapModeControls;->b:I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->mode:Lcom/autonavi/navigation/api/map/model/MapMode;

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapMode;->MODE_CAR:Lcom/autonavi/navigation/api/map/model/MapMode;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/widget/MapModeControls;->a:Landroid/content/Context;

    iget v1, p1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->bearing:I

    invoke-direct {p0, v1}, Lcom/autonavi/navigation/api/map/widget/MapModeControls;->a(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/autonavi/navigation/api/map/widget/MapModeControls;->a(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->mode:Lcom/autonavi/navigation/api/map/model/MapMode;

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapMode;->MODE_NORTH:Lcom/autonavi/navigation/api/map/model/MapMode;

    if-ne v0, v1, :cond_4

    sget v0, Lcom/autonavi/navigation/api/R$drawable;->ic_car_north_1:I

    goto :goto_0

    :cond_4
    sget v0, Lcom/autonavi/navigation/api/R$drawable;->ic_car_north_1:I

    goto :goto_0
.end method
