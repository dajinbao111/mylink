.class public final enum Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;
.super Ljava/lang/Enum;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final enum HIGH:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

.field public static final enum JUMP:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

.field public static final enum LOW:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

.field public static final enum NORMAL:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

.field private static final a:[Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

.field private static final synthetic b:[Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    const-string v1, "LOW"

    const/16 v2, 0x50

    invoke-direct {v0, v1, v3, v2}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->LOW:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    new-instance v0, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    const-string v1, "NORMAL"

    const/16 v2, 0x78

    invoke-direct {v0, v1, v4, v2}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->NORMAL:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    new-instance v0, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    const-string v1, "HIGH"

    const/16 v2, 0xfa

    invoke-direct {v0, v1, v5, v2}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->HIGH:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    new-instance v0, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    const-string v1, "JUMP"

    const/16 v2, 0x1f4

    invoke-direct {v0, v1, v6, v2}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->JUMP:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    sget-object v1, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->LOW:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->NORMAL:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->HIGH:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->JUMP:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    aput-object v1, v0, v6

    sput-object v0, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->b:[Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    invoke-static {}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->values()[Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    move-result-object v0

    sput-object v0, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->a:[Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    new-instance v0, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->value:I

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;
    .locals 5

    sget-object v2, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->a:[Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    const/4 v1, 0x0

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v3, v1, v0

    ushr-int/lit8 v3, v3, 0x1

    aget-object v4, v2, v3

    iget v4, v4, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->value:I

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
    sget-object v0, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->NORMAL:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;
    .locals 1

    const-class v0, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;
    .locals 1

    sget-object v0, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->b:[Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    invoke-virtual {v0}, [Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

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

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->ordinal()I

    move-result v0

    sget-object v1, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->JUMP:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->ordinal()I

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

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->ordinal()I

    move-result v0

    sget-object v1, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->LOW:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;
    .locals 2

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->ordinal()I

    move-result v0

    invoke-static {}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->values()[Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    aget-object p0, v1, v0

    :cond_0
    return-object p0
.end method

.method public previous()Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;
    .locals 2

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->ordinal()I

    move-result v0

    invoke-static {}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->values()[Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    aget-object p0, v1, v0

    :cond_0
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
