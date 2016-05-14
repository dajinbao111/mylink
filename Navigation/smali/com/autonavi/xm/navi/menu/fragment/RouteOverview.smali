.class public Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;
.super Lcom/autonavi/xm/navigation/app/NaviFragment;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DIALOG_ID_CANCEL_AVOID_EVENT:I = 0x2

.field private static final DIALOG_ID_COMPUTING_ROUTE:I = 0x0

.field private static final DIALOG_ID_DELETE_ROUTE:I = 0x1

.field private static final DIALOG_ID_ROUTE_CORRECTING:I = 0x1

.field public static final EXTRA_IS_CANCEL_COUNT:Ljava/lang/String; = "extra_is_cancel_count"

.field public static final EXTRA_IS_DELETE_ROUTE:Ljava/lang/String; = "extra_is_delete_route"

.field public static final EXTRA_IS_TRAFFIC_ENABLED:Ljava/lang/String; = "extra_is_traffic_enabled"

.field public static final EXTRA_MAP_TYPE:Ljava/lang/String; = "extra_map_type"

.field public static final EXTRA_START_GUIDANCE_ON_DESTRORY:Ljava/lang/String; = "extra_start_guidance_on_destory"

.field private static final REQUEST_CODE_IS_ROUTE_DELETED:I = 0x0

.field private static final REQUEST_CODE_IS_ROUTE_RECOMPUTING:I = 0x1

.field public static final REQUEST_CODE_IS_SIMULATION:I = 0x2


# instance fields
.field private final COUNT_DOWN_INTERVAL:I

.field private final INTERVAL:I

.field private final WHAT_TIMER:I

.field private mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

.field private mBtnStartNavi:Landroid/widget/Button;

.field private mCalculationResult:Lcom/autonavi/navigation/api/route/model/CalculationResult;

.field private mCurMapType:Lcom/autonavi/navigation/api/map/model/MapType;

.field private mDialogComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

.field private mDialogComputingShowing:Z

.field private mDlgCancelAvoidEvent:Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

.field private mDlgComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

.field private mDlgDeleteRoute:Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

.field private mDlgRouteCorrectiong:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

.field private mExtrIsStartGuidanceOnDestory:Z

.field private mFormatter:Lcom/autonavi/xm/navi/base/util/Formatter;

.field private mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

.field private mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

.field private final mIsSingleRoute:Z

.field private mIsStopGuidanceOnDestory:Z

.field private final mIsTrafficEnabled:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

.field private mParentLayout:Landroid/widget/RelativeLayout;

.field private mPreCalculationRule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

.field private mRouteInfoBar:Landroid/view/View;

.field private mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

.field private mRouteSelectors:[Landroid/view/View;

.field private mRoutes:Ljava/util/List;

.field private mSelectedRoute:Lcom/autonavi/navigation/api/route/model/Route;

.field private mTimerCount:I

.field private mTimerHandler:Landroid/os/Handler;

.field private mToRouteEditor:Z

.field private mTxtAvoidEvent:Landroid/widget/TextView;

.field private mTxtExpectedTime:Landroid/widget/TextView;

.field private mTxtTolls:Landroid/widget/TextView;

.field private mTxtTotalDis:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/app/NaviFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    iput-boolean v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mIsSingleRoute:Z

    iput-boolean v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mToRouteEditor:Z

    iput-boolean v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mExtrIsStartGuidanceOnDestory:Z

    iput-boolean v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mIsStopGuidanceOnDestory:Z

    iput-object v4, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mPreCalculationRule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    sget-object v0, Lcom/autonavi/navigation/api/map/model/MapType;->MULTI_ROUTE_OVERVIEW:Lcom/autonavi/navigation/api/map/model/MapType;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mCurMapType:Lcom/autonavi/navigation/api/map/model/MapType;

    iput-boolean v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mIsTrafficEnabled:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mMainHandler:Landroid/os/Handler;

    iput-object v4, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTimerHandler:Landroid/os/Handler;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->INTERVAL:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->WHAT_TIMER:I

    iput v3, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->COUNT_DOWN_INTERVAL:I

    iput v3, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTimerCount:I

    iput-boolean v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mDialogComputingShowing:Z

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;)Lcom/autonavi/xm/navigation/app/NaviDialogFragment;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mDialogComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->dismissDialog(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mExtrIsStartGuidanceOnDestory:Z

    return p1
.end method

.method static synthetic access$300(Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;)Lcom/autonavi/navigation/api/route/model/Route;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mSelectedRoute:Lcom/autonavi/navigation/api/route/model/Route;

    return-object v0
.end method

.method static synthetic access$500(Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;)Lcom/autonavi/navigation/api/route/model/CalculationRule;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mPreCalculationRule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    return-object v0
.end method

.method static synthetic access$600(Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;Lcom/autonavi/navigation/api/route/model/Route;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->selectRoute(Lcom/autonavi/navigation/api/route/model/Route;)V

    return-void
.end method

.method static synthetic access$700(Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;)Lcom/autonavi/navigation/api/map/AnMap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;)Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;)Lcom/autonavi/navigation/api/route/RouteManager;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    return-object v0
.end method

