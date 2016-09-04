.class public Lcom/autonavi/wh/navi/search/Searcher;
.super Lcom/autonavi/wh/navigation/app/NaviFragment;


# static fields
.field protected static final DIALOG_ID_SEARCHING:I = 0x0

.field protected static final REQUEST_CODE_REQUEST_POI:I = 0x1


# instance fields
.field private mCategoryId:I

.field protected mDataManager:Lcom/autonavi/navigation/api/data/DataManager;

.field private mDlgSearching:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

.field protected mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

.field protected mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

.field protected mIsRequestPoi:Z

.field private mIsSearchAround:Z

.field private mIsSearchByAddress:Z

.field private mIsSearchByPhone:Z

.field private final mOnPoiQueryResultListener:Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;

.field private mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

.field private mSearchAroundByDest:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;-><init>()V

    iput-boolean v1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mIsSearchAround:Z

    iput-boolean v1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mIsSearchByPhone:Z

    iput-boolean v1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mIsSearchByAddress:Z

    iput-boolean v1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mIsRequestPoi:Z

    new-instance v0, Lcom/autonavi/wh/navi/search/Searcher$1;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navi/search/Searcher$1;-><init>(Lcom/autonavi/wh/navi/search/Searcher;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mOnPoiQueryResultListener:Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;

    iput-boolean v1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mSearchAroundByDest:Z

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/wh/navi/search/Searcher;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/search/Searcher;->isOnTop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/autonavi/wh/navi/search/Searcher;)Lcom/autonavi/wh/navigation/app/NaviDialogFragment;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mDlgSearching:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/autonavi/wh/navi/search/Searcher;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/wh/navi/search/Searcher;->showPoiData(Ljava/util/List;)V

    return-void
.end method

.method private showDlgSearching()V
    .locals 0

    return-void
.end method

