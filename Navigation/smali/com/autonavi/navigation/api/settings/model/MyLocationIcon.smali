.class public Lcom/autonavi/navigation/api/settings/model/MyLocationIcon;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public id:I

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/settings/model/MyLocationIcon$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/settings/model/MyLocationIcon$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/settings/model/MyLocationIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/navigation/api/settings/model/MyLocationIcon;->id:I

    iput-object p2, p0, Lcom/autonavi/navigation/api/settings/model/MyLocationIcon;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/autonavi/navigation/api/settings/model/MyLocationIcon;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/settings/model/MyLocationIcon;
    .locals 4

    new-instance v1, Lcom/autonavi/navigation/api/settings/model/MyLocationIcon;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3, v0}, Lcom/autonavi/navigation/api/settings/model/MyLocationIcon;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/settings/model/MyLocationIcon;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/model/MyLocationIcon;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/model/MyLocationIcon;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
