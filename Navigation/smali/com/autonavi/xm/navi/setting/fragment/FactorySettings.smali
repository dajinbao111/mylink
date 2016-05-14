.class public Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;
.super Lcom/autonavi/xm/navigation/app/NaviFragment;

# interfaces
.implements Lcom/autonavi/xm/navi/base/widget/ActionListView$OnActionListener;
.implements Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$onSingleCheckedListener;


# static fields
.field private static final DIALOG_ID_SET_GPSLOG:I = 0x2

.field private static final DIALOG_ID_SET_STARTPOIT:I = 0x1


# instance fields
.field private mActionListView:Lcom/autonavi/xm/navi/base/widget/ActionListView;

.field private final mActions:Ljava/util/ArrayList;

.field private mCompoundListView:Lcom/autonavi/xm/navi/base/widget/CompoundListView;

.field private mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

.field private mResources:Landroid/content/res/Resources;

.field private mSetGpsLogId:I

.field private mSetGpsLogName:Ljava/lang/String;

.field private mSetStartPointId:I

.field private mSetStartPointName:Ljava/lang/String;

.field private mSettings:Lcom/autonavi/navigation/api/settings/Settings;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/app/NaviFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mActions:Ljava/util/ArrayList;

    return-void
.end method

.method private handleShowDialog([I[Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5

    new-instance v1, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$Builder;

    invoke-direct {v1}, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$Builder;-><init>()V

    invoke-virtual {v1, p3}, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$Builder;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$Builder;->setChoiceModel(I)Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$Builder;

    invoke-virtual {v1, p4}, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$Builder;->setSingleCheckedId(I)Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$Builder;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    new-instance v3, Lcom/autonavi/xm/navi/setting/fragment/SettingItem;

    invoke-direct {v3}, Lcom/autonavi/xm/navi/setting/fragment/SettingItem;-><init>()V

    aget v4, p1, v0

    invoke-virtual {v3, v4}, Lcom/autonavi/xm/navi/setting/fragment/SettingItem;->setId(I)V

    aget-object v4, p2, v0

    invoke-virtual {v3, v4}, Lcom/autonavi/xm/navi/setting/fragment/SettingItem;->setContent(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$Builder;->setContent(Ljava/util/ArrayList;)Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$Builder;->create()Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0, p5}, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->showDialog(Lcom/autonavi/xm/navigation/app/NaviDialogFragment;I)V

    return-void
.end method

.method private initSettings()V
    .locals 6

    const v5, 0x7f0b0183

    const v4, 0x7f0b0182

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "set_my_location_enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v2, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mSetStartPointId:I

    invoke-virtual {p0, v4}, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mSetStartPointName:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v1, "trace_log_enabled"

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/navigation/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iput v2, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mSetGpsLogId:I

    invoke-virtual {p0, v4}, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mSetGpsLogName:Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    iput v3, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mSetStartPointId:I

    invoke-virtual {p0, v5}, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mSetStartPointName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput v3, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mSetGpsLogId:I

    invoke-virtual {p0, v5}, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mSetGpsLogName:Ljava/lang/String;

    goto :goto_1
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
    invoke-super {p0, p1}, Lcom/autonavi/xm/navigation/app/NaviFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onAction(I)V
    .locals 7

    const v6, 0x7f090002

    const v4, 0x7f080046

    const v3, 0x7f080045

    const/4 v5, 0x2

    if-ne p1, v3, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/xm/navi/setting/fragment/SettingFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-array v1, v5, [I

    fill-array-data v1, :array_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u957f\u6309\u8bbe\u7f6e\u8d77\u70b9\u5f00\u5173"

    iget v4, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mSetStartPointId:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->handleShowDialog([I[Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v4, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/xm/navi/setting/fragment/SettingFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-array v1, v5, [I

    fill-array-data v1, :array_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "GPS_LOG\u5f00\u5173"

    iget v4, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mSetGpsLogId:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->handleShowDialog([I[Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/autonavi/xm/navigation/app/NaviFragment;->onCreateView(Landroid/os/Bundle;)V

    const v0, 0x7f0b017c

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->setTitle(I)V

    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->setContentView(I)V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mResources:Landroid/content/res/Resources;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getSettings()Lcom/autonavi/navigation/api/settings/Settings;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    invoke-direct {p0}, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->initSettings()V

    const v0, 0x7f080125

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navi/base/widget/CompoundListView;

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mCompoundListView:Lcom/autonavi/xm/navi/base/widget/CompoundListView;

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mCompoundListView:Lcom/autonavi/xm/navi/base/widget/CompoundListView;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/widget/CompoundListView;->getListView()Lcom/autonavi/xm/navi/base/widget/ActionListView;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mActionListView:Lcom/autonavi/xm/navi/base/widget/ActionListView;

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mActionListView:Lcom/autonavi/xm/navi/base/widget/ActionListView;

    invoke-virtual {v0, p0}, Lcom/autonavi/xm/navi/base/widget/ActionListView;->setOnActionListener(Lcom/autonavi/xm/navi/base/widget/ActionListView$OnActionListener;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mActionListView:Lcom/autonavi/xm/navi/base/widget/ActionListView;

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->setDataSource(Lcom/autonavi/xm/navi/base/widget/ActionListView;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mActionListView:Lcom/autonavi/xm/navi/base/widget/ActionListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/base/widget/ActionListView;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/autonavi/xm/navigation/app/NaviFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/autonavi/xm/navigation/app/NaviFragment;->onPause()V

    return-void
.end method

.method public onSingleChecked(II)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v2, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "set_my_location_enabled"

    if-nez p2, :cond_1

    :goto_0
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->initSettings()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mActionListView:Lcom/autonavi/xm/navi/base/widget/ActionListView;

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->setDataSource(Lcom/autonavi/xm/navi/base/widget/ActionListView;)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v3, "trace_log_enabled"

    if-nez p2, :cond_3

    :goto_2
    invoke-virtual {v2, v3, v0}, Lcom/autonavi/navigation/api/settings/Settings;->putBoolean(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/settings/Settings;->save()Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public setDataSource(Lcom/autonavi/xm/navi/base/widget/ActionListView;)V
    .locals 7

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v6, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mActions:Ljava/util/ArrayList;

    new-instance v0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings$SettingAction;

    iget-object v2, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f080045

    const-string v4, "\u957f\u6309\u8bbe\u7f6e\u8d77\u70b9\u5f00\u5173"

    iget-object v5, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mSetStartPointName:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings$SettingAction;-><init>(Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mActions:Ljava/util/ArrayList;

    new-instance v0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings$SettingAction;

    iget-object v2, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f080046

    const-string v4, "GPS_LOG\u5f00\u5173"

    iget-object v5, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mSetGpsLogName:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings$SettingAction;-><init>(Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mActionListView:Lcom/autonavi/xm/navi/base/widget/ActionListView;

    iget-object v1, p0, Lcom/autonavi/xm/navi/setting/fragment/FactorySettings;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/base/widget/ActionListView;->setActions(Ljava/util/ArrayList;)V

    return-void
.end method
