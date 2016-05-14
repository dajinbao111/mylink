.class final Lcom/autonavi/navigation/api/route/model/CalculationInput$2;
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
.method public a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/route/model/CalculationInput;
    .locals 5

    new-instance v1, Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-direct {v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;-><init>()V

    sget-object v0, Lcom/autonavi/navigation/api/route/model/RoutePoint;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Lcom/autonavi/navigation/api/internal/NativeParcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-static {v1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->a(Lcom/autonavi/navigation/api/route/model/CalculationInput;Lcom/autonavi/navigation/api/route/model/RoutePoint;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-static {v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->a(Lcom/autonavi/navigation/api/route/model/CalculationInput;)Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/autonavi/navigation/api/route/model/RoutePoint;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    invoke-virtual {p1, v0, v2}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelableList(Ljava/util/List;Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Ljava/util/List;

    sget-object v0, Lcom/autonavi/navigation/api/route/model/RoutePoint;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Lcom/autonavi/navigation/api/internal/NativeParcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-static {v1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->b(Lcom/autonavi/navigation/api/route/model/CalculationInput;Lcom/autonavi/navigation/api/route/model/RoutePoint;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/autonavi/navigation/api/route/model/Road;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    invoke-virtual {p1, v0, v3}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelableList(Ljava/util/List;Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Ljava/util/List;

    sget-object v3, Lcom/autonavi/navigation/api/map/model/TrafficIncident;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    invoke-virtual {p1, v2, v3}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelableList(Ljava/util/List;Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Road;

    invoke-static {v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->b(Lcom/autonavi/navigation/api/route/model/CalculationInput;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;

    invoke-static {v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->b(Lcom/autonavi/navigation/api/route/model/CalculationInput;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->c(Lcom/autonavi/navigation/api/route/model/CalculationInput;)Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/autonavi/navigation/api/route/model/CalculationRule;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    invoke-virtual {p1, v0, v2}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelableList(Ljava/util/List;Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Ljava/util/List;

    return-object v1
.end method

.method public a(I)[Lcom/autonavi/navigation/api/route/model/CalculationInput;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/route/model/CalculationInput;

    return-object v0
.end method

.method public synthetic createFromParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/route/model/CalculationInput$2;->a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/route/model/CalculationInput$2;->a(I)[Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v0

    return-object v0
.end method
