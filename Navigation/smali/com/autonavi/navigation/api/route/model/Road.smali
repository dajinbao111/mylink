.class public Lcom/autonavi/navigation/api/route/model/Road;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;
.implements Lcom/autonavi/navigation/api/route/Detourable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;


# instance fields
.field public distance:I

.field public id:Lcom/autonavi/navigation/api/internal/ObjectId;

.field public location:Lcom/autonavi/navigation/api/map/model/LatLng;

.field public meshRoadId:I

.field public name:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/route/model/Road$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/route/model/Road$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/Road;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/autonavi/navigation/api/route/model/Road$2;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/route/model/Road$2;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/Road;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/navigation/api/internal/ObjectId;Ljava/lang/String;IILcom/autonavi/navigation/api/map/model/LatLng;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/navigation/api/route/model/Road;->id:Lcom/autonavi/navigation/api/internal/ObjectId;

    iput-object p2, p0, Lcom/autonavi/navigation/api/route/model/Road;->name:Ljava/lang/String;

    iput p3, p0, Lcom/autonavi/navigation/api/route/model/Road;->type:I

    iput p4, p0, Lcom/autonavi/navigation/api/route/model/Road;->meshRoadId:I

    iput-object p5, p0, Lcom/autonavi/navigation/api/route/model/Road;->location:Lcom/autonavi/navigation/api/map/model/LatLng;

    iput p6, p0, Lcom/autonavi/navigation/api/route/model/Road;->distance:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    check-cast p1, Lcom/autonavi/navigation/api/route/model/Road;

    iget-object v2, p0, Lcom/autonavi/navigation/api/route/model/Road;->id:Lcom/autonavi/navigation/api/internal/ObjectId;

    iget-object v3, p1, Lcom/autonavi/navigation/api/route/model/Road;->id:Lcom/autonavi/navigation/api/internal/ObjectId;

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/autonavi/navigation/api/route/model/Road;->meshRoadId:I

    iget v3, p1, Lcom/autonavi/navigation/api/route/model/Road;->meshRoadId:I

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/Road;->id:Lcom/autonavi/navigation/api/internal/ObjectId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/Road;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/Road;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/Road;->meshRoadId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/Road;->location:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/Road;->distance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/Road;->id:Lcom/autonavi/navigation/api/internal/ObjectId;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/Road;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/Road;->type:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/Road;->meshRoadId:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/Road;->location:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable;)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/Road;->distance:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    return-void
.end method
