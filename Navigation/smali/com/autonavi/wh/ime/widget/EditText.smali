.class public Lcom/autonavi/wh/ime/widget/EditText;
.super Landroid/widget/EditText;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final BLINK_DELAY:I = 0x1f4


# instance fields
.field private mBlinkHandler:Lcom/autonavi/wh/ime/widget/EditText$BlinkHandler;

.field private mImeTextWatcher:Landroid/text/TextWatcher;

.field private mInputType:I

.field private mIsAttachedToWindow:Z

.field private mMethodInvalidateCursorPath:Ljava/lang/reflect/Method;

.field private mShouldBlinkInternal:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/autonavi/wh/ime/widget/EditText;->mInputType:I

    iput-boolean v1, p0, Lcom/autonavi/wh/ime/widget/EditText;->mShouldBlinkInternal:Z

    iput-boolean v1, p0, Lcom/autonavi/wh/ime/widget/EditText;->mIsAttachedToWindow:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/autonavi/wh/ime/widget/EditText;->onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/autonavi/wh/ime/widget/EditText;->mInputType:I

    iput-boolean v0, p0, Lcom/autonavi/wh/ime/widget/EditText;->mShouldBlinkInternal:Z

    iput-boolean v0, p0, Lcom/autonavi/wh/ime/widget/EditText;->mIsAttachedToWindow:Z

    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/wh/ime/widget/EditText;->onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/autonavi/wh/ime/widget/EditText;->mInputType:I

    iput-boolean v0, p0, Lcom/autonavi/wh/ime/widget/EditText;->mShouldBlinkInternal:Z

    iput-boolean v0, p0, Lcom/autonavi/wh/ime/widget/EditText;->mIsAttachedToWindow:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/wh/ime/widget/EditText;->onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static isMultilineInputType(I)Z
    .locals 2

    const v0, 0x2000f

    and-int/2addr v0, p0

    const v1, 0x20001

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeBlink()V
    .locals 6

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/EditText;->shouldBlink()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/EditText;->mBlinkHandler:Lcom/autonavi/wh/ime/widget/EditText$BlinkHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/ime/widget/EditText$BlinkHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/autonavi/wh/ime/widget/EditText$BlinkHandler;-><init>(Lcom/autonavi/wh/ime/widget/EditText;Lcom/autonavi/wh/ime/widget/EditText$1;)V

    iput-object v0, p0, Lcom/autonavi/wh/ime/widget/EditText;->mBlinkHandler:Lcom/autonavi/wh/ime/widget/EditText$BlinkHandler;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/EditText;->mBlinkHandler:Lcom/autonavi/wh/ime/widget/EditText$BlinkHandler;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/widget/EditText$BlinkHandler;->uncancel()V

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/EditText;->mBlinkHandler:Lcom/autonavi/wh/ime/widget/EditText$BlinkHandler;

    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/EditText;->mBlinkHandler:Lcom/autonavi/wh/ime/widget/EditText$BlinkHandler;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/ime/widget/EditText$BlinkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/EditText;->mBlinkHandler:Lcom/autonavi/wh/ime/widget/EditText$BlinkHandler;

    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/EditText;->mBlinkHandler:Lcom/autonavi/wh/ime/widget/EditText$BlinkHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/wh/ime/widget/EditText$BlinkHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/EditText;->mBlinkHandler:Lcom/autonavi/wh/ime/widget/EditText$BlinkHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/EditText;->mBlinkHandler:Lcom/autonavi/wh/ime/widget/EditText$BlinkHandler;

    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/EditText;->mBlinkHandler:Lcom/autonavi/wh/ime/widget/EditText$BlinkHandler;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/ime/widget/EditText$BlinkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Landroid/widget/TextView;

    const-string v3, "setShowSoftInputOnFocus"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-boolean v0, p0, Lcom/autonavi/wh/ime/widget/EditText;->mShouldBlinkInternal:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/autonavi/wh/ime/widget/EditText;->makeBlink()V

    :cond_0
    return-void

    :catch_0
    move-exception v2

    invoke-super {p0}, Landroid/widget/EditText;->getInputType()I

    move-result v2

    iput v2, p0, Lcom/autonavi/wh/ime/widget/EditText;->mInputType:I

    invoke-super {p0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    invoke-virtual {p0, p0}, Lcom/autonavi/wh/ime/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-gt v2, v3, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/autonavi/wh/ime/widget/EditText;->mShouldBlinkInternal:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

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

.method private shouldAdvanceFocusOnEnter()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    instance-of v2, v2, Landroid/text/method/SingleLineTransformationMethod;

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/EditText;->getInputType()I

    move-result v2

    and-int/lit8 v3, v2, 0xf

    if-ne v3, v1, :cond_0

    and-int/lit16 v2, v2, 0xff0

    const/16 v3, 0x20

    if-eq v2, v3, :cond_3

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public createInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x8000000

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/EditText;->getInputType()I

    move-result v0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/EditText;->getImeOptions()I

    move-result v0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/EditText;->getPrivateImeOptions()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/EditText;->getImeActionLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/EditText;->getImeActionId()I

    move-result v0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/ime/widget/EditText;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    :cond_0
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/ime/widget/EditText;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v0, v2

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_1
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/ime/widget/EditText;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_2
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_3

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v0, v0, 0x5

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :goto_0
    invoke-direct {p0}, Lcom/autonavi/wh/ime/widget/EditText;->shouldAdvanceFocusOnEnter()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v0, v3

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_3
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v0}, Lcom/autonavi/wh/ime/widget/EditText;->isMultilineInputType(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v0, v3

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_4
    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/autonavi/wh/ime/widget/EditText$EditableInputConnection;

    invoke-direct {v0, p0, p0}, Lcom/autonavi/wh/ime/widget/EditText$EditableInputConnection;-><init>(Lcom/autonavi/wh/ime/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/EditText;->getSelectionStart()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/EditText;->getSelectionEnd()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/EditText;->getInputType()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    :goto_1
    return-object v0

    :cond_5
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v0, v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getInputType()I
    .locals 1

    iget v0, p0, Lcom/autonavi/wh/ime/widget/EditText;->mInputType:I

    return v0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/wh/ime/widget/EditText;->mIsAttachedToWindow:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/ime/widget/EditText;->mIsAttachedToWindow:Z

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/wh/ime/widget/EditText;->mIsAttachedToWindow:Z

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/ime/widget/EditText;->setImeTextWatcher(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/EditText;->mBlinkHandler:Lcom/autonavi/wh/ime/widget/EditText$BlinkHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/EditText;->mBlinkHandler:Lcom/autonavi/wh/ime/widget/EditText$BlinkHandler;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/widget/EditText$BlinkHandler;->cancel()V

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/EditText;->mBlinkHandler:Lcom/autonavi/wh/ime/widget/EditText$BlinkHandler;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/ime/widget/EditText$BlinkHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/autonavi/wh/ime/widget/EditText;->mBlinkHandler:Lcom/autonavi/wh/ime/widget/EditText$BlinkHandler;

    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/autonavi/wh/ime/widget/EditText;->makeBlink()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/EditText;->mBlinkHandler:Lcom/autonavi/wh/ime/widget/EditText$BlinkHandler;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/EditText;->mBlinkHandler:Lcom/autonavi/wh/ime/widget/EditText$BlinkHandler;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/widget/EditText$BlinkHandler;->cancel()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/autonavi/wh/ime/widget/EditText;->makeBlink()V

    goto :goto_0
.end method

.method setImeTextWatcher(Landroid/text/TextWatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/EditText;->mImeTextWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/EditText;->mImeTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/ime/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    iput-object p1, p0, Lcom/autonavi/wh/ime/widget/EditText;->mImeTextWatcher:Landroid/text/TextWatcher;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/autonavi/wh/ime/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    return-void
.end method

.method public setInputType(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/wh/ime/widget/EditText;->mInputType:I

    return-void
.end method

.method public setRawInputType(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/wh/ime/widget/EditText;->mInputType:I

    return-void
.end method

.method shouldBlink()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/autonavi/wh/ime/widget/EditText;->mShouldBlinkInternal:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/EditText;->getSelectionStart()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/EditText;->getSelectionEnd()I

    move-result v2

    if-ltz v2, :cond_0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method superInvalidateCursorPath()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/EditText;->mMethodInvalidateCursorPath:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const-class v0, Landroid/widget/TextView;

    const-string v1, "invalidateCursorPath"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/ime/widget/EditText;->mMethodInvalidateCursorPath:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/EditText;->mMethodInvalidateCursorPath:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/EditText;->mMethodInvalidateCursorPath:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
