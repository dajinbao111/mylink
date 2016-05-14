.class public Lcom/autonavi/xm/navi/menu/fragment/Simulation;
.super Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;


# static fields
.field private static final DIALOG_ID_DELETE_ROUTE:I = 0x2

.field private static final DIALOG_ID_SELECT:I = 0x1

.field public static final EXTRA_IS_COME_FROM_ROUTE_MANAGEMENT:Ljava/lang/String; = "extra.EXTRA_IS_COME_FROM_ROUTE_MANAGEMENT"


# instance fields
.field private final mActionHideOperBar:Ljava/lang/Runnable;

.field private mBtnQuit:Landroid/widget/ImageButton;

.field private mBtnSpeedDown:Landroid/widget/ImageButton;

.field private mBtnSpeedUp:Landroid/widget/ImageButton;

.field private mCurStep:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

.field private mDlgDeleteRoute:Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

.field private mGrpSimulationBar:Landroid/view/View;

.field private mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

.field private mHasZoomVIew:Z

.field private mIsComeFromRouteManagement:Z

.field private mIsPausedBeforeStop:Z

.field private mIsStop:Z

.field private mIsTrafficEnabled:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mMapType:I

.field private final mOnGuideListener:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

.field private mRoute:Lcom/autonavi/navigation/api/route/model/Route;

.field private mSelectDialog:Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

.field private mSettings:Lcom/autonavi/navigation/api/settings/Settings;

.field private mSimulationGuidePlayer:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;

