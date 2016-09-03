.class public Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;
.super Lcom/autonavi/wh/navigation/app/NaviFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DIALOG_ID_AVOID_ROAD:I = 0x1

.field public static final EXTRA_GUIDE_INFO_TO_AVOID:Ljava/lang/String; = "extra.GUIDE_INFO_TO_AVOID"

.field public static final EXTRA_GUIDE_ROAD_INFO:Ljava/lang/String; = "extra.GUIDE_ROAD_INFO"

.field public static final EXTRA_REMAINING_DISTANCE:Ljava/lang/String; = "extra.REMAINING_DISTANCE"

.field public static final EXTRA_SELECTED_POSITION:Ljava/lang/String; = "extra.SELECTED_POSITION"


# instance fields
.field protected mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

.field private mBtnAvoid:Landroid/view/View;

.field private mBtnNext:Landroid/view/View;

.field private mBtnPre:Landroid/view/View;

.field private mDlgAvoidRoad:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

.field private mExtrIsStartGuidanceOnDestory:Z

.field private mFormatter:Lcom/autonavi/wh/navi/base/util/Formatter;

.field private mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

.field private mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

.field private mIsCanBeClick:Z

.field private mIsTrafficEnabled:Z

.field private mParentLayout:Landroid/widget/RelativeLayout;

.field private mRemainingDis:Landroid/widget/TextView;

.field private mRoute:Lcom/autonavi/navigation/api/route/model/Route;

.field private mRouteStep:Lcom/autonavi/navigation/api/route/model/RouteStep;

.field private mRouteSteps:Ljava/util/ArrayList;

.field private mSelectedPosition:I

.field private mTurningIcon:Landroid/widget/ImageView;

.field private mTxtIntersectionDis:Landroid/widget/TextView;

.field private mTxtNextRoad:Landroid/widget/TextView;

.field private mTxtPreRoad:Landroid/widget/TextView;

.field private mZoomLevel:Lcom/autonavi/navigation/api/map/model/ZoomLevel;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;-><init>()V

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mExtrIsStartGuidanceOnDestory:Z

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mIsTrafficEnabled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mIsCanBeClick:Z

    return-void
.end method

