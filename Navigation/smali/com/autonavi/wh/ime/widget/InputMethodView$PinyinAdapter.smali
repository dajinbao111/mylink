.class Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;
.super Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;


# instance fields
.field private mCandidataNum:I

.field private mCandidates:[Ljava/lang/String;

.field private final mComposingText:Ljava/lang/StringBuilder;

.field private final mDecoder:Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;

.field private final mInputText:Ljava/lang/StringBuilder;

.field private mLastFixed:I

.field final synthetic this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;


# direct methods
.method public constructor <init>(Lcom/autonavi/wh/ime/widget/InputMethodView;Lcom/autonavi/wh/ime/widget/CandidateListInterface;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    invoke-direct {p0, p1, p2}, Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;-><init>(Lcom/autonavi/wh/ime/widget/InputMethodView;Lcom/autonavi/wh/ime/widget/CandidateListInterface;)V

    new-instance v0, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;

    const-string v1, "PATH_OF_PINYIN_BIN"

    const-string v2, ""

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mDecoder:Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mInputText:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mComposingText:Ljava/lang/StringBuilder;

    iput v3, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mLastFixed:I

    iput v3, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mCandidataNum:I

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mDecoder:Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->prepare()V

    return-void
.end method

.method private finishPinyin()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->finishComposingText()V

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mInputText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iput v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mLastFixed:I

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mDecoder:Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->reset()Z

    iput v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mCandidataNum:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_1

    iget v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mCandidataNum:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    # getter for: Lcom/autonavi/wh/ime/widget/InputMethodView;->mPredictionAdapter:Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;
    invoke-static {v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->access$000(Lcom/autonavi/wh/ime/widget/InputMethodView;)Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    # getter for: Lcom/autonavi/wh/ime/widget/InputMethodView;->mPredictionAdapter:Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;
    invoke-static {v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->access$000(Lcom/autonavi/wh/ime/widget/InputMethodView;)Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;->getPrediction(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mCandidates:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->notifyCandidatesChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    invoke-static {p1}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v2

    if-eq v0, v3, :cond_2

    if-ne v2, v3, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->reset()V

    goto :goto_0

    :cond_3
    if-ltz v0, :cond_6

    invoke-interface {p1, v0, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mInputText:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mInputText:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mDecoder:Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v6}, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->delSearch(IZZ)I

    move-result v0

    iput v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mCandidataNum:I

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mDecoder:Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->getStartPostions()[I

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mDecoder:Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;

    invoke-virtual {v1}, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->getFixedCount()I

    move-result v1

    iget v2, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mLastFixed:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mComposingText:Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mLastFixed:I

    iget-object v4, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mInputText:Ljava/lang/StringBuilder;

    aget v0, v0, v1

    iget-object v5, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mInputText:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v3, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    iput v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mLastFixed:I

    :cond_4
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mComposingText:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v6}, Lcom/autonavi/wh/ime/widget/InputMethodView;->setComposingText(Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->finishComposingText()V

    :cond_5
    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->notifyCandidatesChanged()V

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getCandidate(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mCandidataNum:I

    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mDecoder:Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->getCandidate(I)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    iget v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mLastFixed:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mLastFixed:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mLastFixed:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mCandidates:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mCandidates:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mCandidates:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mCandidates:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getCandidateCount()I
    .locals 1

    iget v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mCandidataNum:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mCandidataNum:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mCandidates:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mCandidates:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCandidateListType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public input(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    check-cast p1, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    const/16 v3, 0x36

    if-gt v2, v3, :cond_0

    add-int/lit8 v2, v2, -0x1d

    add-int/lit8 v2, v2, 0x61

    int-to-char v2, v2

    :goto_0
    if-lez v2, :cond_5

    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mInputText:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mInputText:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mDecoder:Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;

    invoke-virtual {v3, v1}, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->search(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mCandidataNum:I

    iget-object v3, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mDecoder:Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;

    invoke-virtual {v3, v0}, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->getPinyin(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mInputText:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mInputText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :goto_1
    return v0

    :cond_0
    const/16 v3, 0x3e

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mCandidataNum:I

    if-lez v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->getCandidate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->onCandidateSelected(ILjava/lang/String;)V

    move v2, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    invoke-virtual {v2}, Lcom/autonavi/wh/ime/widget/InputMethodView;->commitSpaceCharacter()V

    move v2, v1

    goto :goto_0

    :cond_2
    const/16 v3, 0x43

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mInputText:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mInputText:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    iget-object v2, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->setComposingText(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->notifyCandidatesChanged()V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public onCandidateSelected(ILjava/lang/String;)V
    .locals 5

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mDecoder:Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->chooseCandidate(I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mCandidataNum:I

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mDecoder:Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->getStartPostions()[I

    move-result-object v0

    array-length v1, v0

    iget-object v2, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mDecoder:Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;

    invoke-virtual {v2}, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->getFixedCount()I

    move-result v2

    iget-object v3, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mComposingText:Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mLastFixed:I

    if-ge v2, v1, :cond_2

    aget v0, v0, v2

    :goto_0
    invoke-virtual {v3, v4, v0, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/ime/widget/InputMethodView;->commitText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->finishPinyin()V

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    # getter for: Lcom/autonavi/wh/ime/widget/InputMethodView;->mPredictionAdapter:Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;
    invoke-static {v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->access$000(Lcom/autonavi/wh/ime/widget/InputMethodView;)Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    # getter for: Lcom/autonavi/wh/ime/widget/InputMethodView;->mPredictionAdapter:Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;
    invoke-static {v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->access$000(Lcom/autonavi/wh/ime/widget/InputMethodView;)Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;->getPrediction(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mCandidates:[Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->notifyCandidatesChanged()V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    goto :goto_0

    :cond_3
    iput v2, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mLastFixed:I

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mComposingText:Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/ime/widget/InputMethodView;->setComposingText(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->notifyCandidatesChanged()V

    goto :goto_1
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mDecoder:Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->release()V

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->finishPinyin()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->mCandidates:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;->notifyCandidatesChanged()V

    return-void
.end method
