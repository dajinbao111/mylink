.class Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$1;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$1;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const v3, 0x7f0b019f

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.yftech.keyevent_navi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$1;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$000(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a;->c(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$1;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mTxtSoundSwitch:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$100(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020181

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$1;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mTxtSoundSwitch:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$100(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$1;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mTxtSoundSwitch:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$100(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020184

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$1;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mTxtSoundSwitch:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$100(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
