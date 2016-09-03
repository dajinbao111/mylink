.class public Lcom/autonavi/wh/navi/base/util/Formatter;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDfAzimuth:Ljava/text/DecimalFormat;

.field private mDfDistance:Ljava/text/DecimalFormat;

.field private mDfExpectedTime:Ljava/text/DecimalFormat;

.field private mDfSpeed:Ljava/text/DecimalFormat;

.field private final mFp:Ljava/text/FieldPosition;

.field private final mSb:Ljava/lang/StringBuffer;

.field private mSeparatorExpectedTime:Ljava/lang/String;

.field private mUnitHour:Ljava/lang/String;

.field private mUnitKilometer:Ljava/lang/String;

.field private mUnitMeter:Ljava/lang/String;

.field private mUnitMinute:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mSb:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/text/FieldPosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(I)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mFp:Ljava/text/FieldPosition;

    iput-object p1, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static formatBriefAddress(Landroid/content/Context;Lcom/autonavi/navigation/api/poi/model/Poi;)Ljava/lang/String;
    .locals 6

    const v5, 0x7f0b004f

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getAdminCode()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getDataManager()Lcom/autonavi/navigation/api/data/DataManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/data/DataManager;->getAdminAreaDetail(Lcom/autonavi/navigation/api/map/model/LatLng;)Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->townName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->townName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, v0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->provinceName:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v0, v0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->cityName:Ljava/lang/String;

    aput-object v0, v1, v4

    invoke-virtual {p0, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getDataManager()Lcom/autonavi/navigation/api/data/DataManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getAdminCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/data/DataManager;->getAdminAreaDetail(I)Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, v0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->cityName:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v0, v0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->townName:Ljava/lang/String;

    aput-object v0, v1, v4

    invoke-virtual {p0, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static formatForwardTime(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    const/16 v2, 0x81

    invoke-static {p0, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAdminCode(Landroid/content/Context;Lcom/autonavi/navigation/api/poi/model/Poi;)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getAdminCode()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getDataManager()Lcom/autonavi/navigation/api/data/DataManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/data/DataManager;->getAdminCode(Lcom/autonavi/navigation/api/map/model/LatLng;)I

    move-result v0

    :cond_0
    return v0
.end method

.method private getDistance(IZ)Ljava/lang/String;
    .locals 6

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mUnitMeter:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0102

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mUnitMeter:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mUnitMeter:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mSb:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mDfDistance:Ljava/text/DecimalFormat;

    if-nez v0, :cond_3

    new-instance v0, Ljava/text/DecimalFormat;

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0053

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mDfDistance:Ljava/text/DecimalFormat;

    :cond_3
    iget-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mUnitKilometer:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0103

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mUnitKilometer:Ljava/lang/String;

    :cond_4
    int-to-float v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mDfDistance:Ljava/text/DecimalFormat;

    iget-object v4, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mSb:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mFp:Ljava/text/FieldPosition;

    invoke-virtual {v3, v0, v1, v4, v5}, Ljava/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_5

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mUnitKilometer:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public getAzimuth(D)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mSb:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mDfAzimuth:Ljava/text/DecimalFormat;

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/DecimalFormat;

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0052

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mDfAzimuth:Ljava/text/DecimalFormat;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mDfAzimuth:Ljava/text/DecimalFormat;

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mSb:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mFp:Ljava/text/FieldPosition;

    invoke-virtual {v0, p1, p2, v1, v2}, Ljava/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistance(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/wh/navi/base/util/Formatter;->getDistance(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistanceWithoutUnit(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/autonavi/wh/navi/base/util/Formatter;->getDistance(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpectedTimeLong(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mUnitMinute:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0104

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mUnitMinute:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mUnitHour:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0105

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mUnitHour:Ljava/lang/String;

    :cond_1
    const/16 v0, 0x3c

    if-ge p1, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mUnitMinute:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v1, p1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mUnitHour:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit8 v1, p1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mUnitMinute:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getExpectedTimeShort(I)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mSb:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mDfExpectedTime:Ljava/text/DecimalFormat;

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/DecimalFormat;

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0050

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mDfExpectedTime:Ljava/text/DecimalFormat;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mSeparatorExpectedTime:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0101

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mSeparatorExpectedTime:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mDfExpectedTime:Ljava/text/DecimalFormat;

    div-int/lit8 v1, p1, 0x3c

    int-to-long v1, v1

    iget-object v3, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mSb:Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mFp:Ljava/text/FieldPosition;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/text/DecimalFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mSb:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mSeparatorExpectedTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mDfExpectedTime:Ljava/text/DecimalFormat;

    rem-int/lit8 v2, p1, 0x3c

    int-to-long v2, v2

    iget-object v4, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mSb:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mFp:Ljava/text/FieldPosition;

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/text/DecimalFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortDistance(I)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mUnitMeter:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0102

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mUnitMeter:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mUnitMeter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mUnitKilometer:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0103

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mUnitKilometer:Ljava/lang/String;

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v1, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->rint(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mUnitKilometer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSpeed(D)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mSb:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mDfSpeed:Ljava/text/DecimalFormat;

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/DecimalFormat;

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0051

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mDfSpeed:Ljava/text/DecimalFormat;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mDfSpeed:Ljava/text/DecimalFormat;

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mSb:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/autonavi/wh/navi/base/util/Formatter;->mFp:Ljava/text/FieldPosition;

    invoke-virtual {v0, p1, p2, v1, v2}, Ljava/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
