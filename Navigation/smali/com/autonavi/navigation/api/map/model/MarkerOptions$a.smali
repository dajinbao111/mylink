.class Lcom/autonavi/navigation/api/map/model/MarkerOptions$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/navigation/api/map/model/MarkerOptions$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/navigation/api/map/model/MarkerOptions$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/map/model/MarkerOptions;
    .locals 3

    new-instance v1, Lcom/autonavi/navigation/api/map/model/MarkerOptions;

    invoke-direct {v1}, Lcom/autonavi/navigation/api/map/model/MarkerOptions;-><init>()V

    const-class v0, Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->position(Lcom/autonavi/navigation/api/map/model/LatLng;)Lcom/autonavi/navigation/api/map/model/MarkerOptions;

    const-class v0, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->icon(Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;)Lcom/autonavi/navigation/api/map/model/MarkerOptions;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/autonavi/navigation/api/map/model/MarkerOptions;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/autonavi/navigation/api/map/model/MarkerOptions;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->anchor(FF)Lcom/autonavi/navigation/api/map/model/MarkerOptions;

    const/4 v0, 0x2

    new-array v0, v0, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v2, 0x0

    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->visible(Z)Lcom/autonavi/navigation/api/map/model/MarkerOptions;

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->draggable(Z)Lcom/autonavi/navigation/api/map/model/MarkerOptions;

    return-object v1
.end method

.method public a(I)[Lcom/autonavi/navigation/api/map/model/MarkerOptions;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/map/model/MarkerOptions;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/map/model/MarkerOptions$a;->a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/map/model/MarkerOptions;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/map/model/MarkerOptions$a;->a(I)[Lcom/autonavi/navigation/api/map/model/MarkerOptions;

    move-result-object v0

    return-object v0
.end method
