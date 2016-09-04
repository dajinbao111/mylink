.class public Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;
.super Lcom/autonavi/wh/navigation/app/NaviFragment;

# interfaces
.implements Lcom/autonavi/wh/navi/base/widget/ActionListView$OnActionListener;


# static fields
.field private static final DIALOG_ID_FACTORY_RESET:I = 0x1

.field private static final DIALOG_ID_FACTORY_RESET_OK:I = 0x2

.field private static final DIALOG_ID_UPDATE_DATA_NOT_FOUND:I = 0x3

.field private static final SEARCH_DEPTH:I = 0x1


# instance fields
.field private mAction:Ljava/lang/String;

.field private mActionListView:Lcom/autonavi/wh/navi/base/widget/ActionListView;

.field private final mActions:Ljava/util/ArrayList;

.field private mCompoundListView:Lcom/autonavi/wh/navi/base/widget/CompoundListView;

.field private mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

.field private mSettings:Lcom/autonavi/navigation/api/settings/Settings;

.field private mUpdateNotFoundDialog:Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mActions:Ljava/util/ArrayList;

    return-void
.end method

.method private exitApplication()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.autonavi.wh.action.QUIT_APPLICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showUpdateNotFoundDialog()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mUpdateNotFoundDialog:Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;

    invoke-direct {v0}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;-><init>()V

    const v1, 0x7f0b0111

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;->setMessage(I)Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;

    move-result-object v0

    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;->setTitle(I)Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;

    move-result-object v0

    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;->setPositiveButton(I)Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;->create()Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mUpdateNotFoundDialog:Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mUpdateNotFoundDialog:Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->showDialog(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onAction(I)V
    .locals 6

    const v5, 0x7f080047

    const v4, 0x7f080046

    const v3, 0x7f080045

    if-ne p1, v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->startFragment(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    if-ne p1, v4, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->startFragment(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    if-ne p1, v5, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action_type"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->startFragment(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const v0, 0x7f080042

    if-ne p1, v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->startFragment(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    invoke-direct {v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;-><init>()V

    const v1, 0x7f0b017a

    const v2, 0x7f02039b

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setPositiveButton(II)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0076

    const v2, 0x7f020385

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setNegativeButton(II)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->create()Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->showDialog(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onCreateView(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mAction:Ljava/lang/String;

    const v0, 0x7f0b017c

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->setTitle(I)V

    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->setContentView(I)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getSettings()Lcom/autonavi/navigation/api/settings/Settings;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const v0, 0x7f080125

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/base/widget/CompoundListView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mCompoundListView:Lcom/autonavi/wh/navi/base/widget/CompoundListView;

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mCompoundListView:Lcom/autonavi/wh/navi/base/widget/CompoundListView;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/CompoundListView;->getListView()Lcom/autonavi/wh/navi/base/widget/ActionListView;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mActionListView:Lcom/autonavi/wh/navi/base/widget/ActionListView;

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mActionListView:Lcom/autonavi/wh/navi/base/widget/ActionListView;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/navi/base/widget/ActionListView;->setOnActionListener(Lcom/autonavi/wh/navi/base/widget/ActionListView$OnActionListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mActionListView:Lcom/autonavi/wh/navi/base/widget/ActionListView;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->setDataSource(Lcom/autonavi/wh/navi/base/widget/ActionListView;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mActionListView:Lcom/autonavi/wh/navi/base/widget/ActionListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/ActionListView;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onDestroy()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mAction:Ljava/lang/String;

    const-string v1, "com.autonavi.wh.action.SETTINGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getAnMap()Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->gotoMyLocation()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->startFragment(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onDialogClick(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x2

    invoke-super {p0, p1, p2}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onDialogClick(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    invoke-virtual {p1}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->getDialogId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    if-ne p2, v3, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/settings/Settings;->reset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "day_and_night"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;

    invoke-direct {v0}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;-><init>()V

    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;->setTitle(I)Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;

    move-result-object v0

    const v1, 0x7f0b0179

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;->setMessage(I)Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;->setCancelable(Z)Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;

    move-result-object v0

    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;->setPositiveButton(I)Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;->create()Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->showDialog(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b0178

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_0

    if-ne p2, v3, :cond_0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->exitApplication()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mUpdateNotFoundDialog:Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mUpdateNotFoundDialog:Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment;->dismiss()V

    :cond_0
    invoke-super {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onPause()V

    return-void
.end method

.method public setDataSource(Lcom/autonavi/wh/navi/base/widget/ActionListView;)V
    .locals 6

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mActions:Ljava/util/ArrayList;

    new-instance v1, Lcom/autonavi/wh/navi/base/widget/ListViewAction;

    iget-object v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f080045

    const v4, 0x7f0202ab

    const v5, 0x7f0b0173

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/autonavi/wh/navi/base/widget/ListViewAction;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mActions:Ljava/util/ArrayList;

    new-instance v1, Lcom/autonavi/wh/navi/base/widget/ListViewAction;

    iget-object v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f080046

    const v4, 0x7f020400

    const v5, 0x7f0b0174

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/autonavi/wh/navi/base/widget/ListViewAction;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mActions:Ljava/util/ArrayList;

    new-instance v1, Lcom/autonavi/wh/navi/base/widget/ListViewAction;

    iget-object v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f080047

    const v4, 0x7f02041d

    const v5, 0x7f0b0175

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/autonavi/wh/navi/base/widget/ListViewAction;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mActions:Ljava/util/ArrayList;

    new-instance v1, Lcom/autonavi/wh/navi/base/widget/ListViewAction;

    iget-object v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f080042

    const v4, 0x7f0201dd

    const v5, 0x7f0b0176

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/autonavi/wh/navi/base/widget/ListViewAction;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mActions:Ljava/util/ArrayList;

    new-instance v1, Lcom/autonavi/wh/navi/base/widget/ListViewAction;

    iget-object v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f080044

    const v4, 0x7f0201ae

    const v5, 0x7f0b017a

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/autonavi/wh/navi/base/widget/ListViewAction;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mActionListView:Lcom/autonavi/wh/navi/base/widget/ActionListView;

    iget-object v1, p0, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/ActionListView;->setActions(Ljava/util/ArrayList;)V

    return-void
.end method
