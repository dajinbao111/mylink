.class public Lcom/autonavi/wh/support/app/NoSaveStateFrameLayout;
.super Landroid/widget/FrameLayout;


# instance fields
.field private mIsTouchable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/support/app/NoSaveStateFrameLayout;->mIsTouchable:Z

    return-void
.end method

.method static wrap(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Lcom/autonavi/wh/support/app/NoSaveStateFrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/wh/support/app/NoSaveStateFrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/support/app/NoSaveStateFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/support/app/NoSaveStateFrameLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/autonavi/wh/support/app/NoSaveStateFrameLayout;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/autonavi/wh/support/app/NoSaveStateFrameLayout;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/wh/support/app/NoSaveStateFrameLayout;->mIsTouchable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/wh/support/app/NoSaveStateFrameLayout;->mIsTouchable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setTouchable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/wh/support/app/NoSaveStateFrameLayout;->mIsTouchable:Z

    return-void
.end method
