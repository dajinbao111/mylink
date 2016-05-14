.class public final enum Lcom/autonavi/navigation/api/safety/model/SafetyCategory;
.super Ljava/lang/Enum;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final enum GSAFE_CATEGORY_ALL:Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

.field public static final enum ILLEGAL_CAMERA:Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

.field public static final enum LANE_CAMERA:Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

.field public static final enum RESTRICTION_CAMERA:Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

.field public static final enum SPEEDLIMIT:Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

.field public static final enum SURVEILLANCE_CAMERA:Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

.field private static final synthetic a:[Lcom/autonavi/navigation/api/safety/model/SafetyCategory;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x1

    new-instance v0, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    const-string v1, "SPEEDLIMIT"

    invoke-direct {v0, v1, v7, v4}, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->SPEEDLIMIT:Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    new-instance v0, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    const-string v1, "RESTRICTION_CAMERA"

    invoke-direct {v0, v1, v4, v5}, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->RESTRICTION_CAMERA:Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    new-instance v0, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    const-string v1, "ILLEGAL_CAMERA"

    invoke-direct {v0, v1, v8, v6}, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->ILLEGAL_CAMERA:Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    new-instance v0, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    const-string v1, "SURVEILLANCE_CAMERA"

    const/4 v2, 0x3

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->SURVEILLANCE_CAMERA:Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    new-instance v0, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    const-string v1, "LANE_CAMERA"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v5, v2}, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->LANE_CAMERA:Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    new-instance v0, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    const-string v1, "GSAFE_CATEGORY_ALL"

    const/16 v2, 0x100

    invoke-direct {v0, v1, v6, v2}, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->GSAFE_CATEGORY_ALL:Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    sget-object v1, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->SPEEDLIMIT:Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    aput-object v1, v0, v7

    sget-object v1, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->RESTRICTION_CAMERA:Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->ILLEGAL_CAMERA:Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    aput-object v1, v0, v8

    const/4 v1, 0x3

    sget-object v2, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->SURVEILLANCE_CAMERA:Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    aput-object v2, v0, v1

    sget-object v1, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->LANE_CAMERA:Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->GSAFE_CATEGORY_ALL:Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    aput-object v1, v0, v6

    sput-object v0, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->a:[Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    new-instance v0, Lcom/autonavi/navigation/api/safety/model/SafetyCategory$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/safety/model/SafetyCategory$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/autonavi/navigation/api/safety/model/SafetyCategory$2;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/safety/model/SafetyCategory$2;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->value:I

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/navigation/api/safety/model/SafetyCategory;
    .locals 5

    invoke-static {}, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->values()[Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    move-result-object v2

    const/4 v1, 0x0

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v3, v1, v0

    ushr-int/lit8 v3, v3, 0x1

    aget-object v4, v2, v3

    iget v4, v4, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->value:I

    sub-int/2addr v4, p0

    if-gez v4, :cond_0

    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    :cond_0
    if-lez v4, :cond_1

    add-int/lit8 v0, v3, -0x1

    goto :goto_0

    :cond_1
    aget-object v0, v2, v3

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/navigation/api/safety/model/SafetyCategory;
    .locals 1

    const-class v0, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/navigation/api/safety/model/SafetyCategory;
    .locals 1

    sget-object v0, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->a:[Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    invoke-virtual {v0}, [Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

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

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    return-void
.end method
