.class public Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;
.super Landroid/widget/ImageView;


# instance fields
.field private mCenterCompassX:I

.field private mCenterCompassY:I

.field private final mDrawableCompass:Landroid/graphics/drawable/Drawable;

.field private mDrawableSatellite:Landroid/graphics/drawable/Drawable;

.field private final mPadding:Landroid/graphics/Rect;

.field private final mPaint:Landroid/graphics/Paint;

.field private mRadiusCompass:I

.field private final mRadiusSatellite:I

.field private mSatellites:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mPadding:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mDrawableCompass:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mDrawableSatellite:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mDrawableSatellite:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mRadiusSatellite:I

    return-void
.end method

.method private drawSatellite(Landroid/graphics/Canvas;Landroid/location/GpsSatellite;)V
    .locals 9

    const-wide v4, 0x3f91df3300de4c51L    # 0.017453

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mDrawableSatellite:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f020514

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mDrawableSatellite:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v4

    invoke-virtual {p2}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v2

    const/high16 v3, 0x42b40000    # 90.0f

    sub-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mCenterCompassX:I

    iget v5, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mRadiusCompass:I

    int-to-double v5, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-int v5, v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mCenterCompassY:I

    iget v6, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mRadiusCompass:I

    int-to-double v6, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int v1, v5, v0

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mDrawableSatellite:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mRadiusSatellite:I

    sub-int v2, v4, v2

    iget v3, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mRadiusSatellite:I

    sub-int v3, v1, v3

    iget v5, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mRadiusSatellite:I

    add-int/2addr v5, v4

    iget v6, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mRadiusSatellite:I

    add-int/2addr v6, v1

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mDrawableSatellite:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mRadiusSatellite:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, -0x1000000

    :goto_2
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->getFormatText(I)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v4

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_2
    const v0, 0x7f020513

    goto/16 :goto_1

    :cond_3
    const/4 v0, -0x1

    goto :goto_2
.end method

.method private getFormatText(I)Ljava/lang/String;
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


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mSatellites:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mDrawableCompass:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mDrawableCompass:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, v1, v0

    iget-object v1, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mRadiusCompass:I

    iget v0, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mRadiusCompass:I

    iget-object v1, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mCenterCompassX:I

    iget v0, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mRadiusCompass:I

    iget-object v1, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mCenterCompassY:I

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mSatellites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    invoke-direct {p0, p1, v0}, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->drawSatellite(Landroid/graphics/Canvas;Landroid/location/GpsSatellite;)V

    goto :goto_0
.end method

.method public setSatellites(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->mSatellites:Ljava/util/List;

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->postInvalidate()V

    return-void
.end method
