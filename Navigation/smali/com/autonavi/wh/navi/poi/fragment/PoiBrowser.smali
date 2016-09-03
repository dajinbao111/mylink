.class public Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;
.super Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final DIALOG_ID_COMPUTING_ROUTE:I = 0x0

.field private static final DIALOG_ID_RESET_ROUTE_POINT:I = 0x2

.field public static final EXTRA_ENABLE_AROUND_SEARCH:Ljava/lang/String; = "extra_enable_around_search"

.field public static final EXTRA_IS_REQUEST_POI:Ljava/lang/String; = "extra_is_request_poi"

.field private static final HONGKONG_AREA_CODE:I = 0x354

.field private static final MACAO_AREA_CODE:I = 0x355

.field private static final REQUEST_CODE_EDIT_FAVORITE:I = 0x1


# instance fields
.field private mAreaCode:Ljava/lang/String;

.field private mBtnAround:Landroid/widget/Button;

.field private mBtnBackToPoi:Landroid/widget/ImageButton;

.field private mBtnConfirm:Landroid/widget/Button;

.field private mBtnNavigationTo:Landroid/widget/Button;

.field private mBtnPassBy:Landroid/widget/Button;

.field private mDialogComputing:Lcom/autonavi/wh/navigation/app/AlertDialogFragment;

.field private mDlgResetRoutePoint:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

.field private mFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

.field private mGrpDetail:Landroid/view/View;

.field private mGrpOperationParent:Landroid/view/View;

.field private mHasBtnPassByAttachListener:Z

.field private mIsFourService:Z

.field private mIsGuiding:Z

.field private mIsRequestPoi:Z

.field private mIsRoam:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

.field private mTgbDetail:Landroid/widget/ToggleButton;

.field private mTvAddr:Landroid/widget/TextView;

.field private mTvDistance:Landroid/widget/TextView;

.field private mTvName:Landroid/widget/TextView;

.field private mTvTelephone:Landroid/widget/TextView;

