.class Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/map/AnMap$OnZoomEnabledListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$5;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomInEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$5;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    # invokes: Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->isOnTop()Z
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->access$900(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$5;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    # getter for: Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mCurCameraPosition:Lcom/autonavi/navigation/api/map/model/CameraPosition;
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->access$700(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;)Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->mode:Lcom/autonavi/navigation/api/map/model/MapMode;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/model/MapMode;->ordinal()I

    move-result v0

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapMode;->MODE_3D:Lcom/autonavi/navigation/api/map/model/MapMode;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/map/model/MapMode;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$5;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    # getter for: Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mBtnZoomIn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->access$1000(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/autonavi/xm/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public onZoomOutEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$5;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    # invokes: Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->isOnTop()Z
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->access$600(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$5;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    # getter for: Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mCurCameraPosition:Lcom/autonavi/navigation/api/map/model/CameraPosition;
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->access$700(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;)Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->mode:Lcom/autonavi/navigation/api/map/model/MapMode;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/model/MapMode;->ordinal()I

    move-result v0

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapMode;->MODE_3D:Lcom/autonavi/navigation/api/map/model/MapMode;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/map/model/MapMode;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$5;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    # getter for: Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mBtnZoomOut:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->access$800(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/autonavi/xm/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    goto :goto_0
.end method
