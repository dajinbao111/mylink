.class public Lcom/autonavi/xm/ime/widget/InputMethodPicker;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mOnInputMethodPickedListener:Lcom/autonavi/xm/ime/widget/InputMethodPicker$OnInputMethodPickedListener;

.field private mPopupWindow:Lcom/autonavi/xm/ime/widget/StackablePopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/autonavi/xm/ime/widget/InputMethodPicker;->onCreate(Landroid/content/Context;)V

    return-void
.end method

.method private onCreate(Landroid/content/Context;)V
    .locals 3

    const/4 v1, -0x2

    new-instance v0, Lcom/autonavi/xm/ime/widget/StackablePopupWindow;

    invoke-direct {v0, p1}, Lcom/autonavi/xm/ime/widget/StackablePopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/xm/ime/widget/InputMethodPicker;->mPopupWindow:Lcom/autonavi/xm/ime/widget/StackablePopupWindow;

    iget-object v0, p0, Lcom/autonavi/xm/ime/widget/InputMethodPicker;->mPopupWindow:Lcom/autonavi/xm/ime/widget/StackablePopupWindow;

    invoke-virtual {v0, v1, v1}, Lcom/autonavi/xm/ime/widget/StackablePopupWindow;->setWindowLayoutMode(II)V

    iget-object v0, p0, Lcom/autonavi/xm/ime/widget/InputMethodPicker;->mPopupWindow:Lcom/autonavi/xm/ime/widget/StackablePopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/ime/widget/StackablePopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/autonavi/xm/ime/widget/InputMethodPicker;->mPopupWindow:Lcom/autonavi/xm/ime/widget/StackablePopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/ime/widget/StackablePopupWindow;->setFocusable(Z)V

    sget v0, Lcom/autonavi/xm/ime/R$layout;->input_method_picker:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/autonavi/xm/ime/R$id;->input_method_handwriting:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/autonavi/xm/ime/R$id;->input_method_first_letter:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/autonavi/xm/ime/R$id;->input_method_pinyin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/autonavi/xm/ime/R$id;->input_method_latin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/autonavi/xm/ime/widget/InputMethodPicker;->mPopupWindow:Lcom/autonavi/xm/ime/widget/StackablePopupWindow;

    invoke-virtual {v1, v0}, Lcom/autonavi/xm/ime/widget/StackablePopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/autonavi/xm/ime/widget/InputMethodPicker;->mPopupWindow:Lcom/autonavi/xm/ime/widget/StackablePopupWindow;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/ime/widget/StackablePopupWindow;->setWidth(I)V

    iget-object v1, p0, Lcom/autonavi/xm/ime/widget/InputMethodPicker;->mPopupWindow:Lcom/autonavi/xm/ime/widget/StackablePopupWindow;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/autonavi/xm/ime/widget/StackablePopupWindow;->setHeight(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/ime/widget/InputMethodPicker;->mPopupWindow:Lcom/autonavi/xm/ime/widget/StackablePopupWindow;

    invoke-virtual {v0}, Lcom/autonavi/xm/ime/widget/StackablePopupWindow;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/autonavi/xm/ime/widget/InputMethodPicker;->dismiss()V

    iget-object v1, p0, Lcom/autonavi/xm/ime/widget/InputMethodPicker;->mOnInputMethodPickedListener:Lcom/autonavi/xm/ime/widget/InputMethodPicker$OnInputMethodPickedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xm/ime/widget/InputMethodPicker;->mOnInputMethodPickedListener:Lcom/autonavi/xm/ime/widget/InputMethodPicker$OnInputMethodPickedListener;

    invoke-interface {v1, v0}, Lcom/autonavi/xm/ime/widget/InputMethodPicker$OnInputMethodPickedListener;->onInputMethodPicked(I)V

    :cond_0
    return-void
.end method

.method public setOnInputMethodPickedListener(Lcom/autonavi/xm/ime/widget/InputMethodPicker$OnInputMethodPickedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/ime/widget/InputMethodPicker;->mOnInputMethodPickedListener:Lcom/autonavi/xm/ime/widget/InputMethodPicker$OnInputMethodPickedListener;

    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/ime/widget/InputMethodPicker;->mPopupWindow:Lcom/autonavi/xm/ime/widget/StackablePopupWindow;

    const/4 v1, 0x0

    const/16 v2, -0xa

    invoke-virtual {v0, p1, v1, v2}, Lcom/autonavi/xm/ime/widget/StackablePopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method
