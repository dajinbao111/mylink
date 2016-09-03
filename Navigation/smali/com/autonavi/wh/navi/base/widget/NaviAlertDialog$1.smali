.class Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$1;->this$0:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08006a

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$1;->this$0:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    const/4 v1, -0x1

    # invokes: Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;->onDialogClick(I)V
    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;->access$000(Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$1;->this$0:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;->dismiss()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f08006e

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$1;->this$0:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    const/4 v1, -0x2

    # invokes: Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;->onDialogClick(I)V
    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;->access$100(Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$1;->this$0:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;->dismiss()V

    goto :goto_0
.end method
