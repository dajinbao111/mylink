.class public Lcom/autonavi/wh/navigation/app/NaviDialogFragment;
.super Lcom/autonavi/wh/support/app/DialogFragment;


# static fields
.field private static final SAVED_DIALOG_ID:Ljava/lang/String; = "autonavi:dialogId"


# instance fields
.field private mDialogId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/wh/support/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->mDialogId:I

    return-void
.end method

.method private getCallback()Lcom/autonavi/wh/navigation/app/NaviDialogFragmentCallback;
    .locals 2

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->getTargetFragment()Lcom/autonavi/wh/support/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/autonavi/wh/navigation/app/NaviDialogFragmentCallback;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/autonavi/wh/navigation/app/NaviDialogFragmentCallback;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/autonavi/wh/navigation/app/NaviDialogFragmentCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/autonavi/wh/navigation/app/NaviDialogFragmentCallback;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDialogId()I
    .locals 1

    iget v0, p0, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->mDialogId:I

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/autonavi/wh/support/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->getCallback()Lcom/autonavi/wh/navigation/app/NaviDialogFragmentCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/autonavi/wh/navigation/app/NaviDialogFragmentCallback;->onDialogCancel(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/autonavi/wh/support/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "autonavi:dialogId"

    iget v1, p0, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->mDialogId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->mDialogId:I

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/autonavi/wh/support/app/DialogFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->getTargetFragment()Lcom/autonavi/wh/support/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/autonavi/wh/navigation/app/NaviFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/autonavi/wh/navigation/app/NaviFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->setUserInteractionFrozen(Z)V

    :cond_0
    return-void
.end method

.method protected onDialogClick(I)V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->getCallback()Lcom/autonavi/wh/navigation/app/NaviDialogFragmentCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/autonavi/wh/navigation/app/NaviDialogFragmentCallback;->onDialogClick(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/autonavi/wh/support/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->getTargetFragment()Lcom/autonavi/wh/support/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/autonavi/wh/navigation/app/NaviFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/autonavi/wh/navigation/app/NaviFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->setUserInteractionFrozen(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->getCallback()Lcom/autonavi/wh/navigation/app/NaviDialogFragmentCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/autonavi/wh/navigation/app/NaviDialogFragmentCallback;->onDialogDismiss(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/autonavi/wh/support/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->mDialogId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, "autonavi:dialogId"

    iget v1, p0, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->mDialogId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/autonavi/wh/support/app/DialogFragment;->onStart()V

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->getCallback()Lcom/autonavi/wh/navigation/app/NaviDialogFragmentCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/autonavi/wh/navigation/app/NaviDialogFragmentCallback;->onDialogShow(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;)V

    :cond_0
    return-void
.end method

.method setTarget(Lcom/autonavi/wh/support/app/Fragment;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/autonavi/wh/support/app/DialogFragment;->setTargetFragment(Lcom/autonavi/wh/support/app/Fragment;I)V

    iput p2, p0, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->mDialogId:I

    return-void
.end method

.method public final setTargetFragment(Lcom/autonavi/wh/support/app/Fragment;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
