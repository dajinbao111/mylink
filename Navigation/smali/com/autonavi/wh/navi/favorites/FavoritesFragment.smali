.class public Lcom/autonavi/wh/navi/favorites/FavoritesFragment;
.super Lcom/autonavi/wh/navigation/app/NaviFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final DIALOG_ID_CLEAR:I = 0x2

.field private static final DIALOG_ID_COMPUTING_ROUTE:I = 0xa

.field private static final DIALOG_ID_DELETE_ITEM:I = 0x1

.field private static final DIALOG_ID_LOADING:I = 0xc

.field private static final DIALOG_ID_RESET_ROUTE_POINT_FAVORITE:I = 0xb

.field public static final EXTRA_FAVORITES_TYPE:Ljava/lang/String; = "extra_favorites_type"

.field public static final FAVORITES_TYPE_DEFALUT:I = 0x1

.field public static final FAVORITES_TYPE_HISTORY:I = 0x2

.field private static final MSG_ID_UPDATE:I = 0x0

.field private static final REQUEST_CODE_REQUEST_POI:I = 0x1

.field private static final REQUEST_CODE_ROUTE_OVER_VIEW:I = 0x2


# instance fields
.field private cateTpye:I

.field protected mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

.field private mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

.field private mCheckAll:Landroid/widget/CheckBox;

.field private final mCheckStatus:Landroid/util/SparseBooleanArray;

.field private mCompoundCirListView:Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;

.field private mDialogComputing:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

.field private mDlgClear:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

.field private mDlgDeleteItem:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

.field private mDlgLoading:Lcom/autonavi/wh/navigation/app/AlertDialogFragment;

.field private mDlgResetRoutePoint:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

.field private mFavoriteCategory:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

.field private mFavoriteManager:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

.field private mFavoritePois:Ljava/util/List;

.field private mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

.field private mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

.field private mIsComputingRoute:Z

.field private mIsComputingRouteCanceled:Z

.field private mIsFirst:Z

.field private mIsRequestPoi:Z

.field private mListPois:Lcom/autonavi/wh/navi/base/widget/CircularListView;

.field private mNoDataIndicator:Landroid/view/View;

.field private mPoiAdapter:Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;

.field protected mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

.field private mTargetPosition:I

.field private mTextDelete:Landroid/widget/TextView;

.field private mTxtConfirm:Landroid/widget/TextView;

.field private myThread:Ljava/lang/Thread;

.field private final onCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

.field protected routeCalculationResult:Lcom/autonavi/navigation/api/route/model/CalculationResult;

