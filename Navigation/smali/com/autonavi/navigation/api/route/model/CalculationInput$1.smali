.class final Lcom/autonavi/navigation/api/route/model/CalculationInput$1;
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
.method public a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/route/model/CalculationInput;
    .locals 3

    new-instance v1, Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-direct {v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;-><init>()V

    const-class v0, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-static {v1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->a(Lcom/autonavi/navigation/api/route/model/CalculationInput;Lcom/autonavi/navigation/api/route/model/RoutePoint;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-static {v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->a(Lcom/autonavi/navigation/api/route/model/CalculationInput;)Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/autonavi/navigation/api/route/model/RoutePoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    const-class v0, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-static {v1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->b(Lcom/autonavi/navigation/api/route/model/CalculationInput;Lcom/autonavi/navigation/api/route/model/RoutePoint;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-static {v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->b(Lcom/autonavi/navigation/api/route/model/CalculationInput;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-static {v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->c(Lcom/autonavi/navigation/api/route/model/CalculationInput;)Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/autonavi/navigation/api/route/model/CalculationRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-object v1
.end method

.method public a(I)[Lcom/autonavi/navigation/api/route/model/CalculationInput;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/route/model/CalculationInput;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/route/model/CalculationInput$1;->a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/route/model/CalculationInput$1;->a(I)[Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v0

    return-object v0
.end method
