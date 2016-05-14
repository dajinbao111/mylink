.class final Lcom/autonavi/navigation/api/settings/model/Size$1;
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
.method public a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/settings/model/Size;
    .locals 3

    new-instance v0, Lcom/autonavi/navigation/api/settings/model/Size;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/autonavi/navigation/api/settings/model/Size;-><init>(II)V

    return-object v0
.end method

.method public a(I)[Lcom/autonavi/navigation/api/settings/model/Size;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/settings/model/Size;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/settings/model/Size$1;->a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/settings/model/Size;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/settings/model/Size$1;->a(I)[Lcom/autonavi/navigation/api/settings/model/Size;

    move-result-object v0

    return-object v0
.end method
