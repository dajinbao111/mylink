.class public final enum Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum POI_GATE_TYPE_ENTRANCE:Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;

.field public static final enum POI_GATE_TYPE_EXIT:Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;

.field public static final enum POI_GATE_TYPE_EXIT_ENTRANCE:Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;

.field private static final synthetic a:[Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;

    const-string v1, "POI_GATE_TYPE_EXIT"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;->POI_GATE_TYPE_EXIT:Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;

    const-string v1, "POI_GATE_TYPE_ENTRANCE"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;->POI_GATE_TYPE_ENTRANCE:Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;

    const-string v1, "POI_GATE_TYPE_EXIT_ENTRANCE"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;->POI_GATE_TYPE_EXIT_ENTRANCE:Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;->POI_GATE_TYPE_EXIT:Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;->POI_GATE_TYPE_ENTRANCE:Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;->POI_GATE_TYPE_EXIT_ENTRANCE:Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;->a:[Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;
    .locals 2

    invoke-static {}, Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;->values()[Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;->a:[Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/poi/GPoiGateType;

    return-object v0
.end method
