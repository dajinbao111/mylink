.class public Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;
.super Ljava/lang/Object;


# instance fields
.field mArguments:Landroid/os/Bundle;

.field private mCancelable:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method apply(Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;->setDialogArguments(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->mCancelable:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->mCancelable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public create()Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;
    .locals 1

    new-instance v0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    invoke-direct {v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;-><init>()V

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->apply(Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;)V

    return-object v0
.end method

.method public setCancelable(Z)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->mCancelable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setNegativeButton(II)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    const-string v1, "negative_button_text"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    const-string v1, "negative_button_icon"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setPositiveButton(II)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    const-string v1, "positive_button_text"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    const-string v1, "positive_button_icon"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method
