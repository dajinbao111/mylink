.class public Lcom/autonavi/navigation/api/map/model/TrafficIncident;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;
.implements Lcom/autonavi/navigation/api/route/Detourable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;


# instance fields
.field public beginRoad:Ljava/lang/String;

.field public beginTime:J

.field public description:Ljava/lang/String;

.field public direction:I

.field public distance:I

.field public endRoad:Ljava/lang/String;

.field public endTime:J

.field public id:I

.field public location:Lcom/autonavi/navigation/api/map/model/LatLng;

.field public messageId:I

.field public objectId:Lcom/autonavi/navigation/api/internal/ObjectId;

.field public place:Ljava/lang/String;

.field public range:I

.field public roadId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/map/model/TrafficIncident$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/map/model/TrafficIncident$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/autonavi/navigation/api/map/model/TrafficIncident$2;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/map/model/TrafficIncident$2;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILcom/autonavi/navigation/api/map/model/LatLng;IIJJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/navigation/api/internal/ObjectId;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->id:I

    iput p2, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->messageId:I

    iput-object p3, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->location:Lcom/autonavi/navigation/api/map/model/LatLng;

    iput p4, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->roadId:I

    iput p5, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->direction:I

    iput-wide p6, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->beginTime:J

    iput-wide p8, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->endTime:J

    iput p10, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->range:I

    iput p11, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->distance:I

    iput-object p12, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->place:Ljava/lang/String;

    iput-object p13, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->beginRoad:Ljava/lang/String;

    iput-object p14, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->endRoad:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->description:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->objectId:Lcom/autonavi/navigation/api/internal/ObjectId;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/autonavi/navigation/api/map/model/TrafficIncident;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/autonavi/navigation/api/map/model/TrafficIncident;

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->id:I

    iget v1, p1, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->id:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->location:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget-object v1, p1, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->location:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->messageId:I

    iget v1, p1, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->messageId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->messageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->location:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->roadId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->direction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->beginTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->range:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->distance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->place:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->beginRoad:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->endRoad:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->objectId:Lcom/autonavi/navigation/api/internal/ObjectId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 2

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->id:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->messageId:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->location:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable;)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->roadId:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->direction:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->beginTime:J

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->endTime:J

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeLong(J)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->range:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->distance:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->place:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->beginRoad:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->endRoad:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->objectId:Lcom/autonavi/navigation/api/internal/ObjectId;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable;)V

    return-void
.end method
