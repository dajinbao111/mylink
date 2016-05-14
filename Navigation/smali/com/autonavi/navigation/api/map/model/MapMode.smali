.class public final enum Lcom/autonavi/navigation/api/map/model/MapMode;
.super Ljava/lang/Enum;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final enum MODE_3D:Lcom/autonavi/navigation/api/map/model/MapMode;

.field public static final enum MODE_CAR:Lcom/autonavi/navigation/api/map/model/MapMode;

.field public static final enum MODE_NORTH:Lcom/autonavi/navigation/api/map/model/MapMode;

.field private static final synthetic a:[Lcom/autonavi/navigation/api/map/model/MapMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/navigation/api/map/model/MapMode;

    const-string v1, "MODE_NORTH"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/navigation/api/map/model/MapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/MapMode;->MODE_NORTH:Lcom/autonavi/navigation/api/map/model/MapMode;

    new-instance v0, Lcom/autonavi/navigation/api/map/model/MapMode;

    const-string v1, "MODE_CAR"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/navigation/api/map/model/MapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/MapMode;->MODE_CAR:Lcom/autonavi/navigation/api/map/model/MapMode;

    new-instance v0, Lcom/autonavi/navigation/api/map/model/MapMode;

    const-string v1, "MODE_3D"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/navigation/api/map/model/MapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/MapMode;->MODE_3D:Lcom/autonavi/navigation/api/map/model/MapMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/autonavi/navigation/api/map/model/MapMode;

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapMode;->MODE_NORTH:Lcom/autonavi/navigation/api/map/model/MapMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapMode;->MODE_CAR:Lcom/autonavi/navigation/api/map/model/MapMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapMode;->MODE_3D:Lcom/autonavi/navigation/api/map/model/MapMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/autonavi/navigation/api/map/model/MapMode;->a:[Lcom/autonavi/navigation/api/map/model/MapMode;

    new-instance v0, Lcom/autonavi/navigation/api/map/model/MapMode$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/map/model/MapMode$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/MapMode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/navigation/api/map/model/MapMode;
    .locals 2

    invoke-static {}, Lcom/autonavi/navigation/api/map/model/MapMode;->values()[Lcom/autonavi/navigation/api/map/model/MapMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/navigation/api/map/model/MapMode;
    .locals 1

    const-class v0, Lcom/autonavi/navigation/api/map/model/MapMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/model/MapMode;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/navigation/api/map/model/MapMode;
    .locals 1

    sget-object v0, Lcom/autonavi/navigation/api/map/model/MapMode;->a:[Lcom/autonavi/navigation/api/map/model/MapMode;

    invoke-virtual {v0}, [Lcom/autonavi/navigation/api/map/model/MapMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/navigation/api/map/model/MapMode;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public next()Lcom/autonavi/navigation/api/map/model/MapMode;
    .locals 3

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/model/MapMode;->ordinal()I

    move-result v0

    invoke-static {}, Lcom/autonavi/navigation/api/map/model/MapMode;->values()[Lcom/autonavi/navigation/api/map/model/MapMode;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    array-length v2, v1

    rem-int/2addr v0, v2

    aget-object v0, v1, v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/model/MapMode;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
