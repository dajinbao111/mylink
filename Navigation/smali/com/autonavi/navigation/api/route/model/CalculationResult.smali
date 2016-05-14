.class public final Lcom/autonavi/navigation/api/route/model/CalculationResult;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final CANCELED:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final FAILURE:I = -0x1

.field public static final INVALID_REQUEST:I = 0x6

.field public static final MAX_WAYPOINTS_EXCEEDED:I = 0x5

.field public static final MISSING_DATA:I = 0x4

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

.field public static final OUT_OF_RANGE_LOWER:I = 0x3

.field public static final OUT_OF_RANGE_UPPER:I = 0x2

.field public static final SUCCESS:I


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;

.field private final c:Z

.field private final d:[I

.field private final e:Lcom/autonavi/navigation/api/route/model/CalculationInput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/route/model/CalculationResult$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/route/model/CalculationResult$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/autonavi/navigation/api/route/model/CalculationResult$2;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/route/model/CalculationResult$2;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/navigation/api/route/model/CalculationResult;-><init>(ILjava/util/List;Z[ILcom/autonavi/navigation/api/route/model/CalculationInput;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/navigation/api/route/model/CalculationResult;-><init>(ILjava/util/List;Z[ILcom/autonavi/navigation/api/route/model/CalculationInput;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;Z[ILcom/autonavi/navigation/api/route/model/CalculationInput;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->a:I

    iput-object p2, p0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->b:Ljava/util/List;

    iput-boolean p3, p0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->c:Z

    iput-object p4, p0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->d:[I

    iput-object p5, p0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->e:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;[I)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/navigation/api/route/model/CalculationResult;-><init>(ILjava/util/List;Z[ILcom/autonavi/navigation/api/route/model/CalculationInput;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCalculationInput()Lcom/autonavi/navigation/api/route/model/CalculationInput;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->e:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    return-object v0
.end method

.method public getMissingAdminCodes()[I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->d:[I

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->a:I

    return v0
.end method

.method public getRoutes()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->b:Ljava/util/List;

    return-object v0
.end method

.method public hasMissingAdminCodes()Z
    .locals 2

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->d:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->d:[I

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRoutes()Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDetourSuccess()Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->d:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->d:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->d:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    :goto_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->e:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->a:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeList(Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->d:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->d:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->d:[I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeIntArray([I)V

    :goto_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationResult;->e:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    goto :goto_1
.end method
