.class public Lcom/autonavi/wh/widget/StrokeTextView;
.super Landroid/widget/TextView;


# instance fields
.field private mBorderColor:Landroid/content/res/ColorStateList;

.field private mBorderWidth:I

.field private mIgnoreInvalidate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/autonavi/wh/widget/StrokeTextView;->mIgnoreInvalidate:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/autonavi/wh/widget/StrokeTextView;->onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/autonavi/wh/widget/StrokeTextView;->mIgnoreInvalidate:Z

    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/wh/widget/StrokeTextView;->onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/wh/widget/StrokeTextView;->mIgnoreInvalidate:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/wh/widget/StrokeTextView;->onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v1, 0x0

    sget-object v0, Lcom/autonavi/wh/framework/R$styleable;->StrokeTextView:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/autonavi/wh/widget/StrokeTextView;->setBorderColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/autonavi/wh/widget/StrokeTextView;->setBorderWidth(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getBorderColors()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/widget/StrokeTextView;->mBorderColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBorderWidth()I
    .locals 1

    iget v0, p0, Lcom/autonavi/wh/widget/StrokeTextView;->mBorderWidth:I

    return v0
.end method

.method public invalidate()V
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/wh/widget/StrokeTextView;->mIgnoreInvalidate:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/autonavi/wh/widget/StrokeTextView;->mBorderWidth:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/widget/StrokeTextView;->mBorderColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/wh/widget/StrokeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/wh/widget/StrokeTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-boolean v4, p0, Lcom/autonavi/wh/widget/StrokeTextView;->mIgnoreInvalidate:Z

    iget-object v2, p0, Lcom/autonavi/wh/widget/StrokeTextView;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v2}, Lcom/autonavi/wh/widget/StrokeTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v2, p0, Lcom/autonavi/wh/widget/StrokeTextView;->mBorderWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    iput-boolean v3, p0, Lcom/autonavi/wh/widget/StrokeTextView;->mIgnoreInvalidate:Z

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iput-boolean v4, p0, Lcom/autonavi/wh/widget/StrokeTextView;->mIgnoreInvalidate:Z

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/widget/StrokeTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    iput-boolean v3, p0, Lcom/autonavi/wh/widget/StrokeTextView;->mIgnoreInvalidate:Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/widget/StrokeTextView;->mBorderColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setBorderColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/autonavi/wh/widget/StrokeTextView;->mBorderColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/wh/widget/StrokeTextView;->mBorderWidth:I

    return-void
.end method
