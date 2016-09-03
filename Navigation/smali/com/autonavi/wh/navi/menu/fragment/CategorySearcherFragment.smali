.class public Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;
.super Lcom/autonavi/wh/navi/search/Searcher;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final EXTRA_CATEGORIES:Ljava/lang/String; = "extra_categories"

.field private static final EXTRA_EREA_CODE:Ljava/lang/String; = "extra_erea_code"

.field private static final EXTRA_EREA_NAME:Ljava/lang/String; = "extra_erea_name"

.field private static final REQUEST_CODE_PICK_AREA:I = 0x0

.field private static final REQUEST_CODE_REFRESH_LIST:I = 0x2

.field protected static final REQUEST_CODE_REQUEST_POI:I = 0x1


# instance fields
.field private mAdapter:Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment$CategoryAdapter;

.field private mAreaCode:I

.field private mAreaName:Ljava/lang/String;

.field private mAreaSelect:Landroid/widget/TextView;

.field protected mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

.field protected mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

.field protected mIsRequestPoi:Z

.field private mIsSubCate:Z

.field private mListView:Landroid/widget/ListView;

.field protected mMapCenterPoint:Lcom/autonavi/navigation/api/map/model/LatLng;

.field private mPoiCates:[Lcom/autonavi/navigation/api/poi/model/PoiCategory;

.field private mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/search/Searcher;-><init>()V

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mIsSubCate:Z

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mIsRequestPoi:Z

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mIsSubCate:Z

    return v0
.end method

.method static synthetic access$100(Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private getBasePointType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private getCityAdminCode(Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;)V
    .locals 2

    iget v0, p1, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->adminCode:I

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mAreaCode:I

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->isMunicipality()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->provinceName:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mAreaSelect:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->cityName:Ljava/lang/String;

    goto :goto_0
.end method

.method private setAdminArea(ILjava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mAreaName:Ljava/lang/String;

    iput p1, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mAreaCode:I

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
    invoke-super {p0, p1}, Lcom/autonavi/wh/navi/search/Searcher;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, -0x1

    if-nez p1, :cond_0

    if-ne p2, v2, :cond_0

    const-string v0, "com.autonavi.xm.extra.ADMIN_AREA_INFO"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/data/model/AdminArea;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/autonavi/navigation/api/data/model/AdminArea;->adminCode:I

    iget-object v0, v0, Lcom/autonavi/navigation/api/data/model/AdminArea;->name:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->setAdminArea(ILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-ne p2, v2, :cond_1

    const-string v0, "com.autonavi.xm.extra.POI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/poi/model/Poi;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2, p3}, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->popBack()V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080081

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->startFragmentForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/autonavi/wh/navi/search/Searcher;->onCreateView(Landroid/os/Bundle;)V

    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->setContentView(I)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getGuideManager()Lcom/autonavi/navigation/api/guide/GuideManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getPoiManager()Lcom/autonavi/navigation/api/poi/PoiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    const v0, 0x7f0b012d

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->setTitle(I)V

    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->setTitleRightContent(I)V

    const v0, 0x7f080081

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mAreaSelect:Landroid/widget/TextView;

    invoke-static {}, Lcom/autonavi/navigation/api/map/AnMapUtils;->getMyAdminCode()I

    move-result v0

    iput v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mAreaCode:I

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getDataManager()Lcom/autonavi/navigation/api/data/DataManager;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mAreaCode:I

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/data/DataManager;->getAdminAreaDetail(I)Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->cityName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->cityName:Ljava/lang/String;

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mAreaName:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mAreaSelect:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mAreaSelect:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mAreaSelect:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    new-instance v0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment$CategoryAdapter;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-direct {v0, p0, v1}, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment$CategoryAdapter;-><init>(Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mAdapter:Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment$CategoryAdapter;

    const v0, 0x7f08007f

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/base/widget/CompoundListView;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/CompoundListView;->getListView()Lcom/autonavi/wh/navi/base/widget/ActionListView;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mAdapter:Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment$CategoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getPoiManager()Lcom/autonavi/navigation/api/poi/PoiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/PoiManager;->getAllPoiCategories()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, v0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->provinceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mAreaName:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mPoiCates:[Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    move v1, v2

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v4, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mPoiCates:[Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mAdapter:Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment$CategoryAdapter;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mPoiCates:[Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment$CategoryAdapter;->setData([Lcom/autonavi/navigation/api/poi/model/PoiCategory;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_5

    const-string v0, "com.autonavi.xm.extra.LOCATION_POINT"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/model/LatLng;

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mMapCenterPoint:Lcom/autonavi/navigation/api/map/model/LatLng;

    const-string v0, "extra_erea_code"

    iget v3, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mAreaCode:I

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mAreaCode:I

    const-string v0, "extra_erea_name"

    iget-object v3, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mAreaName:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mAreaName:Ljava/lang/String;

    const-string v0, "extra_categories"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v3, "extra_is_request_poi"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mIsRequestPoi:Z

    :cond_5
    if-eqz v0, :cond_6

    const v1, 0x7f0b00a0

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->setTitle(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    iput-boolean v5, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mIsSubCate:Z

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mAdapter:Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment$CategoryAdapter;

    invoke-virtual {v1, v0}, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment$CategoryAdapter;->setData([Lcom/autonavi/navigation/api/poi/model/PoiCategory;)V

    :cond_6
    iget-boolean v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mIsSubCate:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mAreaSelect:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/autonavi/wh/navi/search/Searcher;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mAdapter:Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment$CategoryAdapter;

    invoke-virtual {v0, p3}, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment$CategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->getChildren()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_1

    iget-object v2, v0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->name:Ljava/lang/String;

    const-string v3, "\u5168\u90e8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mAreaCode:I

    invoke-virtual {p0, v5, v0, v1, v4}, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->searchCategory(Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/poi/model/PoiCategory;IZ)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v3, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v1, "extra_categories"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "extra_erea_code"

    iget v2, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mAreaCode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_erea_name"

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mAreaName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.autonavi.xm.extra.LOCATION_POINT"

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mMapCenterPoint:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "extra_is_request_poi"

    iget-boolean v2, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mIsRequestPoi:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, v4}, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->startFragmentForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mAreaCode:I

    invoke-virtual {p0, v5, v0, v1, v4}, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->searchCategory(Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/poi/model/PoiCategory;IZ)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/autonavi/wh/navi/search/Searcher;->onResume()V

    return-void
.end method

.method public onResumeView()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mAreaSelect:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/CategorySearcherFragment;->mAreaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-super {p0}, Lcom/autonavi/wh/navi/search/Searcher;->onResumeView()V

    return-void
.end method
