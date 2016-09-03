.class public Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;
.super Lcom/autonavi/wh/navigation/app/NaviDialogFragment;


# static fields
.field private static final ARGUMENT_NEGATIVE_BUTTON_ICON:Ljava/lang/String; = "negative_button_icon"

.field private static final ARGUMENT_NEGATIVE_BUTTON_TEXT:Ljava/lang/String; = "negative_button_text"

.field private static final ARGUMENT_POSITIVE_BUTTON_ICON:Ljava/lang/String; = "positive_button_icon"

.field private static final ARGUMENT_POSITIVE_BUTTON_TEXT:Ljava/lang/String; = "positive_button_text"


# instance fields
.field private final mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;-><init>()V

    new-instance v0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$1;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$1;-><init>(Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;->onDialogClick(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;->onDialogClick(I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const v1, 0x7f0c002f

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03002c

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const v4, 0x7f080129

    const v3, 0x7f080127

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v0, "positive_button_text"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "negative_button_text"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    const-string v0, "positive_button_text"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f08006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "positive_button_text"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    const-string v0, "positive_button_icon"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "positive_button_icon"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const v0, 0x7f080126

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    const-string v0, "negative_button_text"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f08006e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "negative_button_text"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    :goto_1
    const-string v0, "negative_button_icon"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "negative_button_icon"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const v0, 0x7f080128

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    return-void

    :cond_5
    instance-of v0, v1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    instance-of v0, v1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
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
