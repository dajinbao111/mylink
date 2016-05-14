.class Lcom/autonavi/navigation/api/map/model/BitmapDescriptor$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/navigation/api/map/model/BitmapDescriptor$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;
    .locals 2

    new-instance v1, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;-><init>(Landroid/graphics/Bitmap;)V

    const-class v0, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;->a(Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;->a(Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;->b(Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;I)I

    return-object v1
.end method

.method public a(I)[Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor$a;->a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor$a;->a(I)[Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    move-result-object v0

    return-object v0
.end method
