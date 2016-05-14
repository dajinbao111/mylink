.class public Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;
.super Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/autonavi/navigation/api/location/LocationManager$LocationCallback;


# static fields
.field public static final ACTION_BACK_TO_MY_LOCATION:Ljava/lang/String; = "action.BACK_TO_MY_LOCATION"

.field public static final ACTION_DELETE_ROUTE:Ljava/lang/String; = "action.DELETE_ROUTE"

.field public static final ACTION_EXTRA_INPUT:Ljava/lang/String; = "com.autonavi.xm.action.INPUT"

.field private static final ACTION_EXTRA_LAT:Ljava/lang/String; = "com.autonavi.xm.action.EXTRA_LAT"

.field private static final ACTION_EXTRA_LON:Ljava/lang/String; = "com.autonavi.xm.action.EXTRA_LON"

.field public static final ACTION_GUIDE_ROUTE:Ljava/lang/String; = "action.GUIDE_ROUTE"

.field public static final ACTION_RECOMPUTE_MULTI_ROUTE:Ljava/lang/String; = "action.RECOMPUTE_MULTI_ROUTE"

.field public static final ACTION_SET_FINAL_DEST:Ljava/lang/String; = "action.SET_FINAL_DEST"

.field public static final ACTION_SET_MY_LOC_TO_MAP_CENTER:Ljava/lang/String; = "aciton.SET_MY_LOC_TO_MAP_CENTER"

.field public static final CONTINUE_NAVI_ROUTE_FILE_NAME:Ljava/lang/String; = "guideroute.dat"

.field private static final DIALOG_ID_DELETE_ROUTE:I = 0x1

.field private static final DIALOG_ID_RESET_ROUTE_POINT:I = 0x2

.field private static final DIALOG_ID_RESUME_PRE_ROUTE:I = 0x3

.field private static final DIALOG_ID_ROUTE_COMPUTING:I = 0x0

.field private static final DIALOG_ID_ROUTE_CORRECTING:I = 0x4

.field private static final KEY_CODE_RESUME_PRE_ROUTE:Ljava/lang/String; = "code_resume_pre_route"

.field private static final KEY_HAS_DLG_RESUME_PRE_ROUTE_SHOW:Ljava/lang/String; = "has_dlg_resume_pre_route_show"

.field private static final KEY_HAS_WARNING_SHOW:Ljava/lang/String; = "has_warning_show"

.field private static final MAP_OFFSET_BY_PIXEL:I = 0x14

.field public static final PACKAGE_NAME_IDRIVE:Ljava/lang/String; = "com.autonavi.xm.idrive"

.field public static final REQUEST_CODE_STATEMENT_REPLY:I = 0x1


# instance fields
.field private isAddWayPoint:Z

.field private isDeviate:Z

.field private isPoiBrowserIn:Z

.field private mAcceptStatement:Z

.field private final mActionBackToMyLoc:Ljava/lang/Runnable;

.field private final mActionEnterHideState:Ljava/lang/Runnable;

.field private mAutoBackToMyLoc:Z

.field private mAutoBackToMyLocDelay:I

.field private mBtnBackToMyLoc:Landroid/widget/ImageButton;

.field private mBtnNavigationTo:Landroid/widget/Button;

.field private mBtnPassBy:Landroid/widget/Button;

.field private mBtnShowGpsStatus:Landroid/widget/Button;

.field private mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

.field private mCalculationResultIng:Z

.field private mCameraPosition:Lcom/autonavi/navigation/api/map/model/CameraPosition;

.field private mCodeResumePreRoute:I

.field private mDlgComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

.field private mDlgDeleteRoute:Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

.field private mDlgResetRoutePoint:Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

.field private mDlgResumePreRoute:Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

.field private mDlgRouteCorrectiong:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

.field private mGrpOperationCursor:Landroid/view/ViewGroup;

.field private mGrpOperationNormal:Landroid/view/ViewGroup;

.field private mHasDlgResumePreRouteShow:Z

.field private mHasUnfinishedGuidance:Z

.field private mHasWarningShow:Z

.field private mIsComputingRoute:Z

.field private mIsComputingRouteCanceled:Z

.field private mLocationManager:Lcom/autonavi/navigation/api/location/LocationManager;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMyLocation:Lcom/autonavi/navigation/api/map/model/MyLocation;

.field private mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

