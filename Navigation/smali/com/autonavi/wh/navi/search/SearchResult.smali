.class public Lcom/autonavi/wh/navi/search/SearchResult;
.super Lcom/autonavi/wh/navigation/app/NaviFragment;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final EXTRA_BY_AROUND_SEARCH:Ljava/lang/String; = "extra_by_around_search"

.field public static final EXTRA_BY_PHONE_SEARCH:Ljava/lang/String; = "extra_by_phone_search"

.field public static final EXTRA_FOUR_SERVICE:Ljava/lang/String; = "extra_four_service"

.field public static final EXTRA_SHOULD_SHOW_DETAIL_ADDRESS:Ljava/lang/String; = "extra_should_show_detail_address"

.field private static final HONGKONG_AREA_CODE:I = 0x354

.field private static final MACAO_AREA_CODE:I = 0x355

.field private static final REQUEST_CODE_REQUEST_POI:I = 0x1


# instance fields
.field private mAdapter:Lcom/autonavi/wh/navi/search/SearchResult$PoiListAdapter;

.field private mCompoundCirListView:Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;

.field private mDistanceComparator:Ljava/util/Comparator;

.field private mIsFourService:Z

.field private mIsRequestPoi:Z

.field private mIsSearchByAround:Z

.field private mIsSearchByPhone:Z

.field protected mListPois:Lcom/autonavi/wh/navi/base/widget/CircularListView;

.field private mMatchComparator:Ljava/util/Comparator;

.field protected mPois:[Lcom/autonavi/navigation/api/poi/model/Poi;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;-><init>()V

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mIsSearchByAround:Z

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mIsSearchByPhone:Z

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mIsRequestPoi:Z

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mIsFourService:Z

    return-void
.end method

.method private getDistanceComparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mDistanceComparator:Ljava/util/Comparator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navi/search/SearchResult$1;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navi/search/SearchResult$1;-><init>(Lcom/autonavi/wh/navi/search/SearchResult;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mDistanceComparator:Ljava/util/Comparator;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mDistanceComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method private getMatchComparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mMatchComparator:Ljava/util/Comparator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navi/search/SearchResult$2;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navi/search/SearchResult$2;-><init>(Lcom/autonavi/wh/navi/search/SearchResult;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mMatchComparator:Ljava/util/Comparator;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mMatchComparator:Ljava/util/Comparator;

    return-object v0
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

.method public init()V
    .locals 2

    new-instance v0, Lcom/autonavi/wh/navi/search/SearchResult$PoiListAdapter;

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/search/SearchResult;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/wh/navi/search/SearchResult$PoiListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mAdapter:Lcom/autonavi/wh/navi/search/SearchResult$PoiListAdapter;

    const v0, 0x7f080160

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/search/SearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mCompoundCirListView:Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mCompoundCirListView:Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;->getListView()Lcom/autonavi/wh/navi/base/widget/CircularListView;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mListPois:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mListPois:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mListPois:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mAdapter:Lcom/autonavi/wh/navi/search/SearchResult$PoiListAdapter;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mListPois:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public notifyDataChanged([Lcom/autonavi/navigation/api/poi/model/Poi;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mIsFourService:Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mAdapter:Lcom/autonavi/wh/navi/search/SearchResult$PoiListAdapter;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navi/search/SearchResult$PoiListAdapter;->setData([Lcom/autonavi/navigation/api/poi/model/Poi;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, v1, p3}, Lcom/autonavi/wh/navi/search/SearchResult;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/search/SearchResult;->popBack()V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mPois:[Lcom/autonavi/navigation/api/poi/model/Poi;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/search/SearchResult;->getDistanceComparator()Ljava/util/Comparator;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mAdapter:Lcom/autonavi/wh/navi/search/SearchResult$PoiListAdapter;

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mPois:[Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/search/SearchResult$PoiListAdapter;->setData([Lcom/autonavi/navigation/api/poi/model/Poi;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mListPois:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->setSelection(I)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/wh/navi/search/SearchResult;->getMatchComparator()Ljava/util/Comparator;

    move-result-object v0

    goto :goto_0
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onCreateView(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/search/SearchResult;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "com.autonavi.xm.extra.POI_DATA"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/navigation/api/poi/model/Poi;

    check-cast v0, [Lcom/autonavi/navigation/api/poi/model/Poi;

    iput-object v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mPois:[Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mPois:[Lcom/autonavi/navigation/api/poi/model/Poi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mPois:[Lcom/autonavi/navigation/api/poi/model/Poi;

    array-length v0, v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/wh/navi/search/SearchResult;->popBack()V

    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_2

    const-string v0, "extra_is_request_poi"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mIsRequestPoi:Z

    :cond_2
    const-string v0, "extra_by_around_search"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mIsSearchByAround:Z

    const-string v0, "extra_by_phone_search"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mIsSearchByPhone:Z

    const-string v0, "extra_four_service"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mIsFourService:Z

    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/search/SearchResult;->setContentView(I)V

    const v0, 0x7f0b00a6

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/search/SearchResult;->setTitle(I)V

    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/search/SearchResult;->setTitleRightContent(I)V

    const v0, 0x7f080162

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/search/SearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mPois:[Lcom/autonavi/navigation/api/poi/model/Poi;

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080163

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/search/SearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iget-boolean v2, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mIsSearchByAround:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mPois:[Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-direct {p0}, Lcom/autonavi/wh/navi/search/SearchResult;->getDistanceComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :goto_1
    invoke-virtual {p0}, Lcom/autonavi/wh/navi/search/SearchResult;->init()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mAdapter:Lcom/autonavi/wh/navi/search/SearchResult$PoiListAdapter;

    iget-object v2, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mPois:[Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0, v2}, Lcom/autonavi/wh/navi/search/SearchResult$PoiListAdapter;->setData([Lcom/autonavi/navigation/api/poi/model/Poi;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mAdapter:Lcom/autonavi/wh/navi/search/SearchResult$PoiListAdapter;

    iget-boolean v2, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mIsSearchByPhone:Z

    invoke-virtual {v0, v2}, Lcom/autonavi/wh/navi/search/SearchResult$PoiListAdapter;->isShowPhone(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mAdapter:Lcom/autonavi/wh/navi/search/SearchResult$PoiListAdapter;

    const-string v2, "extra_should_show_detail_address"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/search/SearchResult$PoiListAdapter;->toggleShowDetailAddress(Z)V

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mIsFourService:Z

    if-eqz v2, :cond_4

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    const/4 v1, 0x1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/search/SearchResult;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v0

    const-class v3, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/poi/model/Poi;

    new-instance v3, Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/autonavi/navigation/api/poi/model/Poi;-><init>(Lcom/autonavi/navigation/api/map/model/LatLng;)V

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/autonavi/navigation/api/poi/model/Poi;->setAddress(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/autonavi/navigation/api/poi/model/Poi;->setName(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getTel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->setTel(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;

    const-string v0, "com.autonavi.xm.extra.POI"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "extra_enable_around_search"

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mIsSearchByAround:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "extra_is_request_poi"

    iget-boolean v3, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mIsRequestPoi:Z

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "extra_four_service"

    iget-boolean v3, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mIsFourService:Z

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/search/SearchResult;->mIsRequestPoi:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2, v1}, Lcom/autonavi/wh/navi/search/SearchResult;->startFragmentForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/autonavi/wh/navi/search/SearchResult;->startFragment(Landroid/content/Intent;)V

    goto :goto_1
.end method
