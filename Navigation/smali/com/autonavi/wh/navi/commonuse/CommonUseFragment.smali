.class public Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;
.super Lcom/autonavi/wh/navigation/app/NaviFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DIALOG_ID_COMPUTING_ROUTE:I = 0x5

.field private static final DIALOG_ID_RESET_ROUTE_POINT_COMPANY:I = 0x4

.field private static final DIALOG_ID_RESET_ROUTE_POINT_HOME:I = 0x3

.field private static final DIALOG_ID_SET_COMPANY:I = 0x2

.field private static final DIALOG_ID_SET_HOME:I = 0x1

.field public static final REQUEST_SET_COMPANY:I = 0x7

.field public static final REQUEST_SET_HOME:I = 0x6


# instance fields
.field private mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

.field private mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

.field private mDialogComputing:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

.field private mDlgResetCompanyRoutePoint:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

.field private mDlgResetRoutePoint:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

.field private mDlgSetCompany:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

.field private mDlgSetHome:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

.field private mFavoriteManager:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

.field private mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

.field private mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

.field private mIsReturn:Z

.field private final mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

.field private mOnTrafficErrorListener:Lcom/autonavi/navigation/api/map/AnMap$OnTrafficStatusListener;

.field private mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

.field private final mSettings:Lcom/autonavi/navigation/api/settings/Settings;

.field private mSoundSwitch:Landroid/view/View;

.field private mTmcSwitch:Landroid/view/View;

.field private mTxtSoundSwitch:Landroid/widget/TextView;

.field private mTxtTmcSwitch:Landroid/widget/TextView;

.field mVolumeControlReceiver:Landroid/content/BroadcastReceiver;

