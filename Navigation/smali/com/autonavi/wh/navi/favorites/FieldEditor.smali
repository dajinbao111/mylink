.class public Lcom/autonavi/wh/navi/favorites/FieldEditor;
.super Lcom/autonavi/wh/navigation/app/NaviFragment;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/autonavi/wh/view/ClickRepeater$OnRepeatListener;


# static fields
.field public static final EXTRA_ALLOW_EMPTY:Ljava/lang/String; = "extra_allow_empty"

.field public static final EXTRA_ID:Ljava/lang/String; = "extra_id"

.field public static final EXTRA_INPUT_TYPE:Ljava/lang/String; = "extra_input_type"

.field public static final EXTRA_MAX_LEN:Ljava/lang/String; = "extra_max_len"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "extra_text"

.field public static final EXTRA_TIPS_EMPTY_STRING_NOT_ALLOW:Ljava/lang/String; = "extra_tips_empty_string_not_allow"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "extra_title"


# instance fields
.field private mAllowEmpty:Z

.field private mBtnBack:Landroid/widget/ImageButton;

.field private mBtnClear:Landroid/widget/ImageView;

.field private mEdText:Ljava/lang/String;

.field private mEtText:Lcom/autonavi/wh/ime/widget/EditText;

.field private mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

.field private mId:I

.field private mInputMethodView:Lcom/autonavi/wh/ime/widget/InputMethodView;

.field private mInputType:I

.field private mMaxLen:I

.field private mTips:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;-><init>()V

    return-void
.end method

.method private doBtnTextBackClicked()V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mEtText:Lcom/autonavi/wh/ime/widget/EditText;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x43

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/ime/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mEdText:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mEdText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mBtnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setPressed(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mBtnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mBtnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mBtnClear:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mBtnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mBtnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mBtnClear:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0800d2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mEtText:Lcom/autonavi/wh/ime/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/ime/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f0800d3

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/favorites/FieldEditor;->doBtnTextBackClicked()V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onCreateView(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FieldEditor;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FieldEditor;->popBack()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FieldEditor;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-string v0, "extra_title"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/favorites/FieldEditor;->setTitle(I)V

    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/favorites/FieldEditor;->setContentView(I)V

    const-string v0, "extra_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mId:I

    const-string v0, "extra_max_len"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mMaxLen:I

    const-string v0, "extra_allow_empty"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mAllowEmpty:Z

    const-string v0, "extra_tips_empty_string_not_allow"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mTips:I

    const-string v0, "extra_input_type"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mInputType:I

    const v0, 0x7f0800d3

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/favorites/FieldEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mBtnBack:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mBtnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mBtnBack:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/autonavi/wh/view/ClickRepeater;->attach(Landroid/view/View;)Lcom/autonavi/wh/view/ClickRepeater;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/view/ClickRepeater;->setOnRepeatListener(Lcom/autonavi/wh/view/ClickRepeater$OnRepeatListener;)Lcom/autonavi/wh/view/ClickRepeater;

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mBtnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mBtnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setFocusable(Z)V

    const v0, 0x7f0800d2

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/favorites/FieldEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mBtnClear:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mBtnClear:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080093

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/favorites/FieldEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/ime/widget/EditText;

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mEtText:Lcom/autonavi/wh/ime/widget/EditText;

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mEtText:Lcom/autonavi/wh/ime/widget/EditText;

    invoke-virtual {v0, v2}, Lcom/autonavi/wh/ime/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mEtText:Lcom/autonavi/wh/ime/widget/EditText;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/ime/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mEtText:Lcom/autonavi/wh/ime/widget/EditText;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/ime/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mMaxLen:I

    if-eq v0, v5, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mEtText:Lcom/autonavi/wh/ime/widget/EditText;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    array-length v2, v0

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    iget v4, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mMaxLen:I

    invoke-direct {v0, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v0, v3, v2

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mEtText:Lcom/autonavi/wh/ime/widget/EditText;

    invoke-virtual {v0, v3}, Lcom/autonavi/wh/ime/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mEtText:Lcom/autonavi/wh/ime/widget/EditText;

    const-string v2, "extra_text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/ime/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mEtText:Lcom/autonavi/wh/ime/widget/EditText;

    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mEtText:Lcom/autonavi/wh/ime/widget/EditText;

    invoke-virtual {v1}, Lcom/autonavi/wh/ime/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/ime/widget/EditText;->setSelection(I)V

    iget v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mInputType:I

    if-eq v0, v5, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mEtText:Lcom/autonavi/wh/ime/widget/EditText;

    iget v1, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mInputType:I

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/ime/widget/EditText;->setRawInputType(I)V

    :cond_2
    const v0, 0x7f0800d4

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/favorites/FieldEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/ime/widget/InputMethodView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mInputMethodView:Lcom/autonavi/wh/ime/widget/InputMethodView;

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mInputMethodView:Lcom/autonavi/wh/ime/widget/InputMethodView;

    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mEtText:Lcom/autonavi/wh/ime/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/ime/widget/InputMethodView;->connect(Lcom/autonavi/wh/ime/widget/EditText;)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mInputMethodView:Lcom/autonavi/wh/ime/widget/InputMethodView;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->disconnect()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mInputMethodView:Lcom/autonavi/wh/ime/widget/InputMethodView;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->release()V

    invoke-super {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onDestroy()V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FieldEditor;->isUserInteractable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mAllowEmpty:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mEtText:Lcom/autonavi/wh/ime/widget/EditText;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget v1, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mTips:I

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "extra_id"

    iget v2, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_text"

    iget-object v2, p0, Lcom/autonavi/wh/navi/favorites/FieldEditor;->mEtText:Lcom/autonavi/wh/ime/widget/EditText;

    invoke-virtual {v2}, Lcom/autonavi/wh/ime/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/wh/navi/favorites/FieldEditor;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FieldEditor;->popBack()V

    goto :goto_1
.end method

.method public onRepeat(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/favorites/FieldEditor;->doBtnTextBackClicked()V

    return-void
.end method

.method public onRepeatEnd(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onRepeatStart(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
