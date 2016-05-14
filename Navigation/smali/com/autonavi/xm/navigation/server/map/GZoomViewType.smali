.class public final enum Lcom/autonavi/xm/navigation/server/map/GZoomViewType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum G_ZOOM_VIEW_TYPE_BITMAP:Lcom/autonavi/xm/navigation/server/map/GZoomViewType;

.field public static final enum G_ZOOM_VIEW_TYPE_REAL:Lcom/autonavi/xm/navigation/server/map/GZoomViewType;

.field public static final enum G_ZOOM_VIEW_TYPE_VECTOR:Lcom/autonavi/xm/navigation/server/map/GZoomViewType;

.field private static final synthetic a:[Lcom/autonavi/xm/navigation/server/map/GZoomViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GZoomViewType;

    const-string v1, "G_ZOOM_VIEW_TYPE_VECTOR"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/map/GZoomViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomViewType;->G_ZOOM_VIEW_TYPE_VECTOR:Lcom/autonavi/xm/navigation/server/map/GZoomViewType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GZoomViewType;

    const-string v1, "G_ZOOM_VIEW_TYPE_BITMAP"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/xm/navigation/server/map/GZoomViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomViewType;->G_ZOOM_VIEW_TYPE_BITMAP:Lcom/autonavi/xm/navigation/server/map/GZoomViewType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GZoomViewType;

    const-string v1, "G_ZOOM_VIEW_TYPE_REAL"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/xm/navigation/server/map/GZoomViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomViewType;->G_ZOOM_VIEW_TYPE_REAL:Lcom/autonavi/xm/navigation/server/map/GZoomViewType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/map/GZoomViewType;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GZoomViewType;->G_ZOOM_VIEW_TYPE_VECTOR:Lcom/autonavi/xm/navigation/server/map/GZoomViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GZoomViewType;->G_ZOOM_VIEW_TYPE_BITMAP:Lcom/autonavi/xm/navigation/server/map/GZoomViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GZoomViewType;->G_ZOOM_VIEW_TYPE_REAL:Lcom/autonavi/xm/navigation/server/map/GZoomViewType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomViewType;->a:[Lcom/autonavi/xm/navigation/server/map/GZoomViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/autonavi/xm/navigation/server/map/GZoomViewType;
    .locals 1

    if-lez p0, :cond_0

    invoke-static {}, Lcom/autonavi/xm/navigation/server/map/GZoomViewType;->values()[Lcom/autonavi/xm/navigation/server/map/GZoomViewType;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    invoke-static {}, Lcom/autonavi/xm/navigation/server/map/GZoomViewType;->values()[Lcom/autonavi/xm/navigation/server/map/GZoomViewType;

    move-result-object v0

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/map/GZoomViewType;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/map/GZoomViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/map/GZoomViewType;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/map/GZoomViewType;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomViewType;->a:[Lcom/autonavi/xm/navigation/server/map/GZoomViewType;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/map/GZoomViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/map/GZoomViewType;

    return-object v0
.end method
