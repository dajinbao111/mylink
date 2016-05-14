.class public Lcom/autonavi/xm/navigation/app/AlertDialogFragment;
.super Lcom/autonavi/xm/navigation/app/NaviDialogFragment;


# static fields
.field private static final ARGUMENT_MESSAGE:Ljava/lang/String; = "message"

.field private static final ARGUMENT_NEGATIVE_BUTTON:Ljava/lang/String; = "negative_button"

.field private static final ARGUMENT_NEUTRAL_BUTTON:Ljava/lang/String; = "neutral_button"

.field private static final ARGUMENT_POSITIVE_BUTTON:Ljava/lang/String; = "positive_button"

.field private static final ARGUMENT_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/app/NaviDialogFragment;-><init>()V

    new-instance v0, Lcom/autonavi/xm/navigation/app/AlertDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navigation/app/AlertDialogFragment$1;-><init>(Lcom/autonavi/xm/navigation/app/AlertDialogFragment;)V

    iput-object v0, p0, Lcom/autonavi/xm/navigation/app/AlertDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/autonavi/xm/navigation/app/NaviDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    sget v1, Lcom/autonavi/xm/navigation/lib/R$style;->Theme_Dialog_NoTitleBar:I

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/xm/navigation/app/AlertDialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    sget v0, Lcom/autonavi/xm/navigation/lib/R$layout;->alert_dialog:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/app/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v0, "title"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/autonavi/xm/navigation/lib/R$id;->top_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/autonavi/xm/navigation/lib/R$id;->alert_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "title"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_a

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    const-string v0, "message"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/autonavi/xm/navigation/lib/R$id;->content_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/autonavi/xm/navigation/lib/R$id;->message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "message"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_b

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_1
    const-string v0, "positive_button"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "neutral_button"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "negative_button"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_2
    sget v0, Lcom/autonavi/xm/navigation/lib/R$id;->button_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "positive_button"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget v0, Lcom/autonavi/xm/navigation/lib/R$id;->button_positive:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/autonavi/xm/navigation/app/AlertDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "positive_button"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_c

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_3
    :goto_2
    move v2, v3

    :goto_3
    const-string v0, "neutral_button"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget v0, Lcom/autonavi/xm/navigation/lib/R$id;->button_neutral:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/autonavi/xm/navigation/app/AlertDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "neutral_button"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Ljava/lang/Integer;

    if-eqz v5, :cond_d

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_4
    :goto_4
    move v5, v3

    :goto_5
    const-string v0, "negative_button"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget v0, Lcom/autonavi/xm/navigation/lib/R$id;->button_negative:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/autonavi/xm/navigation/app/AlertDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "negative_button"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v6, v1, Ljava/lang/Integer;

    if-eqz v6, :cond_e

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_5
    :goto_6
    if-eqz v5, :cond_6

    if-eqz v2, :cond_6

    sget v0, Lcom/autonavi/xm/navigation/lib/R$id;->button_divider_1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    if-eqz v3, :cond_8

    if-nez v5, :cond_7

    if-eqz v2, :cond_8

    :cond_7
    sget v0, Lcom/autonavi/xm/navigation/lib/R$id;->button_divider_2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/app/AlertDialogFragment;->isCancelable()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/app/AlertDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/app/AlertDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/autonavi/xm/navigation/lib/R$bool;->config_closeDialogWhenTouchOutside:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_9
    return-void

    :cond_a
    instance-of v2, v1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_b
    instance-of v2, v1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_c
    instance-of v2, v1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_d
    instance-of v5, v1, Ljava/lang/CharSequence;

    if-eqz v5, :cond_4

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_e
    instance-of v6, v1, Ljava/lang/CharSequence;

    if-eqz v6, :cond_5

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_f
    move v3, v4

    goto :goto_6

    :cond_10
    move v5, v4

    goto/16 :goto_5

    :cond_11
    move v2, v4

    goto/16 :goto_3
.end method

.method public final setArguments(Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method setDialogArguments(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/autonavi/xm/navigation/app/NaviDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
