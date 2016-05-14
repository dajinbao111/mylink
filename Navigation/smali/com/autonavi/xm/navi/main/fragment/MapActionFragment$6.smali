.class Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/map/AnMap$OnCameraChangeListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$6;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChange(Lcom/autonavi/navigation/api/map/model/CameraPosition;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$6;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    # invokes: Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->isOnTop()Z
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->access$1100(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$6;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    iget-object v1, p1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->mode:Lcom/autonavi/navigation/api/map/model/MapMode;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->handleViewModeChanged(Lcom/autonavi/navigation/api/map/model/MapMode;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$6;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    iget-object v1, p1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->zoom:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->handleZoomLevelChanged(Lcom/autonavi/navigation/api/map/model/ZoomLevel;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$6;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    # getter for: Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mCurCameraPosition:Lcom/autonavi/navigation/api/map/model/CameraPosition;
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->access$700(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;)Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->target:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget v0, v0, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    iget-object v1, p1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->target:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget v1, v1, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$6;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    # getter for: Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mCurCameraPosition:Lcom/autonavi/navigation/api/map/model/CameraPosition;
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->access$700(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;)Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->target:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget v0, v0, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    iget-object v1, p1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->target:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget v1, v1, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$6;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    iget-boolean v0, v0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mIsFling:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$6;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$6;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    iget-object v1, v1, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/map/AnMap;->getMapCursorInfo()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v1

    # invokes: Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->handleMapCursorChanged(Lcom/autonavi/navigation/api/map/model/MapCursorInfo;)V
    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->access$1200(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;Lcom/autonavi/navigation/api/map/model/MapCursorInfo;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$6;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$6;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    iget-object v1, v1, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/map/AnMap;->getMyLocation()Lcom/autonavi/navigation/api/map/model/MyLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->handleMyLocationChanged(Lcom/autonavi/navigation/api/map/model/MyLocation;)V

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$6;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    # getter for: Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mCurCameraPosition:Lcom/autonavi/navigation/api/map/model/CameraPosition;
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->access$700(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;)Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$6;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    # getter for: Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mCurCameraPosition:Lcom/autonavi/navigation/api/map/model/CameraPosition;
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->access$700(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;)Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->zoom:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    iget-object v1, p1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->zoom:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$6;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/settings/Settings;->save()Z

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$6;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    # getter for: Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mCurCameraPosition:Lcom/autonavi/navigation/api/map/model/CameraPosition;
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->access$700(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;)Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->mode:Lcom/autonavi/navigation/api/map/model/MapMode;

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapMode;->MODE_3D:Lcom/autonavi/navigation/api/map/model/MapMode;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$6;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    # getter for: Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mCurCameraPosition:Lcom/autonavi/navigation/api/map/model/CameraPosition;
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->access$700(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;)Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->tilt:I

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$6;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    # getter for: Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mCurCameraPosition:Lcom/autonavi/navigation/api/map/model/CameraPosition;
    invoke-static {v1}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->access$700(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;)Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/map/model/CameraPosition;->getMaxTilt()I

    move-result v1

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$6;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    # getter for: Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mBtnElevateUp:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->access$1300(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/autonavi/xm/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$6;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    # getter for: Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mBtnElevateDown:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->access$1400(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/autonavi/xm/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$6;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    # setter for: Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mCurCameraPosition:Lcom/autonavi/navigation/api/map/model/CameraPosition;
    invoke-static {v0, p1}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->access$702(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;Lcom/autonavi/navigation/api/map/model/CameraPosition;)Lcom/autonavi/navigation/api/map/model/CameraPosition;

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$6;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    # getter for: Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mCurCameraPosition:Lcom/autonavi/navigation/api/map/model/CameraPosition;
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->access$700(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;)Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->tilt:I

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$6;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    # getter for: Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mCurCameraPosition:Lcom/autonavi/navigation/api/map/model/CameraPosition;
    invoke-static {v1}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->access$700(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;)Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/map/model/CameraPosition;->getMinTilt()I

    move-result v1

    if-gt v0, v1, :cond_6

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$6;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    # getter for: Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mBtnElevateUp:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->access$1300(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/autonavi/xm/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$6;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    # getter for: Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mBtnElevateDown:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->access$1400(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/autonavi/xm/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$6;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    # getter for: Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mBtnElevateUp:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->access$1300(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/autonavi/xm/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$6;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    # getter for: Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mBtnElevateDown:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->access$1400(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/autonavi/xm/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    goto :goto_1
.end method
