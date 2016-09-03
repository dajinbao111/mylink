.class Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/guide/GuideManager$OnDeviateFromRouteListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$5;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviateFromRoute()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$5;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    const/4 v1, 0x1

    # setter for: Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->isDeviate:Z
    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->access$1002(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;Z)Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$5;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    # getter for: Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mBtnPassBy:Landroid/widget/Button;
    invoke-static {v0}, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->access$1100(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/autonavi/wh/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$5;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    # getter for: Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mBtnPassBy:Landroid/widget/Button;
    invoke-static {v0}, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->access$1100(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$5;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    # invokes: Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->showDlgRouteCorrecting()V
    invoke-static {v0}, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->access$1200(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;)V

    const-string v0, "===================onDeviateFromRoute"

    invoke-static {v0}, Lcom/autonavi/wh/navi/base/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method
