.class public Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
.super Lcom/autonavi/wh/navigation/app/NaviActivity;


# static fields
.field public static final ACTION_NAVIGATE:Ljava/lang/String; = "com.autonavi.xm.action.NAVIGATE"

.field public static final ACTION_SETTINGS:Ljava/lang/String; = "com.autonavi.xm.action.SETTINGS"

.field public static final ACTION_SHOW_ON_MAP:Ljava/lang/String; = "com.autonavi.xm.action.SHOW_ON_MAP"

.field public static final ACTION_VOLUME_CHANGED:Ljava/lang/String; = "com.yftech.keyevent_navi"

.field private static final BRIGHTNESS_ENABLED:Z = false

.field private static final CFG_FILE:Ljava/lang/String; = "navigation.cfg"

.field public static final DAY_AND_NIGHT:Ljava/lang/String; = "day_and_night"

.field private static final DIALOG_ID_MISSING_DATA:I = 0x0

.field public static final EXTRA_LATITUDE:Ljava/lang/String; = "com.autonavi.xm.extra.LATITUDE"

.field public static final EXTRA_LONGITUDE:Ljava/lang/String; = "com.autonavi.xm.extra.LONGITUDE"

.field public static final EXTRA_NAME:Ljava/lang/String; = "com.autonavi.xm.extra.NAME"

.field public static final IS_TRAFFIC_ENABLE:Ljava/lang/String; = "isTrafficEnable"

.field private static final KEY_LANG:Ljava/lang/String; = "language"

.field public static final NAVI_MUTE:Ljava/lang/String; = "navi_mute"

.field public static final NAVI_VOLUME:Ljava/lang/String; = "navi_volume"

.field private static final PREFER_GRAPHICS_VERSION:I = 0x2

.field public static final TMC_STATUS:Ljava/lang/String; = "tmc_setting"

.field private static final WHAT_HANDLE_INT_SETTINGS:I = 0x2

.field private static final WHAT_ON_MAP_SHOWN:I = 0x0

.field private static final WHAT_ON_SERVICE_PREPARED:I = 0x3

.field private static final WHAT_ON_STARTUP_FAIL:I = 0x5

.field private static final WHAT_ON_STARTUP_RESULT:I = 0x4

.field private static final WHAT_REMOVE_OPENING_SPLASH:I = 0x1


# instance fields
.field public calculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

.field private isActionBackToMyLocation:Z

.field private isFirst:Z

.field private isInitializer:Z

.field private isReSetLanguage:Z

.field private mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

.field private mAnim:Landroid/view/animation/Animation;

.field public mApplication:Lcom/autonavi/wh/navi/base/application/T7LAApplication;

.field public mDialogComputing:Lcom/autonavi/wh/navigation/app/AlertDialogFragment;

.field private mDialogId:I

.field private mDirPath:Ljava/lang/String;

.field mExitBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHasPendingIntent:Z

.field private mIsEngineInitializer:Z

.field private mIsQuitting:Z

.field private mIsResConfigConfirmed:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mMapView:Lcom/autonavi/navigation/api/map/MapView;

.field private mOpeningSplashLayout:Landroid/widget/RelativeLayout;

.field private final mProgress:I

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSettings:Lcom/autonavi/navigation/api/settings/Settings;

.field private final mSplashHandler:Landroid/os/Handler;

.field private mSplashProgressIV:Landroid/widget/ImageView;

.field protected mTmcBase:Lcom/autonavi/wh/navi/tmc/TmcBase;

.field private mToast:Lcom/autonavi/wh/navi/base/widget/NaviToast;

.field mVolumeControlReceiver:Landroid/content/BroadcastReceiver;

