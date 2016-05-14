.class public Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final FLAG_BEHIND:I = 0x1

.field public static final FLAG_CURRENT:I = 0x2

.field public static final FLAG_FRONT:I = 0x0

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

.field public static final TYPE_ENTRANCE:I = 0x0

.field public static final TYPE_EXIT:I = 0x1


# instance fields
.field public flag:I

.field public id:I

.field public latLng:Lcom/autonavi/navigation/api/map/model/LatLng;

.field public meshId:I

.field public meshRoadId:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo$2;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo$2;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIILcom/autonavi/navigation/api/map/model/LatLng;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->id:I

    iput p2, p0, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->meshId:I

    iput p3, p0, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->meshRoadId:I

    iput p4, p0, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->flag:I

    iput p5, p0, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->type:I

    iput-object p6, p0, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->latLng:Lcom/autonavi/navigation/api/map/model/LatLng;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->meshId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->meshRoadId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->flag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->latLng:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->id:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->meshId:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->meshRoadId:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->flag:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->type:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->latLng:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable;)V

    return-void
.end method
