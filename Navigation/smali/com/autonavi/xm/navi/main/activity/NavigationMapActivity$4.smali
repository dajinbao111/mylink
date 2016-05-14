.class Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity$4;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity$4;->this$0:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity$4;->this$0:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    # getter for: Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->mOpeningSplashLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->access$600(Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity$4;->this$0:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    # getter for: Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->mOpeningSplashLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->access$600(Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity$4;->this$0:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    # getter for: Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->mOpeningSplashLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->access$600(Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity$4;->this$0:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    # getter for: Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->mOpeningSplashLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->access$600(Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity$4;->this$0:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    # invokes: Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->inflateMapView()V
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->access$700(Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity$4;->this$0:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/AnApi;->getSettings()Lcom/autonavi/navigation/api/settings/Settings;

    move-result-object v1

    # setter for: Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;
    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->access$102(Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;Lcom/autonavi/navigation/api/settings/Settings;)Lcom/autonavi/navigation/api/settings/Settings;

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity$4;->this$0:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity$4;->this$0:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    # getter for: Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->mSavedInstanceState:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->access$800(Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->addViews(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity$4;->this$0:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    # invokes: Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->adjustLocale()V
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->access$400(Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity$4;->this$0:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    # invokes: Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->confirmConfiguration()V
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->access$500(Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity$4;->this$0:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->mApplication:Lcom/autonavi/xm/navi/base/application/T7LAApplication;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/application/T7LAApplication;->initPinYinPath()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity$4;->this$0:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const/4 v1, 0x0

    # setter for: Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->isInitializer:Z
    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->access$302(Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;Z)Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity$4;->this$0:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/xm/navi/register/activity/RegisterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity$4;->this$0:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v1, v0}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity$4;->this$0:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
