.class Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity$2;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity$2;->this$0:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.yftech.keyevent_navi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity$2;->this$0:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-static {v0}, Lcom/a/a/a;->c(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity$2;->this$0:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    # getter for: Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;
    invoke-static {v1}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->access$100(Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;)Lcom/autonavi/navigation/api/settings/Settings;

    move-result-object v1

    const-string v2, "mute"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/navigation/api/settings/Settings;->putBoolean(Ljava/lang/String;Z)Z

    :goto_0
    iget-object v1, p0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity$2;->this$0:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    # getter for: Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;
    invoke-static {v1}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->access$100(Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;)Lcom/autonavi/navigation/api/settings/Settings;

    move-result-object v1

    const-string v2, "volume"

    invoke-static {v0}, Lcom/autonavi/xm/navi/main/util/VolumeUtil;->yfVolumeToNaviVolume(I)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/navigation/api/settings/Settings;->putInt(Ljava/lang/String;I)Z

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity$2;->this$0:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    # getter for: Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;
    invoke-static {v1}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->access$100(Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;)Lcom/autonavi/navigation/api/settings/Settings;

    move-result-object v1

    const-string v2, "mute"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/navigation/api/settings/Settings;->putBoolean(Ljava/lang/String;Z)Z

    goto :goto_0
.end method
