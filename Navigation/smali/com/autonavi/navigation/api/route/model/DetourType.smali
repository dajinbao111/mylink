.class public final enum Lcom/autonavi/navigation/api/route/model/DetourType;
.super Ljava/lang/Enum;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final enum BRIDGE:Lcom/autonavi/navigation/api/route/model/DetourType;

.field public static final enum CHARGE:Lcom/autonavi/navigation/api/route/model/DetourType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final enum DEFAULT:Lcom/autonavi/navigation/api/route/model/DetourType;

.field public static final enum FERRY:Lcom/autonavi/navigation/api/route/model/DetourType;

.field public static final enum HIGHWAY:Lcom/autonavi/navigation/api/route/model/DetourType;

.field public static final MAX_DETOUR_TYPE_NUM:I = 0x7

.field public static final NAVI_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

.field public static final enum OVERHEAD:Lcom/autonavi/navigation/api/route/model/DetourType;

.field public static final enum TUNNEL:Lcom/autonavi/navigation/api/route/model/DetourType;

.field private static final synthetic a:[Lcom/autonavi/navigation/api/route/model/DetourType;


# instance fields
.field public final nativeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/autonavi/navigation/api/route/model/DetourType;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v4, v4}, Lcom/autonavi/navigation/api/route/model/DetourType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/DetourType;->DEFAULT:Lcom/autonavi/navigation/api/route/model/DetourType;

    new-instance v0, Lcom/autonavi/navigation/api/route/model/DetourType;

    const-string v1, "FERRY"

    invoke-direct {v0, v1, v5, v5}, Lcom/autonavi/navigation/api/route/model/DetourType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/DetourType;->FERRY:Lcom/autonavi/navigation/api/route/model/DetourType;

    new-instance v0, Lcom/autonavi/navigation/api/route/model/DetourType;

    const-string v1, "TUNNEL"

    invoke-direct {v0, v1, v6, v6}, Lcom/autonavi/navigation/api/route/model/DetourType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/DetourType;->TUNNEL:Lcom/autonavi/navigation/api/route/model/DetourType;

    new-instance v0, Lcom/autonavi/navigation/api/route/model/DetourType;

    const-string v1, "BRIDGE"

    invoke-direct {v0, v1, v8, v7}, Lcom/autonavi/navigation/api/route/model/DetourType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/DetourType;->BRIDGE:Lcom/autonavi/navigation/api/route/model/DetourType;

    new-instance v0, Lcom/autonavi/navigation/api/route/model/DetourType;

    const-string v1, "OVERHEAD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, Lcom/autonavi/navigation/api/route/model/DetourType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/DetourType;->OVERHEAD:Lcom/autonavi/navigation/api/route/model/DetourType;

    new-instance v0, Lcom/autonavi/navigation/api/route/model/DetourType;

    const-string v1, "HIGHWAY"

    const/4 v2, 0x5

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/navigation/api/route/model/DetourType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/DetourType;->HIGHWAY:Lcom/autonavi/navigation/api/route/model/DetourType;

    new-instance v0, Lcom/autonavi/navigation/api/route/model/DetourType;

    const-string v1, "CHARGE"

    const/4 v2, 0x6

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/navigation/api/route/model/DetourType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/DetourType;->CHARGE:Lcom/autonavi/navigation/api/route/model/DetourType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/autonavi/navigation/api/route/model/DetourType;

    sget-object v1, Lcom/autonavi/navigation/api/route/model/DetourType;->DEFAULT:Lcom/autonavi/navigation/api/route/model/DetourType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/navigation/api/route/model/DetourType;->FERRY:Lcom/autonavi/navigation/api/route/model/DetourType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/navigation/api/route/model/DetourType;->TUNNEL:Lcom/autonavi/navigation/api/route/model/DetourType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/autonavi/navigation/api/route/model/DetourType;->BRIDGE:Lcom/autonavi/navigation/api/route/model/DetourType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/autonavi/navigation/api/route/model/DetourType;->OVERHEAD:Lcom/autonavi/navigation/api/route/model/DetourType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/autonavi/navigation/api/route/model/DetourType;->HIGHWAY:Lcom/autonavi/navigation/api/route/model/DetourType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/autonavi/navigation/api/route/model/DetourType;->CHARGE:Lcom/autonavi/navigation/api/route/model/DetourType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/navigation/api/route/model/DetourType;->a:[Lcom/autonavi/navigation/api/route/model/DetourType;

    new-instance v0, Lcom/autonavi/navigation/api/route/model/DetourType$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/route/model/DetourType$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/DetourType;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/autonavi/navigation/api/route/model/DetourType$2;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/route/model/DetourType$2;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/DetourType;->NAVI_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/autonavi/navigation/api/route/model/DetourType;->nativeValue:I

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/navigation/api/route/model/DetourType;
    .locals 2

    invoke-static {}, Lcom/autonavi/navigation/api/route/model/DetourType;->values()[Lcom/autonavi/navigation/api/route/model/DetourType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/navigation/api/route/model/DetourType;
    .locals 1

    const-class v0, Lcom/autonavi/navigation/api/route/model/DetourType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/DetourType;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/navigation/api/route/model/DetourType;
    .locals 1

    sget-object v0, Lcom/autonavi/navigation/api/route/model/DetourType;->a:[Lcom/autonavi/navigation/api/route/model/DetourType;

    invoke-virtual {v0}, [Lcom/autonavi/navigation/api/route/model/DetourType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/navigation/api/route/model/DetourType;

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

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/route/model/DetourType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/route/model/DetourType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    return-void
.end method