.field private mOnCorrectionResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCorrectionResultListener;

.field private mOnDeviateFromRouteListener:Lcom/autonavi/navigation/api/guide/GuideManager$OnDeviateFromRouteListener;

.field private mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

.field private mRemainingDestinations:[Lcom/autonavi/navigation/api/poi/model/Poi;

.field private mResumePreRoute:Z

.field private mRoute:Lcom/autonavi/navigation/api/route/model/Route;

.field private mRouteFile:Ljava/lang/String;

.field private final mTmcChange:Ljava/lang/Runnable;

.field private mTmcTime:Landroid/widget/TextView;

.field private mTxtRoadNameCursor:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mCodeResumePreRoute:I

    iput-boolean v2, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHasWarningShow:Z

    iput-boolean v2, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAcceptStatement:Z

    iput-boolean v2, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHasDlgResumePreRouteShow:Z

    iput-boolean v2, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mIsComputingRoute:Z

    iput-boolean v2, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mIsComputingRouteCanceled:Z

    iput-boolean v2, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mResumePreRoute:Z

    iput-boolean v2, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->isAddWayPoint:Z

    iput-boolean v2, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHasUnfinishedGuidance:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mMainHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mCalculationResultIng:Z

    new-instance v0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$2;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$2;-><init>(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mTmcChange:Ljava/lang/Runnable;

    new-instance v0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$8;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$8;-><init>(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mActionBackToMyLoc:Ljava/lang/Runnable;

    new-instance v0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$9;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$9;-><init>(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mActionEnterHideState:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mTmcTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mTmcChange:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->isDeviate:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mBtnPassBy:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->showDlgRouteCorrecting()V

    return-void
.end method

.method static synthetic access$1300(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->dismissDialog(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)Lcom/autonavi/navigation/api/route/model/Route;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;Lcom/autonavi/navigation/api/route/model/Route;)Lcom/autonavi/navigation/api/route/model/Route;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->correctBtnPassByState(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->backToMyLoc()V

    return-void
.end method

.method static synthetic access$1700(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->isOnTop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1802(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mIsComputingRouteCanceled:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mResumePreRoute:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mResumePreRoute:Z

    return p1
.end method

.method static synthetic access$200(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->clearRemainingDestinations()V

    return-void
.end method

.method static synthetic access$2100(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;Lcom/autonavi/navigation/api/route/model/RoutePoint;Z)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->assertRoutePoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;Z)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)Lcom/autonavi/navigation/api/poi/model/Poi;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->routeCalculate()V

    return-void
.end method

.method static synthetic access$2400(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;Landroid/content/Intent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->onAction(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->initResumePreRoute()V

    return-void
.end method

.method static synthetic access$300(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->isOnTop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;Lcom/autonavi/navigation/api/map/model/LatLng;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->clickMapMotion(Lcom/autonavi/navigation/api/map/model/LatLng;)V

    return-void
.end method

.method static synthetic access$500(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->isOnTop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mCalculationResultIng:Z

    return v0
.end method

.method static synthetic access$602(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mCalculationResultIng:Z

    return p1
.end method

.method static synthetic access$700(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->isPoiBrowserIn:Z

    return v0
.end method

.method static synthetic access$702(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->isPoiBrowserIn:Z

    return p1
.end method

.method static synthetic access$800(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->dismissDialog(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->isAddWayPoint:Z

    return v0
.end method

.method static synthetic access$902(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->isAddWayPoint:Z

    return p1
.end method

.method private addWayPointByMapCenter()V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$12;

    invoke-direct {v1, p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$12;-><init>(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private assertRoutePoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;Z)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

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

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mDlgComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mDlgComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/app/NaviDialogFragment;->dismiss()V

    :cond_2
    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v2, 0x7f0b0070

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(I)V

    move-object p1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mDlgComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mDlgComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/app/NaviDialogFragment;->dismiss()V

    :cond_4
    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v2, 0x7f0b0088

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v1

    const/4 v2, -0x3

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mDlgComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mDlgComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/app/NaviDialogFragment;->dismiss()V

    :cond_6
    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v2, 0x7f0b0072

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(I)V

    move-object p1, v0

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v1

    const/4 v2, -0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mDlgComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mDlgComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/app/NaviDialogFragment;->dismiss()V

    :cond_8
    if-eqz p2, :cond_9

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v2, 0x7f0b008d

    invoke-virtual {p0, v2}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(Ljava/lang/String;)V

    :goto_1
    move-object p1, v0

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v2, 0x7f0b0083

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private backToMyLoc()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->gotoMyLocation()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mTxtRoadName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/map/AnMap;->getMyLocation()Lcom/autonavi/navigation/api/map/model/MyLocation;

    move-result-object v1

    iget-object v1, v1, Lcom/autonavi/navigation/api/map/model/MyLocation;->roadName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/base/util/TextUtil;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->dismissDialog(I)V

    invoke-direct {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->backToMyLocDelay()V

    goto :goto_0
.end method

.method private backToMyLocDelay()V
    .locals 4

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAutoBackToMyLoc:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->isOnTop()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mActionBackToMyLoc:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mActionBackToMyLoc:Ljava/lang/Runnable;

    iget v2, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAutoBackToMyLocDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private clearRemainingDestinations()V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->getResumeRouteFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private clickMapMotion(Lcom/autonavi/navigation/api/map/model/LatLng;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-static {p1}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->newLatLng(Lcom/autonavi/navigation/api/map/model/LatLng;)Lcom/autonavi/navigation/api/map/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->moveCamera(Lcom/autonavi/navigation/api/map/CameraUpdate;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->setMapInMotion(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->onMapClickEnd()V

    return-void
.end method

.method private correctBtnPassByState(I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mBtnPassBy:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mBtnPassBy:Landroid/widget/Button;

    invoke-static {v1, v0}, Lcom/autonavi/xm/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mBtnPassBy:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getResumeRouteFile()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/AnApi;->getDataSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "guideroute.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initResumePreRoute()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v1}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "guideroute.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mRouteFile:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mRouteFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/autonavi/xm/navi/base/util/GdFileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHasUnfinishedGuidance:Z

    invoke-direct {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->showDlgResumePreRouteIfNeeded()V

    :cond_0
    return-void
.end method

.method private onAction(Landroid/content/Intent;)Z
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "action.SET_FINAL_DEST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "com.autonavi.xm.extra.POI"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->setFinalDestByMapCenter(Lcom/autonavi/navigation/api/poi/model/Poi;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v2, "aciton.SET_MY_LOC_TO_MAP_CENTER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->setMyLocToMapCenter()V

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v2, "action.RECOMPUTE_MULTI_ROUTE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "poi"

    const-string v2, "ACTION_RECOMPUTE_MULTI_ROUTE"

    invoke-static {v0, v2}, Lcom/autonavi/xm/navi/base/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->isPoiBrowserIn:Z

    const-string v0, "com.autonavi.xm.action.INPUT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/CalculationInput;

    iput-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v2, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    iput-object v2, v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-direct {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->recomputeMultiRoute()V

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v2, "com.autonavi.xm.action.NAVIGATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "guide"

    const-string v2, "==========NaviActionFragment  ACTION_NAVIGATE"

    invoke-static {v0, v2}, Lcom/autonavi/xm/navi/base/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getCameraPosition()Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->mode:Lcom/autonavi/navigation/api/map/model/MapMode;

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->handleViewModeChanged(Lcom/autonavi/navigation/api/map/model/MapMode;)V

    const-string v0, "action.GUIDE_ROUTE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Route;

    iput-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$7;

    invoke-direct {v2, p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$7;-><init>(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v2, "com.autonavi.xm.action.SHOW_ON_MAP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const-string v2, "action.BACK_TO_MY_LOCATION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->backToMyLoc()V

    move v0, v1

    goto :goto_0

    :cond_5
    const-string v2, "action.DELETE_ROUTE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v2, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/route/RouteManager;->createCalculationInput()Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v2

    iput-object v2, v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mBtnPassBy:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/autonavi/xm/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mBtnPassBy:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->enterHideState()V

    move v0, v1

    goto/16 :goto_0

    :cond_6
    const-string v2, "com.autonavi.xm.action.SETTINGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-class v4, Lcom/autonavi/xm/navi/setting/fragment/SystemSettings;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->startFragment(Landroid/content/Intent;)V

    move v0, v1

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private onGpsStatusChanged(I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mIsLocationAvailable:Z

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mIsLocationAvailable:Z

    if-nez v0, :cond_1

    :goto_1
    invoke-direct {p0, v1}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->setGpsStatusVisable(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private onQuitGuidance()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mIsGuiding:Z

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->isInRoamState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mTxtRoadNameCursor:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->setGpsStatusVisable(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/RouteManager;->createCalculationInput()Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    return-void
.end method

.method private recomputeMultiRoute()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mIsComputingRoute:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mIsComputingRouteCanceled:Z

    invoke-direct {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->routeCalculate()V

    return-void
.end method

.method private resetBackToMyLocTimimg(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAutoBackToMyLoc:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->isOnTop()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mActionBackToMyLoc:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->backToMyLocDelay()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private routeCalculate()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v1, v1, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/RouteManager;->calculateRoute(Lcom/autonavi/navigation/api/route/model/CalculationInput;)V

    return-void
.end method

.method private searchAround(Z)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMapCursorInfo()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMapCursorInfo()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->position:Lcom/autonavi/navigation/api/map/model/LatLng;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/xm/navi/around/AroundSearcherFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_is_search_by_cursor"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.autonavi.xm.extra.LOCATION_POINT"

    iget-object v2, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/map/AnMap;->getMapCursorInfo()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->position:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->startFragment(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b00af

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0
.end method

.method private setFinalDestByMapCenter(Lcom/autonavi/navigation/api/poi/model/Poi;)V
    .locals 4

    iput-object p1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    new-instance v0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$11;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$11;-><init>(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)V

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setGpsStatusVisable(Z)V
    .locals 2

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mBtnShowGpsStatus:Landroid/widget/Button;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mIsLocationAvailable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mIsGuiding:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mTxtRoadNameCursor:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->setViewVisable(Landroid/view/View;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setRouteListener()V
    .locals 2

    new-instance v0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$4;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$4;-><init>(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/RouteManager;->addOnCalculationResultListener(Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;)V

    new-instance v0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$5;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$5;-><init>(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mOnDeviateFromRouteListener:Lcom/autonavi/navigation/api/guide/GuideManager$OnDeviateFromRouteListener;

    new-instance v0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$6;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$6;-><init>(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mOnCorrectionResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCorrectionResultListener;

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mOnCorrectionResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCorrectionResultListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/RouteManager;->addOnCorrectionResultListener(Lcom/autonavi/navigation/api/route/RouteManager$OnCorrectionResultListener;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mOnDeviateFromRouteListener:Lcom/autonavi/navigation/api/guide/GuideManager$OnDeviateFromRouteListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/guide/GuideManager;->addOnDeviateFromRouteListener(Lcom/autonavi/navigation/api/guide/GuideManager$OnDeviateFromRouteListener;)V

    return-void
.end method

.method private showDlgComputing()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mDlgComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

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

    iput-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mDlgComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mDlgComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    invoke-virtual {p0, v0, v2}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->showDialog(Lcom/autonavi/xm/navigation/app/NaviDialogFragment;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mIsComputingRoute:Z

    iput-boolean v2, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mIsComputingRouteCanceled:Z

    return-void
.end method

.method private showDlgDeleteRoute()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mDlgDeleteRoute:Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;

    invoke-direct {v0}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;-><init>()V

    const v1, 0x7f0b0076

    const v2, 0x7f020385

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;->setNegativeButton(II)Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0074

    const v2, 0x7f0203ad

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;->setPositiveButton(II)Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;->create()Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mDlgDeleteRoute:Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mDlgDeleteRoute:Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->showDialog(Lcom/autonavi/xm/navigation/app/NaviDialogFragment;I)V

    return-void
.end method

.method private showDlgResetRoutePoint()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mDlgResetRoutePoint:Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;

    invoke-direct {v0}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;-><init>()V

    const v1, 0x7f0b0076

    const v2, 0x7f020385

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;->setNegativeButton(II)Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0075

    const v2, 0x7f0203a6

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;->setPositiveButton(II)Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;->create()Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mDlgResetRoutePoint:Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mDlgResetRoutePoint:Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->showDialog(Lcom/autonavi/xm/navigation/app/NaviDialogFragment;I)V

    return-void
.end method

.method private showDlgResumePreRouteIfNeeded()V
    .locals 3

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mIsGuiding:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHasUnfinishedGuidance:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHasDlgResumePreRouteShow:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->isOnTop()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mDlgResumePreRoute:Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

    if-nez v0, :cond_2

    new-instance v0, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;

    invoke-direct {v0}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;-><init>()V

    const v1, 0x7f0b0076

    const v2, 0x7f020385

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;->setNegativeButton(II)Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0077

    const v2, 0x7f0203a9

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;->setPositiveButton(II)Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;->setCancelable(Z)Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;->create()Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mDlgResumePreRoute:Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mDlgResumePreRoute:Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->showDialog(Lcom/autonavi/xm/navigation/app/NaviDialogFragment;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHasDlgResumePreRouteShow:Z

    goto :goto_0
.end method

.method private showDlgRouteCorrecting()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mDlgRouteCorrectiong:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xm/navigation/app/ProgressDialogFragment$Builder;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/app/ProgressDialogFragment$Builder;-><init>()V

    const v1, 0x7f0b0079

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/app/ProgressDialogFragment$Builder;->setMessage(I)Lcom/autonavi/xm/navigation/app/AlertDialogFragment$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/app/AlertDialogFragment$Builder;->setCancelable(Z)Lcom/autonavi/xm/navigation/app/AlertDialogFragment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/app/AlertDialogFragment$Builder;->create()Lcom/autonavi/xm/navigation/app/AlertDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mDlgRouteCorrectiong:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mDlgRouteCorrectiong:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->showDialog(Lcom/autonavi/xm/navigation/app/NaviDialogFragment;I)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/guide/GuideManager;->isGuiding()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->isInHideState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/map/AnMap;->closeZoomView()V

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/map/AnMap;->refreshMap()V

    invoke-virtual {p0, v2}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->handleZoomViewVisibilityChanged(Z)V

    invoke-virtual {p0, v2}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->setMapInMotion(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->enterOperState()V

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->isInHideState()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->enterOperState()V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v1, v0}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->moveTaskToBack(Z)Z

    :goto_1
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->isInOperState()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->enterOperState()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->isInRoamState()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->enterRoamState()V

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->isInRoamState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->resetBackToMyLocTimimg(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->isInOperState()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-super {p0, p1}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mActionEnterHideState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mActionEnterHideState:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected enterHideState()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->enterHideState()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mTxtRoadNameCursor:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->setViewVisable(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mGrpOperationNormal:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->setViewVisable(Landroid/view/View;Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->setGpsStatusVisable(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mGrpOperationCursor:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mBtnBackToMyLoc:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method protected enterOperState()V
    .locals 4

    invoke-super {p0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->enterOperState()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mActionEnterHideState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mActionEnterHideState:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mTxtRoadNameCursor:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->setViewVisable(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mGrpOperationNormal:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->setViewVisable(Landroid/view/View;Z)V

    return-void
.end method

.method protected enterRoamState()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->enterRoamState()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mActionEnterHideState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mTxtRoadNameCursor:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v3}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->setViewVisable(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mGrpOperationNormal:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mGrpOperationCursor:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v3}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->setViewVisable(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mBtnBackToMyLoc:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->setGpsStatusVisable(Z)V

    invoke-direct {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->backToMyLocDelay()V

    return-void
.end method

.method protected handleIntoZoomViewInvisible()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->isInHideState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->closeZoomView()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->refreshMap()V

    invoke-virtual {p0, v1}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->handleZoomViewVisibilityChanged(Z)V

    invoke-virtual {p0, v1}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->setMapInMotion(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->enterOperState()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->enterOperState()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->setMapInMotion(Z)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->enterOperState()V

    if-ne p1, v0, :cond_1

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHasWarningShow:Z

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "com.autonavi.xm.extra.IS_STATEMENT_ACCEPTED"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAcceptStatement:Z

    :cond_0
    iget-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAcceptStatement:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$13;

    invoke-direct {v1, p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$13;-><init>(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method protected onButtonStopClicked()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->showDlgDeleteRoute()V

    return-void
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->onCreateView(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->setTouchEventPassed(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAutoBackToMyLoc:Z

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAutoBackToMyLoc:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAutoBackToMyLocDelay:I

    :cond_0
    const v0, 0x7f080122

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mBtnBackToMyLoc:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mBtnBackToMyLoc:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800fd

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mTxtRoadNameCursor:Landroid/widget/TextView;

    const v0, 0x7f0800fe

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mBtnShowGpsStatus:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mBtnShowGpsStatus:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mBtnShowGpsStatus:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    if-eqz p1, :cond_1

    const-string v0, "has_warning_show"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHasWarningShow:Z

    const-string v0, "code_resume_pre_route"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mCodeResumePreRoute:I

    const-string v0, "has_dlg_resume_pre_route_show"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHasDlgResumePreRouteShow:Z

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/RouteManager;->createCalculationInput()Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    :cond_2
    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getLocationManager()Lcom/autonavi/navigation/api/location/LocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mLocationManager:Lcom/autonavi/navigation/api/location/LocationManager;

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mLocationManager:Lcom/autonavi/navigation/api/location/LocationManager;

    invoke-virtual {v0, p0}, Lcom/autonavi/navigation/api/location/LocationManager;->requestLocationUpdates(Lcom/autonavi/navigation/api/location/LocationManager$LocationCallback;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mOnGuideListener:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/guide/GuideManager;->setOnGuideListener(Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;)V

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHasWarningShow:Z

    if-nez v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/xm/navi/main/fragment/Warning;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->startFragmentForResult(Landroid/content/Intent;I)V

    :cond_3
    const v0, 0x7f080118

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mTmcTime:Landroid/widget/TextView;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->onDestroy()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mOnCorrectionResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCorrectionResultListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mOnCorrectionResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCorrectionResultListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/RouteManager;->removeOnCorrectionResultListener(Lcom/autonavi/navigation/api/route/RouteManager$OnCorrectionResultListener;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mOnDeviateFromRouteListener:Lcom/autonavi/navigation/api/guide/GuideManager$OnDeviateFromRouteListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mOnDeviateFromRouteListener:Lcom/autonavi/navigation/api/guide/GuideManager$OnDeviateFromRouteListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/guide/GuideManager;->removeOnDeviateFromRouteListener(Lcom/autonavi/navigation/api/guide/GuideManager$OnDeviateFromRouteListener;)V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/RouteManager;->removeOnCalculationResultListener(Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;)V

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mLocationManager:Lcom/autonavi/navigation/api/location/LocationManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mLocationManager:Lcom/autonavi/navigation/api/location/LocationManager;

    invoke-virtual {v0, p0}, Lcom/autonavi/navigation/api/location/LocationManager;->removeLocationUpdates(Lcom/autonavi/navigation/api/location/LocationManager$LocationCallback;)V

    :cond_3
    return-void
.end method

.method public onDialogClick(Lcom/autonavi/xm/navigation/app/NaviDialogFragment;I)V
    .locals 6

    const v5, 0x7f0b0078

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, -0x2

    invoke-virtual {p1}, Lcom/autonavi/xm/navigation/app/NaviDialogFragment;->getDialogId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    if-ne p2, v3, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/RouteManager;->createCalculationInput()Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-direct {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->showDlgComputing()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->setFinalDestByMapCenter(Lcom/autonavi/navigation/api/poi/model/Poi;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p2, v2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mActionBackToMyLoc:Ljava/lang/Runnable;

    iget v2, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAutoBackToMyLocDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    if-ne v0, v4, :cond_3

    if-ne p2, v3, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->stopGuide()Z

    invoke-direct {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->backToMyLoc()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mIsGuiding:Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mBtnStopNavigation:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/RouteManager;->createCalculationInput()Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    if-ne p2, v2, :cond_0

    const-string v0, "dialog"

    const-string v1, "navi which == DialogInterface.BUTTON_NEGATIVE"

    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/base/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$10;

    invoke-direct {v1, p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$10;-><init>(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    if-ne p2, v3, :cond_7

    iput-boolean v4, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mResumePreRoute:Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mRouteFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/RouteManager;->loadRoute(Ljava/lang/String;)Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mRouteFile:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/guide/GuideManager;->startGuide(Lcom/autonavi/navigation/api/route/model/Route;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "======startGuide"

    invoke-static {v0}, Lcom/autonavi/xm/navi/base/util/LogUtil;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    iget-object v2, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/route/RouteManager;->createCalculationInput(Lcom/autonavi/navigation/api/route/model/Route;)Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->refreshMap()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0, v5}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0, v5}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto/16 :goto_0

    :cond_7
    if-ne p2, v2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mRouteFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/autonavi/xm/navi/base/util/GdFileUtil;->deleteFile(Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public onDialogDismiss(Lcom/autonavi/xm/navigation/app/NaviDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->backToMyLocDelay()V

    invoke-super {p0, p1}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->onDialogDismiss(Lcom/autonavi/xm/navigation/app/NaviDialogFragment;)V

    return-void
.end method

.method protected onGuidanceCompletion()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->onQuitGuidance()V

    return-void
.end method

.method protected onGuidanceStarted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mIsGuiding:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->setGpsStatusVisable(Z)V

    return-void
.end method

.method protected onGuidanceStopped()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->onQuitGuidance()V

    return-void
.end method

.method protected onInflateView()V
    .locals 3

    const v0, 0x7f08010f

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f080110

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mGrpOperationNormal:Landroid/view/ViewGroup;

    const v0, 0x7f080138

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080139

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08013a

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08013b

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08013c

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mGrpOperationNormal:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v0, 0x7f080111

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f080112

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mGrpOperationCursor:Landroid/view/ViewGroup;

    const v0, 0x7f080132

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mBtnNavigationTo:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mBtnNavigationTo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080137

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "set_my_location_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mBtnNavigationTo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    const v0, 0x7f080133

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mBtnPassBy:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mBtnPassBy:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080134

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080135

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mTxtRoadNameCursor:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const v0, 0x7f0800fd

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mTxtRoadNameCursor:Landroid/widget/TextView;

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "================================mAnMap.getMyLocation().roadName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/map/AnMap;->getMyLocation()Lcom/autonavi/navigation/api/map/model/MyLocation;

    move-result-object v1

    iget-object v1, v1, Lcom/autonavi/navigation/api/map/model/MyLocation;->roadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xm/navi/base/util/LogUtil;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mTxtRoadName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/map/AnMap;->getMyLocation()Lcom/autonavi/navigation/api/map/model/MyLocation;

    move-result-object v1

    iget-object v1, v1, Lcom/autonavi/navigation/api/map/model/MyLocation;->roadName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/base/util/TextUtil;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    new-instance v1, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$3;

    invoke-direct {v1, p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$3;-><init>(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setOnMapClickListener(Lcom/autonavi/navigation/api/map/AnMap$OnMapClickListener;)V

    invoke-direct {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->setRouteListener()V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->onGpsStatusChanged(I)V

    :cond_0
    return-void
.end method

.method public onLocationStatusChanged(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->onGpsStatusChanged(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->onGpsStatusChanged(I)V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080132

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMapCursorInfo()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->setMyLocToMapCenter()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b00af

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0
.end method

.method protected onMapAction(Landroid/view/View;)V
    .locals 5

    const v4, 0x7f0b00c7

    const v3, 0x7f0b00af

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080138

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->startFragment(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f080139

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/xm/navi/commonuse/CommonUseFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->startFragment(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const v1, 0x7f08013a

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->searchAround(Z)V

    goto :goto_0

    :cond_3
    const v1, 0x7f08013b

    if-ne v0, v1, :cond_4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/xm/navi/menu/fragment/MainMenuFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->startFragment(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const v1, 0x7f080122

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->backToMyLoc()V

    goto :goto_0

    :cond_5
    const v1, 0x7f080132

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMapCursorLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0, v3}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMapCursorInfo()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->roadName:Ljava/lang/String;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0, v4}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0

    :cond_7
    iget-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mIsGuiding:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mActionBackToMyLoc:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->showDlgResetRoutePoint()V

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->showDlgComputing()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->setFinalDestByMapCenter(Lcom/autonavi/navigation/api/poi/model/Poi;)V

    goto :goto_0

    :cond_9
    const v1, 0x7f080133

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mBtnPassBy:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMapCursorLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0, v3}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMapCursorInfo()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->roadName:Ljava/lang/String;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0, v4}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->showDlgComputing()V

    invoke-direct {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->addWayPointByMapCenter()V

    goto/16 :goto_0

    :cond_c
    const v1, 0x7f080134

    if-ne v0, v1, :cond_d

    invoke-direct {p0, v2}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->searchAround(Z)V

    goto/16 :goto_0

    :cond_d
    const v1, 0x7f080135

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMapCursorInfo()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/AnApi;->getDataManager()Lcom/autonavi/navigation/api/data/DataManager;

    move-result-object v1

    iget-object v2, v0, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->position:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/data/DataManager;->hasAdminAreaData(Lcom/autonavi/navigation/api/map/model/LatLng;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->roadName:Ljava/lang/String;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0, v4}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto/16 :goto_0

    :cond_f
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-class v3, Lcom/autonavi/xm/navi/favorites/FavoriteEditorFragment;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.autonavi.xm.extra.MAP_CENTER_INFO"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "com.autonavi.xm.extra.FAV_EDITOR_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->startFragment(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->enterRoamState()V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0, v3}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto/16 :goto_0

    :cond_11
    const v1, 0x7f0800fe

    if-ne v0, v1, :cond_12

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->startFragment(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_12
    const v1, 0x7f08013c

    if-eq v0, v1, :cond_13

    const v1, 0x7f080137

    if-ne v0, v1, :cond_14

    :cond_13
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0, v2}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->moveTaskToBack(Z)Z

    goto/16 :goto_0

    :cond_14
    const v1, 0x7f080115

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->getExternalTmc()Lcom/autonavi/xm/navi/tmc/TmcBase;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/autonavi/xm/navi/tmc/TmcBase;->update(ZZ)V

    goto/16 :goto_0
.end method

.method protected onMapChanged(Lcom/autonavi/navigation/api/map/model/MapCursorInfo;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->isMapCursorOnMyLocation()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->isInRoamState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->enterHideState()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->setMapInMotion(ZZ)V

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mTxtRoadNameCursor:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->roadName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/base/util/TextUtil;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->isGuiding()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mBtnPassBy:Landroid/widget/Button;

    invoke-static {v0, v2}, Lcom/autonavi/xm/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mBtnPassBy:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    :goto_2
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->enterRoamState()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mTxtRoadNameCursor:Landroid/widget/TextView;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/base/util/TextUtil;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->isDeviate:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mBtnPassBy:Landroid/widget/Button;

    invoke-static {v0, v2}, Lcom/autonavi/xm/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mBtnPassBy:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->getWaypoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->correctBtnPassByState(I)V

    goto :goto_2
.end method

.method protected onMapClickChanged(Lcom/autonavi/navigation/api/map/model/MapCursorInfo;)V
    .locals 2

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->enterRoamState()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mTxtRoadNameCursor:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->roadName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/base/util/TextUtil;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mTxtRoadNameCursor:Landroid/widget/TextView;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/base/util/TextUtil;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->onAction(Landroid/content/Intent;)Z

    return-void
.end method

.method public onPauseView()V
    .locals 2

    invoke-super {p0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->onPauseView()V

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAutoBackToMyLoc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mActionBackToMyLoc:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getCameraPosition()Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mCameraPosition:Lcom/autonavi/navigation/api/map/model/CameraPosition;

    return-void
.end method

.method public onResumeView()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->onResumeView()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "set_my_location_enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mBtnNavigationTo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_0
    invoke-direct {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->backToMyLoc()V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->enterHideState()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->isReSetLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mIsGuiding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->handleGuidanceStarted()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0, v2}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->setReSetLanguage(Z)V

    :cond_0
    const-string v0, "======setOnGuideListener"

    invoke-static {v0}, Lcom/autonavi/xm/navi/base/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "guide"

    const-string v1, "==========NaviActionFragment  ACTION_NAVIGATE"

    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/base/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0, v2}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->setFirst(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mBtnNavigationTo:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "has_warning_show"

    iget-boolean v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHasWarningShow:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "code_resume_pre_route"

    iget v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mCodeResumePreRoute:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "has_dlg_resume_pre_route_show"

    iget-boolean v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHasDlgResumePreRouteShow:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->getExternalTmc()Lcom/autonavi/xm/navi/tmc/TmcBase;

    move-result-object v0

    new-instance v1, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$1;

    invoke-direct {v1, p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$1;-><init>(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/tmc/TmcBase;->addTmcUpdateCallback(Lcom/autonavi/xm/navi/tmc/TmcUpdateListener;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mTmcTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v1}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->getExternalTmc()Lcom/autonavi/xm/navi/tmc/TmcBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xm/navi/tmc/TmcBase;->getLastUpdateTimeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mTmcChange:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setMyLocToMapCenter()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    iget-object v1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/map/AnMap;->getMapCursorLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setMyLocation(Lcom/autonavi/navigation/api/map/model/LatLng;)V

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->backToMyLoc()V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->enterHideState()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/settings/Settings;->save()Z

    return-void
.end method
