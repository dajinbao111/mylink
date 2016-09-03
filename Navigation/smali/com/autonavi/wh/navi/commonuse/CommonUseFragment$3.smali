.class Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/wh/navi/base/widget/SoundAlertDialog$OnDismissCallback;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$3;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogDismiss(Z)V
    .locals 4

    const v3, 0x7f0b019f

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$3;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mTxtSoundSwitch:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$100(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020181

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$3;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mTxtSoundSwitch:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$100(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$3;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/a/a/a;->b(Landroid/content/Context;I)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$3;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mTxtSoundSwitch:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$100(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020184

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$3;->this$0:Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mTxtSoundSwitch:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->access$100(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
