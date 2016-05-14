.class public Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;
.super Lcom/autonavi/xm/navigation/app/NaviFragment;

# interfaces
.implements Lcom/autonavi/navigation/api/location/LocationManager$GpsStatusCallback;
.implements Lcom/autonavi/navigation/api/location/LocationManager$GpsTimeCallback;
.implements Lcom/autonavi/navigation/api/location/LocationManager$LocationCallback;


# instance fields
.field private final mActionHandleLocation:Ljava/lang/Runnable;

.field private final mActionHandleStatus:Ljava/lang/Runnable;

.field private final mActionRefreshGpsStatus:Ljava/lang/Runnable;

.field private mCellNum:I

.field private mCurLocation:Landroid/location/Location;

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mGpsSatellites:Ljava/util/List;

.field private mLocationManager:Lcom/autonavi/navigation/api/location/LocationManager;

.field private mResources:Landroid/content/res/Resources;

.field private mSatelliteCompass:Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;

.field private final mSlots:Ljava/util/ArrayList;

.field private final mSlotsSerialNumbers:Ljava/util/ArrayList;

.field private mStatus:I

.field private mTimeFormat:Ljava/text/SimpleDateFormat;

.field private mTvAzimuth:Landroid/widget/TextView;

.field private mTvCellNumber:Landroid/widget/TextView;

.field private mTvDate:Landroid/widget/TextView;

.field private mTvGpsStatus:Landroid/widget/TextView;

.field private mTvSpeed:Landroid/widget/TextView;

