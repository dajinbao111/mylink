.class public Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;
.super Lcom/autonavi/xm/navigation/app/NaviFragment;

# interfaces
.implements Lcom/autonavi/xm/navi/base/widget/ActionListView$OnActionListener;


# static fields
.field private static final DIALOG_ID_ROUTE_COMPUTING:I = 0x0

.field public static KEY_ROUTE_EDIT_RLT:Ljava/lang/String; = null

.field public static REQUEST_CODE_ROUTE_EDIT:I = 0x0

.field private static final WHAT_ON_GO_BACK_RESULT:I = 0x1

.field private static final WHAT_ON_GUIDE_START:I = 0x3

.field private static final WHAT_ON_GUIDE_STOP:I = 0x2

.field private static final WHAT_ON_ROUTE_RESULT:I


# instance fields
.field private mActionListView:Lcom/autonavi/xm/navi/base/widget/ActionListView;

.field private final mActions:Ljava/util/ArrayList;

.field private mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

.field private mCompoundListView:Lcom/autonavi/xm/navi/base/widget/CompoundListView;

.field private mDlgComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

.field private mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

.field private mIsGuide:Z

.field private mIsPresent:Z

.field private mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

.field private mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->REQUEST_CODE_ROUTE_EDIT:I

    const-string v0, "key_route_edit_rlt"

    sput-object v0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->KEY_ROUTE_EDIT_RLT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/app/NaviFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mActions:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    iput-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mIsPresent:Z

    new-instance v0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement$2;-><init>(Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;)Lcom/autonavi/xm/navigation/app/NaviDialogFragment;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mDlgComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->dismissDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mIsPresent:Z

    return v0
.end method