.field private mZoomLevel:Lcom/autonavi/navigation/api/map/model/ZoomLevel;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;-><init>()V

    iput-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    iput-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iput-boolean v2, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mIsGuiding:Z

    iput-boolean v2, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mIsRoam:Z

    iput-boolean v2, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mIsRequestPoi:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAreaCode:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mMainHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mIsFourService:Z

    iput-boolean v2, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHasBtnPassByAttachListener:Z

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;Lcom/autonavi/navigation/api/route/model/RoutePoint;Z)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->assertRoutePoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;Z)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mIsRoam:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/navigation/api/map/AnMap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/navigation/api/map/AnMap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/navigation/api/poi/model/Poi;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/navigation/api/route/RouteManager;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;Lcom/autonavi/navigation/api/route/model/CalculationInput;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->requestComputeMultiRoute(Lcom/autonavi/navigation/api/route/model/CalculationInput;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/navigation/api/guide/GuideManager;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/navigation/api/guide/GuideManager;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/navigation/api/map/AnMap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/navigation/api/map/AnMap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/navigation/api/map/AnMap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/navigation/api/guide/GuideManager;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->correctBtnPassByState(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnPassBy:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/navigation/api/map/AnMap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;Lcom/autonavi/navigation/api/poi/model/Poi;Lcom/autonavi/navigation/api/poi/model/Poi;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->comparePoi(Lcom/autonavi/navigation/api/poi/model/Poi;Lcom/autonavi/navigation/api/poi/model/Poi;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/navigation/api/map/AnMap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)Lcom/autonavi/navigation/api/map/AnMap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    return-object v0
.end method

.method private addWayPoint()V
    .locals 5

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mIsGuiding:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->getGuidingRoute()Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v2, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    invoke-virtual {v2, v0}, Lcom/autonavi/navigation/api/route/RouteManager;->createCalculationInput(Lcom/autonavi/navigation/api/route/model/Route;)Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v0

    iput-object v0, v1, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mIsRoam:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-static {v1}, Lcom/autonavi/wh/navi/base/util/CommonUtil;->getMapCursorPoi(Lcom/autonavi/navigation/api/map/AnMap;)Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->addWaypoint(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, v3}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->assertRoutePoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;Z)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->getWaypoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->correctBtnPassByState(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->requestComputeMultiRoute(Lcom/autonavi/navigation/api/route/model/CalculationInput;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->addWaypoint(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnPassBy:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/autonavi/wh/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/RouteManager;->createCalculationInput()Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    :cond_4
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->getStart()Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    new-instance v1, Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v2, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/map/AnMap;->getMyLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/autonavi/navigation/api/poi/model/Poi;-><init>(Lcom/autonavi/navigation/api/map/model/LatLng;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setStart(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    :cond_5
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->getWaypoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mIsRoam:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-static {v1}, Lcom/autonavi/wh/navi/base/util/CommonUtil;->getMapCursorPoi(Lcom/autonavi/navigation/api/map/AnMap;)Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->addWaypoint(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    :goto_2
    invoke-direct {p0, v0, v3}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->assertRoutePoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;Z)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v1

    const/4 v2, -0x5

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v1, v1, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->addWaypoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;)V

    :cond_6
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b007c

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v4}, Lcom/autonavi/navigation/api/map/AnMap;->getMapCursorInfo()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->roadName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->getWaypoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->correctBtnPassByState(I)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->addWaypoint(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnPassBy:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/autonavi/wh/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    goto/16 :goto_1
.end method

.method private addWayPointByMapCenter()V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$2;

    invoke-direct {v1, p0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$2;-><init>(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private assertRoutePoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;Z)Lcom/autonavi/navigation/api/route/model/RoutePoint;
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

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v1, v5}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->dismissFragmentDialog(I)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v2, 0x7f0b0070

    invoke-virtual {v1, v2}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    move-object p1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v1, v5}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->dismissFragmentDialog(I)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v2, 0x7f0b0088

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v1

    const/4 v2, -0x3

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v1, v5}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->dismissFragmentDialog(I)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v2, 0x7f0b0072

    invoke-virtual {v1, v2}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    move-object p1, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v1

    const/4 v2, -0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v1, v5}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->dismissFragmentDialog(I)V

    if-eqz p2, :cond_5

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v2, 0x7f0b008d

    invoke-virtual {p0, v2}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(Ljava/lang/String;)V

    :goto_1
    move-object p1, v0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v2, 0x7f0b0071

    invoke-virtual {p0, v2}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private backToPoi()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->newLatLng(Lcom/autonavi/navigation/api/map/model/LatLng;)Lcom/autonavi/navigation/api/map/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->moveCamera(Lcom/autonavi/navigation/api/map/CameraUpdate;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMapCursorInfo()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->onMapChanged(Lcom/autonavi/navigation/api/map/model/MapCursorInfo;)V

    return-void
.end method

.method private comparePoi(Lcom/autonavi/navigation/api/poi/model/Poi;Lcom/autonavi/navigation/api/poi/model/Poi;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    invoke-virtual {p2}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v1

    iget v1, v1, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    invoke-virtual {p2}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v1

    iget v1, v1, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private correctBtnPassByState(I)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnPassBy:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ge p1, v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnPassBy:Landroid/widget/Button;

    invoke-static {v2, v0}, Lcom/autonavi/wh/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHasBtnPassByAttachListener:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnPassBy:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHasBtnPassByAttachListener:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mapCenterInfoResult()V
    .locals 3

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mIsRequestPoi:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-static {v0}, Lcom/autonavi/wh/navi/base/util/CommonUtil;->getMapCursorPoi(Lcom/autonavi/navigation/api/map/AnMap;)Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.autonavi.xm.extra.POI"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->popBack()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.autonavi.xm.extra.MAP_CENTER_INFO"

    iget-object v2, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/map/AnMap;->getMapCursorInfo()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "com.autonavi.xm.extra.FAV_EDITOR_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->startFragment(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private navigateToCurrentPoi()V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;

    invoke-direct {v1, p0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser$1;-><init>(Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private requestComputeMultiRoute(Lcom/autonavi/navigation/api/route/model/CalculationInput;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.autonavi.xm.action.INPUT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "action.RECOMPUTE_MULTI_ROUTE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->startFragment(Landroid/content/Intent;)V

    return-void
.end method

.method private searchAround(Z)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMapCursorInfo()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMapCursorInfo()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->position:Lcom/autonavi/navigation/api/map/model/LatLng;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_is_search_by_cursor"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.autonavi.xm.extra.LOCATION_POINT"

    iget-object v2, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/map/AnMap;->getMapCursorInfo()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->position:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->startFragment(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b00af

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0
.end method

.method private setFavoritePoi(Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;)V
    .locals 5

    const v4, 0x7f080136

    const v3, 0x7f080135

    const/16 v2, 0x8

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    iput-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {p0, v3}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v3}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setFinalDestByMapCenter()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->routeCalculationResult:Lcom/autonavi/navigation/api/route/model/CalculationResult;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->getCalculationInput()Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v0

    new-instance v1, Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v2, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/map/AnMap;->getMapCursorLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/autonavi/navigation/api/poi/model/Poi;-><init>(Lcom/autonavi/navigation/api/map/model/LatLng;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setEnd(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    return-void
.end method

.method private setFinalDestByPoi()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/RouteManager;->createCalculationInput()Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v1

    new-instance v0, Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v2, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/map/AnMap;->getMyLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/autonavi/navigation/api/poi/model/Poi;-><init>(Lcom/autonavi/navigation/api/map/model/LatLng;)V

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setStart(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->assertRoutePoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;Z)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setStart(Lcom/autonavi/navigation/api/route/model/RoutePoint;)V

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setEnd(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->assertRoutePoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;Z)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_4

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setEnd(Lcom/autonavi/navigation/api/route/model/RoutePoint;)V

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->addAllRules()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/RouteManager;->calculateRoute(Lcom/autonavi/navigation/api/route/model/CalculationInput;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mDialogComputing:Lcom/autonavi/wh/navigation/app/AlertDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mDialogComputing:Lcom/autonavi/wh/navigation/app/AlertDialogFragment;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/app/AlertDialogFragment;->dismiss()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mDialogComputing:Lcom/autonavi/wh/navigation/app/AlertDialogFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mDialogComputing:Lcom/autonavi/wh/navigation/app/AlertDialogFragment;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/app/AlertDialogFragment;->dismiss()V

    goto :goto_0
.end method

.method private setPoiDetails()V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mTvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mTvAddr:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mTvDistance:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mFormatter:Lcom/autonavi/wh/navi/base/util/Formatter;

    iget-object v2, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/poi/model/Poi;->getDistance()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/autonavi/wh/navi/base/util/Formatter;->getDistance(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getTel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mIsFourService:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mTvTelephone:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mTvAddr:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v2, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-static {v1, v2}, Lcom/autonavi/wh/navi/base/util/Formatter;->formatBriefAddress(Landroid/content/Context;Lcom/autonavi/navigation/api/poi/model/Poi;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mTvTelephone:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mTvTelephone:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private showComputingDialog()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mDialogComputing:Lcom/autonavi/wh/navigation/app/AlertDialogFragment;

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

    iput-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mDialogComputing:Lcom/autonavi/wh/navigation/app/AlertDialogFragment;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mDialogComputing:Lcom/autonavi/wh/navigation/app/AlertDialogFragment;

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showFragmentDialog(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    return-void
.end method

.method private showDlgResetRoutePoint()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mDlgResetRoutePoint:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

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

    iput-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mDlgResetRoutePoint:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mDlgResetRoutePoint:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->showDialog(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    return-void
.end method

.method private toggleDetail()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mTgbDetail:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->backToPoi()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mGrpDetail:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mGrpDetail:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected isScreenViewEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "com.autonavi.xm.extra.FAVORITE_POI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    if-nez v0, :cond_2

    invoke-virtual {p0, v1, p3}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->popBack()V

    goto :goto_0

    :cond_2
    const-string v0, "com.autonavi.xm.extra.FAVORITE_POI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->setFavoritePoi(Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;)V

    invoke-direct {p0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->setPoiDetails()V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f080080

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->toggleDetail()V

    :cond_0
    return-void
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-super {p0, p1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->onCreateView(Landroid/os/Bundle;)V

    const v0, 0x7f0b00b3

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->setTitle(I)V

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->setContentBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->setTouchEventPassed(Z)V

    const v0, 0x7f080114

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->setViewVisable(Landroid/view/View;Z)V

    const v0, 0x7f080121

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080115

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getCameraPosition()Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->zoom:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    iput-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mZoomLevel:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v1

    sget-object v2, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_25_M:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    invoke-static {v1, v2}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->newLatLngZoom(Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/map/model/ZoomLevel;)Lcom/autonavi/navigation/api/map/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->moveCamera(Lcom/autonavi/navigation/api/map/CameraUpdate;)V

    sget-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_25_M:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->handleZoomLevelChanged(Lcom/autonavi/navigation/api/map/model/ZoomLevel;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapType;->DEFAULT:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setMapType(Lcom/autonavi/navigation/api/map/model/MapType;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mZoomLevel:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    invoke-static {v1}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->zoomTo(Lcom/autonavi/navigation/api/map/model/ZoomLevel;)Lcom/autonavi/navigation/api/map/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->moveCamera(Lcom/autonavi/navigation/api/map/CameraUpdate;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mZoomLevel:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->handleZoomLevelChanged(Lcom/autonavi/navigation/api/map/model/ZoomLevel;)V

    invoke-super {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->onDestroy()V

    return-void
.end method

.method public onDialogClick(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V
    .locals 2

    invoke-virtual {p1}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->getDialogId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/RouteManager;->createCalculationInput()Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-direct {p0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->showComputingDialog()V

    invoke-direct {p0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->navigateToCurrentPoi()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v0, :cond_0

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->isOnTop()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/RouteManager;->stopRouteCalculation()V

    goto :goto_0
.end method

.method protected onInflateView()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v1, 0x0

    const v0, 0x7f080124

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnBackToPoi:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnBackToPoi:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080111

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f080112

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080137

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080130

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnConfirm:Landroid/widget/Button;

    const v0, 0x7f080131

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mGrpOperationParent:Landroid/view/View;

    const v0, 0x7f0800fb

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f0800fc

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mGrpDetail:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mGrpDetail:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08013d

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mTvName:Landroid/widget/TextView;

    const v0, 0x7f080140

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mTvAddr:Landroid/widget/TextView;

    const v0, 0x7f08013e

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mTvDistance:Landroid/widget/TextView;

    const v0, 0x7f08013f

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mTvTelephone:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030009

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mTgbDetail:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mTgbDetail:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mTgbDetail:Landroid/widget/ToggleButton;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->setTitleRightContent(Landroid/view/View;)V

    const v0, 0x7f080132

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnNavigationTo:Landroid/widget/Button;

    const v0, 0x7f080133

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnPassBy:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnPassBy:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080134

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnAround:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnAround:Landroid/widget/Button;

    const-string v3, "extra_enable_around_search"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    const-string v2, "extra_is_request_poi"

    iget-boolean v3, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mIsRequestPoi:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mIsRequestPoi:Z

    const-string v2, "extra_four_service"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mIsFourService:Z

    const-string v2, "com.autonavi.xm.extra.POI"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "com.autonavi.xm.extra.POI"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/poi/model/Poi;

    iput-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    :cond_0
    :goto_0
    const-string v0, "times"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "poimIsFourService = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mIsFourService:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/autonavi/wh/navi/base/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mIsRequestPoi:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnConfirm:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnConfirm:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mGrpOperationParent:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getAdminCode()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getDataManager()Lcom/autonavi/navigation/api/data/DataManager;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/autonavi/navigation/api/data/DataManager;->getAdminCode(Lcom/autonavi/navigation/api/map/model/LatLng;)I

    move-result v0

    iget-object v2, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v2, v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->setAdminCode(I)Lcom/autonavi/navigation/api/poi/model/Poi;

    :cond_1
    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/AnApi;->getDataManager()Lcom/autonavi/navigation/api/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/autonavi/navigation/api/data/DataManager;->getAdminAreaDetail(I)Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;

    move-result-object v0

    if-eqz v0, :cond_b

    iget v0, v0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->areaCode:I

    :goto_2
    const/16 v2, 0x354

    if-eq v0, v2, :cond_2

    const/16 v2, 0x355

    if-ne v0, v2, :cond_8

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAreaCode:Ljava/lang/String;

    :cond_3
    :goto_3
    invoke-direct {p0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->setPoiDetails()V

    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080119

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->isGuiding()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v4, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mIsGuiding:Z

    :cond_4
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnNavigationTo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnNavigationTo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mIsGuiding:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnPassBy:Landroid/widget/Button;

    invoke-static {v0, v4}, Lcom/autonavi/wh/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->getGuidingRoute()Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/Route;->getWaypoints()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/Route;->getWaypoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->correctBtnPassByState(I)V

    :cond_5
    :goto_4
    return-void

    :cond_6
    const-string v2, "com.autonavi.xm.extra.FAVORITE_POI"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->setFavoritePoi(Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnAround:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080135

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080136

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_8
    if-eqz v0, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAreaCode:Ljava/lang/String;

    goto/16 :goto_3

    :cond_9
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAreaCode:Ljava/lang/String;

    goto/16 :goto_3

    :cond_a
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnPassBy:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/autonavi/wh/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    goto :goto_4

    :cond_b
    move v0, v1

    goto/16 :goto_2
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080132

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMapCursorInfo()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "aciton.SET_MY_LOC_TO_MAP_CENTER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->startFragment(Landroid/content/Intent;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b00af

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0
.end method

.method protected onMapAction(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const v3, 0x7f0b00c7

    const v2, 0x7f0b00af

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080132

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMapCursorLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0, v2}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMapCursorInfo()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->roadName:Ljava/lang/String;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0, v3}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mIsGuiding:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->showDlgResetRoutePoint()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->showComputingDialog()V

    invoke-direct {p0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->navigateToCurrentPoi()V

    goto :goto_0

    :cond_4
    const v1, 0x7f080133

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMapCursorLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0, v2}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMapCursorInfo()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->roadName:Ljava/lang/String;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0, v3}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->showComputingDialog()V

    invoke-direct {p0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->addWayPointByMapCenter()V

    goto :goto_0

    :cond_7
    const v1, 0x7f080134

    if-ne v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mIsMapCenterValid:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, v4}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->searchAround(Z)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0, v2}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0

    :cond_9
    const v1, 0x7f080135

    if-ne v0, v1, :cond_d

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mIsMapCenterValid:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMapCursorInfo()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->roadName:Ljava/lang/String;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0, v3}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto/16 :goto_0

    :cond_a
    iget-boolean v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mIsRoam:Z

    if-eqz v0, :cond_b

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.autonavi.xm.extra.MAP_CENTER_INFO"

    iget-object v2, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/map/AnMap;->getMapCursorInfo()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "com.autonavi.xm.extra.FAV_EDITOR_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->startFragment(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_b
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.autonavi.xm.extra.POI"

    iget-object v2, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "com.autonavi.xm.extra.FAV_EDITOR_TYPE"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->startFragment(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0, v2}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto/16 :goto_0

    :cond_d
    const v1, 0x7f080136

    if-ne v0, v1, :cond_e

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.autonavi.xm.extra.FAVORITE_POI"

    iget-object v2, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v4}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->startFragmentForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_e
    const v1, 0x7f080124

    if-ne v0, v1, :cond_f

    invoke-direct {p0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->backToPoi()V

    goto/16 :goto_0

    :cond_f
    const v1, 0x7f080130

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mIsMapCenterValid:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mIsRoam:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mapCenterInfoResult()V

    goto/16 :goto_0

    :cond_10
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.autonavi.xm.extra.POI"

    iget-object v2, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->popBack()V

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0, v2}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto/16 :goto_0
.end method

.method protected onMapChanged(Lcom/autonavi/navigation/api/map/model/MapCursorInfo;)V
    .locals 7

    const/4 v6, 0x1

    const v5, 0x7f080136

    const v4, 0x7f080135

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->onMapChanged(Lcom/autonavi/navigation/api/map/model/MapCursorInfo;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->position:Lcom/autonavi/navigation/api/map/model/LatLng;

    if-nez v0, :cond_2

    :cond_1
    iput-boolean v6, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mIsRoam:Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnBackToPoi:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mTgbDetail:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    invoke-virtual {p0, v4}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->position:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget v0, v0, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v1

    iget v1, v1, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->position:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget v0, v0, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    iget-object v1, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v1

    iget v1, v1, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    if-eq v0, v1, :cond_4

    :cond_3
    iput-boolean v6, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mIsRoam:Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnBackToPoi:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mTgbDetail:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    invoke-virtual {p0, v4}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->isGuiding()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnPassBy:Landroid/widget/Button;

    invoke-static {v0, v2}, Lcom/autonavi/wh/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnPassBy:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    goto :goto_0

    :cond_4
    iput-boolean v2, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mIsRoam:Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnBackToPoi:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {p0, v2, v6}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->setMapInMotion(ZZ)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    if-eqz v0, :cond_5

    invoke-virtual {p0, v4}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-direct {p0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->setPoiDetails()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v4}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->getWaypoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->correctBtnPassByState(I)V

    goto/16 :goto_0
.end method

.method public onResumeView()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->onResumeView()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "set_my_location_enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnNavigationTo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->isGuiding()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnPassBy:Landroid/widget/Button;

    invoke-static {v0, v2}, Lcom/autonavi/wh/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnPassBy:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/poi/fragment/PoiBrowser;->mBtnNavigationTo:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method
