.class public Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;
.super Landroid/view/View;


# static fields
.field private static final DELAY_MILLIS_CONFIRM_WRITING:I = 0x320


# instance fields
.field private mBackgroundPadding:Landroid/graphics/Rect;

.field private mDrawPaint:Landroid/graphics/Paint;

.field private mDrawPath:Landroid/graphics/Path;

.field private mHandleRecognize:Ljava/lang/Runnable;

.field mOnWritingConfirmedListener:Lcom/autonavi/xm/ime/handwriting/HandwritingBoard$OnWritingConfirmedListener;

.field mWritingPath:Lcom/autonavi/xm/ime/handwriting/WritingPath;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard$1;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard$1;-><init>(Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;)V

    iput-object v0, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mHandleRecognize:Ljava/lang/Runnable;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard$1;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard$1;-><init>(Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;)V

    iput-object v0, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mHandleRecognize:Ljava/lang/Runnable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard$1;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard$1;-><init>(Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;)V

    iput-object v0, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mHandleRecognize:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;)Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mDrawPath:Landroid/graphics/Path;

    return-object v0
.end method

.method private onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mDrawPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mDrawPaint:Landroid/graphics/Paint;

    const v1, -0x666662

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mDrawPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Lcom/autonavi/xm/ime/handwriting/WritingPath;

    invoke-direct {v0}, Lcom/autonavi/xm/ime/handwriting/WritingPath;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mWritingPath:Lcom/autonavi/xm/ime/handwriting/WritingPath;

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mHandleRecognize:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mBackgroundPadding:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mBackgroundPadding:Landroid/graphics/Rect;

    :cond_0
    iget-object v1, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mDrawPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mHandleRecognize:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mDrawPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mWritingPath:Lcom/autonavi/xm/ime/handwriting/WritingPath;

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/ime/handwriting/WritingPath;->putPoint(FF)V

    invoke-virtual {p0}, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->invalidate()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mDrawPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mWritingPath:Lcom/autonavi/xm/ime/handwriting/WritingPath;

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/ime/handwriting/WritingPath;->putPoint(FF)V

    invoke-virtual {p0}, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->invalidate()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mHandleRecognize:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mWritingPath:Lcom/autonavi/xm/ime/handwriting/WritingPath;

    invoke-virtual {v0}, Lcom/autonavi/xm/ime/handwriting/WritingPath;->endStroke()V

    iget-object v0, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mHandleRecognize:Ljava/lang/Runnable;

    const-wide/16 v1, 0x320

    invoke-virtual {p0, v0, v1, v2}, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mHandleRecognize:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mDrawPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mWritingPath:Lcom/autonavi/xm/ime/handwriting/WritingPath;

    invoke-virtual {v0}, Lcom/autonavi/xm/ime/handwriting/WritingPath;->clear()V

    invoke-virtual {p0}, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->postInvalidate()V

    return-void
.end method

.method public setOnWritingConfirmedListener(Lcom/autonavi/xm/ime/handwriting/HandwritingBoard$OnWritingConfirmedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/ime/handwriting/HandwritingBoard;->mOnWritingConfirmedListener:Lcom/autonavi/xm/ime/handwriting/HandwritingBoard$OnWritingConfirmedListener;

    return-void
.end method
