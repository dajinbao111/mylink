.class final Lcom/autonavi/navigation/api/route/model/CalculationResult$2;
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
.method public a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/route/model/CalculationResult;
    .locals 6

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/autonavi/navigation/api/route/model/Route;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    invoke-virtual {p1, v2, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelableList(Ljava/util/List;Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Ljava/util/List;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v0

    if-ne v0, v3, :cond_1

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    new-array v0, v0, [I

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readIntArray()[I

    move-result-object v4

    :cond_0
    sget-object v0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Lcom/autonavi/navigation/api/internal/NativeParcelable;

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

.method public synthetic createFromParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/route/model/CalculationResult$2;->a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/route/model/CalculationResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/route/model/CalculationResult$2;->a(I)[Lcom/autonavi/navigation/api/route/model/CalculationResult;

    move-result-object v0

    return-object v0
.end method
