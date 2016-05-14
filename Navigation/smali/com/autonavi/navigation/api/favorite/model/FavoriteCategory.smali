.class public final enum Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;
.super Ljava/lang/Enum;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final enum COMPANY:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final enum CUSTOMER:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

.field public static final enum DEFAULT:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

.field public static final enum ENTERTAINMENT:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

.field public static final enum FRIEND:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

.field public static final enum HISTORY:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

.field public static final enum HOME:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

.field public static final enum SIGHT:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

.field private static final synthetic a:[Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->DEFAULT:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    new-instance v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->HOME:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    new-instance v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    const-string v1, "COMPANY"

    invoke-direct {v0, v1, v5}, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->COMPANY:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    new-instance v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    const-string v1, "SIGHT"

    invoke-direct {v0, v1, v6}, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->SIGHT:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    new-instance v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    const-string v1, "FRIEND"

    invoke-direct {v0, v1, v7}, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->FRIEND:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    new-instance v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    const-string v1, "CUSTOMER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->CUSTOMER:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    new-instance v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    const-string v1, "ENTERTAINMENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->ENTERTAINMENT:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    new-instance v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    const-string v1, "HISTORY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->HISTORY:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    sget-object v1, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->DEFAULT:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->HOME:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->COMPANY:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->SIGHT:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->FRIEND:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->CUSTOMER:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->ENTERTAINMENT:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->HISTORY:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->a:[Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    new-instance v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;
    .locals 2

    invoke-static {}, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->values()[Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;
    .locals 1

    const-class v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;
    .locals 1

    sget-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->a:[Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    invoke-virtual {v0}, [Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

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

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
