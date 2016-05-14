.class public final Lcom/autonavi/navigation/api/map/model/CameraPosition;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final CREATOR:Lcom/autonavi/navigation/api/map/model/CameraPosition$a;

.field public static final MAX_BEARING:I = 0x168

.field public static final MIN_BEARING:I

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/map/model/CameraPosition$b;


# instance fields
.field public final bearing:I

.field public final mode:Lcom/autonavi/navigation/api/map/model/MapMode;

.field public final target:Lcom/autonavi/navigation/api/map/model/LatLng;

.field public final tilt:I

.field public final zoom:Lcom/autonavi/navigation/api/map/model/ZoomLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/autonavi/navigation/api/map/model/CameraPosition$a;

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/map/model/CameraPosition$a;-><init>(Lcom/autonavi/navigation/api/map/model/CameraPosition$1;)V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->CREATOR:Lcom/autonavi/navigation/api/map/model/CameraPosition$a;

    new-instance v0, Lcom/autonavi/navigation/api/map/model/CameraPosition$b;

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/map/model/CameraPosition$b;-><init>(Lcom/autonavi/navigation/api/map/model/CameraPosition$1;)V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/map/model/CameraPosition$b;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/navigation/api/map/model/MapMode;Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/map/model/ZoomLevel;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->mode:Lcom/autonavi/navigation/api/map/model/MapMode;

    iput-object p2, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->target:Lcom/autonavi/navigation/api/map/model/LatLng;

    iput-object p3, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->zoom:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    iput p4, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->tilt:I

    if-gtz p5, :cond_0

    rem-int/lit16 v0, p5, 0x168

    add-int/lit16 p5, v0, 0x168

    :cond_0
    rem-int/lit16 v0, p5, 0x168

    iput v0, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->bearing:I

    return-void
.end method

.method public static builder()Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;-><init>()V

    return-object v0
.end method

.method public static builder(Lcom/autonavi/navigation/api/map/model/CameraPosition;)Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;

    invoke-direct {v0, p0}, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;-><init>(Lcom/autonavi/navigation/api/map/model/CameraPosition;)V

    return-object v0
.end method

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/autonavi/navigation/api/map/model/CameraPosition;
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/autonavi/navigation/api/R$styleable;->MapAttrs:[I

    invoke-virtual {v0, p1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    :goto_1
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v3, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    :goto_2
    new-instance v4, Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-direct {v4, v0, v2}, Lcom/autonavi/navigation/api/map/model/LatLng;-><init>(II)V

    invoke-static {}, Lcom/autonavi/navigation/api/map/model/CameraPosition;->builder()Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;->target(Lcom/autonavi/navigation/api/map/model/LatLng;)Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;

    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v3, v7, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-static {v2}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->valueOf(I)Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;->zoom(Lcom/autonavi/navigation/api/map/model/ZoomLevel;)Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;

    :cond_1
    const/4 v2, 0x5

    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-static {v2}, Lcom/autonavi/navigation/api/map/model/MapMode;->valueOf(I)Lcom/autonavi/navigation/api/map/model/MapMode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;->mode(Lcom/autonavi/navigation/api/map/model/MapMode;)Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;

    :cond_2
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v3, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;->bearing(I)Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;

    :cond_3
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v3, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;->tilt(I)Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;

    :cond_4
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;->build()Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v0

    goto :goto_0

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/autonavi/navigation/api/map/model/CameraPosition;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/autonavi/navigation/api/map/model/CameraPosition;

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->target:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget-object v3, p1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->target:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {v2, v3}, Lcom/autonavi/navigation/api/map/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->zoom:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    iget v2, v2, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->value:I

    iget-object v3, p1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->zoom:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    iget v3, v3, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->value:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->tilt:I

    iget v3, p1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->tilt:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->bearing:I

    iget v3, p1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->bearing:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final getMaxTilt()I
    .locals 1

    const/16 v0, 0x5a

    return v0
.end method

.method public final getMinTilt()I
    .locals 1

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getMapManagerDelegate()Lcom/autonavi/navigation/api/map/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->v()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "target="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->target:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zoom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->zoom:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    iget v1, v1, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tilt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->tilt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bearing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->bearing:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->mode:Lcom/autonavi/navigation/api/map/model/MapMode;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->target:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->zoom:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    iget v0, v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->tilt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->bearing:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->mode:Lcom/autonavi/navigation/api/map/model/MapMode;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/model/MapMode;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->target:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->zoom:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    iget v0, v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->value:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->tilt:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->bearing:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    return-void
.end method
