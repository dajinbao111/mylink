.class Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;
.super Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;


# instance fields
.field private mCandidates:[Ljava/lang/String;

.field private final mHwRecognizer:Lcom/autonavi/wh/ime/handwriting/HwRecognizer;

.field private mIsFromPredictionAdapter:Z

.field private mIsRecognizeModeConfirmed:Z

.field final synthetic this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;


# direct methods
.method public constructor <init>(Lcom/autonavi/wh/ime/widget/InputMethodView;Lcom/autonavi/wh/ime/widget/CandidateListInterface;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    invoke-direct {p0, p1, p2}, Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;-><init>(Lcom/autonavi/wh/ime/widget/InputMethodView;Lcom/autonavi/wh/ime/widget/CandidateListInterface;)V

    new-instance v0, Lcom/autonavi/wh/ime/handwriting/HwRecognizer;

    invoke-direct {v0}, Lcom/autonavi/wh/ime/handwriting/HwRecognizer;-><init>()V

    iput-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->mHwRecognizer:Lcom/autonavi/wh/ime/handwriting/HwRecognizer;

    iput-boolean v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->mIsFromPredictionAdapter:Z

    iput-boolean v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->mIsRecognizeModeConfirmed:Z

    return-void
.end method

.method private setRecognizeMode()V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/16 v0, 0x1f00

    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1f4c

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->mHwRecognizer:Lcom/autonavi/wh/ime/handwriting/HwRecognizer;

    invoke-virtual {v1, v0}, Lcom/autonavi/wh/ime/handwriting/HwRecognizer;->setMode(I)V

    return-void

    :cond_1
    const/16 v0, 0x1f23

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    const/4 v2, -0x1

    invoke-static {p1}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    invoke-static {p1}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    if-eq v0, v2, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->reset()V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->mCandidates:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->mCandidates:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    # getter for: Lcom/autonavi/wh/ime/widget/InputMethodView;->mPredictionAdapter:Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;
    invoke-static {v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->access$000(Lcom/autonavi/wh/ime/widget/InputMethodView;)Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->mIsFromPredictionAdapter:Z

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    # getter for: Lcom/autonavi/wh/ime/widget/InputMethodView;->mPredictionAdapter:Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;
    invoke-static {v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->access$000(Lcom/autonavi/wh/ime/widget/InputMethodView;)Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;->getPrediction(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->mCandidates:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->notifyCandidatesChanged()V

    :cond_3
    return-void
.end method

.method public getCandidate(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->mCandidates:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->mCandidates:[Ljava/lang/String;

    array-length v1, v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->mCandidates:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->mCandidates:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getCandidateCount()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->mCandidates:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->mCandidates:[Ljava/lang/String;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCandidateListType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public input(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/view/KeyEvent;

    if-eqz v2, :cond_1

    check-cast p1, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->getCandidateCount()I

    move-result v2

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->mIsFromPredictionAdapter:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->getCandidate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->onCandidateSelected(ILjava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    invoke-virtual {v1}, Lcom/autonavi/wh/ime/widget/InputMethodView;->commitSpaceCharacter()V

    goto :goto_0

    :cond_1
    instance-of v2, p1, Lcom/autonavi/wh/ime/handwriting/WritingPath;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->mIsRecognizeModeConfirmed:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->setRecognizeMode()V

    iput-boolean v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->mIsRecognizeModeConfirmed:Z

    :cond_2
    iput-boolean v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->mIsFromPredictionAdapter:Z

    iget-object v2, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->mHwRecognizer:Lcom/autonavi/wh/ime/handwriting/HwRecognizer;

    check-cast p1, Lcom/autonavi/wh/ime/handwriting/WritingPath;

    invoke-virtual {v2, p1}, Lcom/autonavi/wh/ime/handwriting/HwRecognizer;->recognize(Lcom/autonavi/wh/ime/handwriting/WritingPath;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->mCandidates:[Ljava/lang/String;

    iget-object v2, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    invoke-virtual {v2}, Lcom/autonavi/wh/ime/widget/InputMethodView;->finishComposingText()V

    iget-object v2, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->mCandidates:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->mCandidates:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    iget-object v3, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->mCandidates:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-virtual {v2, v1, v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->setComposingText(Ljava/lang/CharSequence;I)V

    :cond_3
    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->notifyCandidatesChanged()V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public onCandidateSelected(ILjava/lang/String;)V
    .locals 3

    const v2, 0x7fffffff

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    # getter for: Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputConnection:Landroid/view/inputmethod/InputConnection;
    invoke-static {v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->access$100(Lcom/autonavi/wh/ime/widget/InputMethodView;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    # getter for: Lcom/autonavi/wh/ime/widget/InputMethodView;->mPredictionAdapter:Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;
    invoke-static {v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->access$000(Lcom/autonavi/wh/ime/widget/InputMethodView;)Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->mIsFromPredictionAdapter:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    # getter for: Lcom/autonavi/wh/ime/widget/InputMethodView;->mPredictionAdapter:Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;
    invoke-static {v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->access$000(Lcom/autonavi/wh/ime/widget/InputMethodView;)Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;->getMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    invoke-virtual {v0, v2, v2}, Lcom/autonavi/wh/ime/widget/InputMethodView;->deleteSurroundingText(II)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    invoke-virtual {v0, p2}, Lcom/autonavi/wh/ime/widget/InputMethodView;->commitText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->mCandidates:[Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    # getter for: Lcom/autonavi/wh/ime/widget/InputMethodView;->mPredictionAdapter:Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;
    invoke-static {v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->access$000(Lcom/autonavi/wh/ime/widget/InputMethodView;)Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->mIsFromPredictionAdapter:Z

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    # getter for: Lcom/autonavi/wh/ime/widget/InputMethodView;->mPredictionAdapter:Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;
    invoke-static {v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->access$000(Lcom/autonavi/wh/ime/widget/InputMethodView;)Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;->getPrediction(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->mCandidates:[Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->notifyCandidatesChanged()V

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    # getter for: Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputConnection:Landroid/view/inputmethod/InputConnection;
    invoke-static {v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->access$100(Lcom/autonavi/wh/ime/widget/InputMethodView;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->mHwRecognizer:Lcom/autonavi/wh/ime/handwriting/HwRecognizer;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/handwriting/HwRecognizer;->release()V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->finishComposingText()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->mIsRecognizeModeConfirmed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->mCandidates:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;->notifyCandidatesChanged()V

    return-void
.end method