.field private mTvTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/app/NaviFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mSlots:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mSlotsSerialNumbers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mStatus:I

    new-instance v0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment$1;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment$1;-><init>(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mActionHandleStatus:Ljava/lang/Runnable;

    new-instance v0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment$2;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment$2;-><init>(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mActionHandleLocation:Ljava/lang/Runnable;

    new-instance v0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment$3;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment$3;-><init>(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mActionRefreshGpsStatus:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mStatus:I

    return v0
.end method

.method static synthetic access$100(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mTvGpsStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)Ljava/text/SimpleDateFormat;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)Ljava/text/SimpleDateFormat;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mTimeFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mCellNum:I

    return v0
.end method

.method static synthetic access$1202(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mCellNum:I

    return p1
.end method

.method static synthetic access$1300(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mGpsSatellites:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mTvDate:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mTvTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mTvSpeed:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mTvAzimuth:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mTvCellNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mSatelliteCompass:Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;

    return-object v0
.end method

.method static synthetic access$800(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->setSlots(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mCurLocation:Landroid/location/Location;

    return-object v0
.end method

.method private getFormatText(I)Ljava/lang/CharSequence;
    .locals 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getPreferTimeZone(Landroid/content/Context;)Ljava/util/TimeZone;
    .locals 1

    const-string v0, "GMT+08:00"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
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

.method private handleGpsStatusChanged(Ljava/util/List;I)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mGpsSatellites:Ljava/util/List;

    iget v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mCellNum:I

    iget v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mCellNum:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cell_number"

    iget v2, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mCellNum:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mTvTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mActionRefreshGpsStatus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->getSatelliteNumberInUsed(Ljava/util/List;Z)I

    move-result v0

    goto :goto_1
.end method

.method private handleLocationChanged(Landroid/location/Location;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mCurLocation:Landroid/location/Location;

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mTvTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mActionHandleLocation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private handleStatusChanged(I)V
    .locals 2

    iput p1, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mStatus:I

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mTvTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mActionHandleStatus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setSlots(Ljava/util/List;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navi/setting/widget/SignalSlot;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/setting/widget/SignalSlot;->setStrength(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    move v2, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navi/setting/widget/SignalSlot;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GpsSatellite;

    invoke-virtual {v1}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/setting/widget/SignalSlot;->setStrength(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navi/setting/widget/SignalSlot;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/setting/widget/SignalSlot;->getSlotSnr()Landroid/widget/TextView;

    move-result-object v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navi/setting/widget/SignalSlot;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/setting/widget/SignalSlot;->getSlotSnr()Landroid/widget/TextView;

    move-result-object v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->getFormatText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mSlotsSerialNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GpsSatellite;

    invoke-virtual {v1}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->getFormatText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0d0024

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_2

    :cond_2
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

.method public getAzimuth(D)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v1, 0x0

    const-string v0, "0.0\u00b0"

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    new-instance v1, Ljava/text/FieldPosition;

    invoke-direct {v1, v3}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v0, p1, p2, v2, v1}, Ljava/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getSpeed(D)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v1, 0x0

    const-string v0, ""

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    new-instance v1, Ljava/text/FieldPosition;

    invoke-direct {v1, v3}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v0, p1, p2, v2, v1}, Ljava/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method protected isScreenViewEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 5

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/autonavi/xm/navigation/app/NaviFragment;->onCreateView(Landroid/os/Bundle;)V

    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->setContentView(I)V

    const v0, 0x7f0b00ed

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->setTitle(I)V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mResources:Landroid/content/res/Resources;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const v1, 0x7f0b004d

    invoke-virtual {p0, v1}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/xm/navigation/NaviHelper;->getPreferTimeZone(Landroid/content/Context;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const v1, 0x7f0b004e

    invoke-virtual {p0, v1}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mTimeFormat:Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mTimeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/xm/navigation/NaviHelper;->getPreferTimeZone(Landroid/content/Context;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const v0, 0x7f0800d5

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mSatelliteCompass:Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;

    const v0, 0x7f0800d7

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mTvGpsStatus:Landroid/widget/TextView;

    const v0, 0x7f0800d9

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mTvDate:Landroid/widget/TextView;

    const v0, 0x7f0800db

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mTvTime:Landroid/widget/TextView;

    const v0, 0x7f0800df

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mTvAzimuth:Landroid/widget/TextView;

    const v0, 0x7f0800dd

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mTvSpeed:Landroid/widget/TextView;

    const v0, 0x7f0800e1

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mTvCellNumber:Landroid/widget/TextView;

    const v0, 0x7f0800e4

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move v2, v3

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_0

    iget-object v4, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/xm/navi/setting/widget/SignalSlot;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    const v0, 0x7f0800e2

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_1

    iget-object v2, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mSlotsSerialNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getLocationManager()Lcom/autonavi/navigation/api/location/LocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mLocationManager:Lcom/autonavi/navigation/api/location/LocationManager;

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mLocationManager:Lcom/autonavi/navigation/api/location/LocationManager;

    invoke-virtual {v0, p0}, Lcom/autonavi/navigation/api/location/LocationManager;->requestGpsStatusUpdates(Lcom/autonavi/navigation/api/location/LocationManager$GpsStatusCallback;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mLocationManager:Lcom/autonavi/navigation/api/location/LocationManager;

    invoke-virtual {v0, p0}, Lcom/autonavi/navigation/api/location/LocationManager;->requestGpsTimeUpdates(Lcom/autonavi/navigation/api/location/LocationManager$GpsTimeCallback;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mLocationManager:Lcom/autonavi/navigation/api/location/LocationManager;

    invoke-virtual {v0, p0}, Lcom/autonavi/navigation/api/location/LocationManager;->requestLocationUpdates(Lcom/autonavi/navigation/api/location/LocationManager$LocationCallback;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mLocationManager:Lcom/autonavi/navigation/api/location/LocationManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/location/LocationManager;->getLocationStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mTvGpsStatus:Landroid/widget/TextView;

    const v1, 0x7f0b00ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mLocationManager:Lcom/autonavi/navigation/api/location/LocationManager;

    invoke-virtual {v0, p0}, Lcom/autonavi/navigation/api/location/LocationManager;->removeLocationUpdates(Lcom/autonavi/navigation/api/location/LocationManager$LocationCallback;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mLocationManager:Lcom/autonavi/navigation/api/location/LocationManager;

    invoke-virtual {v0, p0}, Lcom/autonavi/navigation/api/location/LocationManager;->removeGpsStatusUpdates(Lcom/autonavi/navigation/api/location/LocationManager$GpsStatusCallback;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mLocationManager:Lcom/autonavi/navigation/api/location/LocationManager;

    invoke-virtual {v0, p0}, Lcom/autonavi/navigation/api/location/LocationManager;->removeGpsTimeUpdates(Lcom/autonavi/navigation/api/location/LocationManager$GpsTimeCallback;)V

    invoke-super {p0}, Lcom/autonavi/xm/navigation/app/NaviFragment;->onDestroy()V

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
    invoke-direct {p0, v3, v1}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->handleGpsStatusChanged(Ljava/util/List;I)V

    goto :goto_0
.end method

.method public onGpsTimeChanged(J)V
    .locals 0

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->handleLocationChanged(Landroid/location/Location;)V

    return-void
.end method

.method public onLocationStatusChanged(I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->handleStatusChanged(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mTvTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mActionHandleStatus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
