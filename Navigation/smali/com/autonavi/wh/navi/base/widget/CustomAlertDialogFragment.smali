.class public Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment;
.super Lcom/autonavi/wh/navigation/app/NaviDialogFragment;


# static fields
.field private static final ARGUMENT_MESSAGE:Ljava/lang/String; = "message"

.field private static final ARGUMENT_NEGATIVE_BUTTON:Ljava/lang/String; = "negative_button"

.field private static final ARGUMENT_NEUTRAL_BUTTON:Ljava/lang/String; = "neutral_button"

.field private static final ARGUMENT_POSITIVE_BUTTON:Ljava/lang/String; = "positive_button"

.field private static final ARGUMENT_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private final mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;-><init>()V

    new-instance v0, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$1;-><init>(Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment;->onDialogClick(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment;->onDialogClick(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment;->onDialogClick(I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const v1, 0x7f0c002f

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030016

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v0, "title"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080063

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080066

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "title"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_7

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    const-string v0, "message"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f080067

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080068

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "message"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_8

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_1
    const-string v0, "positive_button"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "neutral_button"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "negative_button"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    const v0, 0x7f080069

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "positive_button"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f08006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "positive_button"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_9

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_3
    :goto_2
    const-string v0, "neutral_button"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f08006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "neutral_button"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_a

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_4
    :goto_3
    const-string v0, "negative_button"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f08006e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "negative_button"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_b

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment;->isCancelable()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_6
    return-void

    :cond_7
    instance-of v3, v1, Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    instance-of v3, v1, Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_9
    instance-of v3, v1, Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_a
    instance-of v3, v1, Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_b
    instance-of v2, v1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_5

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public final setArguments(Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method setDialogArguments(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