.method private showPoiData(Ljava/util/List;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/navigation/api/poi/model/Poi;

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/search/Searcher;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/autonavi/wh/navi/search/SearchResult;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.autonavi.wh.extra.POI_DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "extra_should_show_detail_address"

    iget-boolean v2, p0, Lcom/autonavi/wh/navi/search/Searcher;->mIsSearchByAddress:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "extra_by_around_search"

    iget-boolean v2, p0, Lcom/autonavi/wh/navi/search/Searcher;->mIsSearchAround:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "extra_by_phone_search"

    iget-boolean v2, p0, Lcom/autonavi/wh/navi/search/Searcher;->mIsSearchByPhone:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "extra_is_request_poi"

    iget-boolean v2, p0, Lcom/autonavi/wh/navi/search/Searcher;->mIsRequestPoi:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mIsRequestPoi:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/wh/navi/search/Searcher;->startFragmentForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/autonavi/wh/navi/search/Searcher;->startFragment(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected handleAdminAreaDetailResult(Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;)V
    .locals 0

    return-void
.end method

.method protected handleMyLocationResult(Lcom/autonavi/navigation/api/map/model/MyLocation;)V
    .locals 0

    return-void
.end method

.method protected handlePoiCategoriesResult([Lcom/autonavi/navigation/api/poi/model/PoiCategory;)V
    .locals 0

    return-void
.end method

.method protected handleRoutePointResult([Lcom/autonavi/navigation/api/poi/model/Poi;)V
    .locals 0

    return-void
.end method

.method protected handleRoutesResult([Lcom/autonavi/navigation/api/route/model/Route;)V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, v1, p3}, Lcom/autonavi/wh/navi/search/Searcher;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/search/Searcher;->popBack()V

    :cond_0
    return-void
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onCreateView(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/search/Searcher;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iput-object v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getDataManager()Lcom/autonavi/navigation/api/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mDataManager:Lcom/autonavi/navigation/api/data/DataManager;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getGuideManager()Lcom/autonavi/navigation/api/guide/GuideManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getPoiManager()Lcom/autonavi/navigation/api/poi/PoiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/search/Searcher;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "extra_is_request_poi"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mIsRequestPoi:Z

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/wh/navi/search/Searcher;->onPreRegisterOnNaviServiceStartListener()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onDestroy()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mOnPoiQueryResultListener:Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mOnPoiQueryResultListener:Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/poi/PoiManager;->removeOnPoiQueryResultListener(Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;)V

    :cond_0
    return-void
.end method

.method protected onPreRegisterOnNaviServiceStartListener()V
    .locals 0

    return-void
.end method

.method protected preproccessSearchResult([Lcom/autonavi/navigation/api/poi/model/Poi;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected searchAround(Lcom/autonavi/navigation/api/poi/model/Poi;ILjava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mIsSearchAround:Z

    if-eqz p4, :cond_0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/search/Searcher;->showDlgSearching()V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mOnPoiQueryResultListener:Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/poi/PoiManager;->addOnPoiQueryResultListener(Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    new-instance v1, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;

    invoke-direct {v1, p3}, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/poi/PoiManager;->query(Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;)V

    return-void
.end method

.method protected searchAroundAlongRoute(ILjava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mIsSearchAround:Z

    if-eqz p3, :cond_0

    :cond_0
    return-void
.end method

.method protected searchAroundAlongRoute(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/autonavi/wh/navi/search/Searcher;->searchAroundAlongRoute(ILjava/lang/String;Z)V

    return-void
.end method

.method protected searchAroundAlongRoute(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/autonavi/wh/navi/search/Searcher;->searchAroundAlongRoute(ILjava/lang/String;Z)V

    return-void
.end method

.method protected searchAroundByCursor(IZ)V
    .locals 0

    return-void
.end method

.method protected searchAroundByDest(I)V
    .locals 1

    iput p1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mCategoryId:I

    invoke-direct {p0}, Lcom/autonavi/wh/navi/search/Searcher;->showDlgSearching()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mSearchAroundByDest:Z

    return-void
.end method

.method protected searchAroundByMyLoc(IZ)V
    .locals 0

    return-void
.end method

.method protected searchAroundByMyLoc(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method protected searchByAddress(Ljava/lang/String;ZI)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mIsSearchAround:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mIsSearchByAddress:Z

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/search/Searcher;->showDlgSearching()V

    :cond_0
    new-instance v0, Lcom/autonavi/navigation/api/poi/PoiManager$AddressQuery;

    invoke-direct {v0, p1}, Lcom/autonavi/navigation/api/poi/PoiManager$AddressQuery;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;->DEFAULT:Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/poi/PoiManager$AddressQuery;->setOrderBy(Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;)Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getAnMap()Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/map/AnMap;->getMyLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/poi/PoiManager$AddressQuery;->seTtarget(Lcom/autonavi/navigation/api/map/model/LatLng;)V

    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    iget-object v2, p0, Lcom/autonavi/wh/navi/search/Searcher;->mOnPoiQueryResultListener:Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/poi/PoiManager;->addOnPoiQueryResultListener(Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    invoke-virtual {v0, p3}, Lcom/autonavi/navigation/api/poi/PoiManager$AddressQuery;->setAdminCode(I)Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/poi/PoiManager$AddressQuery;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/poi/PoiManager;->query(Lcom/autonavi/navigation/api/poi/PoiManager$AddressQuery;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    iget-object v2, p0, Lcom/autonavi/wh/navi/search/Searcher;->mOnPoiQueryResultListener:Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/poi/PoiManager;->addOnPoiQueryResultListener(Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/poi/PoiManager;->query(Lcom/autonavi/navigation/api/poi/PoiManager$AddressQuery;)V

    goto :goto_0
.end method

.method protected searchByKeyword(Ljava/lang/String;ZI)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mIsSearchAround:Z

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/search/Searcher;->showDlgSearching()V

    :cond_0
    new-instance v0, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;

    invoke-direct {v0, p1}, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;->DEFAULT:Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;->setOrderBy(Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;)Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getAnMap()Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/map/AnMap;->getMyLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;->seTtarget(Lcom/autonavi/navigation/api/map/model/LatLng;)V

    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    iget-object v2, p0, Lcom/autonavi/wh/navi/search/Searcher;->mOnPoiQueryResultListener:Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/poi/PoiManager;->addOnPoiQueryResultListener(Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    invoke-virtual {v0, p3}, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;->setAdminCode(I)Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/poi/PoiManager;->query(Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    iget-object v2, p0, Lcom/autonavi/wh/navi/search/Searcher;->mOnPoiQueryResultListener:Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/poi/PoiManager;->addOnPoiQueryResultListener(Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/poi/PoiManager;->query(Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;)V

    goto :goto_0
.end method

.method protected searchByName(Lcom/autonavi/navigation/api/poi/model/Poi;ILjava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mIsSearchAround:Z

    if-eqz p4, :cond_0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/search/Searcher;->showDlgSearching()V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mOnPoiQueryResultListener:Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/poi/PoiManager;->addOnPoiQueryResultListener(Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    new-instance v1, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;

    invoke-direct {v1, p3}, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/poi/PoiManager;->query(Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;)V

    return-void
.end method

.method protected searchByPhone(Ljava/lang/String;ZI)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mIsSearchAround:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mIsSearchByPhone:Z

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/search/Searcher;->showDlgSearching()V

    :cond_0
    new-instance v0, Lcom/autonavi/navigation/api/poi/PoiManager$TelQuery;

    invoke-direct {v0, p1}, Lcom/autonavi/navigation/api/poi/PoiManager$TelQuery;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;->DEFAULT:Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/poi/PoiManager$TelQuery;->setOrderBy(Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;)Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getAnMap()Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/map/AnMap;->getMyLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/poi/PoiManager$TelQuery;->seTtarget(Lcom/autonavi/navigation/api/map/model/LatLng;)V

    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    iget-object v2, p0, Lcom/autonavi/wh/navi/search/Searcher;->mOnPoiQueryResultListener:Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/poi/PoiManager;->addOnPoiQueryResultListener(Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    invoke-virtual {v0, p3}, Lcom/autonavi/navigation/api/poi/PoiManager$TelQuery;->setAdminCode(I)Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/poi/PoiManager$TelQuery;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/poi/PoiManager;->query(Lcom/autonavi/navigation/api/poi/PoiManager$TelQuery;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    iget-object v2, p0, Lcom/autonavi/wh/navi/search/Searcher;->mOnPoiQueryResultListener:Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/poi/PoiManager;->addOnPoiQueryResultListener(Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/poi/PoiManager;->query(Lcom/autonavi/navigation/api/poi/PoiManager$TelQuery;)V

    goto :goto_0
.end method

.method protected searchCategory(Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/poi/model/PoiCategory;IZ)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mIsSearchAround:Z

    if-eqz p4, :cond_0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/search/Searcher;->showDlgSearching()V

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mOnPoiQueryResultListener:Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/poi/PoiManager;->addOnPoiQueryResultListener(Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;)V

    new-instance v0, Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;

    invoke-direct {v0, p2}, Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;-><init>(Lcom/autonavi/navigation/api/poi/model/PoiCategory;)V

    sget-object v1, Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;->DISTANCE:Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;->setOrderBy(Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;)Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;

    invoke-virtual {v0, p3}, Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;->setAdminCode(I)V

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;->seTtarget(Lcom/autonavi/navigation/api/map/model/LatLng;)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/poi/PoiManager;->query(Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;)V

    :cond_1
    return-void
.end method

.method protected searchIntersection(Ljava/lang/String;ZI)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mIsSearchAround:Z

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/search/Searcher;->showDlgSearching()V

    :cond_0
    new-instance v0, Lcom/autonavi/navigation/api/poi/PoiManager$CrossingQuery;

    invoke-direct {v0, p1}, Lcom/autonavi/navigation/api/poi/PoiManager$CrossingQuery;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getAnMap()Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/map/AnMap;->getMyLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/poi/PoiManager$CrossingQuery;->seTtarget(Lcom/autonavi/navigation/api/map/model/LatLng;)V

    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    iget-object v2, p0, Lcom/autonavi/wh/navi/search/Searcher;->mOnPoiQueryResultListener:Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/poi/PoiManager;->addOnPoiQueryResultListener(Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;)V

    invoke-virtual {v0, p3}, Lcom/autonavi/navigation/api/poi/PoiManager$CrossingQuery;->setAdminCode(I)Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/poi/PoiManager;->query(Lcom/autonavi/navigation/api/poi/PoiManager$CrossingQuery;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    iget-object v2, p0, Lcom/autonavi/wh/navi/search/Searcher;->mOnPoiQueryResultListener:Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/poi/PoiManager;->addOnPoiQueryResultListener(Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Searcher;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/poi/PoiManager;->query(Lcom/autonavi/navigation/api/poi/PoiManager$CrossingQuery;)V

    goto :goto_0
.end method

.method protected showErrorToast(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b006f

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b0070

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b0072

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0
.end method

.method protected showSoftInput(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/Searcher;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/wh/navi/search/Searcher;->getInputMethodManager()Lcom/autonavi/wh/ime/InputMethodManager;

    move-result-object v0

    check-cast p1, Lcom/autonavi/wh/ime/widget/EditText;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/ime/InputMethodManager;->showSoftInput(Lcom/autonavi/wh/ime/widget/EditText;)V

    goto :goto_0
.end method
