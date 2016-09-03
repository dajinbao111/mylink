.class public Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;
.super Lcom/autonavi/wh/navigation/app/NaviFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final DIALOG_ID_AVOID_ROAD:I = 0x1

.field private static final DIALOG_ID_ROUTE_CORRECTING:I = 0x1

.field private static final DIALOG_ID_ROUTE_RECOMPUTING:I = 0x0

.field public static final EXTRA_CALCULATE_ROUTE_INPUT:Ljava/lang/String; = "extra.CALCULATE_ROUTE_INPUT"

.field public static final EXTRA_DEVIATED_RESULT:Ljava/lang/String; = "extra.EXTRA_DEVIATED_RESULT"

.field public static final EXTRA_IS_FOR_ROUTE_MANAGEMENT:Ljava/lang/String; = "extra.EXTRA_IS_FOR_ROUTE_MANAGEMENT"

.field public static final EXTRA_SELECTED_CALCULATE_ROUTE:Ljava/lang/String; = "extra.SELECTED_ROUTE"

.field public static final EXTRA_SELECTED_CALCULATE_RULE:Ljava/lang/String; = "extra.SELECTED_RULE"

.field public static final KEY_ROUTES_RESULT:Ljava/lang/String; = "key_routes_result"

.field private static final MULTI_CALCULATION_REQUEST:I = 0x1

.field private static final REQUEST_CODE_IS_TURNING:I = 0xa

.field private static final SINGLE_CALCULATION_REQUEST:I


# instance fields
.field private btn_pause:Landroid/widget/Button;

.field private btn_start:Landroid/widget/Button;

.field private btn_stop:Landroid/widget/Button;

.field private mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

.field private mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

.field private mCalculationRule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

.field private mCompoundCirListView:Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;

.field private mDlgAvoidRoad:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

.field private mDlgRouteCorrectiong:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

.field private mDlgRouteRecomputing:Lcom/autonavi/wh/navigation/app/ProgressDialogFragment;

.field private mExtrIsStartGuidanceOnDestory:Z

.field private mFormatter:Lcom/autonavi/wh/navi/base/util/Formatter;

.field private mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

.field private mGuideRoadInfoAdapter:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;

.field private mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

.field private mIsFromRouteManagement:Z

.field private mIsGuiding:Z

.field private mIsPresent:Z

.field private mIsRouteRecompting:Z

.field private mIsTrafficEnabled:Z

.field private final mMyPointIndex:I

.field private mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

.field private mOnCorrectionResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCorrectionResultListener;

.field private final mOnGuideListener:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

.field private final mPointIndex:I

.field private mResult:Lcom/autonavi/navigation/api/route/model/CalculationResult;

.field private mRoute:Lcom/autonavi/navigation/api/route/model/Route;

.field private mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

.field private mRouteStep:Lcom/autonavi/navigation/api/route/model/RouteStep;

.field private mRouteSteps:Ljava/util/List;

.field private mRoutesList:Lcom/autonavi/wh/navi/base/widget/CircularListView;

.field private final mSimulationGuidePlayer:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;

.field private mTotalDistance:I

.field private mTvExpectedTime:Landroid/widget/TextView;

.field private mTvTolls:Landroid/widget/TextView;

