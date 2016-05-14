.class public Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;
.super Lcom/autonavi/xm/navigation/app/NaviFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final DIALOG_ARGUMENT_BACK_TO_MAP:Ljava/lang/String; = "argument_BACK_TO_MAP"

.field private static final DIALOG_ARGUMENT_POSITION:Ljava/lang/String; = "RouteEditor:position"

.field private static final DIALOG_ID_CHECK_DELETE:I = 0x2

.field private static final DIALOG_ID_COMPUTING_ROUTE:I = 0x0

.field private static final DIALOG_ID_UPDATE_ROUTE_OR_NOT:I = 0x1

.field private static final KEY_DEST_MODIFICATION_RESULT:Ljava/lang/String; = "key_dest_modification_result"

.field public static final KEY_REQUEST_POI:Ljava/lang/String; = "key_request_poi"

.field public static final KEY_ROUTES_RESULT:Ljava/lang/String; = "key_routes_result"

.field private static final MAX_DESTINATIONS:I = 0x6

.field private static final REQUEST_CODE_BACK_TO_MAP:I = 0x16

.field private static final REQUEST_CODE_COMPUTE_ROUTE:I = 0x14

.field private static final REQUEST_CODE_GO_BACK:I = 0x15

.field private static final REQUEST_CODE_ROUTE_OVER_VIEW:I = 0x17

.field private static final TURNING_ID_FINAL_DESTINATION:I = 0x5b

.field private static final TURNING_ID_FIRST_DESTINATION:I = 0x56

.field private static final TURNING_ID_START:I = 0x15


# instance fields
.field private mAdapter:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$RoutePointAdapter;

.field private mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

.field private mBtnComputeRoute:Landroid/view/View;

.field private mBtnEdit:Landroid/view/View;

.field private mBtnMoveDown:Landroid/view/View;

.field private mBtnMoveUp:Landroid/view/View;

.field private mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

.field private mCheckItemPostion:I

.field private mCompoundCirListView:Lcom/autonavi/xm/navi/base/widget/CompoundCirListView;

.field private mDialogComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

.field private mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

.field mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

.field mInflater:Landroid/view/LayoutInflater;

.field private mListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

.field private final mMainHandler:Landroid/os/Handler;

.field private mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

.field private final mOrigDests:Ljava/util/ArrayList;

.field mPoiList:Ljava/util/ArrayList;

.field private mRoute:Lcom/autonavi/navigation/api/route/model/Route;

.field private mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

.field private mViewAddDest:Landroid/view/View;

.field private mViewStartPoint:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/app/NaviFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mOrigDests:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mCheckItemPostion:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;)Lcom/autonavi/xm/navigation/app/NaviDialogFragment;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mDialogComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->dismissDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mOrigDests:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;Lcom/autonavi/navigation/api/route/model/Route;)Lcom/autonavi/navigation/api/route/model/Route;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    return-object p1
.end method

.method static synthetic access$500(Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;)Lcom/autonavi/navigation/api/guide/GuideManager;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;)Lcom/autonavi/navigation/api/route/RouteManager;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;Lcom/autonavi/navigation/api/route/model/RoutePoint;)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->assertRoutePoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;)Lcom/autonavi/xm/navi/base/widget/CircularListView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    return-object v0
.end method

