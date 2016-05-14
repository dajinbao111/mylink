.class final Lcom/autonavi/navigation/api/map/model/TrafficFlow$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/map/model/TrafficFlow;
    .locals 8

    const/4 v1, 0x0

    new-instance v2, Lcom/autonavi/navigation/api/map/model/TrafficFlow;

    invoke-direct {v2}, Lcom/autonavi/navigation/api/map/model/TrafficFlow;-><init>()V

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v0

    iput v0, v2, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->totalDistance:I

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v0

    iput v0, v2, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->carIndex:I

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v0

    iput v0, v2, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->carDistanceFromStart:I

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readIntArray()[I

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    array-length v0, v3

    div-int/lit8 v0, v0, 0x2

    const/4 v5, 0x2

    filled-new-array {v0, v5}, [I

    move-result-object v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, v2, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->destDistanceFromStart:[[I

    move v0, v1

    :goto_0
    div-int/lit8 v5, v4, 0x2

    if-ge v0, v5, :cond_0

    iget-object v5, v2, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->destDistanceFromStart:[[I

    aget-object v5, v5, v0

    mul-int/lit8 v6, v0, 0x2

    aget v6, v3, v6

    aput v6, v5, v1

    iget-object v5, v2, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->destDistanceFromStart:[[I

    aget-object v5, v5, v0

    const/4 v6, 0x1

    mul-int/lit8 v7, v0, 0x2

    add-int/lit8 v7, v7, 0x1

    aget v7, v3, v7

    aput v7, v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v2, Lcom/autonavi/navigation/api/map/model/TrafficFlow;->trafficFlowItems:Ljava/util/List;

    sget-object v1, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelableList(Ljava/util/List;Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Ljava/util/List;

    return-object v2
.end method

.method public a(I)[Lcom/autonavi/navigation/api/map/model/TrafficFlow;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/map/model/TrafficFlow;

    return-object v0
.end method

.method public synthetic createFromParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/map/model/TrafficFlow$2;->a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/map/model/TrafficFlow;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/map/model/TrafficFlow$2;->a(I)[Lcom/autonavi/navigation/api/map/model/TrafficFlow;

    move-result-object v0

    return-object v0
.end method
