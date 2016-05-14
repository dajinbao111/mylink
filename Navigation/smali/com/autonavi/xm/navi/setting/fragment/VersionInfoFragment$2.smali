.class Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/gesture/GestureOverlayView$OnGestureListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment$2;->this$0:Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGesture(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onGestureCancelled(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onGestureEnded(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/gesture/GestureOverlayView;->getGesture()Landroid/gesture/Gesture;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment$2;->this$0:Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;

    # getter for: Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mGestureLib:Landroid/gesture/GestureLibrary;
    invoke-static {v1}, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->access$100(Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;)Landroid/gesture/GestureLibrary;

    move-result-object v1

    invoke-virtual {v1}, Landroid/gesture/GestureLibrary;->load()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment$2;->this$0:Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;

    # getter for: Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mGestureLib:Landroid/gesture/GestureLibrary;
    invoke-static {v1}, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->access$100(Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;)Landroid/gesture/GestureLibrary;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gesture/Prediction;

    iget-wide v1, v0, Landroid/gesture/Prediction;->score:D

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    iget-object v0, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    const-string v1, "factory_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment$2;->this$0:Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment$2;->this$0:Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;

    # getter for: Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;
    invoke-static {v2}, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->access$200(Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;)Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    move-result-object v2

    const-class v3, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->startFragment(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onGestureStarted(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
