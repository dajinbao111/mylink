.class public Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;


# instance fields
.field a:Lcom/autonavi/navigation/api/poi/model/PoiGateType;

.field b:I

.field c:I

.field d:Lcom/autonavi/navigation/api/map/model/LatLng;

.field e:Ljava/lang/String;

.field f:Landroid/graphics/Bitmap;

.field g:I

.field h:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo$2;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo$2;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIILcom/autonavi/navigation/api/map/model/LatLng;Ljava/lang/String;I[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/autonavi/navigation/api/poi/model/PoiGateType;->valueOf(I)Lcom/autonavi/navigation/api/poi/model/PoiGateType;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;->a:Lcom/autonavi/navigation/api/poi/model/PoiGateType;

    iput p2, p0, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;->b:I

    iput p3, p0, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;->c:I

    iput-object p4, p0, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;->d:Lcom/autonavi/navigation/api/map/model/LatLng;

    iput-object p5, p0, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;->e:Ljava/lang/String;

    iput p6, p0, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;->g:I

    iput-object p7, p0, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;->h:[B

    invoke-direct {p0, p6, p7}, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;->a(I[B)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;->f:Landroid/graphics/Bitmap;

    return-void
.end method

.method private a(I[B)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;->a:Lcom/autonavi/navigation/api/poi/model/PoiGateType;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/PoiGateType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;->d:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;->h:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;->a:Lcom/autonavi/navigation/api/poi/model/PoiGateType;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/PoiGateType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;->b:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;->c:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;->d:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;->g:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/PoiGateInfo;->h:[B

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeByteArray([B)V

    return-void
.end method
