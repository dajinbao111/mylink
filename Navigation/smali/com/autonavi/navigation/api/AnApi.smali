.class public Lcom/autonavi/navigation/api/AnApi;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/autonavi/navigation/api/AnApi;


# instance fields
.field private final b:Lcom/autonavi/navigation/api/internal/a/d;

.field private final c:Lcom/autonavi/navigation/api/register/a/b;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;

.field private g:Lcom/autonavi/navigation/api/settings/Settings;

.field private h:Lcom/autonavi/navigation/api/data/DataManager;

.field private i:Lcom/autonavi/navigation/api/demo/DemoManager;

.field private j:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

.field private k:Lcom/autonavi/navigation/api/route/RouteManager;

.field private l:Lcom/autonavi/navigation/api/guide/GuideManager;

.field private m:Lcom/autonavi/navigation/api/location/LocationManager;

.field private n:Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;

.field private o:Lcom/autonavi/navigation/api/poi/PoiManager;

.field private p:Lcom/autonavi/navigation/api/register/RegisterManager;

.field private q:Lcom/autonavi/navigation/api/safety/SafetyManager;

.field private r:Lcom/autonavi/navigation/api/track/TrackManager;

.field private s:Lcom/autonavi/navigation/api/route/DetourRegionManager;

.field private t:Lcom/autonavi/navigation/api/payment/a;

.field private u:Lcom/autonavi/navigation/api/AnApiInfo;

