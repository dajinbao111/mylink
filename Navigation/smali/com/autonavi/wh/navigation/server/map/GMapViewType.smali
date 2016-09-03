.class public final enum Lcom/autonavi/wh/navigation/server/map/GMapViewType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum GMAP_VIEW_TYPE_AVOIDREGION:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

.field public static final enum GMAP_VIEW_TYPE_HIGHWAY_INOUT:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

.field public static final enum GMAP_VIEW_TYPE_MAIN:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

.field public static final enum GMAP_VIEW_TYPE_MANEUVER_POINT:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

.field public static final enum GMAP_VIEW_TYPE_MULTI:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

.field public static final enum GMAP_VIEW_TYPE_MULTIWHOLE:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

.field public static final enum GMAP_VIEW_TYPE_MULTI_DIFF:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

.field public static final enum GMAP_VIEW_TYPE_POI:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

.field public static final enum GMAP_VIEW_TYPE_ROUTE_TMC:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

.field public static final enum GMAP_VIEW_TYPE_SP:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

.field public static final enum GMAP_VIEW_TYPE_WHOLE:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

.field private static final a:[Lcom/autonavi/wh/navigation/server/map/GMapViewType;

.field private static final synthetic b:[Lcom/autonavi/wh/navigation/server/map/GMapViewType;


# instance fields
.field public final nativeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    const-string v1, "GMAP_VIEW_TYPE_MAIN"

    invoke-direct {v0, v1, v4, v4}, Lcom/autonavi/wh/navigation/server/map/GMapViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MAIN:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    new-instance v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    const-string v1, "GMAP_VIEW_TYPE_WHOLE"

    invoke-direct {v0, v1, v5, v5}, Lcom/autonavi/wh/navigation/server/map/GMapViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_WHOLE:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    new-instance v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    const-string v1, "GMAP_VIEW_TYPE_MULTI"

    invoke-direct {v0, v1, v6, v6}, Lcom/autonavi/wh/navigation/server/map/GMapViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MULTI:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    new-instance v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    const-string v1, "GMAP_VIEW_TYPE_MULTIWHOLE"

    invoke-direct {v0, v1, v7, v7}, Lcom/autonavi/wh/navigation/server/map/GMapViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MULTIWHOLE:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    new-instance v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    const-string v1, "GMAP_VIEW_TYPE_POI"

    invoke-direct {v0, v1, v8, v8}, Lcom/autonavi/wh/navigation/server/map/GMapViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_POI:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    new-instance v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    const-string v1, "GMAP_VIEW_TYPE_SP"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/map/GMapViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_SP:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    new-instance v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    const-string v1, "GMAP_VIEW_TYPE_MANEUVER_POINT"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/map/GMapViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MANEUVER_POINT:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    new-instance v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    const-string v1, "GMAP_VIEW_TYPE_ROUTE_TMC"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/map/GMapViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_ROUTE_TMC:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    new-instance v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    const-string v1, "GMAP_VIEW_TYPE_MULTI_DIFF"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/map/GMapViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MULTI_DIFF:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    new-instance v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    const-string v1, "GMAP_VIEW_TYPE_AVOIDREGION"

    const/16 v2, 0x9

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/map/GMapViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_AVOIDREGION:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    new-instance v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    const-string v1, "GMAP_VIEW_TYPE_HIGHWAY_INOUT"

    const/16 v2, 0xa

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/map/GMapViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_HIGHWAY_INOUT:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    sget-object v1, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MAIN:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_WHOLE:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MULTI:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MULTIWHOLE:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_POI:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_SP:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MANEUVER_POINT:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_ROUTE_TMC:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MULTI_DIFF:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_AVOIDREGION:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_HIGHWAY_INOUT:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->b:[Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    invoke-static {}, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->values()[Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    move-result-object v0

    sput-object v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->a:[Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->nativeValue:I

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/wh/navigation/server/map/GMapViewType;
    .locals 5

    sget-object v2, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->a:[Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    const/4 v1, 0x0

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v3, v1, v0

    ushr-int/lit8 v3, v3, 0x1

    aget-object v4, v2, v3

    iget v4, v4, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->nativeValue:I

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/map/GMapViewType;
    .locals 1

    const-class v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/wh/navigation/server/map/GMapViewType;
    .locals 1

    sget-object v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->b:[Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    invoke-virtual {v0}, [Lcom/autonavi/wh/navigation/server/map/GMapViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    return-object v0
.end method