.field private mTvTotalDistance:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;-><init>()V

    iput-boolean v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mIsGuiding:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mIsPresent:Z

    iput-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mCalculationRule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    iput-boolean v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mIsFromRouteManagement:Z

    iput-boolean v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mIsRouteRecompting:Z

    iput-boolean v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mExtrIsStartGuidanceOnDestory:Z

    iput-boolean v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mIsTrafficEnabled:Z

    iput-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mSimulationGuidePlayer:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;

    new-instance v0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$3;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$3;-><init>(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mOnGuideListener:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

    iput v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mMyPointIndex:I

    iput v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mPointIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mIsPresent:Z

    return v0
.end method

.method static synthetic access$100(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->dismissDialog(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mTvTotalDistance:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mTotalDistance:I

    return p1
.end method

.method static synthetic access$1200(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mTvExpectedTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mTvTolls:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRouteSteps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRouteSteps:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mGuideRoadInfoAdapter:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->refreshView()V

    return-void
.end method

.method static synthetic access$1700(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/navigation/api/map/AnMap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mIsGuiding:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/wh/navi/base/widget/CircularListView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoutesList:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/navigation/api/route/model/CalculationResult;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mResult:Lcom/autonavi/navigation/api/route/model/CalculationResult;

    return-object v0
.end method

.method static synthetic access$202(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;Lcom/autonavi/navigation/api/route/model/CalculationResult;)Lcom/autonavi/navigation/api/route/model/CalculationResult;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mResult:Lcom/autonavi/navigation/api/route/model/CalculationResult;

    return-object p1
.end method

.method static synthetic access$300(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/navigation/api/route/model/CalculationInput;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    return-object v0
.end method

.method static synthetic access$302(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;Lcom/autonavi/navigation/api/route/model/CalculationInput;)Lcom/autonavi/navigation/api/route/model/CalculationInput;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    return-object p1
.end method

.method static synthetic access$402(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mIsRouteRecompting:Z

    return p1
.end method

.method static synthetic access$500(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/navigation/api/route/model/RouteStep;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRouteStep:Lcom/autonavi/navigation/api/route/model/RouteStep;

    return-object v0
.end method

.method static synthetic access$600(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/navigation/api/route/model/Route;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    return-object v0
.end method

.method static synthetic access$702(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;Lcom/autonavi/navigation/api/route/model/Route;)Lcom/autonavi/navigation/api/route/model/Route;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    return-object p1
.end method

.method static synthetic access$800(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/navigation/api/route/model/CalculationRule;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mCalculationRule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    return-object v0
.end method

.method static synthetic access$900(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)Lcom/autonavi/wh/navi/base/util/Formatter;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mFormatter:Lcom/autonavi/wh/navi/base/util/Formatter;

    return-object v0
.end method

.method private backToMap(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->startFragment(Landroid/content/Intent;)V

    return-void
.end method

.method private handleGuidanceStopped()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mDlgRouteCorrectiong:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mDlgRouteCorrectiong:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->dismissDialog(I)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mDlgRouteRecomputing:Lcom/autonavi/wh/navigation/app/ProgressDialogFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mDlgRouteRecomputing:Lcom/autonavi/wh/navigation/app/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/app/ProgressDialogFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->dismissDialog(I)V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mDlgAvoidRoad:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mDlgAvoidRoad:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->dismissDialog(I)V

    :cond_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b008c

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->popBack()V

    return-void
.end method

.method private refreshView()V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mTvTotalDistance:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mFormatter:Lcom/autonavi/wh/navi/base/util/Formatter;

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget v2, v2, Lcom/autonavi/navigation/api/route/model/Route;->totalDistance:I

    invoke-virtual {v1, v2}, Lcom/autonavi/wh/navi/base/util/Formatter;->getDistance(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget v0, v0, Lcom/autonavi/navigation/api/route/model/Route;->totalDistance:I

    iput v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mTotalDistance:I

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mTvExpectedTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget v2, v2, Lcom/autonavi/navigation/api/route/model/Route;->totalArrivalTime:I

    invoke-static {v1, v2}, Lcom/autonavi/wh/text/TextFormatter;->formatElapsedTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mTvTolls:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget v2, v2, Lcom/autonavi/navigation/api/route/model/Route;->totalTollGate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f0b0107

    invoke-virtual {v2, v3}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/Route;->getRouteSteps()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRouteSteps:Ljava/util/List;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mGuideRoadInfoAdapter:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRouteSteps:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;->setData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoutesList:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mGuideRoadInfoAdapter:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private routeRecomputing()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mDlgRouteRecomputing:Lcom/autonavi/wh/navigation/app/ProgressDialogFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navigation/app/ProgressDialogFragment$Builder;

    invoke-direct {v0}, Lcom/autonavi/wh/navigation/app/ProgressDialogFragment$Builder;-><init>()V

    const v1, 0x7f0b00bc

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/app/ProgressDialogFragment$Builder;->setMessage(I)Lcom/autonavi/wh/navigation/app/AlertDialogFragment$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/wh/navigation/app/AlertDialogFragment$Builder;->setCancelable(Z)Lcom/autonavi/wh/navigation/app/AlertDialogFragment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/app/AlertDialogFragment$Builder;->create()Lcom/autonavi/wh/navigation/app/AlertDialogFragment;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navigation/app/ProgressDialogFragment;

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mDlgRouteRecomputing:Lcom/autonavi/wh/navigation/app/ProgressDialogFragment;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mDlgRouteRecomputing:Lcom/autonavi/wh/navigation/app/ProgressDialogFragment;

    invoke-virtual {p0, v0, v2}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->showDialog(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/RouteManager;->createCalculationInput(Lcom/autonavi/navigation/api/route/model/Route;)Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->removeAllRules()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->addAllRules()V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRouteStep:Lcom/autonavi/navigation/api/route/model/RouteStep;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRouteStep:Lcom/autonavi/navigation/api/route/model/RouteStep;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->addDetour(Lcom/autonavi/navigation/api/route/Detourable;)V

    :cond_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/navigation/api/route/RouteManager;->calculateRoute(ILcom/autonavi/navigation/api/route/model/CalculationInput;)V

    return-void
.end method

.method private setCorrectionResultListener()V
    .locals 2

    new-instance v0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$2;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$2;-><init>(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mOnCorrectionResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCorrectionResultListener;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mOnCorrectionResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCorrectionResultListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/RouteManager;->addOnCorrectionResultListener(Lcom/autonavi/navigation/api/route/RouteManager$OnCorrectionResultListener;)V

    return-void
.end method

.method private setEmptyView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoutesList:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoutesList:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method private showDlgAvoidRoad()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mDlgAvoidRoad:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    invoke-direct {v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;-><init>()V

    const v1, 0x7f0b0076

    const v2, 0x7f020385

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setNegativeButton(II)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00bd

    const v2, 0x7f020397

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setPositiveButton(II)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->create()Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mDlgAvoidRoad:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mDlgAvoidRoad:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->showDialog(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    return-void
.end method

.method private showDlgRouteCorrectiong()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mDlgRouteCorrectiong:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navigation/app/ProgressDialogFragment$Builder;

    invoke-direct {v0}, Lcom/autonavi/wh/navigation/app/ProgressDialogFragment$Builder;-><init>()V

    const v1, 0x7f0b0079

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/app/ProgressDialogFragment$Builder;->setMessage(I)Lcom/autonavi/wh/navigation/app/AlertDialogFragment$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/app/AlertDialogFragment$Builder;->setCancelable(Z)Lcom/autonavi/wh/navigation/app/AlertDialogFragment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/app/AlertDialogFragment$Builder;->create()Lcom/autonavi/wh/navigation/app/AlertDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mDlgRouteCorrectiong:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mDlgRouteCorrectiong:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->showDialog(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    return-void
.end method

.method private startNavigation()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mIsRouteRecompting:Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/guide/GuideManager;->startGuide(Lcom/autonavi/navigation/api/route/model/Route;)Z

    :cond_0
    return-void
.end method

.method private startSimulation()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mSimulationGuidePlayer:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;

    sget-object v1, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->NORMAL:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;->setPlaybackRate(Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mSimulationGuidePlayer:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mOnGuideListener:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;->setOnGuideListener(Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mSimulationGuidePlayer:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;->start(Lcom/autonavi/navigation/api/route/model/Route;)Z

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

.method protected isScreenViewEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const-string v0, "extra.GUIDE_INFO_TO_AVOID"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/RouteStep;

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRouteStep:Lcom/autonavi/navigation/api/route/model/RouteStep;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRouteStep:Lcom/autonavi/navigation/api/route/model/RouteStep;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->routeRecomputing()V

    :cond_0
    const-string v0, "extra.EXTRA_DEVIATED_RESULT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/CalculationResult;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->getRoutes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->getRoutes()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mCalculationRule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/route/model/CalculationRule;->ordinal()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Route;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    invoke-direct {p0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->refreshView()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "key_routes_result"

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mResult:Lcom/autonavi/navigation/api/route/model/CalculationResult;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->setResult(ILandroid/content/Intent;)V

    invoke-super {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0800a3

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/RouteStep;

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRouteStep:Lcom/autonavi/navigation/api/route/model/RouteStep;

    invoke-direct {p0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->showDlgAvoidRoad()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f080013

    if-ne v0, v1, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "key_routes_result"

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mResult:Lcom/autonavi/navigation/api/route/model/CalculationResult;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->setResult(ILandroid/content/Intent;)V

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mIsFromRouteManagement:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getAnMap()Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v0

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapType;->DEFAULT:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setMapType(Lcom/autonavi/navigation/api/map/model/MapType;)V

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->popBack()V

    goto :goto_0

    :cond_3
    const v1, 0x7f080017

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mIsRouteRecompting:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mExtrIsStartGuidanceOnDestory:Z

    if-eqz v0, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->startNavigation()V

    :cond_5
    const-string v0, "action.BACK_TO_MY_LOCATION"

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->backToMap(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 6

    const v5, 0x7f0800b2

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onCreateView(Landroid/os/Bundle;)V

    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->setTitle(I)V

    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->setContentView(I)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getAnMap()Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getGuideManager()Lcom/autonavi/navigation/api/guide/GuideManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getRouteManager()Lcom/autonavi/navigation/api/route/RouteManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->isGuiding()Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mIsGuiding:Z

    new-instance v0, Lcom/autonavi/wh/navi/base/util/Formatter;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-direct {v0, v1}, Lcom/autonavi/wh/navi/base/util/Formatter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mFormatter:Lcom/autonavi/wh/navi/base/util/Formatter;

    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800ad

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mTvTotalDistance:Landroid/widget/TextView;

    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mTvExpectedTime:Landroid/widget/TextView;

    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mTvTolls:Landroid/widget/TextView;

    const v0, 0x7f0800b5

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mCompoundCirListView:Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mCompoundCirListView:Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/CompoundCirListView;->getListView()Lcom/autonavi/wh/navi/base/widget/CircularListView;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoutesList:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoutesList:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;-><init>(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mGuideRoadInfoAdapter:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoutesList:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    invoke-virtual {v0, v4}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f030029

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v0, "extra.SELECTED_ROUTE"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Route;

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "extra_start_guidance_on_destory"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mExtrIsStartGuidanceOnDestory:Z

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "extra_is_traffic_enabled"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mIsTrafficEnabled:Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v0, v0, Lcom/autonavi/navigation/api/route/model/Route;->rule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mCalculationRule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    const-string v0, "extra.CALCULATE_ROUTE_INPUT"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/CalculationInput;

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    const-string v0, "extra.EXTRA_IS_FOR_ROUTE_MANAGEMENT"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mIsFromRouteManagement:Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mTvTotalDistance:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mFormatter:Lcom/autonavi/wh/navi/base/util/Formatter;

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget v2, v2, Lcom/autonavi/navigation/api/route/model/Route;->totalDistance:I

    invoke-virtual {v1, v2}, Lcom/autonavi/wh/navi/base/util/Formatter;->getDistance(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget v0, v0, Lcom/autonavi/navigation/api/route/model/Route;->totalDistance:I

    iput v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mTotalDistance:I

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mTvExpectedTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget v2, v2, Lcom/autonavi/navigation/api/route/model/Route;->totalArrivalTime:I

    invoke-static {v1, v2}, Lcom/autonavi/wh/text/TextFormatter;->formatElapsedTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mTvTolls:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget v2, v2, Lcom/autonavi/navigation/api/route/model/Route;->totalTollGate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f0b0107

    invoke-virtual {v2, v3}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/Route;->getRouteSteps()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRouteSteps:Ljava/util/List;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mGuideRoadInfoAdapter:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRouteSteps:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;->setData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoutesList:Lcom/autonavi/wh/navi/base/widget/CircularListView;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mGuideRoadInfoAdapter:Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$GuideRoadInfoAdapter;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v5}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute$1;-><init>(Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/RouteManager;->addOnCalculationResultListener(Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;)V

    invoke-direct {p0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->setCorrectionResultListener()V

    return-void

    :cond_2
    const-string v0, "=========="

    const-string v1, "\u6ca1\u6709\u53c2\u6570\u4f20\u5165"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v5}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onDestroy()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mIsPresent:Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/RouteManager;->removeOnCalculationResultListener(Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mOnCorrectionResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCorrectionResultListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mOnCorrectionResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCorrectionResultListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/RouteManager;->removeOnCorrectionResultListener(Lcom/autonavi/navigation/api/route/RouteManager$OnCorrectionResultListener;)V

    :cond_1
    iget-boolean v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mIsFromRouteManagement:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->startNavigation()V

    :cond_2
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

    invoke-direct {p0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->routeRecomputing()V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRouteSteps:Ljava/util/List;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRouteSteps:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v3, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-boolean v2, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mExtrIsStartGuidanceOnDestory:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mIsRouteRecompting:Z

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "extra_start_guidance_on_destory"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    const-string v2, "extra_is_traffic_enabled"

    iget-boolean v3, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mIsTrafficEnabled:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "extra.GUIDE_ROAD_INFO"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v0, "extra.SELECTED_POSITION"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "extra.REMAINING_DISTANCE"

    iget v2, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mTotalDistance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "extra.SELECTED_ROUTE"

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v0, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->startFragmentForResult(Landroid/content/Intent;I)V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mIsPresent:Z

    invoke-super {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfRoute;->mIsPresent:Z

    return-void
.end method