.method private backToMap()V
    .locals 3

    invoke-direct {p0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->hideParentLayout()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->startFragment(Landroid/content/Intent;)V

    return-void
.end method

.method private hideParentLayout()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mParentLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->setNoTitle(Z)V

    return-void
.end method

.method private isDestination(Z)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mBtnNext:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mBtnAvoid:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mBtnNext:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mBtnAvoid:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mBtnPre:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method private isStarting(Z)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mBtnPre:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mBtnAvoid:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mBtnPre:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mBtnAvoid:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mBtnNext:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method private declared-synchronized showCurrentTurning(I)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mRouteSteps:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mRouteSteps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    if-ltz p1, :cond_0

    if-gt p1, v3, :cond_0

    if-nez p1, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->isStarting(Z)V

    :cond_2
    if-lez p1, :cond_3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->isStarting(Z)V

    :cond_3
    if-ne p1, v3, :cond_4

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mBtnNext:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->isDestination(Z)V

    :cond_4
    if-ge p1, v3, :cond_5

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mBtnNext:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->isDestination(Z)V

    :cond_5
    iput p1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mSelectedPosition:I

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mRouteSteps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/RouteStep;

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mRouteStep:Lcom/autonavi/navigation/api/route/model/RouteStep;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mTurningIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v5, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mRouteStep:Lcom/autonavi/navigation/api/route/model/RouteStep;

    iget v5, v5, Lcom/autonavi/navigation/api/route/model/RouteStep;->turnningId:I

    invoke-static {v4, v5}, Lcom/autonavi/wh/navigation/res/ResUtils;->getTurningIconRes(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mTxtIntersectionDis:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0b0059

    invoke-virtual {p0, v5}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mFormatter:Lcom/autonavi/wh/navi/base/util/Formatter;

    iget-object v6, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mRouteStep:Lcom/autonavi/navigation/api/route/model/RouteStep;

    iget v6, v6, Lcom/autonavi/navigation/api/route/model/RouteStep;->nextDistance:I

    invoke-virtual {v5, v6}, Lcom/autonavi/wh/navi/base/util/Formatter;->getDistance(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mTxtPreRoad:Landroid/widget/TextView;

    if-lt p1, v1, :cond_8

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mRouteSteps:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/RouteStep;

    iget-object v0, v0, Lcom/autonavi/navigation/api/route/model/RouteStep;->roadName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mTxtNextRoad:Landroid/widget/TextView;

    if-ge p1, v3, :cond_9

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mRouteSteps:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/RouteStep;

    iget-object v0, v0, Lcom/autonavi/navigation/api/route/model/RouteStep;->roadName:Ljava/lang/String;

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mRemainingDis:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0b005a

    invoke-virtual {p0, v5}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mFormatter:Lcom/autonavi/wh/navi/base/util/Formatter;

    iget-object v6, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mRouteStep:Lcom/autonavi/navigation/api/route/model/RouteStep;

    iget v6, v6, Lcom/autonavi/navigation/api/route/model/RouteStep;->remainingDistance:I

    invoke-virtual {v5, v6}, Lcom/autonavi/wh/navi/base/util/Formatter;->getDistance(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mRouteStep:Lcom/autonavi/navigation/api/route/model/RouteStep;

    iget v0, v0, Lcom/autonavi/navigation/api/route/model/RouteStep;->nextDistance:I

    if-eqz v0, :cond_a

    if-eq p1, v3, :cond_a

    move v0, v1

    :goto_3
    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mBtnAvoid:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mBtnAvoid:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mRouteStep:Lcom/autonavi/navigation/api/route/model/RouteStep;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/RouteStep;->containsRoutePoint()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mRouteStep:Lcom/autonavi/navigation/api/route/model/RouteStep;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/RouteStep;->isPassed()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mRouteStep:Lcom/autonavi/navigation/api/route/model/RouteStep;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/RouteStep;->isMyLocation()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mBtnAvoid:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mBtnAvoid:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    :cond_7
    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapType;->TURNING:Lcom/autonavi/navigation/api/map/model/MapType;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mRouteStep:Lcom/autonavi/navigation/api/route/model/RouteStep;

    iget v4, v4, Lcom/autonavi/navigation/api/route/model/RouteStep;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/navigation/api/map/AnMap;->setMapType(Lcom/autonavi/navigation/api/map/model/MapType;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mIsCanBeClick:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_8
    :try_start_2
    const-string v0, ""

    goto/16 :goto_1

    :cond_9
    const-string v0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :cond_a
    move v0, v2

    goto :goto_3
.end method

.method private showDlgAvoidRoad()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mDlgAvoidRoad:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

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

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mDlgAvoidRoad:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mDlgAvoidRoad:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->showDialog(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

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

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0800a3

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->showDlgAvoidRoad()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f0800a1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mSelectedPosition:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mSelectedPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->showCurrentTurning(I)V

    goto :goto_0

    :cond_2
    const v1, 0x7f0800a2

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mIsCanBeClick:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mIsCanBeClick:Z

    iget v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mSelectedPosition:I

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mRouteSteps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mSelectedPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->showCurrentTurning(I)V

    goto :goto_0

    :cond_3
    const v1, 0x7f080017

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mExtrIsStartGuidanceOnDestory:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/guide/GuideManager;->startGuide(Lcom/autonavi/navigation/api/route/model/Route;)Z

    invoke-direct {p0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->hideParentLayout()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->startFragment(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->backToMap()V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onCreateView(Landroid/os/Bundle;)V

    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->setContentView(I)V

    const v0, 0x7f0b0093

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->setTitle(I)V

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->setContentBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f08009f

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getAnMap()Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getGuideManager()Lcom/autonavi/navigation/api/guide/GuideManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mGuideManager:Lcom/autonavi/navigation/api/guide/GuideManager;

    new-instance v0, Lcom/autonavi/wh/navi/base/util/Formatter;

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-direct {v0, v1}, Lcom/autonavi/wh/navi/base/util/Formatter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mFormatter:Lcom/autonavi/wh/navi/base/util/Formatter;

    const v0, 0x7f0800a1

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mBtnPre:Landroid/view/View;

    const v0, 0x7f0800a2

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mBtnNext:Landroid/view/View;

    const v0, 0x7f0800a3

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mBtnAvoid:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mBtnPre:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mBtnNext:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mBtnAvoid:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800a5

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mTurningIcon:Landroid/widget/ImageView;

    const v0, 0x7f0800a6

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mTxtIntersectionDis:Landroid/widget/TextView;

    const v0, 0x7f0800a7

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mRemainingDis:Landroid/widget/TextView;

    const v0, 0x7f0800a9

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mTxtPreRoad:Landroid/widget/TextView;

    const v0, 0x7f0800aa

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mTxtNextRoad:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "extra.SELECTED_POSITION"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "extra_is_traffic_enabled"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mIsTrafficEnabled:Z

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "extra_start_guidance_on_destory"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mExtrIsStartGuidanceOnDestory:Z

    const-string v0, "extra.GUIDE_ROAD_INFO"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mRouteSteps:Ljava/util/ArrayList;

    const-string v0, "extra.SELECTED_ROUTE"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Route;

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mRoute:Lcom/autonavi/navigation/api/route/model/Route;

    const-string v0, "extra.REMAINING_DISTANCE"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    :cond_0
    iget v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mSelectedPosition:I

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mRouteSteps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mSelectedPosition:I

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->showCurrentTurning(I)V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onDestroy()V

    return-void
.end method

.method public onDialogClick(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p1}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->getDialogId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-ne p2, v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "extra.GUIDE_INFO_TO_AVOID"

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->mRouteStep:Lcom/autonavi/navigation/api/route/model/RouteStep;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/menu/fragment/DetailOfTurning;->popBack()V

    :cond_0
    return-void
.end method
