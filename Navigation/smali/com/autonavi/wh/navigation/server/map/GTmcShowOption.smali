.class public final enum Lcom/autonavi/wh/navigation/server/map/GTmcShowOption;
.super Ljava/lang/Enum;


# static fields
.field public static final enum GMAP_TMC_SHOW_CITY:Lcom/autonavi/wh/navigation/server/map/GTmcShowOption;

.field public static final enum GMAP_TMC_SHOW_ROUTE:Lcom/autonavi/wh/navigation/server/map/GTmcShowOption;

.field private static final synthetic a:[Lcom/autonavi/wh/navigation/server/map/GTmcShowOption;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/wh/navigation/server/map/GTmcShowOption;

    const-string v1, "GMAP_TMC_SHOW_CITY"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/wh/navigation/server/map/GTmcShowOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/map/GTmcShowOption;->GMAP_TMC_SHOW_CITY:Lcom/autonavi/wh/navigation/server/map/GTmcShowOption;

    new-instance v0, Lcom/autonavi/wh/navigation/server/map/GTmcShowOption;

    const-string v1, "GMAP_TMC_SHOW_ROUTE"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/wh/navigation/server/map/GTmcShowOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/map/GTmcShowOption;->GMAP_TMC_SHOW_ROUTE:Lcom/autonavi/wh/navigation/server/map/GTmcShowOption;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/autonavi/wh/navigation/server/map/GTmcShowOption;

    sget-object v1, Lcom/autonavi/wh/navigation/server/map/GTmcShowOption;->GMAP_TMC_SHOW_CITY:Lcom/autonavi/wh/navigation/server/map/GTmcShowOption;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/wh/navigation/server/map/GTmcShowOption;->GMAP_TMC_SHOW_ROUTE:Lcom/autonavi/wh/navigation/server/map/GTmcShowOption;

    aput-object v1, v0, v3

    sput-object v0, Lcom/autonavi/wh/navigation/server/map/GTmcShowOption;->a:[Lcom/autonavi/wh/navigation/server/map/GTmcShowOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/wh/navigation/server/map/GTmcShowOption;
    .locals 2

    invoke-static {}, Lcom/autonavi/wh/navigation/server/map/GTmcShowOption;->values()[Lcom/autonavi/wh/navigation/server/map/GTmcShowOption;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/map/GTmcShowOption;
    .locals 1

    const-class v0, Lcom/autonavi/wh/navigation/server/map/GTmcShowOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navigation/server/map/GTmcShowOption;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/wh/navigation/server/map/GTmcShowOption;
    .locals 1

    sget-object v0, Lcom/autonavi/wh/navigation/server/map/GTmcShowOption;->a:[Lcom/autonavi/wh/navigation/server/map/GTmcShowOption;

    invoke-virtual {v0}, [Lcom/autonavi/wh/navigation/server/map/GTmcShowOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/wh/navigation/server/map/GTmcShowOption;

    return-object v0
.end method
