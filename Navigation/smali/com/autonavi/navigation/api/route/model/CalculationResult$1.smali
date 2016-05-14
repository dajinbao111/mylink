.class final Lcom/autonavi/navigation/api/route/model/CalculationResult$1;
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
.method public a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/route/model/CalculationResult;
    .locals 6

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-class v0, Lcom/autonavi/navigation/api/route/model/CalculationResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v3, :cond_1

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    new-array v4, v0, [I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_0
    const-class v0, Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/autonavi/navigation/api/route/model/CalculationInput;

    new-instance v0, Lcom/autonavi/navigation/api/route/model/CalculationResult;

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/navigation/api/route/model/CalculationResult;-><init>(ILjava/util/List;Z[ILcom/autonavi/navigation/api/route/model/CalculationInput;)V

    return-object v0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public a(I)[Lcom/autonavi/navigation/api/route/model/CalculationResult;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/route/model/CalculationResult;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/route/model/CalculationResult$1;->a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/route/model/CalculationResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/route/model/CalculationResult$1;->a(I)[Lcom/autonavi/navigation/api/route/model/CalculationResult;

    move-result-object v0

    return-object v0
.end method
