.class public Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$Builder;
.super Ljava/lang/Object;


# instance fields
.field mArguments:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method apply(Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    # invokes: Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog;->setDialogArguments(Landroid/os/Bundle;)V
    invoke-static {p1, v0}, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog;->access$300(Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog;Landroid/os/Bundle;)V

    return-void
.end method

.method public create()Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog;
    .locals 1

    new-instance v0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog;

    invoke-direct {v0}, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog;-><init>()V

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$Builder;->apply(Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog;)V

    return-object v0
.end method

.method public setChoiceModel(I)Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    const-string v1, "choice_model"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setContent(Ljava/util/ArrayList;)Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public setMultipleChecked([Z)Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    const-string v1, "multiple_check_booleans"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    return-object p0
.end method

.method public setNumColumn(I)Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    const-string v1, "num_column"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setSingleCheckedId(I)Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    const-string v1, "single_check_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setTitle(I)Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method
