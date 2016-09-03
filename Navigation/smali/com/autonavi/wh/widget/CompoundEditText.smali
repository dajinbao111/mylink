.class public Lcom/autonavi/wh/widget/CompoundEditText;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mAutoEditText:Landroid/widget/AutoCompleteTextView;

.field private final mExtraText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/autonavi/wh/widget/CompoundEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/wh/widget/CompoundEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget v0, Lcom/autonavi/wh/framework/R$layout;->compound_edit_text:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/autonavi/wh/framework/R$id;->edit_text:I

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/widget/CompoundEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/autonavi/wh/widget/CompoundEditText;->mAutoEditText:Landroid/widget/AutoCompleteTextView;

    sget v0, Lcom/autonavi/wh/framework/R$id;->extra_text:I

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/widget/CompoundEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/widget/CompoundEditText;->mExtraText:Landroid/widget/TextView;

    sget v0, Lcom/autonavi/wh/framework/R$id;->dropDown:I

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/widget/CompoundEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundEditText;->mAutoEditText:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundEditText;->mAutoEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/autonavi/wh/framework/R$id;->dropDown:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundEditText;->mAutoEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundEditText;->mAutoEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setExtraText(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundEditText;->mExtraText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setExtraText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundEditText;->mExtraText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHint(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundEditText;->mAutoEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setHint(I)V

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundEditText;->mAutoEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setImeOptions(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundEditText;->mAutoEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundEditText;->mAutoEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public setText(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundEditText;->mAutoEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundEditText;->mAutoEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
