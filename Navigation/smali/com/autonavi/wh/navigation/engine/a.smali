.class public Lcom/autonavi/wh/navigation/engine/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/autonavi/wh/navigation/engine/a;


# instance fields
.field private b:Landroid/app/Application;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized a()Lcom/autonavi/wh/navigation/engine/a;
    .locals 2

    const-class v1, Lcom/autonavi/wh/navigation/engine/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/wh/navigation/engine/a;->a:Lcom/autonavi/wh/navigation/engine/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navigation/engine/a;

    invoke-direct {v0}, Lcom/autonavi/wh/navigation/engine/a;-><init>()V

    sput-object v0, Lcom/autonavi/wh/navigation/engine/a;->a:Lcom/autonavi/wh/navigation/engine/a;

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/engine/a;->a:Lcom/autonavi/wh/navigation/engine/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/wh/navigation/engine/a;->b:Landroid/app/Application;

    const-string v2, "config"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    invoke-static {}, Lcom/autonavi/wh/navigation/engine/g;->a()Lcom/autonavi/wh/navigation/engine/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/g;->e()Lcom/autonavi/wh/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/f;->a()Lcom/autonavi/wh/navigation/engine/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/wh/navigation/engine/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->a(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(I[Lcom/autonavi/wh/navigation/server/map/GBitmap;[Lcom/autonavi/wh/navigation/server/map/GBitmap;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->a(I[Lcom/autonavi/wh/navigation/server/map/GBitmap;[Lcom/autonavi/wh/navigation/server/map/GBitmap;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/app/Application;Landroid/os/Looper;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    iput-object p1, p0, Lcom/autonavi/wh/navigation/engine/a;->b:Landroid/app/Application;

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/navigation/server/GParam;I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 2

    invoke-static {p1, p2}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->a(Lcom/autonavi/wh/navigation/server/GParam;I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/autonavi/wh/navigation/engine/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/navigation/server/GParam;Lcom/autonavi/wh/navigation/server/GCoord;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->a(Lcom/autonavi/wh/navigation/server/GParam;Lcom/autonavi/wh/navigation/server/GCoord;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/autonavi/wh/navigation/engine/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/navigation/server/GParam;Lcom/autonavi/wh/navigation/server/GRect;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->a(Lcom/autonavi/wh/navigation/server/GParam;Lcom/autonavi/wh/navigation/server/GRect;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/autonavi/wh/navigation/engine/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/navigation/server/GParam;Lcom/autonavi/wh/navigation/server/GSize;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->a(Lcom/autonavi/wh/navigation/server/GParam;Lcom/autonavi/wh/navigation/server/GSize;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/autonavi/wh/navigation/engine/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/navigation/server/GParam;Z)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 2

    invoke-static {p1, p2}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->a(Lcom/autonavi/wh/navigation/server/GParam;Z)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/autonavi/wh/navigation/engine/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/navigation/server/GParam;[I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->a(Lcom/autonavi/wh/navigation/server/GParam;[I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/navigation/server/GParam;[Lcom/autonavi/wh/navigation/server/GCoord;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->a(Lcom/autonavi/wh/navigation/server/GParam;[Lcom/autonavi/wh/navigation/server/GCoord;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/navigation/server/GParam;[Lcom/autonavi/wh/navigation/server/GRect;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->a(Lcom/autonavi/wh/navigation/server/GParam;[Lcom/autonavi/wh/navigation/server/GRect;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/navigation/server/GParam;[Lcom/autonavi/wh/navigation/server/GSize;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->a(Lcom/autonavi/wh/navigation/server/GParam;[Lcom/autonavi/wh/navigation/server/GSize;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/navigation/server/GParam;[Z)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->a(Lcom/autonavi/wh/navigation/server/GParam;[Z)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->a(Z)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Z[Lcom/autonavi/wh/navigation/server/map/GPaletteList;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->a(Z[Lcom/autonavi/wh/navigation/server/map/GPaletteList;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a([Lcom/autonavi/wh/navigation/server/config/GRegConfig;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/f;->a()Lcom/autonavi/wh/navigation/engine/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/f;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->a(Ljava/lang/String;[Lcom/autonavi/wh/navigation/server/config/GRegConfig;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/autonavi/wh/navigation/server/GParam;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Z

    aput-boolean v1, v0, v1

    invoke-static {p1, v0}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->a(Lcom/autonavi/wh/navigation/server/GParam;[Z)Lcom/autonavi/wh/navigation/server/GStatus;

    aget-boolean v0, v0, v1

    return v0
.end method

.method b()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    return-object v0
.end method

.method public c()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->a()Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method
