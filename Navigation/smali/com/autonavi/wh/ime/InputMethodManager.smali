.class public Lcom/autonavi/wh/ime/InputMethodManager;
.super Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInputMethodWindow:Lcom/autonavi/wh/ime/widget/InputMethodWindow;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/wh/ime/InputMethodManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCurrentInputMode()Lcom/autonavi/wh/ime/InputMethodManager$InputMode;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/InputMethodManager;->mInputMethodWindow:Lcom/autonavi/wh/ime/widget/InputMethodWindow;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/ime/InputMethodManager;->mInputMethodWindow:Lcom/autonavi/wh/ime/widget/InputMethodWindow;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->getCurrentInputMode()Lcom/autonavi/wh/ime/InputMethodManager$InputMode;

    move-result-object v0

    goto :goto_0
.end method

.method public hideSoftInput()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/InputMethodManager;->mInputMethodWindow:Lcom/autonavi/wh/ime/widget/InputMethodWindow;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/ime/InputMethodManager;->mInputMethodWindow:Lcom/autonavi/wh/ime/widget/InputMethodWindow;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->disconnect()V

    iget-object v0, p0, Lcom/autonavi/wh/ime/InputMethodManager;->mInputMethodWindow:Lcom/autonavi/wh/ime/widget/InputMethodWindow;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->dismiss()V

    goto :goto_0
.end method

.method release()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/InputMethodManager;->mInputMethodWindow:Lcom/autonavi/wh/ime/widget/InputMethodWindow;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/ime/InputMethodManager;->mInputMethodWindow:Lcom/autonavi/wh/ime/widget/InputMethodWindow;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/wh/ime/InputMethodManager;->mInputMethodWindow:Lcom/autonavi/wh/ime/widget/InputMethodWindow;

    goto :goto_0
.end method

.method public setOnInputModeChangedListener(Lcom/autonavi/wh/ime/InputMethodManager$OnInputModeChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/InputMethodManager;->mInputMethodWindow:Lcom/autonavi/wh/ime/widget/InputMethodWindow;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/ime/InputMethodManager;->mInputMethodWindow:Lcom/autonavi/wh/ime/widget/InputMethodWindow;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->setOnInputModeChangedListener(Lcom/autonavi/wh/ime/InputMethodManager$OnInputModeChangedListener;)V

    goto :goto_0
.end method

.method public setPredictionAdapter(Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/InputMethodManager;->mInputMethodWindow:Lcom/autonavi/wh/ime/widget/InputMethodWindow;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/ime/InputMethodManager;->mInputMethodWindow:Lcom/autonavi/wh/ime/widget/InputMethodWindow;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->setPredictionAdapter(Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;)V

    goto :goto_0
.end method

.method public setSoftKeyEnabled(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/InputMethodManager;->mInputMethodWindow:Lcom/autonavi/wh/ime/widget/InputMethodWindow;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/ime/InputMethodManager;->mInputMethodWindow:Lcom/autonavi/wh/ime/widget/InputMethodWindow;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->setSoftKeyEnabled(IZ)V

    goto :goto_0
.end method

.method public showSoftInput(Lcom/autonavi/wh/ime/widget/EditText;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/autonavi/wh/ime/widget/EditText;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/ime/InputMethodManager;->mInputMethodWindow:Lcom/autonavi/wh/ime/widget/InputMethodWindow;

    if-nez v0, :cond_1

    new-instance v0, Lcom/autonavi/wh/ime/widget/InputMethodWindow;

    iget-object v1, p0, Lcom/autonavi/wh/ime/InputMethodManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/autonavi/wh/ime/widget/InputMethodWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/wh/ime/InputMethodManager;->mInputMethodWindow:Lcom/autonavi/wh/ime/widget/InputMethodWindow;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/ime/InputMethodManager;->mInputMethodWindow:Lcom/autonavi/wh/ime/widget/InputMethodWindow;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->connect(Lcom/autonavi/wh/ime/widget/EditText;)V

    iget-object v0, p0, Lcom/autonavi/wh/ime/InputMethodManager;->mInputMethodWindow:Lcom/autonavi/wh/ime/widget/InputMethodWindow;

    invoke-virtual {p1}, Lcom/autonavi/wh/ime/widget/EditText;->getRootView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/autonavi/wh/ime/widget/InputMethodWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {p1}, Lcom/autonavi/wh/ime/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method