.field private final source:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;-><init>()V

    sget-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->DEFAULT:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mFavoriteCategory:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->source:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mCheckStatus:Landroid/util/SparseBooleanArray;

    iput-boolean v1, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mIsRequestPoi:Z

    iput-boolean v1, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mIsComputingRoute:Z

    iput-boolean v1, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mIsComputingRouteCanceled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->myThread:Ljava/lang/Thread;

    iput-boolean v1, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mIsFirst:Z

    new-instance v0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$1;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$1;-><init>(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->onCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    return-void
.end method

.method static synthetic access$100(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->isOnTop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mTextDelete:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;)Lcom/autonavi/wh/navigation/app/NaviDialogFragment;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mDialogComputing:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->dismissDialog(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;Lcom/autonavi/navigation/api/route/model/RoutePoint;)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->assertRoutePoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mIsRequestPoi:Z

    return v0
.end method

.method static synthetic access$700(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->isMultiChoice()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mCheckStatus:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$900(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;)Lcom/autonavi/wh/navi/base/widget/CircularListView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mListPois:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    return-object v0
.end method

.method private assertRoutePoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/16 v3, 0xa

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v1

    const/4 v2, -0x5

    if-ne v1, v2, :cond_1

    invoke-virtual {p1, v5}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->selectBindingRoad(I)V

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v3}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->dismissDialog(I)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v2, 0x7f0b0070

    invoke-virtual {v1, v2}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    move-object p1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_3

    invoke-virtual {p0, v3}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->dismissDialog(I)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v2, 0x7f0b0088

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v1

    const/4 v2, -0x3

    if-ne v1, v2, :cond_4

    invoke-virtual {p0, v3}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->dismissDialog(I)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v2, 0x7f0b0072

    invoke-virtual {v1, v2}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    move-object p1, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v1

    const/4 v2, -0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->dismissDialog(I)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v2, 0x7f0b0071

    invoke-virtual {p0, v2}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private batchDeletePoi()V
    .locals 6

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mCheckStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mCheckStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mFavoritePois:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-wide v4, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [J

    :goto_1
    array-length v0, v1

    if-ge v2, v0, :cond_2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mFavoriteManager:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->remove([J)Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mFavoriteManager:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mFavoriteCategory:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->getAll(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mFavoritePois:Ljava/util/List;

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mPoiAdapter:Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;

    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mFavoritePois:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->setData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mPoiAdapter:Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->exitMultiChoice()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b00d1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    return-void
.end method

.method private enterMultiChoice()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mListPois:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mTextDelete:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mCheckAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mTxtConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mListPois:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->setSelection(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mListPois:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->requestFocus()Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mTxtConfirm:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mCheckStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mPoiAdapter:Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;

    invoke-virtual {v2}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mCheckStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mPoiAdapter:Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private exitMultiChoice()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mListPois:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mListPois:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->setSelection(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mListPois:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->requestFocus()Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mCheckAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mTxtConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mTextDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mCheckStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mPoiAdapter:Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;

    invoke-virtual {v2}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mCheckStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mPoiAdapter:Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private isMultiChoice()Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mListPois:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->getChoiceMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setEmptyView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mListPois:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mListPois:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    invoke-virtual {v1}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mListPois:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method private setFinalDest(Lcom/autonavi/navigation/api/poi/model/Poi;I)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$2;-><init>(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;Lcom/autonavi/navigation/api/poi/model/Poi;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showComputingDialog()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mDialogComputing:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navigation/app/ProgressDialogFragment$Builder;

    invoke-direct {v0}, Lcom/autonavi/wh/navigation/app/ProgressDialogFragment$Builder;-><init>()V

    const v1, 0x7f0b0073

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/app/ProgressDialogFragment$Builder;->setMessage(I)Lcom/autonavi/wh/navigation/app/AlertDialogFragment$Builder;

    move-result-object v0

    const v1, 0x7f0b0076

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/app/AlertDialogFragment$Builder;->setNegativeButton(I)Lcom/autonavi/wh/navigation/app/AlertDialogFragment$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/wh/navigation/app/AlertDialogFragment$Builder;->setCancelable(Z)Lcom/autonavi/wh/navigation/app/AlertDialogFragment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/app/AlertDialogFragment$Builder;->create()Lcom/autonavi/wh/navigation/app/AlertDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mDialogComputing:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mDialogComputing:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->showDialog(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mIsComputingRoute:Z

    iput-boolean v2, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mIsComputingRouteCanceled:Z

    return-void
.end method

.method private showDlgClear()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mDlgClear:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    invoke-direct {v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;-><init>()V

    const v1, 0x7f0b0076

    const v2, 0x7f020385

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setNegativeButton(II)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00c5

    const v2, 0x7f020389

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setPositiveButton(II)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->create()Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mDlgClear:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mDlgClear:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->showDialog(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    return-void
.end method

.method private showDlgDeleteItem()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mDlgDeleteItem:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    invoke-direct {v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;-><init>()V

    const v1, 0x7f0b0076

    const v2, 0x7f020385

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setNegativeButton(II)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00c8

    const v2, 0x7f020391

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setPositiveButton(II)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->create()Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mDlgDeleteItem:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mDlgDeleteItem:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->showDialog(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    return-void
.end method

.method private showDlgLoading()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mDlgLoading:Lcom/autonavi/wh/navigation/app/AlertDialogFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navigation/app/ProgressDialogFragment$Builder;

    invoke-direct {v0}, Lcom/autonavi/wh/navigation/app/ProgressDialogFragment$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/app/ProgressDialogFragment$Builder;->setCancelable(Z)Lcom/autonavi/wh/navigation/app/AlertDialogFragment$Builder;

    move-result-object v0

    const v1, 0x7f0b00c6

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/app/AlertDialogFragment$Builder;->setMessage(I)Lcom/autonavi/wh/navigation/app/AlertDialogFragment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/app/AlertDialogFragment$Builder;->create()Lcom/autonavi/wh/navigation/app/AlertDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mDlgLoading:Lcom/autonavi/wh/navigation/app/AlertDialogFragment;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mDlgLoading:Lcom/autonavi/wh/navigation/app/AlertDialogFragment;

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->showDialog(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    return-void
.end method

.method private showDlgResetRoutePoint()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mDlgResetRoutePoint:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    invoke-direct {v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;-><init>()V

    const v1, 0x7f0b0076

    const v2, 0x7f020385

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setNegativeButton(II)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0075

    const v2, 0x7f0203a6

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setPositiveButton(II)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->create()Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mDlgResetRoutePoint:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mDlgResetRoutePoint:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->showDialog(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    return-void
.end method

.method private startPoiBrowser(Landroid/view/View;I)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mFavoriteCategory:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    sget-object v2, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->DEFAULT:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mIsRequestPoi:Z

    if-eqz v0, :cond_0

    const-string v2, "com.autonavi.wh.extra.FAVORITE_POI"

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mFavoritePois:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_0
    const-string v0, "extra_is_request_poi"

    iget-boolean v2, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mIsRequestPoi:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mIsRequestPoi:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->startFragmentForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void

    :cond_0
    const-string v2, "com.autonavi.wh.extra.FAVORITE_POI"

    iget-object v3, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mFavoritePois:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mIsRequestPoi:Z

    if-eqz v0, :cond_2

    const-string v2, "com.autonavi.wh.extra.POI"

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mFavoritePois:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v2, "com.autonavi.wh.extra.POI"

    iget-object v3, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mFavoritePois:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->startFragment(Landroid/content/Intent;)V

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
    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->popBack()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f08009e

    if-ne v0, v2, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->startPoiBrowser(Landroid/view/View;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v2, 0x7f0800d1

    if-ne v0, v2, :cond_2

    invoke-direct {p0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->enterMultiChoice()V

    goto :goto_0

    :cond_2
    const v2, 0x7f0800d0

    if-ne v0, v2, :cond_9

    move v0, v1

    move v2, v1

    move v3, v4

    :goto_1
    iget-object v5, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mCheckStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    iget-object v5, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mCheckStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v3, :cond_4

    move v3, v4

    :goto_2
    iget-object v5, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mCheckStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v2, :cond_5

    :cond_3
    move v2, v4

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v3, v1

    goto :goto_2

    :cond_5
    move v2, v1

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->showDlgClear()V

    goto :goto_0

    :cond_7
    if-nez v2, :cond_8

    invoke-direct {p0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->exitMultiChoice()V

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->showDlgDeleteItem()V

    goto :goto_0

    :cond_9
    const v2, 0x7f0800cf

    if-ne v0, v2, :cond_0

    :goto_4
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mCheckStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mCheckStatus:Landroid/util/SparseBooleanArray;

    iget-object v2, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mCheckAll:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mPoiAdapter:Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onCreateView(Landroid/os/Bundle;)V

    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->setContentView(I)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput v2, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->cateTpye:I

    if-eqz v0, :cond_0

    const-string v1, "extra_favorites_type"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->cateTpye:I

    const-string v1, "extra_is_request_poi"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mIsRequestPoi:Z

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mFavoritePois:Ljava/util/List;

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getAnMap()Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getRouteManager()Lcom/autonavi/navigation/api/route/RouteManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getGuideManager()Lcom/autonavi/navigation/api/guide/GuideManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getFavoriteManager()Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mFavoriteManager:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->setTitleRightContent(I)V

    const v0, 0x7f0800d1

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mTextDelete:Landroid/widget/TextView;

    const v0, 0x7f0800d0

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mTxtConfirm:Landroid/widget/TextView;

    const v0, 0x7f0800cf

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mCheckAll:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mIsRequestPoi:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mTextDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f080082

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f030030

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mNoDataIndicator:Landroid/view/View;

    const v0, 0x7f0800cc

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mCompoundCirListView:Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mCompoundCirListView:Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;->getListView()Lcom/autonavi/wh/navi/base/widget/CircularListView;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mListPois:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mListPois:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;

    invoke-direct {v0, p0, v4}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;-><init>(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;Lcom/autonavi/wh/navi/favorites/FavoritesFragment$1;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mPoiAdapter:Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mListPois:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mPoiAdapter:Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->onCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/RouteManager;->addOnCalculationResultListener(Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mTextDelete:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mTxtConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mCheckAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->onCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->onCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/RouteManager;->removeOnCalculationResultListener(Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mIsFirst:Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->myThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->myThread:Ljava/lang/Thread;

    :cond_1
    invoke-super {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onDestroy()V

    return-void
.end method

.method public onDialogClick(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, v4, :cond_1

    if-ne p2, v2, :cond_0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->batchDeletePoi()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    if-ne p2, v2, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mFavoriteManager:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mFavoriteCategory:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->clear(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;)Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mNoDataIndicator:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mPoiAdapter:Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->setData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mPoiAdapter:Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mTextDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mTextDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-direct {p0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->isMultiChoice()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->exitMultiChoice()V

    :cond_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b00d1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    if-ne p2, v2, :cond_0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->showComputingDialog()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mPoiAdapter:Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;

    iget v1, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mTargetPosition:I

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    iget v1, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mTargetPosition:I

    invoke-direct {p0, v0, v1}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->setFinalDest(Lcom/autonavi/navigation/api/poi/model/Poi;I)V

    goto :goto_0

    :cond_4
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->isOnTop()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/RouteManager;->stopRouteCalculation()V

    iput-boolean v4, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mIsComputingRouteCanceled:Z

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->isMultiChoice()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0800ce

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mCheckStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v0, v2

    move v1, v3

    :goto_1
    iget-object v4, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mCheckStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mCheckStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    move v1, v3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mCheckAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_3
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mIsRequestPoi:Z

    if-eqz v0, :cond_4

    invoke-direct {p0, p2, p3}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->startPoiBrowser(Landroid/view/View;I)V

    goto :goto_3

    :cond_4
    iput p3, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mTargetPosition:I

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->isGuiding()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->showDlgResetRoutePoint()V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->isGuiding()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->stopGuide()Z

    :cond_6
    invoke-direct {p0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->showComputingDialog()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mPoiAdapter:Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;

    iget v1, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mTargetPosition:I

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    iget v1, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mTargetPosition:I

    invoke-direct {p0, v0, v1}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->setFinalDest(Lcom/autonavi/navigation/api/poi/model/Poi;I)V

    goto :goto_3
.end method

.method public onResumeView()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onResumeView()V

    iget v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->cateTpye:I

    if-ne v0, v3, :cond_2

    const v0, 0x7f0b00c3

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->setTitle(I)V

    sget-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->DEFAULT:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mFavoriteCategory:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mFavoriteManager:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    sget-object v1, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->DEFAULT:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->getAll(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mFavoritePois:Ljava/util/List;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mFavoritePois:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mFavoritePois:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mNoDataIndicator:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mTextDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mTextDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mPoiAdapter:Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->setData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mPoiAdapter:Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->notifyDataSetChanged()V

    :goto_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mListPois:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    invoke-virtual {v0, v2}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->setFocusableInTouchMode(Z)V

    return-void

    :cond_2
    iget v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->cateTpye:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x7f0b00c2

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->setTitle(I)V

    sget-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->HISTORY:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mFavoriteCategory:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mFavoriteManager:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    sget-object v1, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->HISTORY:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->getAll(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mFavoritePois:Ljava/util/List;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mFavoritePois:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getAdminCode()I

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mTextDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mTextDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mPoiAdapter:Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;

    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mFavoritePois:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->setData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mPoiAdapter:Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method