.method static synthetic access$300(Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;)Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;)Lcom/autonavi/navigation/api/guide/GuideManager;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;[Lcom/autonavi/navigation/api/route/model/Route;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->handleRouteResult([Lcom/autonavi/navigation/api/route/model/Route;)V

    return-void
.end method

.method static synthetic access$600(Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->handleGoBackResult(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->handleGuideStatue(Z)V

    return-void
.end method

.method private handleGoBackResult(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->isOnTop()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action.RECOMPUTE_MULTI_ROUTE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->startFragment(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b00ea

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0
.end method

.method private handleGuideStatue(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mIsGuide:Z

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mIsGuide:Z

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->setRouteItemEnable(Z)V

    return-void
.end method

.method private handleRouteResult([Lcom/autonavi/navigation/api/route/model/Route;)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->setRouteItemEnable(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->setRouteItemEnable(Z)V

    goto :goto_0
.end method

.method private setRouteItemEnable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mActionListView:Lcom/autonavi/xm/navi/base/widget/ActionListView;

    const v1, 0x7f080033

    invoke-virtual {v0, v1, p1}, Lcom/autonavi/xm/navi/base/widget/ActionListView;->setActionEnabled(IZ)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mActionListView:Lcom/autonavi/xm/navi/base/widget/ActionListView;

    const v1, 0x7f080034

    invoke-virtual {v0, v1, p1}, Lcom/autonavi/xm/navi/base/widget/ActionListView;->setActionEnabled(IZ)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mActionListView:Lcom/autonavi/xm/navi/base/widget/ActionListView;

    const v1, 0x7f080035

    invoke-virtual {v0, v1, p1}, Lcom/autonavi/xm/navi/base/widget/ActionListView;->setActionEnabled(IZ)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mActionListView:Lcom/autonavi/xm/navi/base/widget/ActionListView;

    const v1, 0x7f080036

    invoke-virtual {v0, v1, p1}, Lcom/autonavi/xm/navi/base/widget/ActionListView;->setActionEnabled(IZ)V

    return-void
.end method

.method private showDlgComputing()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mDlgComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

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

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mDlgComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mDlgComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    invoke-virtual {p0, v0, v2}, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->showDialog(Lcom/autonavi/xm/navigation/app/NaviDialogFragment;I)V

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

.method public onAction(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v0, 0x7f080032

    if-ne p1, v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/xm/navi/menu/fragment/RouteEditor;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->REQUEST_CODE_ROUTE_EDIT:I

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->startFragmentForResult(Landroid/content/Intent;I)V

    iput-boolean v4, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mIsPresent:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f080033

    if-ne p1, v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_start_guidance_on_destory"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->startFragment(Landroid/content/Intent;)V

    iput-boolean v4, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mIsPresent:Z

    goto :goto_0

    :cond_2
    const v0, 0x7f080034

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->getAnMap()Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v0

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapType;->DEFAULT:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setMapType(Lcom/autonavi/navigation/api/map/model/MapType;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/xm/navi/menu/fragment/Simulation;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra.EXTRA_IS_COME_FROM_ROUTE_MANAGEMENT"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->startFragment(Landroid/content/Intent;)V

    iput-boolean v4, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mIsPresent:Z

    goto :goto_0

    :cond_3
    const v0, 0x7f080035

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->getGuidingRoute()Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-class v3, Lcom/autonavi/xm/navi/menu/fragment/DetailOfRoute;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "extra.SELECTED_ROUTE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "extra_is_traffic_enabled"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "extra.EXTRA_IS_FOR_ROUTE_MANAGEMENT"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->startFragment(Landroid/content/Intent;)V

    iput-boolean v4, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mIsPresent:Z

    goto :goto_0

    :cond_4
    const v0, 0x7f080036

    if-ne p1, v0, :cond_0

    iput-boolean v5, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mIsPresent:Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/RouteManager;->removeOnCalculationResultListener(Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/RouteManager;->addOnCalculationResultListener(Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;)V

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->showDlgComputing()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->getGuidingRoute()Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v0

    iget-object v1, v0, Lcom/autonavi/navigation/api/route/model/Route;->start:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getPoi()Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/map/AnMap;->getMyLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/navigation/api/util/AnApiUtils;->getPointDistance(Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/map/model/LatLng;)I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_6

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mDlgComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mDlgComputing:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/app/NaviDialogFragment;->dismissAllowingStateLoss()V

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/route/RouteManager;->reverseRoute(Lcom/autonavi/navigation/api/route/model/Route;)Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/route/RouteManager;->calculateRoute(Lcom/autonavi/navigation/api/route/model/CalculationInput;)V

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    sget v0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->REQUEST_CODE_ROUTE_EDIT:I

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->KEY_ROUTE_EDIT_RLT:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->handleGuideStatue(Z)V

    :cond_0
    return-void
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/autonavi/xm/navigation/app/NaviFragment;->onCreateView(Landroid/os/Bundle;)V

    const v0, 0x7f0b0156

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->setTitle(I)V

    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->setContentView(I)V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->getAnMap()Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    const v0, 0x7f080125

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navi/base/widget/CompoundListView;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mCompoundListView:Lcom/autonavi/xm/navi/base/widget/CompoundListView;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mCompoundListView:Lcom/autonavi/xm/navi/base/widget/CompoundListView;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/widget/CompoundListView;->getListView()Lcom/autonavi/xm/navi/base/widget/ActionListView;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mActionListView:Lcom/autonavi/xm/navi/base/widget/ActionListView;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mActionListView:Lcom/autonavi/xm/navi/base/widget/ActionListView;

    invoke-virtual {v0, p0}, Lcom/autonavi/xm/navi/base/widget/ActionListView;->setOnActionListener(Lcom/autonavi/xm/navi/base/widget/ActionListView$OnActionListener;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mActionListView:Lcom/autonavi/xm/navi/base/widget/ActionListView;

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->setDataSource(Lcom/autonavi/xm/navi/base/widget/ActionListView;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mActionListView:Lcom/autonavi/xm/navi/base/widget/ActionListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/base/widget/ActionListView;->setFocusableInTouchMode(Z)V

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getGuideManager()Lcom/autonavi/navigation/api/guide/GuideManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getRouteManager()Lcom/autonavi/navigation/api/route/RouteManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->isGuiding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    new-instance v0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement$1;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement$1;-><init>(Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/RouteManager;->addOnCalculationResultListener(Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/RouteManager;->removeOnCalculationResultListener(Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;)V

    invoke-super {p0}, Lcom/autonavi/xm/navigation/app/NaviFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/autonavi/xm/navigation/app/NaviFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/autonavi/xm/navigation/app/NaviFragment;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mIsPresent:Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapType;->DEFAULT:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setMapType(Lcom/autonavi/navigation/api/map/model/MapType;)V

    return-void
.end method

.method public setDataSource(Lcom/autonavi/xm/navi/base/widget/ActionListView;)V
    .locals 6

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mActions:Ljava/util/ArrayList;

    new-instance v1, Lcom/autonavi/xm/navi/base/widget/ListViewAction;

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f080032

    const v4, 0x7f0203cc

    const v5, 0x7f0b016e

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/autonavi/xm/navi/base/widget/ListViewAction;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mActions:Ljava/util/ArrayList;

    new-instance v1, Lcom/autonavi/xm/navi/base/widget/ListViewAction;

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f080033

    const v4, 0x7f0201a6

    const v5, 0x7f0b0170

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/autonavi/xm/navi/base/widget/ListViewAction;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mActions:Ljava/util/ArrayList;

    new-instance v1, Lcom/autonavi/xm/navi/base/widget/ListViewAction;

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f080034

    const v4, 0x7f0203f7

    const v5, 0x7f0b0171

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/autonavi/xm/navi/base/widget/ListViewAction;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mActions:Ljava/util/ArrayList;

    new-instance v1, Lcom/autonavi/xm/navi/base/widget/ListViewAction;

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f080035

    const v4, 0x7f0203c8

    const v5, 0x7f0b0172

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/autonavi/xm/navi/base/widget/ListViewAction;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mActions:Ljava/util/ArrayList;

    new-instance v1, Lcom/autonavi/xm/navi/base/widget/ListViewAction;

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f080036

    const v4, 0x7f0202c8

    const v5, 0x7f0b016f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/autonavi/xm/navi/base/widget/ListViewAction;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mActionListView:Lcom/autonavi/xm/navi/base/widget/ActionListView;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/RouteManagement;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/base/widget/ActionListView;->setActions(Ljava/util/ArrayList;)V

    return-void
.end method