.field protected mYFCompany:Lcom/autonavi/wh/navi/cooperation/YFCompany;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;-><init>()V

    iput-boolean v2, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mIsQuitting:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mSplashHandler:Landroid/os/Handler;

    iput v1, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mProgress:I

    iput-boolean v1, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->isFirst:Z

    new-instance v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$1;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$1;-><init>(Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mExitBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$2;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$2;-><init>(Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mVolumeControlReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$4;-><init>(Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mMainHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mHasPendingIntent:Z

    return-void
.end method

.method static synthetic access$002(Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mIsQuitting:Z

    return p1
.end method

.method static synthetic access$100(Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;)Lcom/autonavi/navigation/api/settings/Settings;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    return-object v0
.end method

.method static synthetic access$102(Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;Lcom/autonavi/navigation/api/settings/Settings;)Lcom/autonavi/navigation/api/settings/Settings;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    return-object p1
.end method

.method static synthetic access$202(Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mDirPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->isInitializer:Z

    return p1
.end method

.method static synthetic access$400(Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->adjustLocale()V

    return-void
.end method

.method static synthetic access$500(Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->confirmConfiguration()V

    return-void
.end method

.method static synthetic access$600(Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mOpeningSplashLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->inflateMapView()V

    return-void
.end method

.method static synthetic access$800(Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mSavedInstanceState:Landroid/os/Bundle;

    return-object v0
.end method

.method private adjustLocale()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v1, "language"

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/navigation/api/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->setLocale(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mApplication:Lcom/autonavi/wh/navi/base/application/T7LAApplication;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "day_and_night"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mYFCompany:Lcom/autonavi/wh/navi/cooperation/YFCompany;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/cooperation/YFCompany;->isHeadLightOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v1, "day_night_mode"

    invoke-virtual {v0, v1, v3}, Lcom/autonavi/navigation/api/settings/Settings;->putInt(Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0, v3}, Lcom/autonavi/navigation/api/map/AnMap;->setECompassEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/settings/Settings;->save()Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v1, "day_night_mode"

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/navigation/api/settings/Settings;->putInt(Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private closeOpeningSplash()V
    .locals 2

    const v0, 0x7f040016

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mOpeningSplashLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mOpeningSplashLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private confirmConfiguration()V
    .locals 3

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mIsResConfigConfirmed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mIsResConfigConfirmed:Z

    invoke-direct {p0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->closeOpeningSplash()V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.autonavi.xm.action.SETTINGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->startFragment(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->startFragment(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private inflateMapView()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mMapView:Lcom/autonavi/navigation/api/map/MapView;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f08012a

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    const v1, 0x7f03002f

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/MapView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mMapView:Lcom/autonavi/navigation/api/map/MapView;

    goto :goto_0
.end method

.method private openingSplash()V
    .locals 2

    const v0, 0x7f04000c

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mSplashProgressIV:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private setLocale(I)V
    .locals 3

    if-gez p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    const-string v0, "mTocPrefs.language().get() err"

    invoke-static {v0}, Lcom/autonavi/wh/navi/base/util/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    const-string v1, "setLocale param err"

    invoke-static {v1}, Lcom/autonavi/wh/navi/base/util/LogUtil;->e(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iput-object v0, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_0

    :pswitch_0
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    goto :goto_1

    :pswitch_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    goto :goto_1

    :pswitch_2
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startupResult(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, -0x1

    new-instance v1, Lcom/autonavi/navigation/api/util/DataSourceScanner;

    iget-object v2, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mApplication:Lcom/autonavi/wh/navi/base/application/T7LAApplication;

    invoke-virtual {v2}, Lcom/autonavi/wh/navi/base/application/T7LAApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/autonavi/navigation/api/util/DataSourceScanner;-><init>(Landroid/content/Context;)V

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "/usb"

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/util/DataSourceScanner;->addScannerRootDir([Ljava/lang/String;)Lcom/autonavi/navigation/api/util/DataSourceScanner;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "/autonavidata"

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/util/DataSourceScanner;->setPreferentialScannerDir([Ljava/lang/String;)Lcom/autonavi/navigation/api/util/DataSourceScanner;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/util/DataSourceScanner;->setDirDepth(I)Lcom/autonavi/navigation/api/util/DataSourceScanner;

    move-result-object v0

    const v1, 0x36ee80

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/util/DataSourceScanner;->setTimeoutMillis(I)Lcom/autonavi/navigation/api/util/DataSourceScanner;

    move-result-object v0

    new-instance v1, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;-><init>(Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/util/DataSourceScanner;->setOnScannerResultListener(Lcom/autonavi/navigation/api/util/DataSourceScanner$OnScannerListener;)Lcom/autonavi/navigation/api/util/DataSourceScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/util/DataSourceScanner;->start()Lcom/autonavi/navigation/api/util/DataSourceScanner;

    return-void
.end method


# virtual methods
.method addViews(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->inflateMapView()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mMapView:Lcom/autonavi/navigation/api/map/MapView;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/map/MapView;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mMapView:Lcom/autonavi/navigation/api/map/MapView;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/MapView;->getMap()Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getUiSettings()Lcom/autonavi/navigation/api/map/UiSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/UiSettings;->setAllGesturesEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getUiSettings()Lcom/autonavi/navigation/api/map/UiSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/UiSettings;->setAllMapControlsEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mTmcBase:Lcom/autonavi/wh/navi/tmc/TmcBase;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navi/tmc/LeiTengTmc;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-direct {v0, v1, p0}, Lcom/autonavi/wh/navi/tmc/LeiTengTmc;-><init>(Lcom/autonavi/navigation/api/map/AnMap;Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mTmcBase:Lcom/autonavi/wh/navi/tmc/TmcBase;

    :cond_0
    return-void
.end method

.method public dismissFragmentDialog(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->dismissDialogFragment(I)V

    return-void
.end method

.method public dispatchMapTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mMapView:Lcom/autonavi/navigation/api/map/MapView;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/map/MapView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mToast:Lcom/autonavi/wh/navi/base/widget/NaviToast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mToast:Lcom/autonavi/wh/navi/base/widget/NaviToast;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/NaviToast;->cancel()V

    :cond_0
    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getAnMap()Lcom/autonavi/navigation/api/map/AnMap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    return-object v0
.end method

.method public getExternalTmc()Lcom/autonavi/wh/navi/tmc/TmcBase;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mTmcBase:Lcom/autonavi/wh/navi/tmc/TmcBase;

    return-object v0
.end method

.method protected getFragmentContainerId()I
    .locals 1

    const v0, 0x7f08012c

    return v0
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastNonConfigurationInstance()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getYFCompany()Lcom/autonavi/wh/navi/cooperation/YFCompany;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mYFCompany:Lcom/autonavi/wh/navi/cooperation/YFCompany;

    return-object v0
.end method

.method public isActionBackToMyLocation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->isActionBackToMyLocation:Z

    return v0
.end method

.method public isFirst()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->isFirst:Z

    return v0
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

.method public isReSetLanguage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->isReSetLanguage:Z

    return v0
.end method

.method protected isScreenViewEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigLocaleChange()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v1, "language"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/navigation/api/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->setLocale(I)V

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mIsResConfigConfirmed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->restartStackedFragments()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/base/application/T7LAApplication;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mApplication:Lcom/autonavi/wh/navi/base/application/T7LAApplication;

    const v0, 0x7f03002e

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->setContentView(I)V

    const v0, 0x7f08012e

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mSplashProgressIV:Landroid/widget/ImageView;

    const v0, 0x7f08012d

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mOpeningSplashLayout:Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mSavedInstanceState:Landroid/os/Bundle;

    new-instance v0, Lcom/autonavi/wh/navi/cooperation/YFCompany;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mApplication:Lcom/autonavi/wh/navi/base/application/T7LAApplication;

    invoke-direct {v0, p0, v1}, Lcom/autonavi/wh/navi/cooperation/YFCompany;-><init>(Landroid/content/Context;Lcom/autonavi/wh/navi/base/application/T7LAApplication;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mYFCompany:Lcom/autonavi/wh/navi/cooperation/YFCompany;

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mExitBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.autonavi.xm.extra.QUIT_APPLICATION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mVolumeControlReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.yftech.keyevent_navi"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy()V
    .locals 5

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->isInitializer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v1, "isTrafficEnable"

    iget-object v2, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/map/AnMap;->isTrafficEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/navigation/api/settings/Settings;->putBoolean(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mApplication:Lcom/autonavi/wh/navi/base/application/T7LAApplication;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "navi_volume"

    iget-object v2, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v3, "volume"

    const/16 v4, 0x3f

    invoke-virtual {v2, v3, v4}, Lcom/autonavi/navigation/api/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mApplication:Lcom/autonavi/wh/navi/base/application/T7LAApplication;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/application/T7LAApplication;->onTerminate()V

    :cond_0
    invoke-super {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->onDestroy()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mYFCompany:Lcom/autonavi/wh/navi/cooperation/YFCompany;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mYFCompany:Lcom/autonavi/wh/navi/cooperation/YFCompany;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/cooperation/YFCompany;->unRegisterReceiver()V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mYFCompany:Lcom/autonavi/wh/navi/cooperation/YFCompany;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/cooperation/YFCompany;->endToListenSpeed()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mExitBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mVolumeControlReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onDialogClick(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V
    .locals 2

    invoke-virtual {p1}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->getDialogId()I

    move-result v0

    iget v1, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mDialogId:I

    if-ne v0, v1, :cond_0

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    const-string v0, "dialog"

    const-string v1, "activity which == DialogInterface.BUTTON_NEGATIVE"

    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getRouteManager()Lcom/autonavi/navigation/api/route/RouteManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/RouteManager;->stopRouteCalculation()V

    :cond_0
    return-void
.end method

.method public onLocaleChange()V
    .locals 1

    const v0, 0x7f03002e

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->setContentView(I)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    const/high16 v3, 0x4000000

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_0

    iput-boolean v2, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mHasPendingIntent:Z

    :cond_0
    const-string v1, "com.autonavi.xm.action.BACK_TO_MY_LOCATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->isActionBackToMyLocation:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "com.autonavi.xm.action.QUIT_APPLICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.autonavi.xm.extra.QUIT_APPLICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iput-boolean v2, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mIsQuitting:Z

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->finish()V

    goto :goto_0

    :cond_4
    const-string v1, "com.autonavi.xm.extra.CALL_BY_OTHER"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.autonavi.xm.action.NAVIGATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "com.autonavi.xm.action.SHOW_ON_MAP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->startFragment(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    const-string v1, "com.autonavi.xm.action.SETTINGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/autonavi/wh/navi/setting/fragment/SystemSettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->startFragment(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->onPause()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mMapView:Lcom/autonavi/navigation/api/map/MapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mMapView:Lcom/autonavi/navigation/api/map/MapView;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/MapView;->onPause()V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mTmcBase:Lcom/autonavi/wh/navi/tmc/TmcBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mTmcBase:Lcom/autonavi/wh/navi/tmc/TmcBase;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/tmc/TmcBase;->pause()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    const/high16 v2, 0x4000000

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->onResume()V

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->isInitializer:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->adjustLocale()V

    :cond_0
    iget-boolean v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mHasPendingIntent:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getSupportFragmentManager()Lcom/autonavi/wh/support/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/autonavi/wh/support/app/FragmentManager;->popBackStack(II)V

    :cond_1
    iput-boolean v1, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mHasPendingIntent:Z

    :cond_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mMapView:Lcom/autonavi/navigation/api/map/MapView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mMapView:Lcom/autonavi/navigation/api/map/MapView;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/MapView;->onResume()V

    :cond_3
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mTmcBase:Lcom/autonavi/wh/navi/tmc/TmcBase;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mTmcBase:Lcom/autonavi/wh/navi/tmc/TmcBase;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/tmc/TmcBase;->resume()V

    :cond_4
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mMapView:Lcom/autonavi/navigation/api/map/MapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mMapView:Lcom/autonavi/navigation/api/map/MapView;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/map/MapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mIsResConfigConfirmed:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->openingSplash()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->startupResult(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setActionBackToMyLocation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->isActionBackToMyLocation:Z

    return-void
.end method

.method public setFirst(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->isFirst:Z

    return-void
.end method

.method public setReSetLanguage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->isReSetLanguage:Z

    return-void
.end method

.method public showFragmentDialog(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V
    .locals 0

    iput p2, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mDialogId:I

    invoke-virtual {p0, p1, p2}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showDialogFragment(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    return-void
.end method

.method public showToast(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(II)V

    return-void
.end method

.method public showToast(II)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mToast:Lcom/autonavi/wh/navi/base/widget/NaviToast;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navi/base/widget/NaviToast;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navi/base/widget/NaviToast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mToast:Lcom/autonavi/wh/navi/base/widget/NaviToast;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mToast:Lcom/autonavi/wh/navi/base/widget/NaviToast;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/wh/navi/base/widget/NaviToast;->show(II)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mToast:Lcom/autonavi/wh/navi/base/widget/NaviToast;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navi/base/widget/NaviToast;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navi/base/widget/NaviToast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mToast:Lcom/autonavi/wh/navi/base/widget/NaviToast;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mToast:Lcom/autonavi/wh/navi/base/widget/NaviToast;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navi/base/widget/NaviToast;->show(Ljava/lang/String;)V

    return-void
.end method
