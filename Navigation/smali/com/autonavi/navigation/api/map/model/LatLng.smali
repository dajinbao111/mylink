.class public final Lcom/autonavi/navigation/api/map/model/LatLng;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final CREATOR:Lcom/autonavi/navigation/api/map/model/LatLng$a;

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;


# instance fields
.field public latitude:I

.field public longitude:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/autonavi/navigation/api/map/model/LatLng$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/map/model/LatLng$a;-><init>(Lcom/autonavi/navigation/api/map/model/LatLng$1;)V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/LatLng;->CREATOR:Lcom/autonavi/navigation/api/map/model/LatLng$a;

    new-instance v0, Lcom/autonavi/navigation/api/map/model/LatLng$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/map/model/LatLng$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/LatLng;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    iput p2, p0, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/autonavi/navigation/api/map/model/LatLng;
    .locals 3

    new-instance v0, Lcom/autonavi/navigation/api/map/model/LatLng;

    iget v1, p0, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    iget v2, p0, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    invoke-direct {v0, v1, v2}, Lcom/autonavi/navigation/api/map/model/LatLng;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/model/LatLng;->clone()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    return-object v0
.end method

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
    instance-of v2, p1, Lcom/autonavi/navigation/api/map/model/LatLng;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/autonavi/navigation/api/map/model/LatLng;

    iget v2, p0, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    iget v3, p1, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    iget v3, p1, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getOriginalLat()D
    .locals 4

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getOriginalLng()D
    .locals 4

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lat/lng:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    return-void
.end method
