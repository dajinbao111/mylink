.class public final enum Lcom/autonavi/navigation/api/map/model/ZoomLevel;
.super Ljava/lang/Enum;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final CHINA:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

.field public static final CITY:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final MAX:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

.field public static final MIN:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

.field public static final PROVINCE:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

.field public static final STREET:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

.field public static final enum ZOOM_100_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

.field public static final enum ZOOM_100_M:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

.field public static final enum ZOOM_10_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

.field public static final enum ZOOM_15_M:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

.field public static final enum ZOOM_1_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

.field public static final enum ZOOM_200_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

.field public static final enum ZOOM_200_M:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

.field public static final enum ZOOM_20_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

.field public static final enum ZOOM_25_M:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

.field public static final enum ZOOM_2_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

.field public static final enum ZOOM_500_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

.field public static final enum ZOOM_500_M:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

.field public static final enum ZOOM_50_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

.field public static final enum ZOOM_50_M:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

.field public static final enum ZOOM_5_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

.field private static final a:[Lcom/autonavi/navigation/api/map/model/ZoomLevel;

.field private static final synthetic b:[Lcom/autonavi/navigation/api/map/model/ZoomLevel;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    const-string v1, "ZOOM_15_M"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v4, v2}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_15_M:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    new-instance v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    const-string v1, "ZOOM_25_M"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v5, v2}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_25_M:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    new-instance v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    const-string v1, "ZOOM_50_M"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v6, v2}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_50_M:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    new-instance v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    const-string v1, "ZOOM_100_M"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v7, v2}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_100_M:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    new-instance v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    const-string v1, "ZOOM_200_M"

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v8, v2}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_200_M:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    new-instance v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    const-string v1, "ZOOM_500_M"

    const/4 v2, 0x5

    const/16 v3, 0x1f4

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_500_M:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    new-instance v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    const-string v1, "ZOOM_1_KM"

    const/4 v2, 0x6

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_1_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    new-instance v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    const-string v1, "ZOOM_2_KM"

    const/4 v2, 0x7

    const/16 v3, 0x7d0

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_2_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    new-instance v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    const-string v1, "ZOOM_5_KM"

    const/16 v2, 0x8

    const/16 v3, 0x1388

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_5_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    new-instance v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    const-string v1, "ZOOM_10_KM"

    const/16 v2, 0x9

    const/16 v3, 0x2710

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_10_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    new-instance v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    const-string v1, "ZOOM_20_KM"

    const/16 v2, 0xa

    const/16 v3, 0x4e20

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_20_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    new-instance v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    const-string v1, "ZOOM_50_KM"

    const/16 v2, 0xb

    const v3, 0xc350

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_50_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    new-instance v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    const-string v1, "ZOOM_100_KM"

    const/16 v2, 0xc

    const v3, 0x186a0

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_100_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    new-instance v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    const-string v1, "ZOOM_200_KM"

    const/16 v2, 0xd

    const v3, 0x30d40

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_200_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    new-instance v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    const-string v1, "ZOOM_500_KM"

    const/16 v2, 0xe

    const v3, 0x7a120

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_500_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    sget-object v1, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_15_M:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_25_M:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_50_M:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_100_M:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    aput-object v1, v0, v7

    sget-object v1, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_200_M:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_500_M:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_1_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_2_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_5_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_10_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_20_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_50_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_100_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_200_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_500_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->b:[Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    sget-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_25_M:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    sput-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->MIN:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    sget-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_500_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    sput-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->MAX:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    sget-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_200_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    sput-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->CHINA:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    sget-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_50_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    sput-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->PROVINCE:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    sget-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_5_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    sput-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->CITY:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    sget-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_50_M:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    sput-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->STREET:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    invoke-static {}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->values()[Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    move-result-object v0

    sput-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->a:[Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    new-instance v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/map/model/ZoomLevel$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel$2;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/map/model/ZoomLevel$2;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->value:I

    return-void
.end method

.method public static final indexOf(I)I
    .locals 6

    const/4 v3, 0x0

    sget-object v4, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->a:[Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    move v1, v3

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    aget-object v5, v4, v2

    iget v5, v5, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->value:I

    sub-int/2addr v5, p0

    if-gez v5, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-lez v5, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    return v0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method public static final valueOf(I)Lcom/autonavi/navigation/api/map/model/ZoomLevel;
    .locals 5

    sget-object v2, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->a:[Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    const/4 v1, 0x0

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v3, v1, v0

    ushr-int/lit8 v3, v3, 0x1

    aget-object v4, v2, v3

    iget v4, v4, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->value:I

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/navigation/api/map/model/ZoomLevel;
    .locals 1

    const-class v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/navigation/api/map/model/ZoomLevel;
    .locals 1

    sget-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->b:[Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    invoke-virtual {v0}, [Lcom/autonavi/navigation/api/map/model/ZoomLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasNext()Z
    .locals 2

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->MAX:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 2

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->MIN:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/autonavi/navigation/api/map/model/ZoomLevel;
    .locals 4

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->value:I

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->values()[Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    move-result-object v1

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/autonavi/navigation/api/internal/a/b;->getMapManagerDelegate()Lcom/autonavi/navigation/api/map/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lcom/autonavi/navigation/api/map/internal/l;->m()Ljava/util/List;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->next()Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    aget-object p0, v1, v0

    goto :goto_0
.end method

.method public previous()Lcom/autonavi/navigation/api/map/model/ZoomLevel;
    .locals 4

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->value:I

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->values()[Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    move-result-object v1

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/autonavi/navigation/api/internal/a/b;->getMapManagerDelegate()Lcom/autonavi/navigation/api/map/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lcom/autonavi/navigation/api/map/internal/l;->m()Ljava/util/List;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->previous()Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    aget-object p0, v1, v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->value:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    return-void
.end method

.method public zoomIn()Lcom/autonavi/navigation/api/map/model/ZoomLevel;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->previous()Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    move-result-object v0

    return-object v0
.end method

.method public zoomOut()Lcom/autonavi/navigation/api/map/model/ZoomLevel;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->next()Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    move-result-object v0

    return-object v0
.end method
