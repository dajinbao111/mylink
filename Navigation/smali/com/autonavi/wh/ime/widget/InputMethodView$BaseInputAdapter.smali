.class abstract Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Lcom/autonavi/wh/ime/widget/CandidateListInterface$Adapter;


# static fields
.field public static final CANDIDATE_LIST_TYPE_INNER:I = 0x2

.field public static final CANDIDATE_LIST_TYPE_NONE:I = 0x0

.field public static final CANDIDATE_LIST_TYPE_OUTER:I = 0x1


# instance fields
.field private final mCandidateList:Lcom/autonavi/wh/ime/widget/CandidateListInterface;

.field final synthetic this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;


# direct methods
.method public constructor <init>(Lcom/autonavi/wh/ime/widget/InputMethodView;Lcom/autonavi/wh/ime/widget/CandidateListInterface;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;->mCandidateList:Lcom/autonavi/wh/ime/widget/CandidateListInterface;

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;->getCandidateListType()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p0}, Lcom/autonavi/wh/ime/widget/CandidateListInterface;->setAdapter(Lcom/autonavi/wh/ime/widget/CandidateListInterface$Adapter;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getCandidate(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCandidateCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCandidateListType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract input(Ljava/lang/Object;)Z
.end method

.method protected notifyCandidatesChanged()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;->mCandidateList:Lcom/autonavi/wh/ime/widget/CandidateListInterface;

    invoke-interface {v0}, Lcom/autonavi/wh/ime/widget/CandidateListInterface;->reset()V

    return-void
.end method

.method public onCandidateSelected(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method