.field protected routeCalculationResult:Lcom/autonavi/navigation/api/route/model/CalculationResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;-><init>()V

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getSettings()Lcom/autonavi/navigation/api/settings/Settings;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    new-instance v0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$1;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$1;-><init>(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mVolumeControlReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$4;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$4;-><init>(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mTxtSoundSwitch:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->isOnTop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Lcom/autonavi/wh/navigation/app/NaviDialogFragment;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mDialogComputing:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->dismissDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mIsReturn:Z

    return v0
.end method

.method static synthetic access$600(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Lcom/autonavi/navigation/api/route/model/CalculationInput;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    return-object v0
.end method

.method static synthetic access$602(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;Lcom/autonavi/navigation/api/route/model/CalculationInput;)Lcom/autonavi/navigation/api/route/model/CalculationInput;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mCalculationInput:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    return-object p1
.end method

.method static synthetic access$700(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Lcom/autonavi/navigation/api/route/RouteManager;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)Lcom/autonavi/navigation/api/map/AnMap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;Lcom/autonavi/navigation/api/route/model/RoutePoint;)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->assertRoutePoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    return-object v0
.end method

.method private addView()V
    .locals 3

    const v2, 0x7f08008d

    const v0, 0x7f0b0196

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->setTitle(I)V

    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080084

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080085

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080086

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080087

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080088

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080089

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mTmcSwitch:Landroid/view/View;

    const v0, 0x7f08008a

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mTxtTmcSwitch:Landroid/widget/TextView;

    const v0, 0x7f08008c

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mTxtSoundSwitch:Landroid/widget/TextView;

    const v0, 0x7f08008b

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mSoundSwitch:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mTmcSwitch:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mSoundSwitch:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->setTitleRightContent(I)V

    invoke-virtual {p0, v2}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private assertRoutePoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x5

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

    invoke-virtual {p0, v3}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->dismissDialog(I)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v2, 0x7f0b0070

    invoke-virtual {v1, v2}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    move-object p1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_3

    invoke-virtual {p0, v3}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->dismissDialog(I)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v2, 0x7f0b0088

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v1

    const/4 v2, -0x3

    if-ne v1, v2, :cond_4

    invoke-virtual {p0, v3}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->dismissDialog(I)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v2, 0x7f0b0072

    invoke-virtual {v1, v2}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    move-object p1, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v1

    const/4 v2, -0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->dismissDialog(I)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v2, 0x7f0b0071

    invoke-virtual {p0, v2}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private goHomeCompany(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mFavoriteManager:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    sget-object v1, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->HOME:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->getAll(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->isGuiding()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->showDlgResetRoutePoint(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->showComputingDialog()V

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->setFinalDest(Lcom/autonavi/navigation/api/poi/model/Poi;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->showDlgSetHomeCompany(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mFavoriteManager:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    sget-object v1, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->COMPANY:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->getAll(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/guide/GuideManager;->isGuiding()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->showDlgResetRoutePoint(I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->showComputingDialog()V

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->setFinalDest(Lcom/autonavi/navigation/api/poi/model/Poi;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->showDlgSetHomeCompany(I)V

    goto :goto_0
.end method

.method private setFinalDest(Lcom/autonavi/navigation/api/poi/model/Poi;)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$5;-><init>(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;Lcom/autonavi/navigation/api/poi/model/Poi;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setMuteAndTmcBackground()V
    .locals 5

    const v4, 0x7f0b019f

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v1, "mute"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/navigation/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mTxtSoundSwitch:Landroid/widget/TextView;

    const v1, 0x7f020181

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mTxtSoundSwitch:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getExternalTmc()Lcom/autonavi/wh/navi/tmc/TmcBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/tmc/TmcBase;->getTmcStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mTxtTmcSwitch:Landroid/widget/TextView;

    const v1, 0x7f02018b

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mTxtTmcSwitch:Landroid/widget/TextView;

    const v1, 0x7f0b019b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mTxtSoundSwitch:Landroid/widget/TextView;

    const v1, 0x7f020184

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mTxtSoundSwitch:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mTxtTmcSwitch:Landroid/widget/TextView;

    const v1, 0x7f020187

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mTxtTmcSwitch:Landroid/widget/TextView;

    const v1, 0x7f0b019c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private showComputingDialog()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mDialogComputing:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navigation/app/ProgressDialogFragment$Builder;

    invoke-direct {v0}, Lcom/autonavi/wh/navigation/app/ProgressDialogFragment$Builder;-><init>()V

    const v1, 0x7f0b0073

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/app/ProgressDialogFragment$Builder;->setMessage(I)Lcom/autonavi/wh/navigation/app/AlertDialogFragment$Builder;

    move-result-object v0

    const v1, 0x7f0b0076

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/app/AlertDialogFragment$Builder;->setNegativeButton(I)Lcom/autonavi/wh/navigation/app/AlertDialogFragment$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/app/AlertDialogFragment$Builder;->setCancelable(Z)Lcom/autonavi/wh/navigation/app/AlertDialogFragment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/app/AlertDialogFragment$Builder;->create()Lcom/autonavi/wh/navigation/app/AlertDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mDialogComputing:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mDialogComputing:Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->showDialog(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    return-void
.end method

.method private showDlgResetRoutePoint(I)V
    .locals 6

    const v5, 0x7f0b0076

    const v4, 0x7f0b0075

    const v3, 0x7f0203a6

    const v2, 0x7f020385

    const/4 v1, 0x0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mDlgResetRoutePoint:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    invoke-direct {v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;-><init>()V

    invoke-virtual {v0, v5, v2}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setNegativeButton(II)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setPositiveButton(II)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setCancelable(Z)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->create()Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mDlgResetRoutePoint:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mDlgResetRoutePoint:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->showDialog(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mDlgResetCompanyRoutePoint:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    if-nez v0, :cond_3

    new-instance v0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    invoke-direct {v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;-><init>()V

    invoke-virtual {v0, v5, v2}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setNegativeButton(II)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setPositiveButton(II)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setCancelable(Z)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->create()Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mDlgResetCompanyRoutePoint:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    :cond_3
    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mDlgResetCompanyRoutePoint:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->showDialog(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    goto :goto_0
.end method

.method private showDlgSetHomeCompany(I)V
    .locals 4

    const v2, 0x7f0b0076

    const v1, 0x7f020385

    const/4 v3, 0x0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mDlgSetHome:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    invoke-direct {v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setNegativeButton(II)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b01a0

    const v2, 0x7f02039f

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setPositiveButton(II)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setCancelable(Z)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->create()Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mDlgSetHome:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mDlgSetHome:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->showDialog(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mDlgSetCompany:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    if-nez v0, :cond_3

    new-instance v0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    invoke-direct {v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setNegativeButton(II)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b01a1

    const v2, 0x7f02038c

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setPositiveButton(II)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setCancelable(Z)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->create()Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mDlgSetCompany:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    :cond_3
    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mDlgSetCompany:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->showDialog(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    goto :goto_0
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

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const v4, 0x7f0b00d4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    const-string v0, "com.autonavi.xm.extra.POI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/poi/model/Poi;

    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mFavoriteManager:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    new-instance v2, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    sget-object v3, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->HOME:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    invoke-direct {v2, v3, v0}, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;-><init>(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;Lcom/autonavi/navigation/api/poi/model/Poi;)V

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->save(Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;)Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b00d3

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x7

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mFavoriteManager:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    new-instance v2, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    sget-object v3, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->COMPANY:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    invoke-direct {v2, v3, v0}, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;-><init>(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;Lcom/autonavi/navigation/api/poi/model/Poi;)V

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->save(Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;)Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;
    :try_end_0
    .catch Lcom/autonavi/navigation/api/AnException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnException;->printStackTrace()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0, v4}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0, v4}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->goHomeCompany(I)V

    iput-boolean v2, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mIsReturn:Z

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->goHomeCompany(I)V

    iput-boolean v2, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mIsReturn:Z

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-static {v0}, Lcom/autonavi/wh/navi/base/util/CommonUtil;->getMapCursorPoi(Lcom/autonavi/navigation/api/map/AnMap;)Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.autonavi.xm.extra.MAP_CENTER_INFO"

    iget-object v2, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/map/AnMap;->getMapCursorInfo()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "com.autonavi.xm.extra.FAV_EDITOR_TYPE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->startFragment(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b00af

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_favorites_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->startFragment(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_favorites_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->startFragment(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getExternalTmc()Lcom/autonavi/wh/navi/tmc/TmcBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/tmc/TmcBase;->getTmcStatus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mTxtTmcSwitch:Landroid/widget/TextView;

    const v1, 0x7f02018b

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mTxtTmcSwitch:Landroid/widget/TextView;

    const v1, 0x7f0b019b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getExternalTmc()Lcom/autonavi/wh/navi/tmc/TmcBase;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/autonavi/wh/navi/tmc/TmcBase;->switchTmc(Z)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mTxtTmcSwitch:Landroid/widget/TextView;

    const v1, 0x7f020187

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mTxtTmcSwitch:Landroid/widget/TextView;

    const v1, 0x7f0b019c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getExternalTmc()Lcom/autonavi/wh/navi/tmc/TmcBase;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/wh/navi/tmc/TmcBase;->switchTmc(Z)V

    goto/16 :goto_0

    :sswitch_6
    new-instance v0, Lcom/autonavi/wh/navi/base/widget/SoundAlertDialog$Builder;

    invoke-direct {v0}, Lcom/autonavi/wh/navi/base/widget/SoundAlertDialog$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/SoundAlertDialog$Builder;->create()Lcom/autonavi/wh/navi/base/widget/SoundAlertDialog;

    move-result-object v0

    new-instance v1, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$3;

    invoke-direct {v1, p0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$3;-><init>(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/SoundAlertDialog;->setOnDismissCallback(Lcom/autonavi/wh/navi/base/widget/SoundAlertDialog$OnDismissCallback;)V

    invoke-virtual {p0, v0, v3}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->showDialog(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    goto/16 :goto_0

    :sswitch_7
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/search/Car4SSearch;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->startFragment(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_8
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.yf.setup"

    const-string v2, "com.yf.setup.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "index"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08001b -> :sswitch_0
        0x7f080084 -> :sswitch_1
        0x7f080085 -> :sswitch_2
        0x7f080086 -> :sswitch_3
        0x7f080087 -> :sswitch_4
        0x7f080088 -> :sswitch_7
        0x7f080089 -> :sswitch_5
        0x7f08008b -> :sswitch_6
        0x7f08008d -> :sswitch_8
    .end sparse-switch
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onCreateView(Landroid/os/Bundle;)V

    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->setContentView(I)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iput-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getAnMap()Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getRouteManager()Lcom/autonavi/navigation/api/route/RouteManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getGuideManager()Lcom/autonavi/navigation/api/guide/GuideManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    invoke-direct {p0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->addView()V

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getFavoriteManager()Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mFavoriteManager:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    invoke-direct {p0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->setMuteAndTmcBackground()V

    new-instance v0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$2;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment$2;-><init>(Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mOnTrafficErrorListener:Lcom/autonavi/navigation/api/map/AnMap$OnTrafficStatusListener;

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    iget-object v1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/RouteManager;->addOnCalculationResultListener(Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mVolumeControlReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.yftech.keyevent_navi"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onDestroy()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    iget-object v1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mOnCalculationResultListener:Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/route/RouteManager;->removeOnCalculationResultListener(Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mVolumeControlReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onDialogClick(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    invoke-virtual {p1}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->dismiss()V

    invoke-virtual {p1}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->getDialogId()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    if-ne p2, v2, :cond_0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->showComputingDialog()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mFavoriteManager:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    sget-object v1, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->HOME:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->getAll(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->setFinalDest(Lcom/autonavi/navigation/api/poi/model/Poi;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    if-ne p2, v2, :cond_0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->showComputingDialog()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mFavoriteManager:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    sget-object v1, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->COMPANY:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->getAll(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->setFinalDest(Lcom/autonavi/navigation/api/poi/model/Poi;)V

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_3

    if-ne p2, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/search/FindDes;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_is_request_poi"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->startFragmentForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    if-ne p2, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/search/FindDes;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_is_request_poi"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->startFragmentForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->isOnTop()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/commonuse/CommonUseFragment;->mRouteManager:Lcom/autonavi/navigation/api/route/RouteManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/RouteManager;->stopRouteCalculation()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onResume()V

    return-void
.end method
