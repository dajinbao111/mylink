.class public Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;
.super Lcom/autonavi/wh/navigation/app/NaviFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/autonavi/navigation/api/location/LocationManager$GpsStatusCallback;


# static fields
.field protected static final AUTO_EXIT_OPER_STATE_DELAY:I = 0x1770

.field private static final KEY_AREA_ZOOM_INTERSECTION:Ljava/lang/String; = "area_zoom_intersection"

.field private static final KEY_IS_BOARDS_ENABLED:Ljava/lang/String; = "is_boards_enabled"

.field private static final KEY_IS_GUIDING:Ljava/lang/String; = "is_guiding"

.field private static final KEY_IS_MY_LOCATION:Ljava/lang/String; = "is_my_location"

.field private static final MAX_ELEVATION_VALUE:I = 0x5a

.field private static final MIN_ELEVATION_VALUE:I = 0x14

.field private static final MIN_MAP_MOTION_DELAY:I = 0x3fa

.field protected static final REQUEST_ADD_WAY_POINT:I = 0x1

.field protected static final REQUEST_SET_FINAL_DEST:I = 0x2

.field private static final STATE_HIDE:I = 0x1

.field private static final STATE_OPER:I = 0x2

.field private static final STATE_ROAM:I = 0x0

.field private static final STATE_SIMULATION:I = 0x3


# instance fields
.field private mAccelerometer:Landroid/hardware/Sensor;

.field protected mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

.field private mBtnElevateDown:Landroid/widget/ImageButton;

.field private mBtnElevateUp:Landroid/widget/ImageButton;

.field protected mBtnRelativeLayout:Landroid/widget/RelativeLayout;

.field protected mBtnStopNavigation:Landroid/view/View;

.field protected mBtnSwitchViewMode:Landroid/widget/LinearLayout;

.field private mBtnZoomIn:Landroid/widget/ImageButton;

.field private mBtnZoomOut:Landroid/widget/ImageButton;

.field protected mBtnZoomValue:Lcom/autonavi/wh/widget/StrokeTextView;

.field private mCurCameraPosition:Lcom/autonavi/navigation/api/map/model/CameraPosition;

.field protected mCurrentTime:Landroid/widget/TextView;

.field protected mFormatter:Lcom/autonavi/wh/navi/base/util/Formatter;

.field private mGrpGuideInfo:Landroid/view/ViewGroup;

.field private mGrpGuideInfoSimple:Landroid/view/ViewGroup;

.field protected mGrpMapCtrl:Landroid/view/ViewGroup;

.field protected mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

.field private mHasTimeTickReveiverRegistered:Z

.field protected mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

.field private mImgDirectionIndicator:Landroid/widget/ImageView;

.field private mImgTurningIcon:Landroid/widget/ImageView;

.field protected mImgswitchViewMode:Landroid/widget/ImageView;

.field protected mIsBoardsEnabled:Z

.field private mIsElecCompassEnabled:Z

.field protected mIsFling:Z

.field protected mIsGuiding:Z

.field protected mIsLocationAvailable:Z

.field protected mIsMapCenterValid:Z

.field private mIsMapInMotion:Z

.field private mIsMyLocation:Z

.field protected mIsZoomViewVisable:Z

.field private mLastInMotionTime:J

.field protected mLocationManager:Lcom/autonavi/navigation/api/location/LocationManager;

.field private mLpTxtRoadName:Landroid/view/ViewGroup$MarginLayoutParams;

.field private final mMainHandler:Landroid/os/Handler;

.field protected final mOnGuideListener:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

.field private final mOnRepeatListener:Lcom/autonavi/wh/view/ClickRepeater$OnRepeatListener;

.field protected mRctZoomIntersection:Landroid/graphics/Rect;

.field private mRootViewGroup:Landroid/view/ViewGroup;

.field protected mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

.field private mScreenGap:I

.field private mScreenWidth:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field protected mSettings:Lcom/autonavi/navigation/api/settings/Settings;

.field private final mShowRootViewGroup:Ljava/lang/Runnable;

.field private mState:I

.field protected mTextSwitchGps:Landroid/widget/TextView;

.field private mTgbSoundStateIndicator:Landroid/widget/ToggleButton;

.field private mTimeTickReceiver:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$TimeTickReceiver;

.field private mTxtArrivalTime:Landroid/widget/TextView;

.field private mTxtNextRoadName:Landroid/widget/TextView;

.field private mTxtNextRoadNameSimple:Landroid/widget/TextView;

.field private mTxtRestDistance:Landroid/widget/TextView;

.field protected mTxtRoadName:Landroid/widget/TextView;

.field private mTxtRoadNameParent:Landroid/view/View;

.field private mTxtTurningDistance:Landroid/widget/TextView;

.field private mTxtTurningDistanceSimple:Landroid/widget/TextView;

.field private mTxtTurningDistanceUnit:Landroid/widget/TextView;

