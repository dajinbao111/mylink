.class Lcom/autonavi/xm/navigation/app/AlertDialogFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navigation/app/AlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navigation/app/AlertDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/app/AlertDialogFragment$1;->this$0:Lcom/autonavi/xm/navigation/app/AlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/autonavi/xm/navigation/lib/R$id;->button_positive:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/app/AlertDialogFragment$1;->this$0:Lcom/autonavi/xm/navigation/app/AlertDialogFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/app/AlertDialogFragment;->onDialogClick(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navigation/app/AlertDialogFragment$1;->this$0:Lcom/autonavi/xm/navigation/app/AlertDialogFragment;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/app/AlertDialogFragment;->dismiss()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Lcom/autonavi/xm/navigation/lib/R$id;->button_neutral:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/app/AlertDialogFragment$1;->this$0:Lcom/autonavi/xm/navigation/app/AlertDialogFragment;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/app/AlertDialogFragment;->onDialogClick(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navigation/app/AlertDialogFragment$1;->this$0:Lcom/autonavi/xm/navigation/app/AlertDialogFragment;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/app/AlertDialogFragment;->dismiss()V

    goto :goto_0

    :cond_2
    sget v1, Lcom/autonavi/xm/navigation/lib/R$id;->button_negative:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/app/AlertDialogFragment$1;->this$0:Lcom/autonavi/xm/navigation/app/AlertDialogFragment;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/app/AlertDialogFragment;->onDialogClick(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navigation/app/AlertDialogFragment$1;->this$0:Lcom/autonavi/xm/navigation/app/AlertDialogFragment;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/app/AlertDialogFragment;->dismiss()V

    goto :goto_0
.end method
