.class final Lcom/autonavi/navigation/api/map/model/TrafficFlow$1;
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
.method public a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/map/model/TrafficFlow;
    .locals 5

    new-instance v1, Lcom/autonavi/navigation/api/map/model/TrafficFlow;

    invoke-direct {v1}, Lcom/autonavi/navigation/api/map/model/TrafficFlow;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->totalDistance:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->carIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->carDistanceFromStart:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-array v0, v2, [[I

    iput-object v0, v1, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->destDistanceFromStart:[[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, v1, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->destDistanceFromStart:[[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->trafficFlowItems:Ljava/util/List;

    sget-object v2, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-object v1
.end method

.method public a(I)[Lcom/autonavi/navigation/api/map/model/TrafficFlow;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/map/model/TrafficFlow;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/map/model/TrafficFlow$1;->a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/map/model/TrafficFlow;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/map/model/TrafficFlow$1;->a(I)[Lcom/autonavi/navigation/api/map/model/TrafficFlow;

    move-result-object v0

    return-object v0
.end method
