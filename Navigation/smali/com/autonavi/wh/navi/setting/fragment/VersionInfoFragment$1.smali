.class Lcom/autonavi/wh/navi/setting/fragment/VersionInfoFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/setting/fragment/VersionInfoFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/setting/fragment/VersionInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/setting/fragment/VersionInfoFragment$1;->this$0:Lcom/autonavi/wh/navi/setting/fragment/VersionInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/VersionInfoFragment$1;->this$0:Lcom/autonavi/wh/navi/setting/fragment/VersionInfoFragment;

    # getter for: Lcom/autonavi/wh/navi/setting/fragment/VersionInfoFragment;->mGov:Landroid/gesture/GestureOverlayView;
    invoke-static {v0}, Lcom/autonavi/wh/navi/setting/fragment/VersionInfoFragment;->access$000(Lcom/autonavi/wh/navi/setting/fragment/VersionInfoFragment;)Landroid/gesture/GestureOverlayView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/gesture/GestureOverlayView;->setVisibility(I)V

    const/4 v0, 0x1

    return v0
.end method
