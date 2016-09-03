.class Lcom/autonavi/wh/ime/widget/InputMethodView$LatinAdapter;
.super Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;


# direct methods
.method public constructor <init>(Lcom/autonavi/wh/ime/widget/InputMethodView;Lcom/autonavi/wh/ime/widget/CandidateListInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$LatinAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    invoke-direct {p0, p1, p2}, Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;-><init>(Lcom/autonavi/wh/ime/widget/InputMethodView;Lcom/autonavi/wh/ime/widget/CandidateListInterface;)V

    return-void
.end method


# virtual methods
.method public input(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    check-cast p1, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v1, 0x0

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_2

    const/16 v3, 0x36

    if-gt v2, v3, :cond_2

    add-int/lit8 v2, v2, -0x1d

    add-int/lit8 v2, v2, 0x61

    :goto_0
    if-lez v2, :cond_0

    int-to-char v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView$LatinAdapter;->this$0:Lcom/autonavi/wh/ime/widget/InputMethodView;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/ime/widget/InputMethodView;->commitText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    const/4 v3, 0x7

    if-lt v2, v3, :cond_3

    const/16 v3, 0x10

    if-gt v2, v3, :cond_3

    add-int/lit8 v2, v2, -0x7

    add-int/lit8 v2, v2, 0x30

    goto :goto_0

    :cond_3
    const/16 v3, 0x37

    if-ne v2, v3, :cond_4

    const/16 v2, 0x2c

    goto :goto_0

    :cond_4
    const/16 v3, 0x38

    if-ne v2, v3, :cond_5

    const/16 v2, 0x2e

    goto :goto_0

    :cond_5
    const/16 v3, 0x4b

    if-ne v2, v3, :cond_6

    const/16 v2, 0x27

    goto :goto_0

    :cond_6
    const/16 v3, 0x4d

    if-ne v2, v3, :cond_7

    const/16 v2, 0x40

    goto :goto_0

    :cond_7
    const/16 v3, 0x4c

    if-ne v2, v3, :cond_8

    const/16 v2, 0x2f

    goto :goto_0

    :cond_8
    const/16 v3, 0x42

    if-ne v3, v2, :cond_9

    const-string v1, "\n"

    move v2, v0

    goto :goto_0

    :cond_9
    const/16 v3, 0x3e

    if-ne v3, v2, :cond_a

    const-string v1, " "

    move v2, v0

    goto :goto_0

    :cond_a
    move v2, v0

    goto :goto_0
.end method
