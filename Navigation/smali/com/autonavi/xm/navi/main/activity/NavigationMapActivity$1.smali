.class Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity$1;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity$1;->this$0:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.autonavi.xm.extra.QUIT_APPLICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity$1;->this$0:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const/4 v1, 0x1

    # setter for: Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->mIsQuitting:Z
    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->access$002(Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;Z)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity$1;->this$0:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->finish()V

    :cond_0
    return-void
.end method
