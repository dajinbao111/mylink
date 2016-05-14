.class public Lcom/autonavi/xm/navi/base/widget/CircularListView;
.super Landroid/widget/ListView;


# instance fields
.field private mConvertView:Landroid/view/View;

.field private mIsCircular:Z

.field private mPrePosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/base/widget/CircularListView;->mIsCircular:Z

    iput v0, p0, Lcom/autonavi/xm/navi/base/widget/CircularListView;->mPrePosition:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/base/widget/CircularListView;->mIsCircular:Z

    iput v0, p0, Lcom/autonavi/xm/navi/base/widget/CircularListView;->mPrePosition:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/base/widget/CircularListView;->mIsCircular:Z

    iput v0, p0, Lcom/autonavi/xm/navi/base/widget/CircularListView;->mPrePosition:I

    return-void
.end method

.method private hasOutsideFocusableView(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    if-eq v1, p0, :cond_0

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 14

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    const/16 v0, 0x3d

    if-ne v13, v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    or-int/lit16 v0, v0, 0xc1

    const/16 v1, 0xc1

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x13

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v11

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v12

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/autonavi/xm/navi/base/widget/CircularListView;->mIsCircular:Z

    invoke-virtual {p0, v13, v0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/16 v6, 0x14

    goto :goto_0

    :cond_1
    move-object p1, v0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/base/widget/CircularListView;->mIsCircular:Z

    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->setSelection(I)V

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    if-eqz p3, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->setSelection(I)V

    :cond_3
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/autonavi/xm/navi/base/widget/CircularListView;->mPrePosition:I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    const/16 v6, 0x14

    const/16 v5, 0x13

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->getSelectedItemPosition()I

    move-result v2

    if-ne v2, v4, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/autonavi/xm/navi/base/widget/CircularListView;->mIsCircular:Z

    if-eqz v2, :cond_4

    const/16 v2, 0x3d

    if-ne p1, v2, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v5, :cond_6

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->getSelectedItemPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_3

    invoke-direct {p0, v1}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->hasOutsideFocusableView(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/autonavi/xm/navi/base/widget/CircularListView;->mPrePosition:I

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    iget-object v4, p0, Lcom/autonavi/xm/navi/base/widget/CircularListView;->mConvertView:Landroid/view/View;

    invoke-interface {v2, v3, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/autonavi/xm/navi/base/widget/CircularListView;->mConvertView:Landroid/view/View;

    iget-object v2, p0, Lcom/autonavi/xm/navi/base/widget/CircularListView;->mConvertView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/autonavi/xm/navi/base/widget/CircularListView;->mConvertView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-virtual {p0, v3}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->setSelection(I)V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/autonavi/xm/navi/base/widget/CircularListView;->mPrePosition:I

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/autonavi/xm/navi/base/widget/CircularListView;->mPrePosition:I

    :cond_4
    :goto_1
    if-ne p1, v6, :cond_9

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/xm/navi/base/widget/CircularListView;->mPrePosition:I

    :cond_5
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_6
    if-ne v2, v6, :cond_4

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->getSelectedItemPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-le v2, v3, :cond_8

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->hasOutsideFocusableView(I)Z

    move-result v2

    if-nez v2, :cond_8

    iget v2, p0, Lcom/autonavi/xm/navi/base/widget/CircularListView;->mPrePosition:I

    if-ne v2, v3, :cond_8

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/xm/navi/base/widget/CircularListView;->mConvertView:Landroid/view/View;

    invoke-interface {v2, v0, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/autonavi/xm/navi/base/widget/CircularListView;->mConvertView:Landroid/view/View;

    iget-object v2, p0, Lcom/autonavi/xm/navi/base/widget/CircularListView;->mConvertView:Landroid/view/View;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/autonavi/xm/navi/base/widget/CircularListView;->mConvertView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_7
    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->setSelection(I)V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/autonavi/xm/navi/base/widget/CircularListView;->mPrePosition:I

    move v0, v1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/xm/navi/base/widget/CircularListView;->mPrePosition:I

    goto :goto_1

    :cond_9
    if-ne p1, v5, :cond_5

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v0, v4, :cond_5

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/autonavi/xm/navi/base/widget/CircularListView;->mPrePosition:I

    goto :goto_2
.end method
