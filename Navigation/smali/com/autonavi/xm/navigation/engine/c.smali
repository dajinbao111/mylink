.class public Lcom/autonavi/xm/navigation/engine/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/autonavi/xm/navigation/engine/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized a()Lcom/autonavi/xm/navigation/engine/c;
    .locals 2

    const-class v1, Lcom/autonavi/xm/navigation/engine/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/c;->a:Lcom/autonavi/xm/navigation/engine/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xm/navigation/engine/c;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/engine/c;-><init>()V

    sput-object v0, Lcom/autonavi/xm/navigation/engine/c;->a:Lcom/autonavi/xm/navigation/engine/c;

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/c;->a:Lcom/autonavi/xm/navigation/engine/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lcom/autonavi/xm/navigation/server/GCoord;[Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/MidDetourRegion;->a(Lcom/autonavi/xm/navigation/server/GCoord;[Z)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/MidDetourRegion;->a(Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a([II)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/MidDetourRegion;->a([II)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a([Lcom/autonavi/xm/navigation/server/guide/GDetourRegionList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/MidDetourRegion;->a([Lcom/autonavi/xm/navigation/server/guide/GDetourRegionList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/MidDetourRegion;->b(Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method