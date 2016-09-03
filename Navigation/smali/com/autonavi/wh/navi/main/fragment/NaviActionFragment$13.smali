.class Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$13;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$13;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$13;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    iget-object v1, v1, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    # invokes: Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->onAction(Landroid/content/Intent;)Z
    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->access$2400(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$13;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    # invokes: Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->initResumePreRoute()V
    invoke-static {v0}, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->access$2500(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;)V

    :cond_0
    return-void
.end method
