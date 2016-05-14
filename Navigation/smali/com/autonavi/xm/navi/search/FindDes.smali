.class public Lcom/autonavi/xm/navi/search/FindDes;
.super Lcom/autonavi/xm/navigation/app/NaviFragment;

# interfaces
.implements Lcom/autonavi/xm/navi/base/widget/ActionListView$OnActionListener;


# static fields
.field private static final REQUEST_CODE_REQUEST_POI:I = 0x1


# instance fields
.field private mActionListView:Lcom/autonavi/xm/navi/base/widget/ActionListView;

.field private final mActions:Ljava/util/ArrayList;

.field private mCompoundListView:Lcom/autonavi/xm/navi/base/widget/CompoundListView;

.field private mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

.field private mIsRequestPoi:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/app/NaviFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/navi/search/FindDes;->mActions:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/search/FindDes;->mIsRequestPoi:Z

    return-void
.end method

.method private doKeySearch(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xm/navi/search/FindDes;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_search_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/search/FindDes;->startNewFragment(Landroid/content/Intent;)V

    return-void
.end method

.method private startNewFragment(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "extra_is_request_poi"

    iget-boolean v1, p0, Lcom/autonavi/xm/navi/search/FindDes;->mIsRequestPoi:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/search/FindDes;->mIsRequestPoi:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/autonavi/xm/navi/search/FindDes;->startFragmentForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navi/search/FindDes;->startFragment(Landroid/content/Intent;)V

    goto :goto_0
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
    .locals 6

    const v5, 0x7f080030

    const/4 v1, 0x2

    const/4 v0, 0x1

    const v2, 0x7f08002b

    if-ne p1, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/search/FindDes;->doKeySearch(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v2, 0x7f08002c

    if-ne p1, v2, :cond_2

    invoke-direct {p0, v1}, Lcom/autonavi/xm/navi/search/FindDes;->doKeySearch(I)V

    goto :goto_0

    :cond_2
    const v2, 0x7f08002d

    if-ne p1, v2, :cond_3

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/search/FindDes;->doKeySearch(I)V

    goto :goto_0

    :cond_3
    const v2, 0x7f08002e

    if-ne p1, v2, :cond_4

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/search/FindDes;->doKeySearch(I)V

    goto :goto_0

    :cond_4
    const v2, 0x7f08002f

    if-ne p1, v2, :cond_5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xm/navi/search/FindDes;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/xm/navi/menu/fragment/CategorySearcherFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/search/FindDes;->startNewFragment(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    if-eq p1, v5, :cond_6

    const v2, 0x7f080031

    if-ne p1, v2, :cond_0

    :cond_6
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/autonavi/xm/navi/search/FindDes;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-class v4, Lcom/autonavi/xm/navi/favorites/FavoritesFragment;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "extra_favorites_type"

    if-ne p1, v5, :cond_7

    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v2}, Lcom/autonavi/xm/navi/search/FindDes;->startNewFragment(Landroid/content/Intent;)V

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/autonavi/xm/navi/search/FindDes;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/search/FindDes;->popBack()V

    :cond_0
    return-void
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/autonavi/xm/navigation/app/NaviFragment;->onCreateView(Landroid/os/Bundle;)V

    const v0, 0x7f0b0155

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/search/FindDes;->setTitle(I)V

    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/search/FindDes;->setContentView(I)V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/search/FindDes;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iput-object v0, p0, Lcom/autonavi/xm/navi/search/FindDes;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v0, 0x7f080125

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/search/FindDes;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navi/base/widget/CompoundListView;

    iput-object v0, p0, Lcom/autonavi/xm/navi/search/FindDes;->mCompoundListView:Lcom/autonavi/xm/navi/base/widget/CompoundListView;

    iget-object v0, p0, Lcom/autonavi/xm/navi/search/FindDes;->mCompoundListView:Lcom/autonavi/xm/navi/base/widget/CompoundListView;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/widget/CompoundListView;->getListView()Lcom/autonavi/xm/navi/base/widget/ActionListView;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/search/FindDes;->mActionListView:Lcom/autonavi/xm/navi/base/widget/ActionListView;

    iget-object v0, p0, Lcom/autonavi/xm/navi/search/FindDes;->mActionListView:Lcom/autonavi/xm/navi/base/widget/ActionListView;

    invoke-virtual {v0, p0}, Lcom/autonavi/xm/navi/base/widget/ActionListView;->setOnActionListener(Lcom/autonavi/xm/navi/base/widget/ActionListView$OnActionListener;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/search/FindDes;->mActionListView:Lcom/autonavi/xm/navi/base/widget/ActionListView;

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/search/FindDes;->setDataSource(Lcom/autonavi/xm/navi/base/widget/ActionListView;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/search/FindDes;->mActionListView:Lcom/autonavi/xm/navi/base/widget/ActionListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/base/widget/ActionListView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/search/FindDes;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "extra_is_request_poi"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/search/FindDes;->mIsRequestPoi:Z

    :cond_0
    return-void
.end method

.method public setDataSource(Lcom/autonavi/xm/navi/base/widget/ActionListView;)V
    .locals 6

    iget-object v0, p0, Lcom/autonavi/xm/navi/search/FindDes;->mActions:Ljava/util/ArrayList;

    new-instance v1, Lcom/autonavi/xm/navi/base/widget/ListViewAction;

    iget-object v2, p0, Lcom/autonavi/xm/navi/search/FindDes;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f08002b

    const v4, 0x7f0202a3

    const v5, 0x7f0b0169

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/autonavi/xm/navi/base/widget/ListViewAction;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/search/FindDes;->mActions:Ljava/util/ArrayList;

    new-instance v1, Lcom/autonavi/xm/navi/base/widget/ListViewAction;

    iget-object v2, p0, Lcom/autonavi/xm/navi/search/FindDes;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f08002c

    const v4, 0x7f020126

    const v5, 0x7f0b009e

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/autonavi/xm/navi/base/widget/ListViewAction;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/search/FindDes;->mActions:Ljava/util/ArrayList;

    new-instance v1, Lcom/autonavi/xm/navi/base/widget/ListViewAction;

    iget-object v2, p0, Lcom/autonavi/xm/navi/search/FindDes;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f08002d

    const v4, 0x7f02029f

    const v5, 0x7f0b016a

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/autonavi/xm/navi/base/widget/ListViewAction;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/search/FindDes;->mActions:Ljava/util/ArrayList;

    new-instance v1, Lcom/autonavi/xm/navi/base/widget/ListViewAction;

    iget-object v2, p0, Lcom/autonavi/xm/navi/search/FindDes;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f08002e

    const v4, 0x7f0202d8

    const v5, 0x7f0b016b

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/autonavi/xm/navi/base/widget/ListViewAction;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/search/FindDes;->mActions:Ljava/util/ArrayList;

    new-instance v1, Lcom/autonavi/xm/navi/base/widget/ListViewAction;

    iget-object v2, p0, Lcom/autonavi/xm/navi/search/FindDes;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f08002f

    const v4, 0x7f020171

    const v5, 0x7f0b012d

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/autonavi/xm/navi/base/widget/ListViewAction;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/search/FindDes;->mActions:Ljava/util/ArrayList;

    new-instance v1, Lcom/autonavi/xm/navi/base/widget/ListViewAction;

    iget-object v2, p0, Lcom/autonavi/xm/navi/search/FindDes;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f080030

    const v4, 0x7f0201cb

    const v5, 0x7f0b016c

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/autonavi/xm/navi/base/widget/ListViewAction;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/search/FindDes;->mActions:Ljava/util/ArrayList;

    new-instance v1, Lcom/autonavi/xm/navi/base/widget/ListViewAction;

    iget-object v2, p0, Lcom/autonavi/xm/navi/search/FindDes;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f080031

    const v4, 0x7f0201e7

    const v5, 0x7f0b016d

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/autonavi/xm/navi/base/widget/ListViewAction;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/search/FindDes;->mActions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/autonavi/xm/navi/base/widget/ActionListView;->setActions(Ljava/util/ArrayList;)V

    return-void
.end method
