.class public abstract Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;
.super Ljava/lang/Object;


# static fields
.field public static final META_DATA_CAN_BUS_ADAPTER:Ljava/lang/String; = "meta_data.CAN_BUS_ADAPTER"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/autonavi/navigation/api/support/hardware/a/a$a;

.field private final c:Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter$a;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;->a:Landroid/content/Context;

    new-instance v0, Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter$a;

    invoke-direct {v0, p0, p2}, Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter$a;-><init>(Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;->c:Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter$a;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;)Lcom/autonavi/navigation/api/support/hardware/a/a$a;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;->b:Lcom/autonavi/navigation/api/support/hardware/a/a$a;

    return-object v0
.end method

.method static getMatchedAdapter(Landroid/content/Context;Landroid/os/Looper;)Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;
    .locals 5

    const/4 v1, 0x0

    const-string v0, "meta_data.CAN_BUS_ADAPTER"

    invoke-static {p0, v0}, Lcom/autonavi/navigation/api/support/hardware/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/navigation/api/support/hardware/a/b;->a(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/os/Looper;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;->a:Landroid/content/Context;

    return-object v0
.end method

.method public isHeadlightsAvailable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHeadlightsTurnedOn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected notifyHeadlightsChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;->c:Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter$a;

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected onUnload()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;->b:Lcom/autonavi/navigation/api/support/hardware/a/a$a;

    return-void
.end method

.method setOnHeadlightsChangeListener(Lcom/autonavi/navigation/api/support/hardware/a/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;->b:Lcom/autonavi/navigation/api/support/hardware/a/a$a;

    return-void
.end method

.method unload()V
    .locals 0

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/support/hardware/CanBusAdapter;->onUnload()V

    return-void
.end method