.method private backToMap(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mParentLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->setNoTitle(Z)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->startFragment(Landroid/content/Intent;)V

    return-void
.end method

.method private isStartNavigation()V
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mExtrIsStartGuidanceOnDestory:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->startNavigation()V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mIsStopGuidanceOnDestory:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->stopGuide()Z

    const-string v0, "action.DELETE_ROUTE"

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->backToMap(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/RouteManager;->createCalculationInput()Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mParentLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->setNoTitle(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->popBack()V

    goto :goto_0
.end method

.method private judgeRoutesIsUnWork(I)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onRouteSelect(Lcom/autonavi/navigation/api/route/model/CalculationRule;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRouteSelectors:[Landroid/view/View;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRouteSelectors:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRouteInfoBar:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRouteInfoBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview$3;->$SwitchMap$com$autonavi$navigation$api$route$model$CalculationRule:[I

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/route/model/CalculationRule;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRouteSelectors:[Landroid/view/View;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRouteInfoBar:Landroid/view/View;

    const v1, 0x7f020027

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRouteSelectors:[Landroid/view/View;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRouteInfoBar:Landroid/view/View;

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRouteSelectors:[Landroid/view/View;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRouteInfoBar:Landroid/view/View;

    const v1, 0x7f020033

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRouteSelectors:[Landroid/view/View;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRouteInfoBar:Landroid/view/View;

    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private pickRoute(Lcom/autonavi/navigation/api/route/model/Route;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->selectRoute(Lcom/autonavi/navigation/api/route/model/Route;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->recalcRoutes()V

    goto :goto_0
.end method

.method private recalcRoutes()V
    .locals 4

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->showComputingDialog()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mDialogComputingShowing:Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview$2;

    invoke-direct {v1, p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview$2;-><init>(Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private selectRoute(Lcom/autonavi/navigation/api/route/model/Route;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mSelectedRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/map/AnMap;->zOrderRouteOnTop(Lcom/autonavi/navigation/api/route/model/Route;)V

    iget-object v0, p1, Lcom/autonavi/navigation/api/route/model/Route;->rule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->onRouteSelect(Lcom/autonavi/navigation/api/route/model/CalculationRule;)V

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->setRouteInfo(Lcom/autonavi/navigation/api/route/model/Route;)V

    :cond_0
    return-void
.end method

.method private setRouteInfo(Lcom/autonavi/navigation/api/route/model/Route;)V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTxtTotalDis:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mFormatter:Lcom/autonavi/xm/navi/base/util/Formatter;

    iget v2, p1, Lcom/autonavi/navigation/api/route/model/Route;->totalDistance:I

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navi/base/util/Formatter;->getDistance(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTxtExpectedTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget v2, p1, Lcom/autonavi/navigation/api/route/model/Route;->totalArrivalTime:I

    invoke-static {v1, v2}, Lcom/autonavi/xm/text/TextFormatter;->formatElapsedTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTxtTolls:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/autonavi/navigation/api/route/model/Route;->totalTollGate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f0b0107

    invoke-virtual {v2, v3}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showComputingDialog()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mDialogComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xm/navigation/app/ProgressDialogFragment$Builder;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/app/ProgressDialogFragment$Builder;-><init>()V

    const v1, 0x7f0b0073

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/app/ProgressDialogFragment$Builder;->setMessage(I)Lcom/autonavi/xm/navigation/app/AlertDialogFragment$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/xm/navigation/app/AlertDialogFragment$Builder;->setCancelable(Z)Lcom/autonavi/xm/navigation/app/AlertDialogFragment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/app/AlertDialogFragment$Builder;->create()Lcom/autonavi/xm/navigation/app/AlertDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mDialogComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mDialogComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    invoke-virtual {p0, v0, v2}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->showDialogThread(Lcom/autonavi/xm/navigation/app/NaviDialogFragment;I)V

    return-void
.end method

.method private showDlgCancelAvoidEvent()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mDlgCancelAvoidEvent:Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;

    invoke-direct {v0}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;-><init>()V

    const v1, 0x7f0b00bf

    const v2, 0x7f020397

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;->setNegativeButton(II)Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00be

    const v2, 0x7f020050

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;->setPositiveButton(II)Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;->create()Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mDlgCancelAvoidEvent:Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mDlgDeleteRoute:Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->showDialogThread(Lcom/autonavi/xm/navigation/app/NaviDialogFragment;I)V

    return-void
.end method

.method private showDlgDeleteRoute()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mDlgDeleteRoute:Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;

    invoke-direct {v0}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;-><init>()V

    const v1, 0x7f0b0076

    const v2, 0x7f020385

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;->setNegativeButton(II)Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0094

    const v2, 0x7f020394

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;->setPositiveButton(II)Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;->setCancelable(Z)Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;->create()Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mDlgDeleteRoute:Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mDlgDeleteRoute:Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->showDialogThread(Lcom/autonavi/xm/navigation/app/NaviDialogFragment;I)V

    return-void
.end method

.method private startNavigation()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mExtrIsStartGuidanceOnDestory:Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mSelectedRoute:Lcom/autonavi/navigation/api/route/model/Route;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Route;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mSelectedRoute:Lcom/autonavi/navigation/api/route/model/Route;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mSelectedRoute:Lcom/autonavi/navigation/api/route/model/Route;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/guide/GuideManager;->startGuide(Lcom/autonavi/navigation/api/route/model/Route;)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mParentLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->setNoTitle(Z)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->startFragment(Landroid/content/Intent;)V

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
    invoke-super {p0, p1}, Lcom/autonavi/xm/navigation/app/NaviFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopActivityName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    const-wide/16 v4, 0x3e8

    const v2, 0x7f0b0090

    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->isOnTop()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->isRunningForeground()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mBtnStartNavi:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTimerCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTimerCount:I

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mBtnStartNavi:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTimerCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTimerCount:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->startNavigation()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->isOnTop()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->isRunningForeground()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/16 v0, 0x8

    iput v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTimerCount:I

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mBtnStartNavi:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTimerCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isRunningForeground()Z
    .locals 5

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {p0, v1}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->getTopActivityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",topActivityClassName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/autonavi/xm/navigation/app/NaviFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->setNoTitle(Z)V

    const-string v0, "extra_is_delete_route"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mExtrIsStartGuidanceOnDestory:Z

    iput-boolean v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mIsStopGuidanceOnDestory:Z

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->isStartNavigation()V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mCurMapType:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setMapType(Lcom/autonavi/navigation/api/map/model/MapType;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapType;->MULTI_ROUTE_OVERVIEW:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setMapType(Lcom/autonavi/navigation/api/map/model/MapType;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "key_routes_result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/CalculationResult;

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mExtrIsStartGuidanceOnDestory:Z

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->getRoutes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mCurMapType:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setMapType(Lcom/autonavi/navigation/api/map/model/MapType;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->pickRoute(Lcom/autonavi/navigation/api/route/model/Route;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapType;->MULTI_ROUTE_OVERVIEW:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setMapType(Lcom/autonavi/navigation/api/map/model/MapType;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mPreCalculationRule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/CalculationRule;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMapType()Lcom/autonavi/navigation/api/map/model/MapType;

    move-result-object v0

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapType;->MULTI_ROUTE_OVERVIEW:Lcom/autonavi/navigation/api/map/model/MapType;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapType;->MULTI_ROUTE_OVERVIEW:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setMapType(Lcom/autonavi/navigation/api/map/model/MapType;)V

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mPreCalculationRule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/model/CalculationRule;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Route;

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->pickRoute(Lcom/autonavi/navigation/api/route/model/Route;)V

    goto/16 :goto_0

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mCurMapType:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setMapType(Lcom/autonavi/navigation/api/map/model/MapType;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Route;

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->pickRoute(Lcom/autonavi/navigation/api/route/model/Route;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapType;->MULTI_ROUTE_OVERVIEW:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setMapType(Lcom/autonavi/navigation/api/map/model/MapType;)V

    goto :goto_2

    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mCurMapType:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setMapType(Lcom/autonavi/navigation/api/map/model/MapType;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapType;->MULTI_ROUTE_OVERVIEW:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setMapType(Lcom/autonavi/navigation/api/map/model/MapType;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->isStartNavigation()V

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080158

    if-eq v0, v1, :cond_0

    const v1, 0x7f080159

    if-eq v0, v1, :cond_0

    const v1, 0x7f08015a

    if-eq v0, v1, :cond_0

    const v1, 0x7f08015b

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v1, 0x8

    iput v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTimerCount:I

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTimerHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mBtnStartNavi:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b0090

    invoke-virtual {p0, v3}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTimerCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v1, 0x7f080158

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/autonavi/navigation/api/route/model/CalculationRule;->RECOMMEND:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mPreCalculationRule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    invoke-direct {p0, v7}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->judgeRoutesIsUnWork(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v5}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->pickRoute(Lcom/autonavi/navigation/api/route/model/Route;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mBtnStartNavi:Landroid/widget/Button;

    const v2, 0x7f0b0090

    invoke-virtual {p0, v2}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v4, :cond_4

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mSelectedRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v0, v0, Lcom/autonavi/navigation/api/route/model/Route;->rule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    sget-object v1, Lcom/autonavi/navigation/api/route/model/CalculationRule;->RECOMMEND:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    if-eq v0, v1, :cond_4

    invoke-direct {p0, v5}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->pickRoute(Lcom/autonavi/navigation/api/route/model/Route;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Route;

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->pickRoute(Lcom/autonavi/navigation/api/route/model/Route;)V

    goto :goto_1

    :cond_5
    const v1, 0x7f080159

    if-ne v0, v1, :cond_8

    sget-object v0, Lcom/autonavi/navigation/api/route/model/CalculationRule;->HIGHWAY:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mPreCalculationRule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    invoke-direct {p0, v4}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->judgeRoutesIsUnWork(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v5}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->pickRoute(Lcom/autonavi/navigation/api/route/model/Route;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v4, :cond_7

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mSelectedRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v0, v0, Lcom/autonavi/navigation/api/route/model/Route;->rule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    sget-object v1, Lcom/autonavi/navigation/api/route/model/CalculationRule;->HIGHWAY:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    if-eq v0, v1, :cond_7

    invoke-direct {p0, v5}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->pickRoute(Lcom/autonavi/navigation/api/route/model/Route;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Route;

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->pickRoute(Lcom/autonavi/navigation/api/route/model/Route;)V

    goto :goto_1

    :cond_8
    const v1, 0x7f08015a

    if-ne v0, v1, :cond_b

    sget-object v0, Lcom/autonavi/navigation/api/route/model/CalculationRule;->ECONOMIC:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mPreCalculationRule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    invoke-direct {p0, v6}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->judgeRoutesIsUnWork(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, v5}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->pickRoute(Lcom/autonavi/navigation/api/route/model/Route;)V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v4, :cond_a

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mSelectedRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v0, v0, Lcom/autonavi/navigation/api/route/model/Route;->rule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    sget-object v1, Lcom/autonavi/navigation/api/route/model/CalculationRule;->ECONOMIC:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    if-eq v0, v1, :cond_a

    invoke-direct {p0, v5}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->pickRoute(Lcom/autonavi/navigation/api/route/model/Route;)V

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Route;

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->pickRoute(Lcom/autonavi/navigation/api/route/model/Route;)V

    goto/16 :goto_1

    :cond_b
    const v1, 0x7f08015b

    if-ne v0, v1, :cond_e

    sget-object v0, Lcom/autonavi/navigation/api/route/model/CalculationRule;->SHORTEST:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mPreCalculationRule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    invoke-direct {p0, v8}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->judgeRoutesIsUnWork(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, v5}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->pickRoute(Lcom/autonavi/navigation/api/route/model/Route;)V

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v4, :cond_d

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mSelectedRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v0, v0, Lcom/autonavi/navigation/api/route/model/Route;->rule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    sget-object v1, Lcom/autonavi/navigation/api/route/model/CalculationRule;->SHORTEST:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    if-eq v0, v1, :cond_d

    invoke-direct {p0, v5}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->pickRoute(Lcom/autonavi/navigation/api/route/model/Route;)V

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Route;

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->pickRoute(Lcom/autonavi/navigation/api/route/model/Route;)V

    goto/16 :goto_1

    :cond_e
    const v1, 0x7f080153

    if-ne v0, v1, :cond_f

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->startNavigation()V

    goto/16 :goto_1

    :cond_f
    const v1, 0x7f080154

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMapType()Lcom/autonavi/navigation/api/map/model/MapType;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mCurMapType:Lcom/autonavi/navigation/api/map/model/MapType;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapType;->DEFAULT:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setMapType(Lcom/autonavi/navigation/api/map/model/MapType;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mCurMapType:Lcom/autonavi/navigation/api/map/model/MapType;

    sget-object v2, Lcom/autonavi/navigation/api/map/model/MapType;->SINGLE_ROUTE_OVERVIEW:Lcom/autonavi/navigation/api/map/model/MapType;

    if-ne v1, v2, :cond_11

    const-string v1, "extra_map_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_10
    :goto_2
    const-string v1, "action.GUIDE_ROUTE"

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mSelectedRoute:Lcom/autonavi/navigation/api/route/model/Route;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v6}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->startFragmentForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mParentLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->setNoTitle(Z)V

    goto/16 :goto_1

    :cond_11
    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mCurMapType:Lcom/autonavi/navigation/api/map/model/MapType;

    sget-object v2, Lcom/autonavi/navigation/api/map/model/MapType;->MULTI_ROUTE_OVERVIEW:Lcom/autonavi/navigation/api/map/model/MapType;

    if-ne v1, v2, :cond_10

    const-string v1, "extra_map_type"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    :cond_12
    const v1, 0x7f080155

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mSelectedRoute:Lcom/autonavi/navigation/api/route/model/Route;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMapType()Lcom/autonavi/navigation/api/map/model/MapType;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mCurMapType:Lcom/autonavi/navigation/api/map/model/MapType;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra.SELECTED_ROUTE"

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mSelectedRoute:Lcom/autonavi/navigation/api/route/model/Route;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mExtrIsStartGuidanceOnDestory:Z

    if-eqz v1, :cond_13

    const-string v1, "extra_start_guidance_on_destory"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_13
    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mCalculationResult:Lcom/autonavi/navigation/api/route/model/CalculationResult;

    if-eqz v1, :cond_14

    const-string v1, "extra.CALCULATE_ROUTE_INPUT"

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mCalculationResult:Lcom/autonavi/navigation/api/route/model/CalculationResult;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->getCalculationInput()Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_3
    invoke-virtual {p0, v0, v4}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->startFragmentForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :cond_14
    const-string v1, "extra.CALCULATE_ROUTE_INPUT"

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    iget-object v3, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mSelectedRoute:Lcom/autonavi/navigation/api/route/model/Route;

    invoke-virtual {v2, v3}, Lcom/autonavi/navigation/api/route/RouteManager;->createCalculationInput(Lcom/autonavi/navigation/api/route/model/Route;)Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_3

    :cond_15
    const v1, 0x7f080156

    if-ne v0, v1, :cond_16

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->showDlgDeleteRoute()V

    goto/16 :goto_1

    :cond_16
    const v1, 0x7f0800a3

    if-ne v0, v1, :cond_17

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->showDlgCancelAvoidEvent()V

    goto/16 :goto_1

    :cond_17
    const v1, 0x7f080013

    if-ne v0, v1, :cond_18

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->isStartNavigation()V

    goto/16 :goto_1

    :cond_18
    const v1, 0x7f080017

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mExtrIsStartGuidanceOnDestory:Z

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->isStartNavigation()V

    goto/16 :goto_1

    :cond_19
    const-string v0, "action.BACK_TO_MY_LOCATION"

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->backToMap(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/autonavi/xm/navigation/app/NaviFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    new-instance v0, Lcom/autonavi/xm/navi/base/util/Formatter;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-direct {v0, v1}, Lcom/autonavi/xm/navi/base/util/Formatter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mFormatter:Lcom/autonavi/xm/navi/base/util/Formatter;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTimerHandler:Landroid/os/Handler;

    return-void
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 8

    const/4 v3, 0x0

    const v7, 0x7f0b007f

    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/autonavi/xm/navigation/app/NaviFragment;->onCreateView(Landroid/os/Bundle;)V

    const v0, 0x7f0b008f

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->setTitle(I)V

    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->setContentView(I)V

    invoke-virtual {p0, v3}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->setContentBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f08009f

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->getTargetFragment()Lcom/autonavi/xm/support/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mToRouteEditor:Z

    new-array v0, v6, [Landroid/view/View;

    const v3, 0x7f080158

    invoke-virtual {p0, v3}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v0, v2

    const v3, 0x7f080159

    invoke-virtual {p0, v3}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v3, 0x2

    const v4, 0x7f08015a

    invoke-virtual {p0, v4}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const v4, 0x7f08015b

    invoke-virtual {p0, v4}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v0, v3

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRouteSelectors:[Landroid/view/View;

    iget-object v3, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRouteSelectors:[Landroid/view/View;

    array-length v4, v3

    move v0, v2

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const v0, 0x7f080151

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRouteInfoBar:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRouteInfoBar:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0800ad

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTxtTotalDis:Landroid/widget/TextView;

    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTxtExpectedTime:Landroid/widget/TextView;

    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTxtTolls:Landroid/widget/TextView;

    const v0, 0x7f0800b4

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTxtAvoidEvent:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTxtAvoidEvent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00c0

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "5"

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080153

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mBtnStartNavi:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mBtnStartNavi:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b0090

    invoke-virtual {p0, v4}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTimerCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mBtnStartNavi:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080154

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080155

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080156

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800a3

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->getAnMap()Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->gotoMyLocation()V

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getGuideManager()Lcom/autonavi/navigation/api/guide/GuideManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getRouteManager()Lcom/autonavi/navigation/api/route/RouteManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    new-instance v0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview$1;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview$1;-><init>(Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    iget-object v3, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    invoke-virtual {v0, v3}, Lcom/autonavi/navigation/api/route/RouteManager;->addOnCalculationResultListener(Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;)V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getUiSettings()Lcom/autonavi/navigation/api/map/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/navigation/api/map/UiSettings;->setGpsAnnunciatorEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getUiSettings()Lcom/autonavi/navigation/api/map/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/navigation/api/map/UiSettings;->setMyLocationControlsEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRouteInfoBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRouteInfoBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "key_routes_result"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/CalculationResult;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mCalculationResult:Lcom/autonavi/navigation/api/route/model/CalculationResult;

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "extra_start_guidance_on_destory"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mExtrIsStartGuidanceOnDestory:Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mCalculationResult:Lcom/autonavi/navigation/api/route/model/CalculationResult;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mCalculationResult:Lcom/autonavi/navigation/api/route/model/CalculationResult;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->getRoutes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_5

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Route;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/autonavi/navigation/api/route/model/Route;->rule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    iput-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mPreCalculationRule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mPreCalculationRule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    sget-object v2, Lcom/autonavi/navigation/api/route/model/CalculationRule;->RECOMMEND:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    sget-object v2, Lcom/autonavi/navigation/api/map/model/MapType;->SINGLE_ROUTE_OVERVIEW:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/map/AnMap;->setMapType(Lcom/autonavi/navigation/api/map/model/MapType;)V

    :goto_2
    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mSelectedRoute:Lcom/autonavi/navigation/api/route/model/Route;

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->pickRoute(Lcom/autonavi/navigation/api/route/model/Route;)V

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMapType()Lcom/autonavi/navigation/api/map/model/MapType;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mCurMapType:Lcom/autonavi/navigation/api/map/model/MapType;

    return-void

    :cond_4
    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    sget-object v2, Lcom/autonavi/navigation/api/map/model/MapType;->MULTI_ROUTE_OVERVIEW:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/map/AnMap;->setMapType(Lcom/autonavi/navigation/api/map/model/MapType;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMapType()Lcom/autonavi/navigation/api/map/model/MapType;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMapType()Lcom/autonavi/navigation/api/map/model/MapType;

    move-result-object v0

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapType;->MULTI_ROUTE_OVERVIEW:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/model/MapType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapType;->MULTI_ROUTE_OVERVIEW:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setMapType(Lcom/autonavi/navigation/api/map/model/MapType;)V

    :cond_7
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mPreCalculationRule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v0, v0, Lcom/autonavi/navigation/api/route/model/Route;->rule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mPreCalculationRule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Route;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mSelectedRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Route;

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->pickRoute(Lcom/autonavi/navigation/api/route/model/Route;)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mPreCalculationRule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/model/CalculationRule;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mPreCalculationRule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/model/CalculationRule;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Route;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mSelectedRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mPreCalculationRule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/model/CalculationRule;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Route;

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->pickRoute(Lcom/autonavi/navigation/api/route/model/Route;)V

    goto/16 :goto_3

    :cond_9
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->getGuidingRoute()Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mSelectedRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mSelectedRoute:Lcom/autonavi/navigation/api/route/model/Route;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mSelectedRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v0, v0, Lcom/autonavi/navigation/api/route/model/Route;->rule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mPreCalculationRule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mPreCalculationRule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    sget-object v1, Lcom/autonavi/navigation/api/route/model/CalculationRule;->RECOMMEND:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapType;->SINGLE_ROUTE_OVERVIEW:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setMapType(Lcom/autonavi/navigation/api/map/model/MapType;)V

    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mSelectedRoute:Lcom/autonavi/navigation/api/route/model/Route;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mSelectedRoute:Lcom/autonavi/navigation/api/route/model/Route;

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->pickRoute(Lcom/autonavi/navigation/api/route/model/Route;)V

    goto/16 :goto_3

    :cond_a
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapType;->MULTI_ROUTE_OVERVIEW:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setMapType(Lcom/autonavi/navigation/api/map/model/MapType;)V

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0, v7}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto/16 :goto_3

    :cond_c
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->getGuidingRoute()Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mSelectedRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mSelectedRoute:Lcom/autonavi/navigation/api/route/model/Route;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mSelectedRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v0, v0, Lcom/autonavi/navigation/api/route/model/Route;->rule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mPreCalculationRule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mPreCalculationRule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    sget-object v1, Lcom/autonavi/navigation/api/route/model/CalculationRule;->RECOMMEND:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapType;->SINGLE_ROUTE_OVERVIEW:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setMapType(Lcom/autonavi/navigation/api/map/model/MapType;)V

    :goto_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mSelectedRoute:Lcom/autonavi/navigation/api/route/model/Route;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRoutes:Ljava/util/List;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mSelectedRoute:Lcom/autonavi/navigation/api/route/model/Route;

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->pickRoute(Lcom/autonavi/navigation/api/route/model/Route;)V

    goto/16 :goto_3

    :cond_d
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapType;->MULTI_ROUTE_OVERVIEW:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setMapType(Lcom/autonavi/navigation/api/map/model/MapType;)V

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0, v7}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto/16 :goto_3
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/autonavi/xm/navigation/app/NaviFragment;->onDestroy()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/RouteManager;->removeOnCalculationResultListener(Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/autonavi/xm/navigation/app/NaviFragment;->onDestroyView()V

    return-void
.end method

.method public onDialogClick(Lcom/autonavi/xm/navigation/app/NaviDialogFragment;I)V
    .locals 4

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/autonavi/xm/navigation/app/NaviDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, v3, :cond_2

    if-ne p2, v2, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mExtrIsStartGuidanceOnDestory:Z

    iput-boolean v3, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mIsStopGuidanceOnDestory:Z

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->isStartNavigation()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x8

    iput v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTimerCount:I

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTimerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mBtnStartNavi:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b0090

    invoke-virtual {p0, v2}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTimerCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-ne p2, v2, :cond_0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/autonavi/xm/navigation/app/NaviFragment;->onResume()V

    return-void
.end method

.method public onResumeView()V
    .locals 4

    invoke-super {p0}, Lcom/autonavi/xm/navigation/app/NaviFragment;->onResumeView()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTimerCount:I

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mBtnStartNavi:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mBtnStartNavi:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b0090

    invoke-virtual {p0, v2}, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTimerCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;->mTimerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
