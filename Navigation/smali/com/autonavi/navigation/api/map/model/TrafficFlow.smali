.class public Lcom/autonavi/navigation/api/map/model/TrafficFlow;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;


# instance fields
.field public carDistanceFromStart:I

.field public carIndex:I

.field public destDistanceFromStart:[[I

.field public totalDistance:I

.field public trafficFlowItems:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/map/model/TrafficFlow$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/map/model/TrafficFlow$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/autonavi/navigation/api/map/model/TrafficFlow$2;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/map/model/TrafficFlow$2;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->trafficFlowItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->totalDistance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->carIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->carDistanceFromStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->destDistanceFromStart:[[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->destDistanceFromStart:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->destDistanceFromStart:[[I

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->trafficFlowItems:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 2

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->totalDistance:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->carIndex:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->carDistanceFromStart:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->destDistanceFromStart:[[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->destDistanceFromStart:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->destDistanceFromStart:[[I

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeIntArray([I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->trafficFlowItems:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelableList(Ljava/util/List;)V

    return-void
.end method
