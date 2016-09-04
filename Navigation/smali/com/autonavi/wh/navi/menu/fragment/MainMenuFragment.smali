.class public Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;
.super Lcom/autonavi/wh/navigation/app/NaviFragment;

# interfaces
.implements Lcom/autonavi/wh/navi/base/widget/ActionListView$OnActionListener;


# static fields
.field private static final DIALOG_ID_EXIT_APPLICATION:I = 0x1


# instance fields
.field private mActionListView:Lcom/autonavi/wh/navi/base/widget/ActionListView;

.field private final mActions:Ljava/util/ArrayList;

.field private mCompoundListView:Lcom/autonavi/wh/navi/base/widget/CompoundListView;

.field private mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->mActions:Ljava/util/ArrayList;

    return-void
.end method

.method private exitApplication()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.autonavi.wh.action.QUIT_APPLICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setDataSource(Lcom/autonavi/wh/navi/base/widget/ActionListView;)V
    .locals 6

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->mActions:Ljava/util/ArrayList;

    new-instance v1, Lcom/autonavi/wh/navi/base/widget/ListViewAction;

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f080025

    const v4, 0x7f020197

    const v5, 0x7f0b0155

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/autonavi/wh/navi/base/widget/ListViewAction;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->mActions:Ljava/util/ArrayList;

    new-instance v1, Lcom/autonavi/wh/navi/base/widget/ListViewAction;

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f080026

    const v4, 0x7f0203d3

    const v5, 0x7f0b0156

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/autonavi/wh/navi/base/widget/ListViewAction;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->mActions:Ljava/util/ArrayList;

    new-instance v1, Lcom/autonavi/wh/navi/base/widget/ListViewAction;

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f080028

    const v4, 0x7f02041a

    const v5, 0x7f0b0158

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/autonavi/wh/navi/base/widget/ListViewAction;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->mActions:Ljava/util/ArrayList;

    new-instance v1, Lcom/autonavi/wh/navi/base/widget/ListViewAction;

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f080029

    const v4, 0x7f0201ce

    const v5, 0x7f0b011f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/autonavi/wh/navi/base/widget/ListViewAction;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->mActions:Ljava/util/ArrayList;

    new-instance v1, Lcom/autonavi/wh/navi/base/widget/ListViewAction;

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f080027

    const v4, 0x7f0204f9

    const v5, 0x7f0b0157

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/autonavi/wh/navi/base/widget/ListViewAction;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->mActions:Ljava/util/ArrayList;

    new-instance v1, Lcom/autonavi/wh/navi/base/widget/ListViewAction;

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f08002a

    const v4, 0x7f0201aa

    const v5, 0x7f0b0159

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/autonavi/wh/navi/base/widget/ListViewAction;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->mActions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/autonavi/wh/navi/base/widget/ActionListView;->setActions(Ljava/util/ArrayList;)V

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
    .locals 3

    const v0, 0x7f080025

    if-ne p1, v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/search/FindDes;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->startFragment(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f080026

    if-ne p1, v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/menu/fragment/RouteManagement;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->startFragment(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const v0, 0x7f080027

    if-ne p1, v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/setting/fragment/VersionInfoFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->startFragment(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const v0, 0x7f080028

    if-ne p1, v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->startFragment(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const v0, 0x7f080029

    if-ne p1, v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/search/Car4SSearch;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->startFragment(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const v0, 0x7f08002a

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    invoke-direct {v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;-><init>()V

    const v1, 0x7f0b0154

    const v2, 0x7f020398

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setPositiveButton(II)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0076

    const v2, 0x7f020385

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setNegativeButton(II)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setCancelable(Z)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->create()Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->showDialog(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onCreateView(Landroid/os/Bundle;)V

    const v0, 0x7f0b0153

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->setTitle(I)V

    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->setContentView(I)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v0, 0x7f080125

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/base/widget/CompoundListView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->mCompoundListView:Lcom/autonavi/wh/navi/base/widget/CompoundListView;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->mCompoundListView:Lcom/autonavi/wh/navi/base/widget/CompoundListView;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/CompoundListView;->getListView()Lcom/autonavi/wh/navi/base/widget/ActionListView;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->mActionListView:Lcom/autonavi/wh/navi/base/widget/ActionListView;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->mActionListView:Lcom/autonavi/wh/navi/base/widget/ActionListView;

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->setDataSource(Lcom/autonavi/wh/navi/base/widget/ActionListView;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->mActionListView:Lcom/autonavi/wh/navi/base/widget/ActionListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/ActionListView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->mActionListView:Lcom/autonavi/wh/navi/base/widget/ActionListView;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/navi/base/widget/ActionListView;->setOnActionListener(Lcom/autonavi/wh/navi/base/widget/ActionListView$OnActionListener;)V

    return-void
.end method

.method public onDialogClick(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V
    .locals 2

    invoke-virtual {p1}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->getDialogId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/menu/fragment/MainMenuFragment;->exitApplication()V

    :cond_0
    return-void
.end method
