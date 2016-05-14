.class public Lcom/autonavi/xm/widget/MultiScreen;
.super Landroid/view/ViewGroup;


# static fields
.field public static final DEFAULT_SCREEN_MIDDLE:I = -0x1

.field public static final INVALID_SCREEN:I = -0x1

.field private static final LAYOUT_TYPE_FIRST_MOVE_TO_LAST:I = 0x1

.field private static final LAYOUT_TYPE_LAST_MOVE_TO_FIRST:I = 0x2

.field private static final LAYOUT_TYPE_NORMAL:I = 0x0

.field private static final SCROLL_STATE_REST:I = 0x0

.field private static final SCROLL_STATE_SCROLLING:I = 0x1

.field private static final SNAP_VELOCITY:I = 0x3e8

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private mAllowLongPress:Z

.field private mCurrentScreen:I

.field private mCycleScreen:I

.field private mCycleScrollEnabled:Z

.field private mDefaultScreen:I

.field private mExtendEdgeSpace:I

.field private mFadingEdgeEnabled:Z

.field private mFastSnapEnabled:Z

.field private mFirstMeasure:Z

.field private mIsAbort:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMaximumVelocity:I

.field private mNextScreen:I

.field private mOnScreenChangeListener:Lcom/autonavi/xm/widget/MultiScreen$OnScreenChangeListener;

.field private mScreenLocked:Z

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mTouchScrollEnabled:Z

.field private mTouchSlop:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/autonavi/xm/widget/MultiScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/xm/widget/MultiScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mTouchState:I

    iput v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mScrollState:I

    iput v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mExtendEdgeSpace:I

    iput v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mDefaultScreen:I

    iput v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCurrentScreen:I

    iput v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mNextScreen:I

    iput-boolean v1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mFadingEdgeEnabled:Z

    iput-boolean v1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mTouchScrollEnabled:Z

    iput-boolean v1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mFastSnapEnabled:Z

    iput-boolean v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mScreenLocked:Z

    iput-boolean v1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCycleScrollEnabled:Z

    iput v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCycleScreen:I

    iput-boolean v1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mFirstMeasure:Z

    iput-boolean v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mIsAbort:Z

    invoke-direct {p0}, Lcom/autonavi/xm/widget/MultiScreen;->initMultiScreen()V

    return-void
.end method

.method private computeDefaultScreen()I
    .locals 4

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mDefaultScreen:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mDefaultScreen:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method private initMultiScreen()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/MultiScreen;->setWillNotDraw(Z)V

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mMaximumVelocity:I

    return-void
.end method

