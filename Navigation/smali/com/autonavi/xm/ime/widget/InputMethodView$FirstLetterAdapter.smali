.class Lcom/autonavi/xm/ime/widget/InputMethodView$FirstLetterAdapter;
.super Lcom/autonavi/xm/ime/widget/InputMethodView$BaseInputAdapter;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/ime/widget/InputMethodView;


# direct methods
.method public constructor <init>(Lcom/autonavi/xm/ime/widget/InputMethodView;Lcom/autonavi/xm/ime/widget/CandidateListInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/ime/widget/InputMethodView$FirstLetterAdapter;->this$0:Lcom/autonavi/xm/ime/widget/InputMethodView;

    invoke-direct {p0, p1, p2}, Lcom/autonavi/xm/ime/widget/InputMethodView$BaseInputAdapter;-><init>(Lcom/autonavi/xm/ime/widget/InputMethodView;Lcom/autonavi/xm/ime/widget/CandidateListInterface;)V

    return-void
.end method


# virtual methods
.method public input(Ljava/lang/Object;)Z
    .locals 3

    check-cast p1, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v0, 0x0

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    const/16 v2, 0x36

    if-gt v1, v2, :cond_1

    add-int/lit8 v0, v1, -0x1d

    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/autonavi/xm/ime/widget/InputMethodView$FirstLetterAdapter;->this$0:Lcom/autonavi/xm/ime/widget/InputMethodView;

    invoke-virtual {v1, v0}, Lcom/autonavi/xm/ime/widget/InputMethodView;->commitText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/16 v2, 0x3e

    if-ne v1, v2, :cond_0

    const-string v0, " "

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