.field private final v:Lcom/autonavi/navigation/api/support/hardware/a/a$a;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/AnApi;->d:Z

    new-instance v0, Lcom/autonavi/navigation/api/AnApi$1;

    invoke-direct {v0, p0}, Lcom/autonavi/navigation/api/AnApi$1;-><init>(Lcom/autonavi/navigation/api/AnApi;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->v:Lcom/autonavi/navigation/api/support/hardware/a/a$a;

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getMainDelegate()Lcom/autonavi/navigation/api/internal/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->b:Lcom/autonavi/navigation/api/internal/a/d;

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getRegisterManagerDelegate()Lcom/autonavi/navigation/api/register/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->c:Lcom/autonavi/navigation/api/register/a/b;

    return-void
.end method

.method private a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/autonavi/navigation/api/AnApi;->a(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/AnApi;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AnApi startup failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/autonavi/navigation/api/internal/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->f:Landroid/content/Context;

    const-string v1, "settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "FACTORY_RESET"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/a/a;->a()Lcom/autonavi/navigation/api/internal/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/internal/a/a/a;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GconfigUser.dat"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "FACTORY_RESET"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private b()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/autonavi/navigation/api/AnApi;->c:Lcom/autonavi/navigation/api/register/a/b;

    invoke-interface {v1}, Lcom/autonavi/navigation/api/register/a/b;->c()Lcom/autonavi/navigation/api/register/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/autonavi/navigation/api/register/a/a;->a:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 4

    const/16 v3, 0x1005

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/a/a;->a()Lcom/autonavi/navigation/api/internal/a/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/AnApi;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/internal/a/a/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/autonavi/navigation/api/AnApi;->c:Lcom/autonavi/navigation/api/register/a/b;

    const-string v2, "1234567890123456"

    invoke-interface {v1, v2}, Lcom/autonavi/navigation/api/register/a/b;->b(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/autonavi/navigation/api/AnApi;->c:Lcom/autonavi/navigation/api/register/a/b;

    invoke-interface {v1}, Lcom/autonavi/navigation/api/register/a/b;->a()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/autonavi/navigation/api/internal/a/a/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/StartupException;

    invoke-direct {v0, v3}, Lcom/autonavi/navigation/api/StartupException;-><init>(I)V

    throw v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/autonavi/navigation/api/StartupException;

    invoke-direct {v0, v3}, Lcom/autonavi/navigation/api/StartupException;-><init>(I)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->c:Lcom/autonavi/navigation/api/register/a/b;

    const-string v2, "111111111111111111111111"

    invoke-interface {v0, v2}, Lcom/autonavi/navigation/api/register/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->c:Lcom/autonavi/navigation/api/register/a/b;

    const-string v2, "111111111111111111111111"

    invoke-interface {v0, v2, v1}, Lcom/autonavi/navigation/api/register/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/autonavi/navigation/api/StartupException;

    invoke-direct {v0, v3}, Lcom/autonavi/navigation/api/StartupException;-><init>(I)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->c:Lcom/autonavi/navigation/api/register/a/b;

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/AnApi;->getRegisterManager()Lcom/autonavi/navigation/api/register/RegisterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/register/RegisterManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/navigation/api/register/a/b;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->c:Lcom/autonavi/navigation/api/register/a/b;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/register/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/autonavi/navigation/api/StartupException;

    invoke-direct {v0, v3}, Lcom/autonavi/navigation/api/StartupException;-><init>(I)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/a/a;->a()Lcom/autonavi/navigation/api/internal/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/internal/a/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ReLoginCode.csv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_4
    return-void
.end method

.method private d()V
    .locals 5

    :try_start_0
    const-class v0, Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;

    const-string v1, "getMatchedAdapter"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/os/Looper;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/autonavi/navigation/api/AnApi;->f:Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;

    iput-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->n:Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;

    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->n:Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->n:Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;->isHeadlightsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;

    const-string v1, "setOnHeadlightsChangeListener"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/autonavi/navigation/api/support/hardware/a/a$a;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/autonavi/navigation/api/AnApi;->n:Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/autonavi/navigation/api/AnApi;->v:Lcom/autonavi/navigation/api/support/hardware/a/a$a;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->v:Lcom/autonavi/navigation/api/support/hardware/a/a$a;

    iget-object v1, p0, Lcom/autonavi/navigation/api/AnApi;->n:Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;->isHeadlightsTurnedOn()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/autonavi/navigation/api/support/hardware/a/a$a;->a(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->n:Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-class v0, Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;

    const-string v1, "unload"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/autonavi/navigation/api/AnApi;->n:Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->n:Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method private f()V
    .locals 3

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/AnApi;->getLocationManager()Lcom/autonavi/navigation/api/location/LocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->m:Lcom/autonavi/navigation/api/location/LocationManager;

    :try_start_0
    const-class v0, Lcom/autonavi/navigation/api/location/LocationManager;

    const-string v1, "start"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/autonavi/navigation/api/AnApi;->m:Lcom/autonavi/navigation/api/location/LocationManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->m:Lcom/autonavi/navigation/api/location/LocationManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-class v0, Lcom/autonavi/navigation/api/location/LocationManager;

    const-string v1, "stop"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/autonavi/navigation/api/AnApi;->m:Lcom/autonavi/navigation/api/location/LocationManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->m:Lcom/autonavi/navigation/api/location/LocationManager;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Lcom/autonavi/navigation/api/AnApi;
    .locals 2

    const-class v1, Lcom/autonavi/navigation/api/AnApi;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/navigation/api/AnApi;->a:Lcom/autonavi/navigation/api/AnApi;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/AnApi;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/AnApi;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/AnApi;->a:Lcom/autonavi/navigation/api/AnApi;

    :cond_0
    sget-object v0, Lcom/autonavi/navigation/api/AnApi;->a:Lcom/autonavi/navigation/api/AnApi;
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
.method public declared-synchronized getAnApiInfo()Lcom/autonavi/navigation/api/AnApiInfo;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->u:Lcom/autonavi/navigation/api/AnApiInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AnApi has not set data source yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/autonavi/navigation/api/AnApiInfo;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/AnApiInfo;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->u:Lcom/autonavi/navigation/api/AnApiInfo;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->u:Lcom/autonavi/navigation/api/AnApiInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getDataManager()Lcom/autonavi/navigation/api/data/DataManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->h:Lcom/autonavi/navigation/api/data/DataManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AnApi has not set data source yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    const-class v0, Lcom/autonavi/navigation/api/data/DataManager;

    invoke-static {v0}, Lcom/autonavi/navigation/api/internal/a/a/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/data/DataManager;

    iput-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->h:Lcom/autonavi/navigation/api/data/DataManager;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->h:Lcom/autonavi/navigation/api/data/DataManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getDataSource()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDemoManager()Lcom/autonavi/navigation/api/demo/DemoManager;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->i:Lcom/autonavi/navigation/api/demo/DemoManager;

    if-nez v0, :cond_0

    const-class v0, Lcom/autonavi/navigation/api/demo/DemoManager;

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/AnApi;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/demo/DemoManager;

    iput-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->i:Lcom/autonavi/navigation/api/demo/DemoManager;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->i:Lcom/autonavi/navigation/api/demo/DemoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDetourRegionManager()Lcom/autonavi/navigation/api/route/DetourRegionManager;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->s:Lcom/autonavi/navigation/api/route/DetourRegionManager;

    if-nez v0, :cond_0

    const-class v0, Lcom/autonavi/navigation/api/route/DetourRegionManager;

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/AnApi;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/DetourRegionManager;

    iput-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->s:Lcom/autonavi/navigation/api/route/DetourRegionManager;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->s:Lcom/autonavi/navigation/api/route/DetourRegionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFavoriteManager()Lcom/autonavi/navigation/api/favorite/FavoriteManager;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->j:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    if-nez v0, :cond_0

    const-class v0, Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/AnApi;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    iput-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->j:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->j:Lcom/autonavi/navigation/api/favorite/FavoriteManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGuideManager()Lcom/autonavi/navigation/api/guide/GuideManager;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->l:Lcom/autonavi/navigation/api/guide/GuideManager;

    if-nez v0, :cond_0

    const-class v0, Lcom/autonavi/navigation/api/guide/GuideManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/autonavi/navigation/api/AnApi;->f:Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/autonavi/navigation/api/AnApi;->a(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/guide/GuideManager;

    iput-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->l:Lcom/autonavi/navigation/api/guide/GuideManager;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->l:Lcom/autonavi/navigation/api/guide/GuideManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocationManager()Lcom/autonavi/navigation/api/location/LocationManager;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->m:Lcom/autonavi/navigation/api/location/LocationManager;

    if-nez v0, :cond_0

    const-class v0, Lcom/autonavi/navigation/api/location/LocationManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/autonavi/navigation/api/AnApi;->f:Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/autonavi/navigation/api/AnApi;->a(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/location/LocationManager;

    iput-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->m:Lcom/autonavi/navigation/api/location/LocationManager;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->m:Lcom/autonavi/navigation/api/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPaymentManager()Lcom/autonavi/navigation/api/payment/a;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->t:Lcom/autonavi/navigation/api/payment/a;

    if-nez v0, :cond_0

    const-class v0, Lcom/autonavi/navigation/api/payment/a;

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/AnApi;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/payment/a;

    iput-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->t:Lcom/autonavi/navigation/api/payment/a;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->t:Lcom/autonavi/navigation/api/payment/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPoiManager()Lcom/autonavi/navigation/api/poi/PoiManager;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->o:Lcom/autonavi/navigation/api/poi/PoiManager;

    if-nez v0, :cond_0

    const-class v0, Lcom/autonavi/navigation/api/poi/PoiManager;

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/AnApi;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/poi/PoiManager;

    iput-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->o:Lcom/autonavi/navigation/api/poi/PoiManager;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->o:Lcom/autonavi/navigation/api/poi/PoiManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRegisterManager()Lcom/autonavi/navigation/api/register/RegisterManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->p:Lcom/autonavi/navigation/api/register/RegisterManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AnApi has not set data source yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    const-class v0, Lcom/autonavi/navigation/api/register/RegisterManager;

    invoke-static {v0}, Lcom/autonavi/navigation/api/internal/a/a/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/register/RegisterManager;

    iput-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->p:Lcom/autonavi/navigation/api/register/RegisterManager;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->p:Lcom/autonavi/navigation/api/register/RegisterManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getRouteManager()Lcom/autonavi/navigation/api/route/RouteManager;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->k:Lcom/autonavi/navigation/api/route/RouteManager;

    if-nez v0, :cond_0

    const-class v0, Lcom/autonavi/navigation/api/route/RouteManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/autonavi/navigation/api/AnApi;->f:Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/autonavi/navigation/api/AnApi;->a(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/RouteManager;

    iput-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->k:Lcom/autonavi/navigation/api/route/RouteManager;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->k:Lcom/autonavi/navigation/api/route/RouteManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSafetyManager()Lcom/autonavi/navigation/api/safety/SafetyManager;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->q:Lcom/autonavi/navigation/api/safety/SafetyManager;

    if-nez v0, :cond_0

    const-class v0, Lcom/autonavi/navigation/api/safety/SafetyManager;

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/AnApi;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/safety/SafetyManager;

    iput-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->q:Lcom/autonavi/navigation/api/safety/SafetyManager;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->q:Lcom/autonavi/navigation/api/safety/SafetyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSettings()Lcom/autonavi/navigation/api/settings/Settings;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->g:Lcom/autonavi/navigation/api/settings/Settings;

    if-nez v0, :cond_0

    const-class v0, Lcom/autonavi/navigation/api/settings/Settings;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/autonavi/navigation/api/AnApi;->f:Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/autonavi/navigation/api/AnApi;->a(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/settings/Settings;

    iput-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->g:Lcom/autonavi/navigation/api/settings/Settings;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->g:Lcom/autonavi/navigation/api/settings/Settings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTrackManager()Lcom/autonavi/navigation/api/track/TrackManager;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->r:Lcom/autonavi/navigation/api/track/TrackManager;

    if-nez v0, :cond_0

    const-class v0, Lcom/autonavi/navigation/api/track/TrackManager;

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/AnApi;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/track/TrackManager;

    iput-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->r:Lcom/autonavi/navigation/api/track/TrackManager;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->r:Lcom/autonavi/navigation/api/track/TrackManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDataSource(Ljava/io/File;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "Gconfig.ini"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized isRunning()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/autonavi/navigation/api/AnApi;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDataSource(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "path cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/AnApi;->isDataSource(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a data source"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->f:Landroid/content/Context;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_3
    iput-object p2, p0, Lcom/autonavi/navigation/api/AnApi;->e:Ljava/lang/String;

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/a/a;->a()Lcom/autonavi/navigation/api/internal/a/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/AnApi;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/internal/a/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->b:Lcom/autonavi/navigation/api/internal/a/d;

    invoke-interface {v0, p2}, Lcom/autonavi/navigation/api/internal/a/d;->a(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/autonavi/navigation/api/AnApi;->b:Lcom/autonavi/navigation/api/internal/a/d;

    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    invoke-interface {v1, v0}, Lcom/autonavi/navigation/api/internal/a/d;->a(Landroid/app/Application;)Z

    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->b:Lcom/autonavi/navigation/api/internal/a/d;

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/a/a;->a()Lcom/autonavi/navigation/api/internal/a/a/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/autonavi/navigation/api/internal/a/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/navigation/api/internal/a/d;->b(Ljava/lang/String;)Z

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/AnApi;->f:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/autonavi/navigation/api/internal/a/b;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public declared-synchronized shutdown()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/autonavi/navigation/api/AnApi;->g()V

    invoke-direct {p0}, Lcom/autonavi/navigation/api/AnApi;->e()V

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/AnApi;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getMapManagerDelegate()Lcom/autonavi/navigation/api/map/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->e()Z

    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->b:Lcom/autonavi/navigation/api/internal/a/d;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/d;->b()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/AnApi;->d:Z

    :cond_0
    invoke-static {}, Lcom/autonavi/navigation/api/map/internal/f;->a()Lcom/autonavi/navigation/api/map/internal/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/internal/f;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startup()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DataSource has not been set yet,please set it at first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/autonavi/navigation/api/AnApi;->d:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/autonavi/navigation/api/AnApi;->a()V

    invoke-direct {p0}, Lcom/autonavi/navigation/api/AnApi;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/autonavi/navigation/api/AnApi;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi;->b:Lcom/autonavi/navigation/api/internal/a/d;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/d;->a()V
    :try_end_2
    .catch Lcom/autonavi/navigation/api/StartupException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/autonavi/navigation/api/AnApi;->d:Z

    invoke-direct {p0}, Lcom/autonavi/navigation/api/AnApi;->f()V

    invoke-direct {p0}, Lcom/autonavi/navigation/api/AnApi;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {p0}, Lcom/autonavi/navigation/api/AnApi;->shutdown()V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AnApi has been running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized startup(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/navigation/api/AnApi;->setDataSource(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/AnApi;->startup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
