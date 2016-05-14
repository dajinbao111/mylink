.class Lcom/autonavi/xm/navi/menu/fragment/Simulation$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$1;->this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$1;->this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    # invokes: Lcom/autonavi/xm/navi/menu/fragment/Simulation;->startSimulation()V
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->access$2100(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)V

    return-void
.end method

.method public onGuiding(Lcom/autonavi/navigation/api/guide/model/GuideInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$1;->this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    iget-boolean v1, p1, Lcom/autonavi/navigation/api/guide/model/GuideInfo;->hasZoomView:Z

    # setter for: Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mIsZoomViewVisable:Z
    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->access$1402(Lcom/autonavi/xm/navi/menu/fragment/Simulation;Z)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$1;->this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    # invokes: Lcom/autonavi/xm/navi/menu/fragment/Simulation;->handleGuideInfoChanged(Lcom/autonavi/navigation/api/guide/model/GuideInfo;)V
    invoke-static {v0, p1}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->access$1500(Lcom/autonavi/xm/navi/menu/fragment/Simulation;Lcom/autonavi/navigation/api/guide/model/GuideInfo;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$1;->this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    # getter for: Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mGrpSimulationBar:Landroid/view/View;
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->access$1600(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$1;->this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    # invokes: Lcom/autonavi/xm/navi/menu/fragment/Simulation;->setStateButtonVisable(Lcom/autonavi/navigation/api/guide/model/GuideInfo;)V
    invoke-static {v0, p1}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->access$1700(Lcom/autonavi/xm/navi/menu/fragment/Simulation;Lcom/autonavi/navigation/api/guide/model/GuideInfo;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$1;->this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    iget-boolean v1, p1, Lcom/autonavi/navigation/api/guide/model/GuideInfo;->hasZoomView:Z

    # invokes: Lcom/autonavi/xm/navi/menu/fragment/Simulation;->handleZoomViewVisibilityChanged(Z)V
    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->access$1800(Lcom/autonavi/xm/navi/menu/fragment/Simulation;Z)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$1;->this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    # getter for: Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mTxtRoadName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->access$1900(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$1;->this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    # getter for: Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;
    invoke-static {v1}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->access$2000(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/map/AnMap;->getMyLocation()Lcom/autonavi/navigation/api/map/model/MyLocation;

    move-result-object v1

    iget-object v1, v1, Lcom/autonavi/navigation/api/map/model/MyLocation;->roadName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/base/util/TextUtil;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$1;->this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    const/4 v1, 0x0

    # setter for: Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mIsStop:Z
    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->access$102(Lcom/autonavi/xm/navi/menu/fragment/Simulation;Z)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$1;->this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    # getter for: Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mTgbToggleSimulation:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->access$300(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$1;->this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    # getter for: Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->access$1100(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->setFirst(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$1;->this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    # invokes: Lcom/autonavi/xm/navi/menu/fragment/Simulation;->handleGuidanceStarted()V
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->access$1200(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$1;->this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    # getter for: Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mBtnRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->access$1300(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public onStop()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$1;->this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    # setter for: Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mIsGuiding:Z
    invoke-static {v0, v2}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->access$002(Lcom/autonavi/xm/navi/menu/fragment/Simulation;Z)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$1;->this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    const/4 v1, 0x1

    # setter for: Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mIsStop:Z
    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->access$102(Lcom/autonavi/xm/navi/menu/fragment/Simulation;Z)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$1;->this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    # getter for: Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mBtnQuit:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->access$200(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$1;->this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    # getter for: Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mTgbToggleSimulation:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->access$300(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$1;->this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    # getter for: Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->access$400(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->gotoMyLocation()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$1;->this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    # getter for: Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->access$500(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)Lcom/autonavi/navigation/api/guide/GuideManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->getGuideInfo()Lcom/autonavi/navigation/api/guide/model/GuideInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$1;->this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    # invokes: Lcom/autonavi/xm/navi/menu/fragment/Simulation;->handleGuideInfoChanged(Lcom/autonavi/navigation/api/guide/model/GuideInfo;)V
    invoke-static {v1, v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->access$600(Lcom/autonavi/xm/navi/menu/fragment/Simulation;Lcom/autonavi/navigation/api/guide/model/GuideInfo;)V

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$1;->this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    iget-boolean v0, v0, Lcom/autonavi/navigation/api/guide/model/GuideInfo;->hasZoomView:Z

    # invokes: Lcom/autonavi/xm/navi/menu/fragment/Simulation;->handleZoomViewVisibilityChanged(Z)V
    invoke-static {v1, v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->access$700(Lcom/autonavi/xm/navi/menu/fragment/Simulation;Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$1;->this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    # getter for: Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mTxtRoadName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->access$800(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$1;->this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    # getter for: Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;
    invoke-static {v1}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->access$900(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/map/AnMap;->getMyLocation()Lcom/autonavi/navigation/api/map/model/MyLocation;

    move-result-object v1

    iget-object v1, v1, Lcom/autonavi/navigation/api/map/model/MyLocation;->roadName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/base/util/TextUtil;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$1;->this$0:Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    # getter for: Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mBtnRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->access$1000(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