.field private mTgbToggleSimulation:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mSimulationGuidePlayer:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;

    iput-boolean v2, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mIsStop:Z

    iput-boolean v2, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mIsComeFromRouteManagement:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mMainHandler:Landroid/os/Handler;

    sget-object v0, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->NORMAL:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mCurStep:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    iput v2, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mMapType:I

    new-instance v0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$1;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation$1;-><init>(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mOnGuideListener:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

    iput-boolean v2, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mIsPausedBeforeStop:Z

    new-instance v0, Lcom/autonavi/xm/navi/menu/fragment/Simulation$2;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation$2;-><init>(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mActionHideOperBar:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcom/autonavi/xm/navi/menu/fragment/Simulation;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mIsGuiding:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mBtnRelativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcom/autonavi/xm/navi/menu/fragment/Simulation;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mIsStop:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)V
    .locals 0

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->handleGuidanceStarted()V

    return-void
.end method

.method static synthetic access$1300(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mBtnRelativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/autonavi/xm/navi/menu/fragment/Simulation;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mIsZoomViewVisable:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/autonavi/xm/navi/menu/fragment/Simulation;Lcom/autonavi/navigation/api/guide/model/GuideInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->handleGuideInfoChanged(Lcom/autonavi/navigation/api/guide/model/GuideInfo;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mGrpSimulationBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/autonavi/xm/navi/menu/fragment/Simulation;Lcom/autonavi/navigation/api/guide/model/GuideInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->setStateButtonVisable(Lcom/autonavi/navigation/api/guide/model/GuideInfo;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/autonavi/xm/navi/menu/fragment/Simulation;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->handleZoomViewVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mTxtRoadName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mBtnQuit:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)Lcom/autonavi/navigation/api/map/AnMap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->startSimulation()V

    return-void
.end method

.method static synthetic access$2200(Lcom/autonavi/xm/navi/menu/fragment/Simulation;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->setBoardsEnabled(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/autonavi/xm/navi/menu/fragment/Simulation;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->setStateRelatedButtonVisable(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)Landroid/widget/ToggleButton;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mTgbToggleSimulation:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)Lcom/autonavi/navigation/api/map/AnMap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)Lcom/autonavi/navigation/api/guide/GuideManager;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/autonavi/xm/navi/menu/fragment/Simulation;Lcom/autonavi/navigation/api/guide/model/GuideInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->handleGuideInfoChanged(Lcom/autonavi/navigation/api/guide/model/GuideInfo;)V

    return-void
.end method

.method static synthetic access$700(Lcom/autonavi/xm/navi/menu/fragment/Simulation;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->handleZoomViewVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mTxtRoadName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/autonavi/xm/navi/menu/fragment/Simulation;)Lcom/autonavi/navigation/api/map/AnMap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    return-object v0
.end method

.method private backToMap(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->startFragment(Landroid/content/Intent;)V

    return-void
.end method

.method private backToRouteOverVIew()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mSimulationGuidePlayer:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;->stop()Z

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->stopSimulation()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->popBack()V

    return-void
.end method

.method private pauseSimulation()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mTgbToggleSimulation:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mIsPausedBeforeStop:Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mSimulationGuidePlayer:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;->pause()Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resumeSimulationIfNeeded()V
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mIsPausedBeforeStop:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mSimulationGuidePlayer:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;->start(Lcom/autonavi/navigation/api/route/model/Route;)Z

    :cond_0
    return-void
.end method

.method private setStateButtonVisable(Lcom/autonavi/navigation/api/guide/model/GuideInfo;)V
    .locals 2

    iget-boolean v0, p1, Lcom/autonavi/navigation/api/guide/model/GuideInfo;->hasZoomView:Z

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mHasZoomVIew:Z

    iget-boolean v0, p1, Lcom/autonavi/navigation/api/guide/model/GuideInfo;->hasZoomView:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->setStateRelatedButtonVisable(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mGrpSimulationBar:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showDlgDeleteRoute()V
    .locals 3

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->pauseSimulation()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mDlgDeleteRoute:Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

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

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog$Builder;->create()Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mDlgDeleteRoute:Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mDlgDeleteRoute:Lcom/autonavi/xm/navi/base/widget/NaviAlertDialog;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->showDialog(Lcom/autonavi/xm/navigation/app/NaviDialogFragment;I)V

    return-void
.end method

.method private speedDown()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mCurStep:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mSimulationGuidePlayer:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mCurStep:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->previous()Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;->setPlaybackRate(Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mCurStep:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->previous()Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->handleSimulationStepResult(Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;)V

    goto :goto_0
.end method

.method private speedUp()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mCurStep:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mSimulationGuidePlayer:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mCurStep:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->next()Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;->setPlaybackRate(Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mCurStep:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->next()Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->handleSimulationStepResult(Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;)V

    goto :goto_0
.end method

.method private startSimulation()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mSimulationGuidePlayer:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;

    sget-object v1, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->NORMAL:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;->setPlaybackRate(Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mSimulationGuidePlayer:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mOnGuideListener:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;->setOnGuideListener(Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mSimulationGuidePlayer:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;->start(Lcom/autonavi/navigation/api/route/model/Route;)Z

    return-void
.end method

.method private stopSimulation()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getUiSettings()Lcom/autonavi/navigation/api/map/UiSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/UiSettings;->setAllGesturesEnabled(Z)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mIsBoardsEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->setBoardsEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->setStateRelatedButtonVisable(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mGrpSimulationBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mActionHideOperBar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mActionHideOperBar:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const-string v0, "dis == "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "dis = "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsBoardsEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mIsBoardsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mGrpSimulationBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-super {p0, p1}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mActionHideOperBar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    :pswitch_1
    iget-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mHasZoomVIew:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->setBoardsEnabled(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->setStateRelatedButtonVisable(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mGrpSimulationBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mActionHideOperBar:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected handleIntoZoomViewInvisible()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->closeZoomView()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->refreshMap()V

    return-void
.end method

.method protected handleSimulationStepResult(Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;)V
    .locals 2

    iput-object p1, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mCurStep:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mBtnSpeedUp:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mCurStep:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->hasNext()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/xm/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mBtnSpeedDown:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mCurStep:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->hasPrevious()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/xm/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method protected onButtonStopClicked()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->showDlgDeleteRoute()V

    return-void
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->onCreateView(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->setTouchEventPassed(Z)V

    const v0, 0x7f080105

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f080100

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->getAnMap()Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getGuideManager()Lcom/autonavi/navigation/api/guide/GuideManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra.EXTRA_IS_COME_FROM_ROUTE_MANAGEMENT"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mIsComeFromRouteManagement:Z

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_map_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mMapType:I

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "action.GUIDE_ROUTE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Route;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->getGuidingRoute()Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getUiSettings()Lcom/autonavi/navigation/api/map/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/navigation/api/map/UiSettings;->setAllGesturesEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mGrpSimulationBar:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->enterSimulationState()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->gotoMyLocation()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->getSimulationGuidePlayer()Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mSimulationGuidePlayer:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->startSimulation()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->onDestroyView()V

    return-void
.end method

.method public onDialogCancel(Lcom/autonavi/xm/navigation/app/NaviDialogFragment;)V
    .locals 2

    invoke-virtual {p1}, Lcom/autonavi/xm/navigation/app/NaviDialogFragment;->getDialogId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->resumeSimulationIfNeeded()V

    :cond_0
    return-void
.end method

.method public onDialogClick(Lcom/autonavi/xm/navigation/app/NaviDialogFragment;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-virtual {p1}, Lcom/autonavi/xm/navigation/app/NaviDialogFragment;->getDialogId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    if-ne p2, v2, :cond_1

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->resumeSimulationIfNeeded()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p2, v3, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mSimulationGuidePlayer:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mSimulationGuidePlayer:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;->stop()Z

    :cond_2
    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->stopSimulation()V

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mIsComeFromRouteManagement:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->stopGuide()Z

    const-string v0, "action.DELETE_ROUTE"

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->backToMap(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->gotoMyLocation()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/RouteManager;->createCalculationInput()Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_is_delete_route"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->popBack()V

    goto :goto_0

    :cond_4
    if-ne v0, v4, :cond_0

    if-ne p2, v2, :cond_5

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->resumeSimulationIfNeeded()V

    goto :goto_0

    :cond_5
    if-ne p2, v3, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->backToRouteOverVIew()V

    goto :goto_0
.end method

.method protected onInflateView()V
    .locals 1

    const v0, 0x7f08010d

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f08010e

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mGrpSimulationBar:Landroid/view/View;

    const v0, 0x7f08016c

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mBtnSpeedUp:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mBtnSpeedUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08016a

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mBtnSpeedDown:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mBtnSpeedDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08016b

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mTgbToggleSimulation:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mTgbToggleSimulation:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080169

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mBtnQuit:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mBtnQuit:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08016d

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mSimulationGuidePlayer:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;->stop()Z

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->stopSimulation()V

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mIsComeFromRouteManagement:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapType;->DEFAULT:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setMapType(Lcom/autonavi/navigation/api/map/model/MapType;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mMapType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapType;->SINGLE_ROUTE_OVERVIEW:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setMapType(Lcom/autonavi/navigation/api/map/model/MapType;)V

    :goto_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/xm/navi/menu/fragment/RouteOverview;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mMapType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapType;->MULTI_ROUTE_OVERVIEW:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setMapType(Lcom/autonavi/navigation/api/map/model/MapType;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapType;->DEFAULT:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setMapType(Lcom/autonavi/navigation/api/map/model/MapType;)V

    goto :goto_1
.end method

.method protected onMapAction(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08016b

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mIsStop:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->startSimulation()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mTgbToggleSimulation:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->startSimulation()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mSimulationGuidePlayer:Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer;->pause()Z

    goto :goto_0

    :cond_3
    const v1, 0x7f08016a

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->speedDown()V

    goto :goto_0

    :cond_4
    const v1, 0x7f08016c

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->speedUp()V

    goto :goto_0

    :cond_5
    const v1, 0x7f080169

    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->backToRouteOverVIew()V

    goto :goto_0

    :cond_6
    const v1, 0x7f08016d

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/Simulation;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->moveTaskToBack(Z)Z

    goto :goto_0
.end method
