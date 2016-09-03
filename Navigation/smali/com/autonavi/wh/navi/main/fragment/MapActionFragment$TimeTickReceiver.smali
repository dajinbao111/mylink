.class Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$TimeTickReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;


# direct methods
.method private constructor <init>(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$TimeTickReceiver;->this$0:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$TimeTickReceiver;-><init>(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