.field private mTxtTurningDistanceUnitSimple:Landroid/widget/TextView;

.field private mViewGuideInfoBarRight:Landroid/view/View;

.field mVolumeControlReceiver:Landroid/content/BroadcastReceiver;

.field private mWidth:I

.field private mZoomLevelInfo:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

.field protected mZoomViewInterceptor:Landroid/view/View;

.field mtest:Ljava/lang/Runnable;

.field protected routeCalculationResult:Lcom/autonavi/navigation/api/route/model/CalculationResult;

.field sensorEnenListener:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;-><init>()V

    iput-boolean v2, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsGuiding:Z

    iput-boolean v2, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsLocationAvailable:Z

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsMyLocation:Z

    iput-boolean v2, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsBoardsEnabled:Z

    iput-boolean v2, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsFling:Z

    iput-boolean v2, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsElecCompassEnabled:Z

    iput-boolean v2, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mHasTimeTickReveiverRegistered:Z

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsMapCenterValid:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$1;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$1;-><init>(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mVolumeControlReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$2;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$2;-><init>(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->sensorEnenListener:Landroid/hardware/SensorEventListener;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mLastInMotionTime:J

    iput-boolean v2, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsMapInMotion:Z

    new-instance v0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$7;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$7;-><init>(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mShowRootViewGroup:Ljava/lang/Runnable;

    new-instance v0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$8;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$8;-><init>(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mOnRepeatListener:Lcom/autonavi/wh/view/ClickRepeater$OnRepeatListener;

    new-instance v0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$9;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$9;-><init>(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mOnGuideListener:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

    new-instance v0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$10;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$10;-><init>(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mtest:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->onMuteEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mImgDirectionIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomIn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->isOnTop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;Lcom/autonavi/navigation/api/map/model/MapCursorInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->handleMapCursorChanged(Lcom/autonavi/navigation/api/map/model/MapCursorInfo;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnElevateUp:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnElevateDown:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mRootViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->isOnTop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;Lcom/autonavi/navigation/api/route/model/Route;Lcom/autonavi/navigation/api/guide/model/GuideInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->onGuidingGuidance(Lcom/autonavi/navigation/api/route/model/Route;Lcom/autonavi/navigation/api/guide/model/GuideInfo;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->handleGuidanceCompletion()V

    return-void
.end method

.method static synthetic access$1900(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->handleGuidanceStopped()V

    return-void
.end method

.method static synthetic access$200(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->isOnTop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->handleGpsResult(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->isOnTop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->isOnTop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->isOnTop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->isOnTop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)Lcom/autonavi/navigation/api/map/model/CameraPosition;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mCurCameraPosition:Lcom/autonavi/navigation/api/map/model/CameraPosition;

    return-object v0
.end method

.method static synthetic access$702(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;Lcom/autonavi/navigation/api/map/model/CameraPosition;)Lcom/autonavi/navigation/api/map/model/CameraPosition;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mCurCameraPosition:Lcom/autonavi/navigation/api/map/model/CameraPosition;

    return-object p1
.end method

.method static synthetic access$800(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomOut:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->isOnTop()Z

    move-result v0

    return v0
.end method

.method private addView()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v0, 0x7f0800fa

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mRootViewGroup:Landroid/view/ViewGroup;

    const v0, 0x7f080123

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnStopNavigation:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnStopNavigation:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080119

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnSwitchViewMode:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnSwitchViewMode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08011a

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mImgswitchViewMode:Landroid/widget/ImageView;

    const v0, 0x7f08011b

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTextSwitchGps:Landroid/widget/TextView;

    const v0, 0x7f08011c

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomIn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomIn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomIn:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/autonavi/wh/view/ClickRepeater;->attach(Landroid/view/View;)Lcom/autonavi/wh/view/ClickRepeater;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mOnRepeatListener:Lcom/autonavi/wh/view/ClickRepeater$OnRepeatListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/view/ClickRepeater;->setOnRepeatListener(Lcom/autonavi/wh/view/ClickRepeater$OnRepeatListener;)Lcom/autonavi/wh/view/ClickRepeater;

    const v0, 0x7f08011f

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomOut:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomOut:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomOut:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/autonavi/wh/view/ClickRepeater;->attach(Landroid/view/View;)Lcom/autonavi/wh/view/ClickRepeater;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mOnRepeatListener:Lcom/autonavi/wh/view/ClickRepeater$OnRepeatListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/view/ClickRepeater;->setOnRepeatListener(Lcom/autonavi/wh/view/ClickRepeater$OnRepeatListener;)Lcom/autonavi/wh/view/ClickRepeater;

    const v0, 0x7f08011d

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnElevateUp:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnElevateUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnElevateUp:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/autonavi/wh/view/ClickRepeater;->attach(Landroid/view/View;)Lcom/autonavi/wh/view/ClickRepeater;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mOnRepeatListener:Lcom/autonavi/wh/view/ClickRepeater$OnRepeatListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/view/ClickRepeater;->setOnRepeatListener(Lcom/autonavi/wh/view/ClickRepeater$OnRepeatListener;)Lcom/autonavi/wh/view/ClickRepeater;

    const v0, 0x7f080120

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnElevateDown:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnElevateDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnElevateDown:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/autonavi/wh/view/ClickRepeater;->attach(Landroid/view/View;)Lcom/autonavi/wh/view/ClickRepeater;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mOnRepeatListener:Lcom/autonavi/wh/view/ClickRepeater$OnRepeatListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/view/ClickRepeater;->setOnRepeatListener(Lcom/autonavi/wh/view/ClickRepeater$OnRepeatListener;)Lcom/autonavi/wh/view/ClickRepeater;

    const v0, 0x7f080115

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f080117

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mCurrentTime:Landroid/widget/TextView;

    const v0, 0x7f080116

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mGrpMapCtrl:Landroid/view/ViewGroup;

    const v0, 0x7f08011e

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/widget/StrokeTextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomValue:Lcom/autonavi/wh/widget/StrokeTextView;

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomValue:Lcom/autonavi/wh/widget/StrokeTextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/widget/StrokeTextView;->setBorderColor(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomValue:Lcom/autonavi/wh/widget/StrokeTextView;

    invoke-virtual {v0, v3}, Lcom/autonavi/wh/widget/StrokeTextView;->setBorderWidth(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomValue:Lcom/autonavi/wh/widget/StrokeTextView;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/widget/StrokeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800ff

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mGrpGuideInfo:Landroid/view/ViewGroup;

    const v0, 0x7f0800a5

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mImgTurningIcon:Landroid/widget/ImageView;

    const v0, 0x7f080102

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtTurningDistance:Landroid/widget/TextView;

    const v0, 0x7f080103

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtTurningDistanceUnit:Landroid/widget/TextView;

    const v0, 0x7f080104

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtNextRoadName:Landroid/widget/TextView;

    const v0, 0x7f080101

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTgbSoundStateIndicator:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mGrpGuideInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080100

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080105

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080107

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtArrivalTime:Landroid/widget/TextView;

    const v0, 0x7f080106

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtRestDistance:Landroid/widget/TextView;

    const v0, 0x7f080121

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mImgDirectionIndicator:Landroid/widget/ImageView;

    const v0, 0x7f08010c

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mZoomViewInterceptor:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mZoomViewInterceptor:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080114

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtRoadName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtRoadName:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080113

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtRoadNameParent:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtRoadNameParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mLpTxtRoadName:Landroid/view/ViewGroup$MarginLayoutParams;

    const v0, 0x7f080108

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mGrpGuideInfoSimple:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mGrpGuideInfoSimple:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08010b

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtNextRoadNameSimple:Landroid/widget/TextView;

    const v0, 0x7f080109

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtTurningDistanceSimple:Landroid/widget/TextView;

    const v0, 0x7f08010a

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtTurningDistanceUnitSimple:Landroid/widget/TextView;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getSettings()Lcom/autonavi/navigation/api/settings/Settings;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    invoke-direct {p0, v2}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->onElecCompassEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v1, "mute"

    invoke-virtual {v0, v1, v3}, Lcom/autonavi/navigation/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->onMuteEnabled(Z)V

    return-void
.end method

.method private getSatelliteNumberInUsed(Ljava/util/List;Z)I
    .locals 5

    const/16 v4, 0x190

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v0

    if-ge v0, v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v0

    if-le v0, v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private handleGpsResult(I)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/16 v7, 0x8

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTextSwitchGps:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTextSwitchGps:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ge p1, v5, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/support/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTextSwitchGps:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    if-ne p1, v5, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/support/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTextSwitchGps:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    if-ne p1, v6, :cond_3

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/support/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTextSwitchGps:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    if-ge p1, v7, :cond_4

    if-le p1, v6, :cond_4

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/support/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTextSwitchGps:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_4
    if-lt p1, v7, :cond_5

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/support/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTextSwitchGps:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "times"

    const-string v1, " \u4e2a\u6570\u5f02\u5e38 "

    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handleGuidanceCompletion()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->quitGuidance()V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->onGuidanceCompletion()V

    return-void
.end method

.method private handleGuidanceStopped()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->quitGuidance()V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->onGuidanceStopped()V

    invoke-direct {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->unregisterTimeTickReceiver()V

    return-void
.end method

.method private handleMapCursorChanged(Lcom/autonavi/navigation/api/map/model/MapCursorInfo;)V
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsMapCenterValid:Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMyLocation()Lcom/autonavi/navigation/api/map/model/MyLocation;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/navigation/api/map/model/MyLocation;->bearing:I

    rsub-int v0, v0, 0x168

    mul-int/lit16 v0, v0, 0x2710

    div-int/lit16 v0, v0, 0x168

    iget-object v2, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mImgDirectionIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setMapInMotion(Z)V

    invoke-virtual {p0, p1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->onMapChanged(Lcom/autonavi/navigation/api/map/model/MapCursorInfo;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getExternalTmc()Lcom/autonavi/wh/navi/tmc/TmcBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/tmc/TmcBase;->onCityChanged()V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleRectResult()V
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/AnApi;->getSettings()Lcom/autonavi/navigation/api/settings/Settings;

    move-result-object v1

    const-string v2, "rect_of_zoom_intersection"

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/navigation/api/settings/Settings;->getRect(Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mZoomViewInterceptor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mZoomViewInterceptor:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mRctZoomIntersection:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mGrpGuideInfoSimple:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mGrpGuideInfoSimple:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private initApi()V
    .locals 1

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getLocationManager()Lcom/autonavi/navigation/api/location/LocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mLocationManager:Lcom/autonavi/navigation/api/location/LocationManager;

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mLocationManager:Lcom/autonavi/navigation/api/location/LocationManager;

    invoke-virtual {v0, p0}, Lcom/autonavi/navigation/api/location/LocationManager;->requestGpsStatusUpdates(Lcom/autonavi/navigation/api/location/LocationManager$GpsStatusCallback;)V

    return-void
.end method

.method private intoZoomViewInvisibleState()V
    .locals 0

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->handleIntoZoomViewInvisible()V

    return-void
.end method

.method private onElecCompassEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsElecCompassEnabled:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->isInHideState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->isInOperState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->isInSimulaitonState()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mImgDirectionIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setViewVisable(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mImgDirectionIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setViewVisable(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private onGuidingGuidance(Lcom/autonavi/navigation/api/route/model/Route;Lcom/autonavi/navigation/api/guide/model/GuideInfo;)V
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsGuiding:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p2, Lcom/autonavi/navigation/api/guide/model/GuideInfo;->hasZoomView:Z

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsZoomViewVisable:Z

    invoke-virtual {p0, p2}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->handleGuideInfoChanged(Lcom/autonavi/navigation/api/guide/model/GuideInfo;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->isInOperState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p2, Lcom/autonavi/navigation/api/guide/model/GuideInfo;->hasZoomView:Z

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->handleZoomViewVisibilityChanged(Z)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtRoadName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/map/AnMap;->getMyLocation()Lcom/autonavi/navigation/api/map/model/MyLocation;

    move-result-object v1

    iget-object v1, v1, Lcom/autonavi/navigation/api/map/model/MyLocation;->roadName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/util/TextUtil;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private onMuteEnabled(Z)V
    .locals 2

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTgbSoundStateIndicator:Landroid/widget/ToggleButton;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private quitGuidance()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsGuiding:Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnStopNavigation:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setViewVisable(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mGrpGuideInfo:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setViewVisable(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mGrpGuideInfoSimple:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setViewVisable(Landroid/view/View;Z)V

    return-void
.end method

.method private registerTimeTickReceiver()V
    .locals 3

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mHasTimeTickReveiverRegistered:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTimeTickReceiver:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$TimeTickReceiver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$TimeTickReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$TimeTickReceiver;-><init>(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$1;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTimeTickReceiver:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$TimeTickReceiver;

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v2, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTimeTickReceiver:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$TimeTickReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mHasTimeTickReveiverRegistered:Z

    goto :goto_0
.end method

.method private setArrivalTime(I)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtArrivalTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    mul-int/lit8 v2, p1, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    invoke-static {v1, v2}, Lcom/autonavi/wh/navi/base/util/Formatter;->formatForwardTime(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/util/TextUtil;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setCanZoom(Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getCameraPosition()Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->zoom:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    sget-object v1, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_25_M:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomIn:Landroid/widget/ImageButton;

    invoke-static {v0, v3}, Lcom/autonavi/wh/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomOut:Landroid/widget/ImageButton;

    invoke-static {v0, v2}, Lcom/autonavi/wh/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomIn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomIn:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomOut:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomOut:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomIn:Landroid/widget/ImageButton;

    invoke-static {v0, v2}, Lcom/autonavi/wh/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomOut:Landroid/widget/ImageButton;

    invoke-static {v0, v2}, Lcom/autonavi/wh/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomIn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomIn:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomOut:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomOut:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getCameraPosition()Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->zoom:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    sget-object v1, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_500_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomIn:Landroid/widget/ImageButton;

    invoke-static {v0, v2}, Lcom/autonavi/wh/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomOut:Landroid/widget/ImageButton;

    invoke-static {v0, v3}, Lcom/autonavi/wh/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomIn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomIn:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomOut:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomOut:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomIn:Landroid/widget/ImageButton;

    invoke-static {v0, v2}, Lcom/autonavi/wh/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomOut:Landroid/widget/ImageButton;

    invoke-static {v0, v2}, Lcom/autonavi/wh/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomIn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomIn:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomOut:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomOut:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    goto :goto_0
.end method

.method private setOnMapListener()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    new-instance v1, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$3;

    invoke-direct {v1, p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$3;-><init>(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setOnMapFlingListener(Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    new-instance v1, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$4;

    invoke-direct {v1, p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$4;-><init>(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setOnMapScrollListener(Lcom/autonavi/navigation/api/map/AnMap$OnMapScrollListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getCameraPosition()Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mCurCameraPosition:Lcom/autonavi/navigation/api/map/model/CameraPosition;

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mCurCameraPosition:Lcom/autonavi/navigation/api/map/model/CameraPosition;

    iget-object v0, v0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->zoom:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    sget-object v1, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_25_M:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomIn:Landroid/widget/ImageButton;

    invoke-static {v0, v2}, Lcom/autonavi/wh/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    new-instance v1, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$5;

    invoke-direct {v1, p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$5;-><init>(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setOnZoomEnabledListener(Lcom/autonavi/navigation/api/map/AnMap$OnZoomEnabledListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    new-instance v1, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$6;

    invoke-direct {v1, p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$6;-><init>(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setOnCameraChangeListener(Lcom/autonavi/navigation/api/map/AnMap$OnCameraChangeListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mCurCameraPosition:Lcom/autonavi/navigation/api/map/model/CameraPosition;

    iget-object v0, v0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->zoom:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    sget-object v1, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_500_KM:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomOut:Landroid/widget/ImageButton;

    invoke-static {v0, v2}, Lcom/autonavi/wh/view/BaseView;->setViewEnabled(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private setRestDistance(I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtRestDistance:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mFormatter:Lcom/autonavi/wh/navi/base/util/Formatter;

    invoke-virtual {v1, p1}, Lcom/autonavi/wh/navi/base/util/Formatter;->getDistance(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/util/TextUtil;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setTurningDistance(I)V
    .locals 3

    const/16 v2, 0x3e8

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtTurningDistanceUnit:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v2, :cond_0

    const-string v0, "m"

    :goto_0
    invoke-static {v1, v0}, Lcom/autonavi/wh/navi/base/util/TextUtil;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtTurningDistance:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mFormatter:Lcom/autonavi/wh/navi/base/util/Formatter;

    invoke-virtual {v1, p1}, Lcom/autonavi/wh/navi/base/util/Formatter;->getDistanceWithoutUnit(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/util/TextUtil;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtTurningDistanceUnitSimple:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v2, :cond_1

    const-string v0, "m"

    :goto_1
    invoke-static {v1, v0}, Lcom/autonavi/wh/navi/base/util/TextUtil;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtTurningDistanceSimple:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mFormatter:Lcom/autonavi/wh/navi/base/util/Formatter;

    invoke-virtual {v1, p1}, Lcom/autonavi/wh/navi/base/util/Formatter;->getDistanceWithoutUnit(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/util/TextUtil;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v0, "km"

    goto :goto_0

    :cond_1
    const-string v0, "km"

    goto :goto_1
.end method

.method private shouldViewCovered(Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unregisterTimeTickReceiver()V
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mHasTimeTickReveiverRegistered:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTimeTickReceiver:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$TimeTickReceiver;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mHasTimeTickReveiverRegistered:Z

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    const/16 v2, 0x15

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mCurCameraPosition:Lcom/autonavi/navigation/api/map/model/CameraPosition;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mCurCameraPosition:Lcom/autonavi/navigation/api/map/model/CameraPosition;

    iget-object v1, v1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->mode:Lcom/autonavi/navigation/api/map/model/MapMode;

    sget-object v2, Lcom/autonavi/navigation/api/map/model/MapMode;->MODE_3D:Lcom/autonavi/navigation/api/map/model/MapMode;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    const/16 v2, -0xa

    invoke-static {v2}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->tiltBy(I)Lcom/autonavi/navigation/api/map/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/map/AnMap;->animateCamera(Lcom/autonavi/navigation/api/map/CameraUpdate;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-static {}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->zoomOut()Lcom/autonavi/navigation/api/map/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/map/AnMap;->animateCamera(Lcom/autonavi/navigation/api/map/CameraUpdate;)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x16

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mCurCameraPosition:Lcom/autonavi/navigation/api/map/model/CameraPosition;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mCurCameraPosition:Lcom/autonavi/navigation/api/map/model/CameraPosition;

    iget-object v1, v1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->mode:Lcom/autonavi/navigation/api/map/model/MapMode;

    sget-object v2, Lcom/autonavi/navigation/api/map/model/MapMode;->MODE_3D:Lcom/autonavi/navigation/api/map/model/MapMode;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->tiltBy(I)Lcom/autonavi/navigation/api/map/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/map/AnMap;->animateCamera(Lcom/autonavi/navigation/api/map/CameraUpdate;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-static {}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->zoomIn()Lcom/autonavi/navigation/api/map/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/map/AnMap;->animateCamera(Lcom/autonavi/navigation/api/map/CameraUpdate;)V

    goto :goto_0

    :cond_4
    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    const/16 v2, 0x17

    if-eq v1, v2, :cond_0

    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected enterHideState()V
    .locals 2

    const/4 v1, 0x1

    iput v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mState:I

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsGuiding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setBoardsEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtRoadNameParent:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setViewVisable(Landroid/view/View;Z)V

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsElecCompassEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mImgDirectionIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setViewVisable(Landroid/view/View;Z)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setStateRelatedButtonVisable(Z)V

    return-void
.end method

.method protected enterOperState()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    iput v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mState:I

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsGuiding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setBoardsEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtRoadNameParent:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setViewVisable(Landroid/view/View;Z)V

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsElecCompassEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mImgDirectionIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setViewVisable(Landroid/view/View;Z)V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setStateRelatedButtonVisable(Z)V

    return-void
.end method

.method protected enterRoamState()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mState:I

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtRoadNameParent:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setViewVisable(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mImgDirectionIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setViewVisable(Landroid/view/View;Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setStateRelatedButtonVisable(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mGrpGuideInfo:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setViewVisable(Landroid/view/View;Z)V

    return-void
.end method

.method protected enterSimulationState()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mState:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setBoardsEnabled(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setStateRelatedButtonVisable(Z)V

    return-void
.end method

.method protected handleGuidanceStarted()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsGuiding:Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnStopNavigation:Landroid/view/View;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mGrpMapCtrl:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->onGuidanceStarted()V

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsLocationAvailable:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->registerTimeTickReceiver()V

    :cond_0
    return-void
.end method

.method protected handleGuideInfoChanged(Lcom/autonavi/navigation/api/guide/model/GuideInfo;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mGrpGuideInfo:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mImgTurningIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p1, Lcom/autonavi/navigation/api/guide/model/GuideInfo;->turningId:I

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mImgTurningIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget v2, p1, Lcom/autonavi/navigation/api/guide/model/GuideInfo;->turningId:I

    invoke-static {v1, v2}, Lcom/autonavi/wh/navigation/res/ResUtils;->getTurningIconRes(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mImgTurningIcon:Landroid/widget/ImageView;

    iget v1, p1, Lcom/autonavi/navigation/api/guide/model/GuideInfo;->turningId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_2
    iget v0, p1, Lcom/autonavi/navigation/api/guide/model/GuideInfo;->nextDistance:I

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setTurningDistance(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtNextRoadName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/autonavi/navigation/api/guide/model/GuideInfo;->nextRoadName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/util/TextUtil;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtNextRoadNameSimple:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/autonavi/navigation/api/guide/model/GuideInfo;->nextRoadName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/util/TextUtil;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget v0, p1, Lcom/autonavi/navigation/api/guide/model/GuideInfo;->totalRemainDistance:I

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setRestDistance(I)V

    iget v0, p1, Lcom/autonavi/navigation/api/guide/model/GuideInfo;->totalRemainArrivalTime:I

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setArrivalTime(I)V

    iget-boolean v0, p1, Lcom/autonavi/navigation/api/guide/model/GuideInfo;->hasZoomView:Z

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsZoomViewVisable:Z

    goto :goto_0
.end method

.method protected handleIntoZoomViewInvisible()V
    .locals 0

    return-void
.end method

.method protected handleMyLocationChanged(Lcom/autonavi/navigation/api/map/model/MyLocation;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtRoadName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/autonavi/navigation/api/map/model/MyLocation;->roadName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/util/TextUtil;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtRoadName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/util/TextUtil;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected handleViewModeChanged(Lcom/autonavi/navigation/api/map/model/MapMode;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mImgswitchViewMode:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/map/model/MapMode;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    sget-object v0, Lcom/autonavi/navigation/api/map/model/MapMode;->MODE_3D:Lcom/autonavi/navigation/api/map/model/MapMode;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnElevateUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnElevateDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomIn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomOut:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomValue:Lcom/autonavi/wh/widget/StrokeTextView;

    invoke-virtual {v0, v2}, Lcom/autonavi/wh/widget/StrokeTextView;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomIn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomOut:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnElevateUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnElevateDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomValue:Lcom/autonavi/wh/widget/StrokeTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/widget/StrokeTextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected handleZoomLevelChanged(Lcom/autonavi/navigation/api/map/model/ZoomLevel;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mFormatter:Lcom/autonavi/wh/navi/base/util/Formatter;

    iget v1, p1, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->value:I

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/util/Formatter;->getShortDistance(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnZoomValue:Lcom/autonavi/wh/widget/StrokeTextView;

    invoke-virtual {v1, v0}, Lcom/autonavi/wh/widget/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected handleZoomViewVisibilityChanged(Z)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x4

    iput-boolean p1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsZoomViewVisable:Z

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsGuiding:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->isInSimulaitonState()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->isMapCursorOnMyLocation()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mGrpGuideInfo:Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mGrpGuideInfoSimple:Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mZoomViewInterceptor:Landroid/view/View;

    if-eqz p1, :cond_6

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mGrpGuideInfoSimple:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->onZoomViewVisibilityChanged(Z)V

    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mGrpGuideInfoSimple:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    :cond_6
    const/16 v2, 0x8

    goto :goto_3
.end method

.method protected isInHideState()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isInOperState()Z
    .locals 2

    iget v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isInRoamState()Z
    .locals 1

    iget v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isInSimulaitonState()Z
    .locals 2

    iget v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkConnected(Landroid/content/Context;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isScreenViewEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onButtonStopClicked()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08011c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-static {}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->zoomIn()Lcom/autonavi/navigation/api/map/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->animateCamera(Lcom/autonavi/navigation/api/map/CameraUpdate;)V

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f08011f

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-static {}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->zoomOut()Lcom/autonavi/navigation/api/map/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->animateCamera(Lcom/autonavi/navigation/api/map/CameraUpdate;)V

    goto :goto_0

    :cond_1
    const v1, 0x7f08011d

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->tiltBy(I)Lcom/autonavi/navigation/api/map/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->moveCamera(Lcom/autonavi/navigation/api/map/CameraUpdate;)V

    goto :goto_0

    :cond_2
    const v1, 0x7f080120

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    const/16 v1, -0xa

    invoke-static {v1}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->tiltBy(I)Lcom/autonavi/navigation/api/map/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->moveCamera(Lcom/autonavi/navigation/api/map/CameraUpdate;)V

    goto :goto_0

    :cond_3
    const v1, 0x7f080119

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-static {}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->nextMapMode()Lcom/autonavi/navigation/api/map/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->moveCamera(Lcom/autonavi/navigation/api/map/CameraUpdate;)V

    goto :goto_0

    :cond_4
    const v1, 0x7f080123

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->onButtonStopClicked()V

    goto :goto_0

    :cond_5
    const v1, 0x7f080100

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->playGuideVoice()Z

    goto :goto_0

    :cond_6
    const v1, 0x7f080105

    if-ne v0, v1, :cond_7

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/menu/fragment/RouteOverview;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_start_guidance_on_destory"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->startFragment(Landroid/content/Intent;)V

    goto :goto_0

    :cond_7
    const v1, 0x7f08010c

    if-ne v0, v1, :cond_8

    const-string v0, "touch"

    const-string v1, "id == R.id.zoom_view_interceptor"

    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->closeZoomView()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->refreshMap()V

    goto/16 :goto_0

    :cond_8
    const v1, 0x7f080114

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->intoZoomViewInvisibleState()V

    goto/16 :goto_0

    :cond_9
    const v1, 0x7f080108

    if-ne v0, v1, :cond_a

    invoke-direct {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->intoZoomViewInvisibleState()V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0, p1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->onMapAction(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onCreateView(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getAnMap()Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getGuideManager()Lcom/autonavi/navigation/api/guide/GuideManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getRouteManager()Lcom/autonavi/navigation/api/route/RouteManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    new-instance v0, Lcom/autonavi/wh/navi/base/util/Formatter;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-direct {v0, v1}, Lcom/autonavi/wh/navi/base/util/Formatter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mFormatter:Lcom/autonavi/wh/navi/base/util/Formatter;

    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setContentView(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mScreenWidth:I

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mScreenGap:I

    invoke-direct {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->addView()V

    if-eqz p1, :cond_0

    const-string v0, "is_guiding"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsGuiding:Z

    const-string v0, "is_boards_enabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsBoardsEnabled:Z

    const-string v0, "is_my_location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsMyLocation:Z

    const-string v0, "area_zoom_intersection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mRctZoomIntersection:Landroid/graphics/Rect;

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->handleRectResult()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getCameraPosition()Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->mode:Lcom/autonavi/navigation/api/map/model/MapMode;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->handleViewModeChanged(Lcom/autonavi/navigation/api/map/model/MapMode;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getCameraPosition()Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mCurCameraPosition:Lcom/autonavi/navigation/api/map/model/CameraPosition;

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->onInflateView()V

    invoke-direct {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->initApi()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mVolumeControlReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.yftech.keyevent_navi"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-direct {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->unregisterTimeTickReceiver()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mLocationManager:Lcom/autonavi/navigation/api/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mLocationManager:Lcom/autonavi/navigation/api/location/LocationManager;

    invoke-virtual {v0, p0}, Lcom/autonavi/navigation/api/location/LocationManager;->removeGpsStatusUpdates(Lcom/autonavi/navigation/api/location/LocationManager$GpsStatusCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mVolumeControlReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onDestroy()V

    return-void
.end method

.method protected onGoToMyLocation()V
    .locals 0

    return-void
.end method

.method public onGpsStatusChanged(ILandroid/location/GpsStatus;)V
    .locals 5

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    if-gt v1, v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v3, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->getSatelliteNumberInUsed(Ljava/util/List;Z)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->handleGpsResult(I)V

    goto :goto_0
.end method

.method protected onGuidanceCompletion()V
    .locals 0

    return-void
.end method

.method protected onGuidanceStarted()V
    .locals 0

    return-void
.end method

.method protected onGuidanceStopped()V
    .locals 0

    return-void
.end method

.method protected onInflateView()V
    .locals 0

    return-void
.end method

.method protected onMapAction(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onMapChanged(Lcom/autonavi/navigation/api/map/model/MapCursorInfo;)V
    .locals 0

    return-void
.end method

.method protected onMapClickChanged(Lcom/autonavi/navigation/api/map/model/MapCursorInfo;)V
    .locals 0

    return-void
.end method

.method public onMapClickEnd()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMapCursorInfo()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsMapCenterValid:Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMyLocation()Lcom/autonavi/navigation/api/map/model/MyLocation;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/navigation/api/map/model/MyLocation;->bearing:I

    rsub-int v0, v0, 0x168

    mul-int/lit16 v0, v0, 0x2710

    div-int/lit16 v0, v0, 0x168

    iget-object v3, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mImgDirectionIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    if-eqz v2, :cond_1

    const-string v0, "onMapClickEnd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mapCursorInfo.roadName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->roadName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/autonavi/wh/navi/base/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtRoadName:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->roadName:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/autonavi/wh/navi/base/util/TextUtil;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p0, v1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setMapInMotion(Z)V

    invoke-virtual {p0, v2}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->onMapClickChanged(Lcom/autonavi/navigation/api/map/model/MapCursorInfo;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtRoadName:Landroid/widget/TextView;

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/autonavi/wh/navi/base/util/TextUtil;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onMapMoveEnd()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMapCursorInfo()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->handleMapCursorChanged(Lcom/autonavi/navigation/api/map/model/MapCursorInfo;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onPause()V

    return-void
.end method

.method public onPauseView()V
    .locals 2

    invoke-super {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onPauseView()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->sensorEnenListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public onResumeView()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onResumeView()V

    invoke-direct {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setOnMapListener()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->sensorEnenListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAccelerometer:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->onElecCompassEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v1, "mute"

    invoke-virtual {v0, v1, v4}, Lcom/autonavi/navigation/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->onMuteEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapType;->DEFAULT:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setMapType(Lcom/autonavi/navigation/api/map/model/MapType;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getUiSettings()Lcom/autonavi/navigation/api/map/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/autonavi/navigation/api/map/UiSettings;->setZoomViewEnabled(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "is_boards_enabled"

    iget-boolean v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsBoardsEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "is_guiding"

    iget-boolean v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsGuiding:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "is_my_location"

    iget-boolean v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsMyLocation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "area_zoom_intersection"

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mRctZoomIntersection:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onZoomViewVisibilityChanged(Z)V
    .locals 2

    iget v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mScreenWidth:I

    iget v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mScreenGap:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mWidth:I

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtRoadName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mRctZoomIntersection:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->shouldViewCovered(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mLpTxtRoadName:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iget v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtRoadNameParent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtRoadNameParent:Landroid/view/View;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mLpTxtRoadName:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected setBoardsEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsBoardsEnabled:Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getUiSettings()Lcom/autonavi/navigation/api/map/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/map/UiSettings;->setGuideboardEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getUiSettings()Lcom/autonavi/navigation/api/map/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/map/UiSettings;->setHighwaysignsEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getUiSettings()Lcom/autonavi/navigation/api/map/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/map/UiSettings;->setZoomViewEnabled(Z)V

    return-void
.end method

.method protected setMapInMotion(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setMapInMotion(ZZ)V

    return-void
.end method

.method protected setMapInMotion(ZZ)V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsMapInMotion:Z

    if-ne v0, p1, :cond_1

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mShowRootViewGroup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mRootViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v4}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setViewVisable(Landroid/view/View;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mShowRootViewGroup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mLastInMotionTime:J

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mRootViewGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setViewVisable(Landroid/view/View;Z)V

    :goto_1
    iput-boolean p1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsMapInMotion:Z

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mLastInMotionTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    if-nez p2, :cond_3

    const/16 v1, 0x3fa

    if-lt v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mRootViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v4}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setViewVisable(Landroid/view/View;Z)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mShowRootViewGroup:Ljava/lang/Runnable;

    rsub-int v0, v0, 0x3fa

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method protected setStateRelatedButtonVisable(Z)V
    .locals 4

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mIsGuiding:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->isInSimulaitonState()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mTxtRoadNameParent:Landroid/view/View;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->setViewVisable(Landroid/view/View;Z)V

    iget-object v3, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mBtnStopNavigation:Landroid/view/View;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mGrpMapCtrl:Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mGrpMapCtrl:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method protected setViewVisable(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected shouldShowGpsStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
