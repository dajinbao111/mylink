.class public Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

.field private static final a:[I


# instance fields
.field public final adminCenter:Lcom/autonavi/navigation/api/map/model/LatLng;

.field public final adminCode:I

.field public final areaCode:I

.field public final cityName:Ljava/lang/String;

.field public final hasData:Z

.field public final provinceName:Ljava/lang/String;

.field public final townName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->a:[I

    new-instance v0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail$2;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail$2;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 4
        0x1adb0
        0x1d4c0
        0x4baf0
        0x7a120
        0xc5c10
        0xc8320
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/autonavi/navigation/api/map/model/LatLng;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->adminCode:I

    iput-object p2, p0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->provinceName:Ljava/lang/String;

    iput-object p3, p0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->cityName:Ljava/lang/String;

    iput-object p4, p0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->townName:Ljava/lang/String;

    iput p5, p0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->areaCode:I

    iput-object p6, p0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->adminCenter:Lcom/autonavi/navigation/api/map/model/LatLng;

    iput-boolean p7, p0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->hasData:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMunicipality()Z
    .locals 2

    sget-object v0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->a:[I

    iget v1, p0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->adminCode:I

    div-int/lit16 v1, v1, 0x2710

    mul-int/lit16 v1, v1, 0x2710

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->adminCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->provinceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->cityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->townName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->areaCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->adminCenter:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->hasData:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->adminCode:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->provinceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->cityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->townName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->areaCode:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->adminCenter:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable;)V

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->hasData:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
