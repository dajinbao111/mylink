.class public final enum Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum GROUTEPOI_TYPE_ALL:Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;

.field public static final enum GROUTEPOI_TYPE_CARPOS:Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;

.field public static final enum GROUTEPOI_TYPE_STARTPOINT:Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;

.field private static final synthetic a:[Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;


# instance fields
.field public final nativeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;

    const-string v1, "GROUTEPOI_TYPE_STARTPOINT"

    invoke-direct {v0, v1, v2, v2}, Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;->GROUTEPOI_TYPE_STARTPOINT:Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;

    new-instance v0, Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;

    const-string v1, "GROUTEPOI_TYPE_CARPOS"

    invoke-direct {v0, v1, v3, v3}, Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;->GROUTEPOI_TYPE_CARPOS:Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;

    new-instance v0, Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;

    const-string v1, "GROUTEPOI_TYPE_ALL"

    invoke-direct {v0, v1, v4, v4}, Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;->GROUTEPOI_TYPE_ALL:Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;

    sget-object v1, Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;->GROUTEPOI_TYPE_STARTPOINT:Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;->GROUTEPOI_TYPE_CARPOS:Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;->GROUTEPOI_TYPE_ALL:Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;->a:[Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;->nativeValue:I

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;
    .locals 5

    invoke-static {}, Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;->values()[Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;

    move-result-object v2

    const/4 v1, 0x0

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v3, v1, v0

    ushr-int/lit8 v3, v3, 0x1

    aget-object v4, v2, v3

    iget v4, v4, Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;->nativeValue:I

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;
    .locals 1

    const-class v0, Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;
    .locals 1

    sget-object v0, Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;->a:[Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;

    invoke-virtual {v0}, [Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/wh/navigation/server/poi/GRoutePoiType;

    return-object v0
.end method