.method private assertRoutePoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x0

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

    invoke-virtual {p0, v5}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->dismissDialog(I)V

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v2, 0x7f0b0070

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(I)V

    move-object p1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_3

    invoke-virtual {p0, v5}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->dismissDialog(I)V

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v2, 0x7f0b0088

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v1

    const/4 v2, -0x3

    if-ne v1, v2, :cond_4

    invoke-virtual {p0, v5}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->dismissDialog(I)V

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v2, 0x7f0b0072

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(I)V

    move-object p1, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v1

    const/4 v2, -0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v5}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->dismissDialog(I)V

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v2, 0x7f0b0071

    invoke-virtual {p0, v2}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private backToMap()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.autonavi.xm.action.BACK_TO_MY_LOCATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-string v2, "com.autonavi.xm.meta.BACK_TO_MAP_COMPONENT"

    invoke-static {v1, v2}, Lcom/autonavi/xm/navigation/NaviHelper;->getStringMeta(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v1, v0}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private commitDestinations(I)V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->showComputingDialog()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;

    invoke-direct {v1, p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$2;-><init>(Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private isDestinationChanged()Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mOrigDests:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveDestination(I)V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->getCheckedItemPosition()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/poi/model/Poi;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    add-int v2, v1, p1

    iget-object v3, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mCheckItemPostion:I

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    iget v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mCheckItemPostion:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->setItemChecked(IZ)V

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->onDestionationsChanged()V

    goto :goto_0
.end method

.method private onDestionationsChanged()V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x6

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mViewAddDest:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030038

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mViewAddDest:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mViewAddDest:Landroid/view/View;

    const v3, 0x7f0800b8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0b0130

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mViewAddDest:Landroid/view/View;

    const v3, 0x7f080065

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/autonavi/xm/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    iget-object v3, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mViewAddDest:Landroid/view/View;

    invoke-virtual {v0, v3, v4, v1}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mBtnComputeRoute:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mBtnComputeRoute:Landroid/view/View;

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mBtnComputeRoute:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mCheckItemPostion:I

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    iget v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mCheckItemPostion:I

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->setItemChecked(IZ)V

    :cond_1
    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->onSelectionChanged()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    iget-object v3, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mViewAddDest:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->removeFooterView(Landroid/view/View;)Z

    iput-object v4, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mViewAddDest:Landroid/view/View;

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private onSelectionChanged()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->getCheckedItemPosition()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mBtnMoveUp:Landroid/view/View;

    if-lez v3, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v4, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mBtnMoveDown:Landroid/view/View;

    if-ltz v3, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mBtnEdit:Landroid/view/View;

    if-ltz v3, :cond_3

    iget-object v4, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mBtnMoveUp:Landroid/view/View;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mBtnMoveUp:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mBtnMoveDown:Landroid/view/View;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mBtnMoveDown:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mBtnEdit:Landroid/view/View;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mBtnEdit:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mAdapter:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$RoutePointAdapter;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$RoutePointAdapter;->notifyDataSetChanged()V

    if-ltz v3, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->smoothScrollToPosition(I)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method private removeDestination(I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->getCheckedItemPosition()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-le v1, p1, :cond_2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mCheckItemPostion:I

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    iget v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mCheckItemPostion:I

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->setItemChecked(IZ)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->getEnd()Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mOrigDests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->removeWaypoint(I)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->onDestionationsChanged()V

    return-void

    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-ne v0, p1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mCheckItemPostion:I

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    iget v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mCheckItemPostion:I

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->setItemChecked(IZ)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private setRoutePoints([Lcom/autonavi/navigation/api/poi/model/Poi;)V
    .locals 4

    const/4 v0, 0x0

    aget-object v1, p1, v0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mViewStartPoint:Landroid/view/View;

    const v2, 0x7f0800b8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mOrigDests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    array-length v1, p1

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mOrigDests:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->onDestionationsChanged()V

    return-void
.end method

.method private showCheckDeleteDialog(I)V
    .locals 3

    new-instance v0, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;

    invoke-direct {v0}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;-><init>()V

    const v1, 0x7f0b0076

    const v2, 0x7f020385

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;->setNegativeButton(II)Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00c8

    const v2, 0x7f020391

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;->setPositiveButton(II)Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;->create()Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RouteEditor:position"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->showDialog(Lcom/autonavi/xm/navigation/app/NaviDialogFragment;I)V

    return-void
.end method

.method private showComputingDialog()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mDialogComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xm/navigation/app/ProgressDialogFragment$Builder;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/app/ProgressDialogFragment$Builder;-><init>()V

    const v1, 0x7f0b0073

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/app/ProgressDialogFragment$Builder;->setMessage(I)Lcom/autonavi/xm/navigation/app/AlertDialogFragment$Builder;

    move-result-object v0

    const v1, 0x7f0b0076

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/app/AlertDialogFragment$Builder;->setNegativeButton(I)Lcom/autonavi/xm/navigation/app/AlertDialogFragment$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/xm/navigation/app/AlertDialogFragment$Builder;->setCancelable(Z)Lcom/autonavi/xm/navigation/app/AlertDialogFragment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/app/AlertDialogFragment$Builder;->create()Lcom/autonavi/xm/navigation/app/AlertDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mDialogComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mDialogComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    invoke-virtual {p0, v0, v2}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->showDialog(Lcom/autonavi/xm/navigation/app/NaviDialogFragment;I)V

    return-void
.end method

.method private showUpdateDialog(Z)V
    .locals 3

    new-instance v0, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;

    invoke-direct {v0}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;-><init>()V

    const v1, 0x7f0b0135

    const v2, 0x7f0204f3

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;->setPositiveButton(II)Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0136

    const v2, 0x7f0204f4

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;->setNegativeButton(II)Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;->create()Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "argument_BACK_TO_MAP"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->showDialog(Lcom/autonavi/xm/navigation/app/NaviDialogFragment;I)V

    return-void
.end method

.method private startFindDes(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/xm/navi/search/FindDes;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_is_request_poi"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->startFragmentForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startNavigation()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.autonavi.xm.action.NAVIGATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->startFragment(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->isDestinationChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->showUpdateDialog(Z)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->popBack()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    const/16 v2, 0x17

    if-eq v1, v2, :cond_0

    invoke-super {p0, p1}, Lcom/autonavi/xm/navigation/app/NaviFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected isDestsAdded([Lcom/autonavi/navigation/api/poi/model/Poi;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :cond_0
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "com.autonavi.xm.extra.POI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/poi/model/Poi;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->onDestionationsChanged()V

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->smoothScrollToPosition(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public onBackPressed()Z
    .locals 1

    invoke-super {p0}, Lcom/autonavi/xm/navigation/app/NaviFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08014e

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->getCheckedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->startFindDes(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f0800c1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->showCheckDeleteDialog(I)V

    goto :goto_0

    :cond_2
    const v1, 0x7f08014c

    if-ne v0, v1, :cond_3

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->moveDestination(I)V

    goto :goto_0

    :cond_3
    const v1, 0x7f08014f

    if-ne v0, v1, :cond_4

    invoke-direct {p0, v2}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->moveDestination(I)V

    goto :goto_0

    :cond_4
    const v1, 0x7f08014d

    if-ne v0, v1, :cond_5

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->commitDestinations(I)V

    goto :goto_0

    :cond_5
    const v1, 0x7f080017

    if-ne v0, v1, :cond_7

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->isDestinationChanged()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v2}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->showUpdateDialog(Z)V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->backToMap()V

    goto :goto_0

    :cond_7
    const v1, 0x7f080013

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->isDestinationChanged()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->showUpdateDialog(Z)V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->popBack()V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 8

    const v7, 0x7f030038

    const v6, 0x7f0800b8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/autonavi/xm/navigation/app/NaviFragment;->onCreateView(Landroid/os/Bundle;)V

    const v0, 0x7f0b016e

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->setTitle(I)V

    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->setContentView(I)V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f08014b

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navi/base/widget/CompoundCirListView;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mCompoundCirListView:Lcom/autonavi/xm/navi/base/widget/CompoundCirListView;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mCompoundCirListView:Lcom/autonavi/xm/navi/base/widget/CompoundCirListView;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/widget/CompoundCirListView;->getListView()Lcom/autonavi/xm/navi/base/widget/CircularListView;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    invoke-virtual {v0, v5}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    invoke-virtual {v0, p0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mViewStartPoint:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mViewStartPoint:Landroid/view/View;

    const v2, 0x7f080065

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const/16 v3, 0x15

    invoke-static {v2, v3}, Lcom/autonavi/xm/navigation/res/ResUtils;->getTurningIconRes(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/autonavi/navigation/api/map/AnMapUtils;->getMyLocation()Lcom/autonavi/navigation/api/map/model/MyLocation;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mViewStartPoint:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, v2, Lcom/autonavi/navigation/api/map/model/MyLocation;->roadName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mViewStartPoint:Landroid/view/View;

    invoke-virtual {v0, v2, v4, v1}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    new-instance v0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$RoutePointAdapter;

    invoke-direct {v0, p0, v4}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$RoutePointAdapter;-><init>(Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$1;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mAdapter:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$RoutePointAdapter;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mAdapter:Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$RoutePointAdapter;

    invoke-virtual {v0, v2}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mViewAddDest:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mViewAddDest:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mViewAddDest:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0b0130

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mViewAddDest:Landroid/view/View;

    const v2, 0x7f080065

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/autonavi/xm/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mViewAddDest:Landroid/view/View;

    invoke-virtual {v0, v2, v4, v5}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_1
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08014c

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mBtnMoveUp:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08014f

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mBtnMoveDown:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08014d

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mBtnComputeRoute:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08014e

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mBtnEdit:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getGuideManager()Lcom/autonavi/navigation/api/guide/GuideManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getRouteManager()Lcom/autonavi/navigation/api/route/RouteManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->getGuidingRoute()Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getRouteManager()Lcom/autonavi/navigation/api/route/RouteManager;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    invoke-virtual {v0, v2, v5}, Lcom/autonavi/navigation/api/route/RouteManager;->createCalculationInput(Lcom/autonavi/navigation/api/route/model/Route;Z)Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v0, v0, Lcom/autonavi/navigation/api/route/model/Route;->start:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v0, v0, Lcom/autonavi/navigation/api/route/model/Route;->start:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getPoi()Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mViewStartPoint:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v2, v2, Lcom/autonavi/navigation/api/route/model/Route;->start:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getPoi()Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/poi/model/Poi;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/Route;->getWaypoints()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/Route;->getWaypoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/Route;->getWaypoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v0

    if-eq v0, v5, :cond_3

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/Route;->getWaypoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getPoi()Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mOrigDests:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/Route;->getWaypoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getPoi()Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v0, v0, Lcom/autonavi/navigation/api/route/model/Route;->end:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v0, v0, Lcom/autonavi/navigation/api/route/model/Route;->end:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getPoi()Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v0, v0, Lcom/autonavi/navigation/api/route/model/Route;->end:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getPoi()Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v0

    const v1, 0x7f0b005f

    invoke-virtual {p0, v1}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/poi/model/Poi;->setName(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v1, v1, Lcom/autonavi/navigation/api/route/model/Route;->end:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getPoi()Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mOrigDests:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v1, v1, Lcom/autonavi/navigation/api/route/model/Route;->end:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getPoi()Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    if-nez v0, :cond_7

    new-instance v0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$1;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor$1;-><init>(Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    :cond_7
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/RouteManager;->addOnCalculationResultListener(Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;)V

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->onDestionationsChanged()V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->getWaypoints()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v3, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getPoi()Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mOrigDests:Ljava/util/ArrayList;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getPoi()Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/RouteManager;->removeOnCalculationResultListener(Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;)V

    :cond_0
    invoke-super {p0}, Lcom/autonavi/xm/navigation/app/NaviFragment;->onDestroyView()V

    return-void
.end method

.method public onDialogClick(Lcom/autonavi/xm/navigation/app/NaviDialogFragment;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    invoke-virtual {p1}, Lcom/autonavi/xm/navigation/app/NaviDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, v3, :cond_6

    if-ne v2, p2, :cond_4

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->stopGuide()Z

    invoke-virtual {p1}, Lcom/autonavi/xm/navigation/app/NaviDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argument_BACK_TO_MAP"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->backToMap()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->KEY_ROUTE_EDIT_RLT:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->popBack()V

    goto :goto_0

    :cond_3
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->commitDestinations(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/autonavi/xm/navigation/app/NaviDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argument_BACK_TO_MAP"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->backToMap()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->popBack()V

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    if-ne v2, p2, :cond_1

    invoke-virtual {p1}, Lcom/autonavi/xm/navigation/app/NaviDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RouteEditor:position"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->removeDestination(I)V

    goto :goto_0

    :cond_7
    if-nez v0, :cond_1

    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->isOnTop()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/RouteManager;->stopRouteCalculation()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mViewAddDest:Landroid/view/View;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    iget v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mCheckItemPostion:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->setItemChecked(IZ)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->startFindDes(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mViewStartPoint:Landroid/view/View;

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mViewAddDest:Landroid/view/View;

    if-eq p2, v0, :cond_0

    iput p3, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->mCheckItemPostion:I

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;->onSelectionChanged()V

    goto :goto_0
.end method
