.class public Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;
.super Lcom/autonavi/wh/navigation/app/NaviFragment;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private listAreas:Lcom/autonavi/wh/navi/base/widget/CircularListView;

.field private mAdminArea:Lcom/autonavi/navigation/api/data/model/AdminArea;

.field private mAreaAdapter:Lcom/autonavi/wh/navi/menu/fragment/AreaPicker$AreaAdapter;

.field private mCompoundCirListView:Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;

.field private mDataManager:Lcom/autonavi/navigation/api/data/DataManager;

.field private mIsFromCarFService:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->mAdminArea:Lcom/autonavi/navigation/api/data/model/AdminArea;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->mIsFromCarFService:Z

    return-void
.end method

.method private isSameArea(Lcom/autonavi/navigation/api/data/model/AdminArea;Lcom/autonavi/navigation/api/data/model/AdminArea;)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p1, Lcom/autonavi/navigation/api/data/model/AdminArea;->adminCode:I

    iget v2, p2, Lcom/autonavi/navigation/api/data/model/AdminArea;->adminCode:I

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/autonavi/navigation/api/data/model/AdminArea;->name:Ljava/lang/String;

    const v2, 0x7f0b006c

    invoke-virtual {p0, v2}, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/autonavi/navigation/api/data/model/AdminArea;->name:Ljava/lang/String;

    const v2, 0x7f0b006a

    invoke-virtual {p0, v2}, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pickArea(Lcom/autonavi/navigation/api/data/model/AdminArea;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->mAdminArea:Lcom/autonavi/navigation/api/data/model/AdminArea;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->mAdminArea:Lcom/autonavi/navigation/api/data/model/AdminArea;

    invoke-direct {p0, p1, v0}, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->isSameArea(Lcom/autonavi/navigation/api/data/model/AdminArea;Lcom/autonavi/navigation/api/data/model/AdminArea;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->mAdminArea:Lcom/autonavi/navigation/api/data/model/AdminArea;

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.autonavi.wh.extra.ADMIN_AREA_INFO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->popBack()V

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

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "com.autonavi.wh.extra.ADMIN_AREA_INFO"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/data/model/AdminArea;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->pickArea(Lcom/autonavi/navigation/api/data/model/AdminArea;)V

    :cond_0
    return-void
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onCreateView(Landroid/os/Bundle;)V

    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->setContentView(I)V

    const v0, 0x7f08007a

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->mCompoundCirListView:Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->mCompoundCirListView:Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;->getListView()Lcom/autonavi/wh/navi/base/widget/CircularListView;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->listAreas:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    new-instance v0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker$AreaAdapter;

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker$AreaAdapter;-><init>(Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->mAreaAdapter:Lcom/autonavi/wh/navi/menu/fragment/AreaPicker$AreaAdapter;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->listAreas:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->mAreaAdapter:Lcom/autonavi/wh/navi/menu/fragment/AreaPicker$AreaAdapter;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->listAreas:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->listAreas:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    invoke-virtual {v0, v2}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->setFocusableInTouchMode(Z)V

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getDataManager()Lcom/autonavi/navigation/api/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->mDataManager:Lcom/autonavi/navigation/api/data/DataManager;

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "car_service_tag"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->mIsFromCarFService:Z

    const-string v1, "com.autonavi.wh.extra.ADMIN_AREA_INFO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/data/model/AdminArea;

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->mAdminArea:Lcom/autonavi/navigation/api/data/model/AdminArea;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->mAdminArea:Lcom/autonavi/navigation/api/data/model/AdminArea;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->mDataManager:Lcom/autonavi/navigation/api/data/DataManager;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->mAdminArea:Lcom/autonavi/navigation/api/data/model/AdminArea;

    iget v1, v1, Lcom/autonavi/navigation/api/data/model/AdminArea;->adminCode:I

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/data/DataManager;->getAdminAreas(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->mAreaAdapter:Lcom/autonavi/wh/navi/menu/fragment/AreaPicker$AreaAdapter;

    invoke-virtual {v1, v0}, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker$AreaAdapter;->setData(Ljava/util/List;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->mAdminArea:Lcom/autonavi/navigation/api/data/model/AdminArea;

    if-nez v0, :cond_2

    const v0, 0x7f0b00b5

    :goto_1
    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->setTitle(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->mDataManager:Lcom/autonavi/navigation/api/data/DataManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/data/DataManager;->getAllProvinces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->mAreaAdapter:Lcom/autonavi/wh/navi/menu/fragment/AreaPicker$AreaAdapter;

    invoke-virtual {v1, v0}, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker$AreaAdapter;->setData(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0b00b6

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->mAreaAdapter:Lcom/autonavi/wh/navi/menu/fragment/AreaPicker$AreaAdapter;

    invoke-virtual {v0, p3}, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker$AreaAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/data/model/AdminArea;

    iget-boolean v1, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->mIsFromCarFService:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/data/model/AdminArea;->getAdminAreaDetail()Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->isMunicipality()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->pickArea(Lcom/autonavi/navigation/api/data/model/AdminArea;)V

    iput-boolean v4, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->mIsFromCarFService:Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->mAdminArea:Lcom/autonavi/navigation/api/data/model/AdminArea;

    if-nez v1, :cond_1

    iget v1, v0, Lcom/autonavi/navigation/api/data/model/AdminArea;->adminCode:I

    rem-int/lit16 v1, v1, 0x2710

    if-nez v1, :cond_1

    iget v1, v0, Lcom/autonavi/navigation/api/data/model/AdminArea;->adminCode:I

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.autonavi.wh.extra.ADMIN_AREA_INFO"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v4}, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->startFragmentForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->pickArea(Lcom/autonavi/navigation/api/data/model/AdminArea;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->mAdminArea:Lcom/autonavi/navigation/api/data/model/AdminArea;

    if-nez v1, :cond_3

    iget v1, v0, Lcom/autonavi/navigation/api/data/model/AdminArea;->adminCode:I

    rem-int/lit16 v1, v1, 0x2710

    if-nez v1, :cond_3

    iget v1, v0, Lcom/autonavi/navigation/api/data/model/AdminArea;->adminCode:I

    if-eqz v1, :cond_3

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.autonavi.wh.extra.ADMIN_AREA_INFO"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v4}, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->startFragmentForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;->pickArea(Lcom/autonavi/navigation/api/data/model/AdminArea;)V

    goto :goto_0
.end method
