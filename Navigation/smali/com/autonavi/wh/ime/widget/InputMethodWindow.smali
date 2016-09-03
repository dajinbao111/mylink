.class public Lcom/autonavi/wh/ime/widget/InputMethodWindow;
.super Landroid/widget/PopupWindow;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lcom/autonavi/wh/ime/widget/InputMethodView$OnPreferSizeChangedListener;


# instance fields
.field private mInputMethodView:Lcom/autonavi/wh/ime/widget/InputMethodView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->onCreate(Landroid/content/Context;)V

    return-void
.end method

.method private onCreate(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->setOutsideTouchable(Z)V

    invoke-direct {p0, v1}, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->setTouchModalInternal(Z)V

    invoke-virtual {p0, v2, v1}, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->setWindowLayoutMode(II)V

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-super {p0, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->setAnimationStyle(I)V

    new-instance v0, Lcom/autonavi/wh/ime/widget/InputMethodView;

    invoke-direct {v0, p1}, Lcom/autonavi/wh/ime/widget/InputMethodView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->mInputMethodView:Lcom/autonavi/wh/ime/widget/InputMethodView;

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->mInputMethodView:Lcom/autonavi/wh/ime/widget/InputMethodView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/ime/widget/InputMethodView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->mInputMethodView:Lcom/autonavi/wh/ime/widget/InputMethodView;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->setOnPreferSizeChangedListener(Lcom/autonavi/wh/ime/widget/InputMethodView$OnPreferSizeChangedListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->mInputMethodView:Lcom/autonavi/wh/ime/widget/InputMethodView;

    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private setTouchModalInternal(Z)V
    .locals 5

    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setTouchModal"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public connect(Lcom/autonavi/wh/ime/widget/EditText;)V
    .locals 3

    invoke-virtual {p1}, Lcom/autonavi/wh/ime/widget/EditText;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Lcom/autonavi/wh/ime/widget/EditText;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1}, Lcom/autonavi/wh/ime/widget/EditText;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v1

    iget-object v2, p0, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->mInputMethodView:Lcom/autonavi/wh/ime/widget/InputMethodView;

    invoke-virtual {v2, v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->setMaxWidth(I)V

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->mInputMethodView:Lcom/autonavi/wh/ime/widget/InputMethodView;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/ime/widget/InputMethodView;->setMaxHeight(I)V

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->mInputMethodView:Lcom/autonavi/wh/ime/widget/InputMethodView;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/ime/widget/InputMethodView;->connect(Lcom/autonavi/wh/ime/widget/EditText;)V

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->mInputMethodView:Lcom/autonavi/wh/ime/widget/InputMethodView;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->getPreferWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->mInputMethodView:Lcom/autonavi/wh/ime/widget/InputMethodView;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->getPreferHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->setHeight(I)V

    return-void
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->mInputMethodView:Lcom/autonavi/wh/ime/widget/InputMethodView;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->disconnect()V

    return-void
.end method

.method public getCurrentInputMode()Lcom/autonavi/wh/ime/InputMethodManager$InputMode;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->mInputMethodView:Lcom/autonavi/wh/ime/widget/InputMethodView;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->getCurrentInputMode()Lcom/autonavi/wh/ime/InputMethodManager$InputMode;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss()V
    .locals 0

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->disconnect()V

    return-void
.end method

.method public onPreferSizeChanged(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->update(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->setWidth(I)V

    invoke-virtual {p0, p2}, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->setHeight(I)V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->mInputMethodView:Lcom/autonavi/wh/ime/widget/InputMethodView;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->release()V

    invoke-super {p0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->mInputMethodView:Lcom/autonavi/wh/ime/widget/InputMethodView;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    return-void
.end method

.method public setOnInputModeChangedListener(Lcom/autonavi/wh/ime/InputMethodManager$OnInputModeChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->mInputMethodView:Lcom/autonavi/wh/ime/widget/InputMethodView;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/ime/widget/InputMethodView;->setOnInputModeChangedListener(Lcom/autonavi/wh/ime/InputMethodManager$OnInputModeChangedListener;)V

    return-void
.end method

.method public setPredictionAdapter(Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->mInputMethodView:Lcom/autonavi/wh/ime/widget/InputMethodView;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/ime/widget/InputMethodView;->setPredictionAdapter(Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;)V

    return-void
.end method

.method public setSoftKeyEnabled(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->mInputMethodView:Lcom/autonavi/wh/ime/widget/InputMethodView;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/wh/ime/widget/InputMethodView;->setSoftKeyEnabled(IZ)V

    return-void
.end method
