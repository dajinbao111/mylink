.class public final enum Lcom/autonavi/navigation/api/route/model/CalculationType;
.super Ljava/lang/Enum;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final enum CALCULATION_TYPE_CHANGE_HIGHWAY:Lcom/autonavi/navigation/api/route/model/CalculationType;

.field public static final enum CALCULATION_TYPE_DEFAULT:Lcom/autonavi/navigation/api/route/model/CalculationType;

.field public static final enum CALCULATION_TYPE_DETOUR:Lcom/autonavi/navigation/api/route/model/CalculationType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

.field private static final synthetic a:[Lcom/autonavi/navigation/api/route/model/CalculationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/navigation/api/route/model/CalculationType;

    const-string v1, "CALCULATION_TYPE_DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/navigation/api/route/model/CalculationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/CalculationType;->CALCULATION_TYPE_DEFAULT:Lcom/autonavi/navigation/api/route/model/CalculationType;

    new-instance v0, Lcom/autonavi/navigation/api/route/model/CalculationType;

    const-string v1, "CALCULATION_TYPE_DETOUR"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/navigation/api/route/model/CalculationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/CalculationType;->CALCULATION_TYPE_DETOUR:Lcom/autonavi/navigation/api/route/model/CalculationType;

    new-instance v0, Lcom/autonavi/navigation/api/route/model/CalculationType;

    const-string v1, "CALCULATION_TYPE_CHANGE_HIGHWAY"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/navigation/api/route/model/CalculationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/CalculationType;->CALCULATION_TYPE_CHANGE_HIGHWAY:Lcom/autonavi/navigation/api/route/model/CalculationType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/autonavi/navigation/api/route/model/CalculationType;

    sget-object v1, Lcom/autonavi/navigation/api/route/model/CalculationType;->CALCULATION_TYPE_DEFAULT:Lcom/autonavi/navigation/api/route/model/CalculationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/navigation/api/route/model/CalculationType;->CALCULATION_TYPE_DETOUR:Lcom/autonavi/navigation/api/route/model/CalculationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/navigation/api/route/model/CalculationType;->CALCULATION_TYPE_CHANGE_HIGHWAY:Lcom/autonavi/navigation/api/route/model/CalculationType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/autonavi/navigation/api/route/model/CalculationType;->a:[Lcom/autonavi/navigation/api/route/model/CalculationType;

    new-instance v0, Lcom/autonavi/navigation/api/route/model/CalculationType$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/route/model/CalculationType$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/CalculationType;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/autonavi/navigation/api/route/model/CalculationType$2;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/route/model/CalculationType$2;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/CalculationType;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/navigation/api/route/model/CalculationType;
    .locals 2

    invoke-static {}, Lcom/autonavi/navigation/api/route/model/CalculationType;->values()[Lcom/autonavi/navigation/api/route/model/CalculationType;

    move-result-object v0

    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/navigation/api/route/model/CalculationType;
    .locals 1

    const-class v0, Lcom/autonavi/navigation/api/route/model/CalculationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/CalculationType;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/navigation/api/route/model/CalculationType;
    .locals 1

    sget-object v0, Lcom/autonavi/navigation/api/route/model/CalculationType;->a:[Lcom/autonavi/navigation/api/route/model/CalculationType;

    invoke-virtual {v0}, [Lcom/autonavi/navigation/api/route/model/CalculationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/navigation/api/route/model/CalculationType;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/route/model/CalculationType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/route/model/CalculationType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    return-void
.end method