.method private layoutChildren(I)V
    .locals 8

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getChildCount()I

    move-result v4

    move v1, v3

    move v2, v3

    :goto_0
    if-ge v1, v4, :cond_0

    packed-switch p1, :pswitch_data_0

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/MultiScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int v6, v2, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int v0, v2, v5

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    rem-int/2addr v0, v4

    goto :goto_1

    :pswitch_1
    add-int v0, v1, v4

    add-int/lit8 v0, v0, -0x1

    rem-int/2addr v0, v4

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private snapToDestination()V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getScrollX()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    div-int/2addr v2, v0

    iget-boolean v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCycleScrollEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCycleScreen:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCurrentScreen:I

    if-eq v2, v0, :cond_0

    iget v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCycleScreen:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCycleScreen:I

    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/autonavi/xm/widget/MultiScreen;->snapToScreen(IZ)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCurrentScreen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/MultiScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    const/16 v1, 0x11

    if-ne p2, v1, :cond_3

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/MultiScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/MultiScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getChildCount()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public computeScroll()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/xm/widget/MultiScreen;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->postInvalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mNextScreen:I

    if-eq v0, v3, :cond_0

    iget v1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCurrentScreen:I

    iget-boolean v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCycleScrollEnabled:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCycleScreen:I

    if-eq v0, v3, :cond_3

    iget v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCycleScreen:I

    iput v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCurrentScreen:I

    invoke-direct {p0, v4}, Lcom/autonavi/xm/widget/MultiScreen;->layoutChildren(I)V

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getWidth()I

    move-result v2

    mul-int/2addr v2, v0

    invoke-virtual {p0, v2, v4}, Lcom/autonavi/xm/widget/MultiScreen;->scrollTo(II)V

    iput v3, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCycleScreen:I

    :goto_1
    iput v3, p0, Lcom/autonavi/xm/widget/MultiScreen;->mNextScreen:I

    iget-boolean v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mFadingEdgeEnabled:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0, v4}, Lcom/autonavi/xm/widget/MultiScreen;->setHorizontalFadingEdgeEnabled(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->onScreenScrollEnd()V

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/MultiScreen;->onScreenChangeEnd(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mNextScreen:I

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCurrentScreen:I

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/16 v6, 0x3e8

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mTouchScrollEnabled:Z

    if-nez v2, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getChildCount()I

    move-result v4

    if-gtz v4, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    packed-switch v2, :pswitch_data_0

    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :pswitch_0
    iput-boolean v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mIsAbort:Z

    iget-object v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mIsAbort:Z

    :cond_4
    iput v5, p0, Lcom/autonavi/xm/widget/MultiScreen;->mLastMotionX:F

    iput v3, p0, Lcom/autonavi/xm/widget/MultiScreen;->mLastMotionY:F

    iput-boolean v1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mAllowLongPress:Z

    iget-object v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_2
    iput v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mTouchState:I

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :pswitch_1
    iget v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mLastMotionX:F

    sub-float v2, v5, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iget v6, p0, Lcom/autonavi/xm/widget/MultiScreen;->mLastMotionY:F

    sub-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v6, v3

    iget v7, p0, Lcom/autonavi/xm/widget/MultiScreen;->mTouchSlop:I

    if-le v2, v7, :cond_b

    move v3, v1

    :goto_3
    if-le v6, v7, :cond_c

    move v2, v1

    :goto_4
    if-nez v3, :cond_6

    if-eqz v2, :cond_8

    :cond_6
    iget v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mTouchState:I

    if-eqz v3, :cond_7

    iput v1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mTouchState:I

    if-eq v2, v1, :cond_7

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->onScreenScrollStart()V

    :cond_7
    iget-boolean v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mAllowLongPress:Z

    if-eqz v2, :cond_8

    iput-boolean v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mAllowLongPress:Z

    iget v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCurrentScreen:I

    invoke-virtual {p0, v2}, Lcom/autonavi/xm/widget/MultiScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    :cond_8
    iget v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mTouchState:I

    if-ne v2, v1, :cond_3

    iget v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mLastMotionX:F

    sub-float/2addr v2, v5

    float-to-int v3, v2

    iget-boolean v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mFadingEdgeEnabled:Z

    if-eqz v2, :cond_9

    invoke-virtual {p0, v1}, Lcom/autonavi/xm/widget/MultiScreen;->setHorizontalFadingEdgeEnabled(Z)V

    :cond_9
    iget-boolean v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCycleScrollEnabled:Z

    if-eqz v2, :cond_d

    if-le v4, v1, :cond_d

    move v2, v0

    :goto_5
    iput v5, p0, Lcom/autonavi/xm/widget/MultiScreen;->mLastMotionX:F

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getScrollX()I

    move-result v5

    if-gez v3, :cond_10

    neg-int v6, v2

    if-le v5, v6, :cond_f

    neg-int v2, v2

    sub-int v4, v2, v5

    if-lez v5, :cond_e

    move v2, v3

    :goto_6
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/autonavi/xm/widget/MultiScreen;->scrollBy(II)V

    :cond_a
    :goto_7
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    :cond_b
    move v3, v0

    goto :goto_3

    :cond_c
    move v2, v0

    goto :goto_4

    :cond_d
    iget v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mExtendEdgeSpace:I

    goto :goto_5

    :cond_e
    div-int/lit8 v2, v3, 0x2

    goto :goto_6

    :cond_f
    iget-boolean v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCycleScrollEnabled:Z

    if-eqz v2, :cond_a

    if-le v4, v1, :cond_a

    add-int/lit8 v2, v4, -0x1

    iput v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCycleScreen:I

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/autonavi/xm/widget/MultiScreen;->layoutChildren(I)V

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getWidth()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p0, v2, v0}, Lcom/autonavi/xm/widget/MultiScreen;->scrollBy(II)V

    goto :goto_7

    :cond_10
    if-lez v3, :cond_a

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getWidth()I

    move-result v6

    mul-int v7, v6, v4

    sub-int v5, v7, v5

    sub-int/2addr v5, v6

    add-int/2addr v5, v2

    if-lez v5, :cond_12

    sub-int v2, v5, v2

    if-lez v2, :cond_11

    :goto_8
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/autonavi/xm/widget/MultiScreen;->scrollBy(II)V

    goto :goto_7

    :cond_11
    div-int/lit8 v3, v3, 0x2

    goto :goto_8

    :cond_12
    iget-boolean v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCycleScrollEnabled:Z

    if-eqz v2, :cond_a

    if-le v4, v1, :cond_a

    iput v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCycleScreen:I

    invoke-direct {p0, v1}, Lcom/autonavi/xm/widget/MultiScreen;->layoutChildren(I)V

    neg-int v2, v6

    add-int/2addr v2, v3

    invoke-virtual {p0, v2, v0}, Lcom/autonavi/xm/widget/MultiScreen;->scrollBy(II)V

    goto :goto_7

    :pswitch_2
    iget v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mTouchState:I

    if-ne v2, v1, :cond_16

    iget-object v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/autonavi/xm/widget/MultiScreen;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v2, v6, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    float-to-int v2, v2

    if-le v2, v6, :cond_14

    iget v3, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCurrentScreen:I

    if-lez v3, :cond_14

    iget v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCurrentScreen:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/autonavi/xm/widget/MultiScreen;->snapToScreen(I)V

    :goto_9
    iget-object v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_13
    :goto_a
    iput v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mTouchState:I

    iput-boolean v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mAllowLongPress:Z

    goto/16 :goto_1

    :cond_14
    const/16 v3, -0x3e8

    if-ge v2, v3, :cond_15

    iget v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCurrentScreen:I

    add-int/lit8 v3, v4, -0x1

    if-ge v2, v3, :cond_15

    iget v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCurrentScreen:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/autonavi/xm/widget/MultiScreen;->snapToScreen(I)V

    goto :goto_9

    :cond_15
    invoke-direct {p0}, Lcom/autonavi/xm/widget/MultiScreen;->snapToDestination()V

    goto :goto_9

    :cond_16
    iget-boolean v2, p0, Lcom/autonavi/xm/widget/MultiScreen;->mIsAbort:Z

    if-eqz v2, :cond_13

    iput-boolean v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mIsAbort:Z

    invoke-direct {p0}, Lcom/autonavi/xm/widget/MultiScreen;->snapToDestination()V

    goto :goto_a

    :pswitch_3
    iput v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mTouchState:I

    iput-boolean v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mAllowLongPress:Z

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    iget v1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCurrentScreen:I

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->snapLeft()V

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    iget v1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->snapRight()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public getCurrentScreen()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCurrentScreen:I

    return v0
.end method

.method public getDefaultScreen()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mDefaultScreen:I

    return v0
.end method

.method public getNextScreen()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mNextScreen:I

    return v0
.end method

.method public getScreenCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getChildCount()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/widget/MultiScreen;->layoutChildren(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mFirstMeasure:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCurrentScreen:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xm/widget/MultiScreen;->computeDefaultScreen()I

    move-result v1

    iput v1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCurrentScreen:I

    :cond_0
    iput-boolean v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mFirstMeasure:Z

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/MultiScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    iget v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mNextScreen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mNextScreen:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/MultiScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCurrentScreen:I

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    check-cast p1, Lcom/autonavi/xm/widget/MultiScreen$SavedState;

    invoke-virtual {p1}, Lcom/autonavi/xm/widget/MultiScreen$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/autonavi/xm/widget/MultiScreen$SavedState;->currentScreen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/autonavi/xm/widget/MultiScreen$SavedState;->currentScreen:I

    iput v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCurrentScreen:I

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/autonavi/xm/widget/MultiScreen$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/xm/widget/MultiScreen$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCurrentScreen:I

    iput v1, v0, Lcom/autonavi/xm/widget/MultiScreen$SavedState;->currentScreen:I

    return-object v0
.end method

.method protected onScreenChangeEnd(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mOnScreenChangeListener:Lcom/autonavi/xm/widget/MultiScreen$OnScreenChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/autonavi/xm/widget/MultiScreen$OnScreenChangeListener;->onScreenChangeEnd(I)V

    :cond_0
    return-void
.end method

.method protected onScreenChangeStart(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mOnScreenChangeListener:Lcom/autonavi/xm/widget/MultiScreen$OnScreenChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/autonavi/xm/widget/MultiScreen$OnScreenChangeListener;->onScreenChangeStart(I)V

    :cond_0
    return-void
.end method

.method protected onScreenScrollEnd()V
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mScrollState:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mScrollState:I

    iget-object v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mOnScreenChangeListener:Lcom/autonavi/xm/widget/MultiScreen$OnScreenChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/autonavi/xm/widget/MultiScreen$OnScreenChangeListener;->onScreenScrollEnd()V

    goto :goto_0
.end method

.method protected onScreenScrollStart()V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mScrollState:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mScrollState:I

    iget-object v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mOnScreenChangeListener:Lcom/autonavi/xm/widget/MultiScreen$OnScreenChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/autonavi/xm/widget/MultiScreen$OnScreenChangeListener;->onScreenScrollStart()V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mExtendEdgeSpace:I

    iget v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCurrentScreen:I

    mul-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/xm/widget/MultiScreen;->scrollTo(II)V

    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getWidth()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    move v1, v0

    move-object v0, p2

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v1, v3

    if-eqz v0, :cond_3

    if-ne v0, p0, :cond_2

    :cond_3
    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getScrollX()I

    move-result v0

    add-int v3, v0, v2

    if-lt v1, v3, :cond_4

    div-int v0, v1, v2

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/MultiScreen;->snapToScreen(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    if-gt v3, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    div-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/MultiScreen;->snapToScreen(I)V

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/widget/MultiScreen;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCurrentScreen:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/MultiScreen;->snapToScreen(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCurrentScreen(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mNextScreen:I

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCurrentScreen:I

    iget v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/autonavi/xm/widget/MultiScreen;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->invalidate()V

    return-void
.end method

.method public setCycleScrollEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCycleScrollEnabled:Z

    return-void
.end method

.method public setDefaultScreen(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mDefaultScreen:I

    return-void
.end method

.method public setExtendEdgeSpace(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mExtendEdgeSpace:I

    return-void
.end method

.method public setFadingEdgeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mFadingEdgeEnabled:Z

    return-void
.end method

.method public setFastSnapEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mFastSnapEnabled:Z

    return-void
.end method

.method public setOnScreenChangeListener(Lcom/autonavi/xm/widget/MultiScreen$OnScreenChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mOnScreenChangeListener:Lcom/autonavi/xm/widget/MultiScreen$OnScreenChangeListener;

    return-void
.end method

.method public setScreenLocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mScreenLocked:Z

    return-void
.end method

.method public setTouchScrollEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mTouchScrollEnabled:Z

    return-void
.end method

.method public showDefaultScreen()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xm/widget/MultiScreen;->computeDefaultScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/MultiScreen;->setCurrentScreen(I)V

    return-void
.end method

.method public snapLeft()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mNextScreen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mNextScreen:I

    :goto_0
    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/MultiScreen;->snapToScreen(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCurrentScreen:I

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCycleScrollEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCycleScreen:I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/autonavi/xm/widget/MultiScreen;->layoutChildren(I)V

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/autonavi/xm/widget/MultiScreen;->scrollBy(II)V

    invoke-virtual {p0, v2}, Lcom/autonavi/xm/widget/MultiScreen;->snapToScreen(I)V

    goto :goto_1
.end method

.method public snapRight()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getChildCount()I

    move-result v1

    iget v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mNextScreen:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mNextScreen:I

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/MultiScreen;->snapToScreen(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCurrentScreen:I

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCycleScrollEnabled:Z

    if-eqz v0, :cond_0

    if-le v1, v4, :cond_0

    iput v3, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCycleScreen:I

    invoke-direct {p0, v4}, Lcom/autonavi/xm/widget/MultiScreen;->layoutChildren(I)V

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, v0, v3}, Lcom/autonavi/xm/widget/MultiScreen;->scrollBy(II)V

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/MultiScreen;->snapToScreen(I)V

    goto :goto_1
.end method

.method public snapToScreen(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/autonavi/xm/widget/MultiScreen;->snapToScreen(IZ)V

    return-void
.end method

.method public snapToScreen(IZ)V
    .locals 10

    const/4 v0, 0x1

    const/4 v9, -0x1

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mScreenLocked:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mFastSnapEnabled:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    :goto_1
    iget v1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCurrentScreen:I

    iget v7, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCycleScreen:I

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-boolean v3, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCycleScrollEnabled:Z

    if-eqz v3, :cond_8

    if-eq v7, v9, :cond_8

    if-eq v7, v1, :cond_7

    move v6, v0

    :goto_2
    iput v8, p0, Lcom/autonavi/xm/widget/MultiScreen;->mNextScreen:I

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {p0, v1}, Lcom/autonavi/xm/widget/MultiScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v3, v1, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    :cond_3
    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getWidth()I

    move-result v1

    mul-int/2addr v1, v8

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getScrollX()I

    move-result v3

    sub-int v3, v1, v3

    if-eqz v3, :cond_0

    iget-boolean v1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mFadingEdgeEnabled:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/MultiScreen;->setHorizontalFadingEdgeEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->invalidate()V

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/MultiScreen;->onScreenScrollStart()V

    :cond_5
    if-eqz v6, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCycleScrollEnabled:Z

    if-eqz v0, :cond_a

    if-eq v7, v9, :cond_a

    move v0, v7

    :goto_3
    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/MultiScreen;->onScreenChangeStart(I)V

    goto :goto_0

    :cond_6
    iget-boolean v1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mFastSnapEnabled:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mNextScreen:I

    if-eq v1, v9, :cond_2

    iget v1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mNextScreen:I

    iput v1, p0, Lcom/autonavi/xm/widget/MultiScreen;->mCurrentScreen:I

    goto :goto_1

    :cond_7
    move v6, v2

    goto :goto_2

    :cond_8
    if-eq v8, v1, :cond_9

    move v6, v0

    goto :goto_2

    :cond_9
    move v6, v2

    goto :goto_2

    :cond_a
    move v0, v8

    goto :goto_3
.end method
