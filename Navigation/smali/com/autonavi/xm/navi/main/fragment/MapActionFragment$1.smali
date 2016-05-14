.class Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$1;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$1;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.yftech.keyevent_navi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$1;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-static {v0}, Lcom/a/a/a;->c(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$1;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    const/4 v1, 0x1

    # invokes: Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->onMuteEnabled(Z)V
    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->access$000(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$1;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    const/4 v1, 0x0

    # invokes: Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->onMuteEnabled(Z)V
    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->access$000(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;Z)V

    goto :goto_0
.end method
