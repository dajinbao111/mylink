.class public final enum Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;
.super Ljava/lang/Enum;


# static fields
.field public static final enum GTRACK_RECORD_OPTION_NORMAL:Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;

.field public static final enum GTRACK_RECORD_OPTION_THICKNESS:Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;

.field public static final enum GTRACK_RECORD_OPTION_THINNESS:Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;

.field private static final synthetic a:[Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;

    const-string v1, "GTRACK_RECORD_OPTION_THICKNESS"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;->GTRACK_RECORD_OPTION_THICKNESS:Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;

    const-string v1, "GTRACK_RECORD_OPTION_NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;->GTRACK_RECORD_OPTION_NORMAL:Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;

    const-string v1, "GTRACK_RECORD_OPTION_THINNESS"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;->GTRACK_RECORD_OPTION_THINNESS:Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;->GTRACK_RECORD_OPTION_THICKNESS:Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;->GTRACK_RECORD_OPTION_NORMAL:Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;->GTRACK_RECORD_OPTION_THINNESS:Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;

    aput-object v1, v0, v4

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;->a:[Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;
    .locals 2

    invoke-static {}, Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;->values()[Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;->a:[Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/map/GTrackRecordOption;

    return-object v0
.end method
