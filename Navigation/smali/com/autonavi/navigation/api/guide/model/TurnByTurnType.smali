.class public final enum Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;
.super Ljava/lang/Enum;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final enum GUIDE_FOLLOWCUR_STREET:Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

.field public static final enum GUIDE_HONDA:Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

.field public static final enum GUIDE_NORMAL_GUIDANCE:Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

.field public static final enum GUIDE_PREFOLLOWING_GUIDANCE:Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

.field public static final enum GUIDE_PRENORMAL_GUIDANCE:Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

.field public static final enum GUIDE_SIMPLE_GUIDANCE:Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

.field private static final synthetic a:[Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

    const-string v1, "GUIDE_HONDA"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;->GUIDE_HONDA:Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

    new-instance v0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

    const-string v1, "GUIDE_NORMAL_GUIDANCE"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;->GUIDE_NORMAL_GUIDANCE:Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

    new-instance v0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

    const-string v1, "GUIDE_SIMPLE_GUIDANCE"

    invoke-direct {v0, v1, v5}, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;->GUIDE_SIMPLE_GUIDANCE:Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

    new-instance v0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

    const-string v1, "GUIDE_FOLLOWCUR_STREET"

    invoke-direct {v0, v1, v6}, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;->GUIDE_FOLLOWCUR_STREET:Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

    new-instance v0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

    const-string v1, "GUIDE_PRENORMAL_GUIDANCE"

    invoke-direct {v0, v1, v7}, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;->GUIDE_PRENORMAL_GUIDANCE:Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

    new-instance v0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

    const-string v1, "GUIDE_PREFOLLOWING_GUIDANCE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;->GUIDE_PREFOLLOWING_GUIDANCE:Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

    sget-object v1, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;->GUIDE_HONDA:Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;->GUIDE_NORMAL_GUIDANCE:Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;->GUIDE_SIMPLE_GUIDANCE:Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;->GUIDE_FOLLOWCUR_STREET:Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;->GUIDE_PRENORMAL_GUIDANCE:Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;->GUIDE_PREFOLLOWING_GUIDANCE:Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;->a:[Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

    new-instance v0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType$2;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType$2;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;
    .locals 2

    invoke-static {}, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;->values()[Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;
    .locals 1

    const-class v0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;
    .locals 1

    sget-object v0, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;->a:[Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

    invoke-virtual {v0}, [Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

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

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    return-void
.end method
