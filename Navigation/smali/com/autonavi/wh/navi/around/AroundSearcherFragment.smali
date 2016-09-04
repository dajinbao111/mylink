.class public Lcom/autonavi/wh/navi/around/AroundSearcherFragment;
.super Lcom/autonavi/wh/navigation/app/NaviFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field protected static final DIALOG_ID_SEARCHING:I = 0x0

.field private static final EXTRA_CATEGORIES:Ljava/lang/String; = "extra_categories"

.field public static final EXTRA_IS_SEARCH_BY_CURSOR:Ljava/lang/String; = "extra_is_search_by_cursor"

.field private static final EXTRA_SELECTED_TAB:Ljava/lang/String; = "extra_selected_tab"

.field private static final REQUEST_CODE_GET_SELECTED_TAB:I = 0x1


# instance fields
.field private mAdapter:Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;

.field private mCompoundCirListView:Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;

.field private mDlgSearching:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

.field protected mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

.field protected mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

.field private mIsSubCate:Z

.field private mListView:Lcom/autonavi/wh/navi/base/widget/CircularListView;

.field protected mMapCenterPoint:Lcom/autonavi/navigation/api/map/model/LatLng;

.field private final mOnPoiQueryResultListener:Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;

.field private mPoiCates:[Lcom/autonavi/navigation/api/poi/model/PoiCategory;

.field private mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

.field private mSelectedId:I

.field private mTxtCarOrCursor:Landroid/widget/TextView;

.field private mViewByCarOrCursor:Landroid/view/View;

.field private mViewByDest:Landroid/view/View;

.field private mViewByRoute:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;-><init>()V

    const v0, 0x7f08007b

    iput v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mSelectedId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mIsSubCate:Z

    new-instance v0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$1;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$1;-><init>(Lcom/autonavi/wh/navi/around/AroundSearcherFragment;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mOnPoiQueryResultListener:Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/wh/navi/around/AroundSearcherFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mIsSubCate:Z

    return v0
.end method

.method static synthetic access$100(Lcom/autonavi/wh/navi/around/AroundSearcherFragment;)Lcom/autonavi/wh/navi/base/widget/CircularListView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mListView:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/autonavi/wh/navi/around/AroundSearcherFragment;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->isOnTop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/autonavi/wh/navi/around/AroundSearcherFragment;)Lcom/autonavi/wh/navigation/app/NaviDialogFragment;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mDlgSearching:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/autonavi/wh/navi/around/AroundSearcherFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->dismissDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/autonavi/wh/navi/around/AroundSearcherFragment;[Lcom/autonavi/navigation/api/poi/model/Poi;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->showPoiData([Lcom/autonavi/navigation/api/poi/model/Poi;)V

    return-void
.end method

.method private addData(Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/poi/model/PoiCategory;)V
    .locals 2

    const v0, 0x186a0

    iget-object v1, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByDest:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByCarOrCursor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Lcom/autonavi/navigation/api/poi/PoiManager$AroundQuery;

    invoke-direct {v1, p1, v0}, Lcom/autonavi/navigation/api/poi/PoiManager$AroundQuery;-><init>(Lcom/autonavi/navigation/api/map/model/LatLng;I)V

    sget-object v0, Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;->DISTANCE:Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/poi/PoiManager$AroundQuery;->setOrderBy(Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;)Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;

    invoke-virtual {v1, p2}, Lcom/autonavi/navigation/api/poi/PoiManager$AroundQuery;->setPoiCategory(Lcom/autonavi/navigation/api/poi/model/PoiCategory;)Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/poi/PoiManager;->query(Lcom/autonavi/navigation/api/poi/PoiManager$AroundQuery;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/autonavi/navigation/api/poi/PoiManager$RouteQuery;

    invoke-direct {v1, v0}, Lcom/autonavi/navigation/api/poi/PoiManager$RouteQuery;-><init>(I)V

    sget-object v0, Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;->DEFAULT:Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/poi/PoiManager$RouteQuery;->setOrderBy(Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;)Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;

    invoke-virtual {v1, p2}, Lcom/autonavi/navigation/api/poi/PoiManager$RouteQuery;->setPoiCategory(Lcom/autonavi/navigation/api/poi/model/PoiCategory;)Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/poi/PoiManager;->query(Lcom/autonavi/navigation/api/poi/PoiManager$RouteQuery;)V

    goto :goto_0
.end method

.method private addPoiParentCategory()V
    .locals 4

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getPoiManager()Lcom/autonavi/navigation/api/poi/PoiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/PoiManager;->getAllPoiCategories()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    iput-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mPoiCates:[Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v3, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mPoiCates:[Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mAdapter:Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;

    iget-object v1, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mPoiCates:[Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;->setData([Lcom/autonavi/navigation/api/poi/model/PoiCategory;)V

    goto :goto_0
.end method

.method private doSearch(Lcom/autonavi/navigation/api/poi/model/PoiCategory;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mSelectedId:I

    const v1, 0x7f08007b

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->isSearchByCursor()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mMapCenterPoint:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p0, v0, p1, v2}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->searchAround(Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/poi/model/PoiCategory;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->searchAroundByMyLoc(Lcom/autonavi/navigation/api/poi/model/PoiCategory;Z)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mSelectedId:I

    const v1, 0x7f08007d

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, p1, v2}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->searchAroundAlongRoute(Lcom/autonavi/navigation/api/poi/model/PoiCategory;Z)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mSelectedId:I

    const v1, 0x7f08007e

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, v2}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->searchAroundByDest(Lcom/autonavi/navigation/api/poi/model/PoiCategory;Z)V

    goto :goto_0
.end method

.method private isSearchByCursor()Z
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mTxtCarOrCursor:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private select(I)V
    .locals 1

    const v0, 0x7f08007b

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByCarOrCursor:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->select(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f08007d

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByRoute:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->select(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f08007e

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByDest:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->select(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByCarOrCursor:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->select(Landroid/view/View;)V

    goto :goto_0
.end method

.method private select(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mSelectedId:I

    const v3, 0x7f08007b

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByDest:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByRoute:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByCarOrCursor:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v3, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByDest:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByDest:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object v3, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByRoute:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByRoute:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setFocusable(Z)V

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mListView:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    invoke-virtual {v0, v2}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->setSelection(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mListView:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->requestFocus()Z

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mIsSubCate:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "extra_selected_tab"

    iget v3, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mSelectedId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->setResult(ILandroid/content/Intent;)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    const v3, 0x7f08007d

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByCarOrCursor:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByDest:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByCarOrCursor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByDest:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByRoute:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_2

    :cond_5
    const v3, 0x7f08007e

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByCarOrCursor:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByRoute:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByCarOrCursor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByDest:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByRoute:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_2
.end method

.method private showDlgSearching()V
    .locals 0

    return-void
.end method

.method private showPoiData([Lcom/autonavi/navigation/api/poi/model/Poi;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/search/SearchResult;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.autonavi.wh.extra.POI_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "extra_by_around_search"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "extra_is_request_poi"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->startFragment(Landroid/content/Intent;)V

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
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "extra_selected_tab"

    iget v1, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mSelectedId:I

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->select(I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->select(Landroid/view/View;)V

    return-void
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onCreateView(Landroid/os/Bundle;)V

    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->setContentView(I)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iput-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getGuideManager()Lcom/autonavi/navigation/api/guide/GuideManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getPoiManager()Lcom/autonavi/navigation/api/poi/PoiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    const v0, 0x7f0b009f

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->setTitle(I)V

    const v0, 0x7f08007b

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByCarOrCursor:Landroid/view/View;

    const v0, 0x7f08007c

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mTxtCarOrCursor:Landroid/widget/TextView;

    const v0, 0x7f08007d

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByRoute:Landroid/view/View;

    const v0, 0x7f08007e

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByDest:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByCarOrCursor:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByRoute:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByDest:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByDest:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByRoute:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByCarOrCursor:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByDest:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByRoute:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    new-instance v0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;

    iget-object v1, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-direct {v0, p0, v1}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;-><init>(Lcom/autonavi/wh/navi/around/AroundSearcherFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mAdapter:Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;

    const v0, 0x7f08007f

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mCompoundCirListView:Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mCompoundCirListView:Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;->getListView()Lcom/autonavi/wh/navi/base/widget/CircularListView;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mListView:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mListView:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mListView:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    iget-object v1, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mAdapter:Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mListView:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    invoke-virtual {v0, v2}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->setFocusableInTouchMode(Z)V

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getPoiManager()Lcom/autonavi/navigation/api/poi/PoiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/PoiManager;->getAllPoiCategories()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    iput-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mPoiCates:[Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v4, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mPoiCates:[Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mAdapter:Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;

    iget-object v1, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mPoiCates:[Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;->setData([Lcom/autonavi/navigation/api/poi/model/PoiCategory;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v0, "com.autonavi.wh.extra.LOCATION_POINT"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/model/LatLng;

    iput-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mMapCenterPoint:Lcom/autonavi/navigation/api/map/model/LatLng;

    const-string v0, "extra_selected_tab"

    iget v3, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mSelectedId:I

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mSelectedId:I

    const-string v0, "extra_categories"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v3, "extra_is_search_by_cursor"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_3

    const v3, 0x7f0b00a0

    invoke-virtual {p0, v3}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->setTitle(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    iput-boolean v5, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mIsSubCate:Z

    iget-object v3, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mAdapter:Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;

    invoke-virtual {v3, v0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;->setData([Lcom/autonavi/navigation/api/poi/model/PoiCategory;)V

    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mTxtCarOrCursor:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    const v1, 0x7f0b00ac

    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mTxtCarOrCursor:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    const v0, 0x7f02014f

    :goto_4
    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mSelectedId:I

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->select(I)V

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getGuideManager()Lcom/autonavi/navigation/api/guide/GuideManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->isGuiding()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByRoute:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByDest:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByRoute:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByDest:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->addPoiParentCategory()V

    move v0, v1

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->addPoiParentCategory()V

    move v0, v2

    goto :goto_2

    :cond_5
    const v1, 0x7f0b00ab

    goto :goto_3

    :cond_6
    const v0, 0x7f02014e

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByRoute:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByDest:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByRoute:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mViewByDest:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mOnPoiQueryResultListener:Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    iget-object v1, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mOnPoiQueryResultListener:Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/poi/PoiManager;->removeOnPoiQueryResultListener(Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;)V

    :cond_0
    invoke-super {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mAdapter:Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;

    invoke-virtual {v0, p3}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;->getItem(I)Ljava/lang/Object;

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

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->doSearch(Lcom/autonavi/navigation/api/poi/model/PoiCategory;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v3, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "extra_is_search_by_cursor"

    invoke-direct {p0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->isSearchByCursor()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v1, "extra_categories"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "extra_selected_tab"

    iget v2, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mSelectedId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.autonavi.wh.extra.LOCATION_POINT"

    iget-object v2, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mMapCenterPoint:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v4}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->startFragmentForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->doSearch(Lcom/autonavi/navigation/api/poi/model/PoiCategory;)V

    goto :goto_0
.end method

.method public onResumeView()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mListView:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mListView:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->requestFocus()Z

    :cond_0
    invoke-super {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onResumeView()V

    return-void
.end method

.method protected searchAround(Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/poi/model/PoiCategory;Z)V
    .locals 2

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->showDlgSearching()V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    iget-object v1, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mOnPoiQueryResultListener:Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/poi/PoiManager;->addOnPoiQueryResultListener(Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;)V

    invoke-direct {p0, p1, p2}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->addData(Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/poi/model/PoiCategory;)V

    return-void
.end method

.method protected searchAroundAlongRoute(Lcom/autonavi/navigation/api/poi/model/PoiCategory;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->searchAround(Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/poi/model/PoiCategory;Z)V

    return-void
.end method

.method protected searchAroundByDest(Lcom/autonavi/navigation/api/poi/model/PoiCategory;Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->getGuidingRoute()Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->getGuidingRoute()Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/navigation/api/route/model/Route;->end:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getPoi()Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->searchAround(Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/poi/model/PoiCategory;Z)V

    goto :goto_0
.end method

.method protected searchAroundByMyLoc(Lcom/autonavi/navigation/api/poi/model/PoiCategory;Z)V
    .locals 1

    invoke-static {}, Lcom/autonavi/navigation/api/map/AnMapUtils;->getMyLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->searchAround(Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/poi/model/PoiCategory;Z)V

    return-void
.end method
