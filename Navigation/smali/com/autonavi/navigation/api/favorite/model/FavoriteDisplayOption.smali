.class public final enum Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;
.super Ljava/lang/Enum;


# static fields
.field public static final enum GFAVORITE_SHOW_ALL:Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

.field public static final enum GFAVORITE_SHOW_COMPANY:Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

.field public static final enum GFAVORITE_SHOW_CUSTOMER:Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

.field public static final enum GFAVORITE_SHOW_DEFAULT:Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

.field public static final enum GFAVORITE_SHOW_ENTERTAINMENT:Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

.field public static final enum GFAVORITE_SHOW_FRIEND:Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

.field public static final enum GFAVORITE_SHOW_HISTORY:Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

.field public static final enum GFAVORITE_SHOW_HOME:Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

.field public static final enum GFAVORITE_SHOW_SIGHT:Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

.field private static final synthetic a:[Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    const-string v1, "GFAVORITE_SHOW_DEFAULT"

    invoke-direct {v0, v1, v8, v4}, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;->GFAVORITE_SHOW_DEFAULT:Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    new-instance v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    const-string v1, "GFAVORITE_SHOW_HOME"

    invoke-direct {v0, v1, v4, v5}, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;->GFAVORITE_SHOW_HOME:Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    new-instance v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    const-string v1, "GFAVORITE_SHOW_COMPANY"

    invoke-direct {v0, v1, v5, v6}, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;->GFAVORITE_SHOW_COMPANY:Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    new-instance v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    const-string v1, "GFAVORITE_SHOW_SIGHT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v7}, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;->GFAVORITE_SHOW_SIGHT:Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    new-instance v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    const-string v1, "GFAVORITE_SHOW_FRIEND"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v6, v2}, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;->GFAVORITE_SHOW_FRIEND:Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    new-instance v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    const-string v1, "GFAVORITE_SHOW_CUSTOMER"

    const/4 v2, 0x5

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;->GFAVORITE_SHOW_CUSTOMER:Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    new-instance v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    const-string v1, "GFAVORITE_SHOW_ENTERTAINMENT"

    const/4 v2, 0x6

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;->GFAVORITE_SHOW_ENTERTAINMENT:Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    new-instance v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    const-string v1, "GFAVORITE_SHOW_HISTORY"

    const/4 v2, 0x7

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;->GFAVORITE_SHOW_HISTORY:Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    new-instance v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    const-string v1, "GFAVORITE_SHOW_ALL"

    const/16 v2, 0xff

    invoke-direct {v0, v1, v7, v2}, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;->GFAVORITE_SHOW_ALL:Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    sget-object v1, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;->GFAVORITE_SHOW_DEFAULT:Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    aput-object v1, v0, v8

    sget-object v1, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;->GFAVORITE_SHOW_HOME:Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;->GFAVORITE_SHOW_COMPANY:Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    sget-object v2, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;->GFAVORITE_SHOW_SIGHT:Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    aput-object v2, v0, v1

    sget-object v1, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;->GFAVORITE_SHOW_FRIEND:Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;->GFAVORITE_SHOW_CUSTOMER:Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;->GFAVORITE_SHOW_ENTERTAINMENT:Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;->GFAVORITE_SHOW_HISTORY:Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    aput-object v2, v0, v1

    sget-object v1, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;->GFAVORITE_SHOW_ALL:Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    aput-object v1, v0, v7

    sput-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;->a:[Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;
    .locals 1

    const-class v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;
    .locals 1

    sget-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;->a:[Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    invoke-virtual {v0}, [Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/navigation/api/favorite/model/FavoriteDisplayOption;

    return-object v0
.end method
