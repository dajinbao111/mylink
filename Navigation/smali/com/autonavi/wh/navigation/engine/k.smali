.class public Lcom/autonavi/wh/navigation/engine/k;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/autonavi/wh/navigation/engine/k;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized a()Lcom/autonavi/wh/navigation/engine/k;
    .locals 2

    const-class v1, Lcom/autonavi/wh/navigation/engine/k;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/wh/navigation/engine/k;->a:Lcom/autonavi/wh/navigation/engine/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navigation/engine/k;

    invoke-direct {v0}, Lcom/autonavi/wh/navigation/engine/k;-><init>()V

    sput-object v0, Lcom/autonavi/wh/navigation/engine/k;->a:Lcom/autonavi/wh/navigation/engine/k;

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/engine/k;->a:Lcom/autonavi/wh/navigation/engine/k;
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
.method a(Landroid/os/Looper;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/navigation/server/safe/GSafeCategory;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/wh/navigation/engine/MidSafeInfo;->a(Lcom/autonavi/wh/navigation/server/safe/GSafeCategory;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/navigation/server/safe/GSafeCategory;[Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfoList;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/wh/navigation/engine/MidSafeInfo;->a(Lcom/autonavi/wh/navigation/server/safe/GSafeCategory;[Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfoList;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfo;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/wh/navigation/engine/MidSafeInfo;->a(Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfo;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a([II)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/wh/navigation/engine/MidSafeInfo;->a([II)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method b()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    return-object v0
.end method

.method public b(Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfo;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/wh/navigation/engine/MidSafeInfo;->b(Lcom/autonavi/wh/navigation/server/safe/GUserSafeInfo;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method
