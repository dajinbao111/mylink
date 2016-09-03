.class public Lcom/autonavi/wh/ime/widget/SoftKeyboard;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/autonavi/wh/ime/handwriting/HandwritingBoard$OnWritingConfirmedListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandwritingBoard:Lcom/autonavi/wh/ime/handwriting/HandwritingBoard;

.field private mOnOutputListener:Lcom/autonavi/wh/ime/widget/SoftKeyboard$OnOutputListener;

.field private mSoftKeyList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private checkChild(Landroid/view/View;)V
    .locals 2

    instance-of v0, p1, Lcom/autonavi/wh/ime/widget/SoftKey;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/autonavi/wh/ime/widget/SoftKey;

    invoke-interface {v0}, Lcom/autonavi/wh/ime/widget/SoftKey;->getKeyCode()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    invoke-interface {v0}, Lcom/autonavi/wh/ime/widget/SoftKey;->getKeyCode()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    invoke-interface {v0}, Lcom/autonavi/wh/ime/widget/SoftKey;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->mSoftKeyList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    instance-of v0, p1, Lcom/autonavi/wh/ime/handwriting/HandwritingBoard;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/autonavi/wh/ime/handwriting/HandwritingBoard;

    iput-object p1, p0, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->mHandwritingBoard:Lcom/autonavi/wh/ime/handwriting/HandwritingBoard;

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->mHandwritingBoard:Lcom/autonavi/wh/ime/handwriting/HandwritingBoard;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/ime/handwriting/HandwritingBoard;->setOnWritingConfirmedListener(Lcom/autonavi/wh/ime/handwriting/HandwritingBoard$OnWritingConfirmedListener;)V

    goto :goto_0
.end method

.method private checkGroup(Landroid/view/ViewGroup;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->checkGroup(Landroid/view/ViewGroup;)V

    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->checkChild(Landroid/view/View;)V

    goto :goto_1
.end method

.method private onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->mSoftKeyList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->checkGroup(Landroid/view/ViewGroup;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->checkChild(Landroid/view/View;)V

    goto :goto_0
.end method

.method public findViewByKeyCode(I)Landroid/view/View;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->mOnOutputListener:Lcom/autonavi/wh/ime/widget/SoftKeyboard$OnOutputListener;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/autonavi/wh/ime/widget/SoftKey;

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->mOnOutputListener:Lcom/autonavi/wh/ime/widget/SoftKeyboard$OnOutputListener;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/autonavi/wh/ime/widget/SoftKey;->getKeyCode()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, p0, v1}, Lcom/autonavi/wh/ime/widget/SoftKeyboard$OnOutputListener;->onOutput(Lcom/autonavi/wh/ime/widget/SoftKeyboard;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 12

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->mOnOutputListener:Lcom/autonavi/wh/ime/widget/SoftKeyboard$OnOutputListener;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/autonavi/wh/ime/widget/SoftKey;

    new-instance v0, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/autonavi/wh/ime/widget/SoftKey;->getKeyCode()I

    move-result v6

    const/16 v11, 0x80

    move v7, v5

    move v8, v5

    move v9, v5

    move v10, v5

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->mOnOutputListener:Lcom/autonavi/wh/ime/widget/SoftKeyboard$OnOutputListener;

    invoke-interface {v1, p0, v0}, Lcom/autonavi/wh/ime/widget/SoftKeyboard$OnOutputListener;->onOutput(Lcom/autonavi/wh/ime/widget/SoftKeyboard;Ljava/lang/Object;)V

    const/4 v5, 0x1

    :cond_0
    return v5
.end method

.method public onWritingConfirmed(Lcom/autonavi/wh/ime/handwriting/WritingPath;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->mOnOutputListener:Lcom/autonavi/wh/ime/widget/SoftKeyboard$OnOutputListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->mOnOutputListener:Lcom/autonavi/wh/ime/widget/SoftKeyboard$OnOutputListener;

    invoke-interface {v0, p0, p1}, Lcom/autonavi/wh/ime/widget/SoftKeyboard$OnOutputListener;->onOutput(Lcom/autonavi/wh/ime/widget/SoftKeyboard;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->mHandwritingBoard:Lcom/autonavi/wh/ime/handwriting/HandwritingBoard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->mHandwritingBoard:Lcom/autonavi/wh/ime/handwriting/HandwritingBoard;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/handwriting/HandwritingBoard;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->mSoftKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/ime/widget/SoftKey;

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setKeyText(II)V
    .locals 6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/autonavi/wh/ime/widget/SoftKeyButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->mContext:Landroid/content/Context;

    sget v3, Lcom/autonavi/wh/ime/R$string;->pick_input_method:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v5, 0xf

    invoke-direct {v4, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x21

    invoke-interface {v3, v4, v5, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    check-cast v0, Lcom/autonavi/wh/ime/widget/SoftKeyButton;

    invoke-virtual {v0, v3}, Lcom/autonavi/wh/ime/widget/SoftKeyButton;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setOnOutputListener(Lcom/autonavi/wh/ime/widget/SoftKeyboard$OnOutputListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->mOnOutputListener:Lcom/autonavi/wh/ime/widget/SoftKeyboard$OnOutputListener;

    return-void
.end method

.method public setSoftKeyEnabled(IZ)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method
