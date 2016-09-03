.class public Lcom/autonavi/wh/navi/main/util/ShutdownBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "Shut down this system, ShutdownBroadcastReceiver onReceive()"

    invoke-static {v0}, Lcom/autonavi/wh/navi/base/util/LogUtil;->d(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "========ShutdownBroadcastReceiver onReceive(), Do thing!"

    invoke-static {v0}, Lcom/autonavi/wh/navi/base/util/LogUtil;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->shutdown()V

    :cond_0
    return-void
.end method
