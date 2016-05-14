.class final Lcom/autonavi/navigation/api/data/model/AdminArea$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/data/model/AdminArea;
    .locals 5

    new-instance v0, Lcom/autonavi/navigation/api/data/model/AdminArea;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/autonavi/navigation/api/data/model/AdminArea;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/autonavi/navigation/api/data/model/AdminArea;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public a(I)[Lcom/autonavi/navigation/api/data/model/AdminArea;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/data/model/AdminArea;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/data/model/AdminArea$1;->a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/data/model/AdminArea;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/data/model/AdminArea$1;->a(I)[Lcom/autonavi/navigation/api/data/model/AdminArea;

    move-result-object v0

    return-object v0
.end method
