.class public Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;
.super Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final ARGUMENT_CHOICE_MODEL:Ljava/lang/String; = "choice_model"

.field public static final ARGUMENT_CONTENT:Ljava/lang/String; = "content"

.field public static final ARGUMENT_MULTIPLE_CHECKED_BOOLEANS:Ljava/lang/String; = "multiple_check_booleans"

.field public static final ARGUMENT_NEGATIVE_BUTTON:Ljava/lang/String; = "negative_button"

.field public static final ARGUMENT_NEUTRAL_BUTTON:Ljava/lang/String; = "neutral_button"

.field public static final ARGUMENT_NUM_COLUMN:Ljava/lang/String; = "num_column"

.field public static final ARGUMENT_POSITIVE_BUTTON:Ljava/lang/String; = "positive_button"

.field public static final ARGUMENT_SINGLE_CHECKED_ID:Ljava/lang/String; = "single_check_id"

.field public static final ARGUMENT_TITLE:Ljava/lang/String; = "title"

.field public static final MULTIPLE_CHOICE:I = 0x1

.field public static final SINGLE_CHOICE:I = 0x2


# instance fields
.field private mChoiceModel:I

.field private mCurrentSinglePosition:I

.field private mLastPosition:I

.field private mMultipleBooleans:[Z

.field private mNumColumns:I

.field private mOnMultipleCheckedListener:Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$onMultipleCheckedListener;

.field private mOnSingleCheckedListener:Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$onSingleCheckedListener;

.field private mPreSinglePosition:I

.field private final mSelectds:Ljava/util/HashSet;

.field private mSettingAdapter:Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$SettingAdapter;

.field private mSingleCheckedId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;-><init>()V

    iput v1, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mChoiceModel:I

    const/16 v0, 0x8

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mMultipleBooleans:[Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mSelectds:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mSingleCheckedId:I

    iput v1, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mNumColumns:I

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mChoiceModel:I

    return v0
.end method

.method static synthetic access$100(Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;)[Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mMultipleBooleans:[Z

    return-object v0
.end method

.method static synthetic access$200(Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mSelectds:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->setDialogArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method private getCheckedTextView(Landroid/widget/AdapterView;I)Landroid/widget/CheckedTextView;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method private handleCheckStatu(Ljava/util/HashSet;)[Z
    .locals 4

    const/4 v1, 0x0

    const/16 v0, 0x8

    new-array v2, v0, [Z

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mMultipleBooleans:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aput-boolean v1, v2, v0

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private handleMultiple(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mSelectds:Ljava/util/HashSet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mSelectds:Ljava/util/HashSet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, p3}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->getCheckedTextView(Landroid/widget/AdapterView;I)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mLastPosition:I

    if-ne p3, v0, :cond_1

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mLastPosition:I

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_6

    invoke-direct {p0, p1, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->getCheckedTextView(Landroid/widget/AdapterView;I)Landroid/widget/CheckedTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->getCheckedTextView(Landroid/widget/AdapterView;I)Landroid/widget/CheckedTextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mSelectds:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    move v2, v1

    :goto_1
    iget v4, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mLastPosition:I

    add-int/lit8 v4, v4, -0x1

    if-gt v0, v4, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->getCheckedTextView(Landroid/widget/AdapterView;I)Landroid/widget/CheckedTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v1

    :cond_3
    if-eqz v2, :cond_5

    iget v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mLastPosition:I

    invoke-direct {p0, p1, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->getCheckedTextView(Landroid/widget/AdapterView;I)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mSelectds:Ljava/util/HashSet;

    iget v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mLastPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v0, v1

    :goto_2
    iget v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mLastPosition:I

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_6

    invoke-direct {p0, p1, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->getCheckedTextView(Landroid/widget/AdapterView;I)Landroid/widget/CheckedTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p1, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->getCheckedTextView(Landroid/widget/AdapterView;I)Landroid/widget/CheckedTextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mSelectds:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mLastPosition:I

    invoke-direct {p0, p1, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->getCheckedTextView(Landroid/widget/AdapterView;I)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mSelectds:Ljava/util/HashSet;

    iget v1, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mLastPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    return-void

    :cond_7
    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mSelectds:Ljava/util/HashSet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, p3}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->getCheckedTextView(Landroid/widget/AdapterView;I)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mSelectds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mLastPosition:I

    invoke-direct {p0, p1, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->getCheckedTextView(Landroid/widget/AdapterView;I)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mSelectds:Ljava/util/HashSet;

    iget v1, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mLastPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private setDialogArguments(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08006a

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mChoiceModel:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mSelectds:Ljava/util/HashSet;

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->handleCheckStatu(Ljava/util/HashSet;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mMultipleBooleans:[Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mOnMultipleCheckedListener:Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$onMultipleCheckedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mOnMultipleCheckedListener:Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$onMultipleCheckedListener;

    iget-object v1, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mMultipleBooleans:[Z

    invoke-interface {v0, v1}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$onMultipleCheckedListener;->onMultipleChecked([Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->dismiss()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mChoiceModel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mOnSingleCheckedListener:Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$onSingleCheckedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mOnSingleCheckedListener:Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$onSingleCheckedListener;

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->getDialogId()I

    move-result v1

    iget v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mSingleCheckedId:I

    invoke-interface {v0, v1, v2}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$onSingleCheckedListener;->onSingleChecked(II)V

    goto :goto_0

    :cond_3
    const v1, 0x7f08006e

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->dismiss()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const v1, 0x7f0c002f

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const v0, 0x7f03003e

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mChoiceModel:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct/range {p0 .. p5}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->handleMultiple(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mChoiceModel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    long-to-int v0, p4

    iput v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mSingleCheckedId:I

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mSettingAdapter:Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$SettingAdapter;

    iget v1, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mSingleCheckedId:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$SettingAdapter;->setSingleCheckedId(J)V

    iput p3, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mCurrentSinglePosition:I

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mSettingAdapter:Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$SettingAdapter;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$SettingAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->onStart()V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/support/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07000e

    invoke-virtual {v2, v3, v0, v0}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    float-to-int v0, v0

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const v6, 0x7f08006a

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->getTargetFragment()Lcom/autonavi/wh/support/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$onMultipleCheckedListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->getTargetFragment()Lcom/autonavi/wh/support/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$onMultipleCheckedListener;

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mOnMultipleCheckedListener:Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$onMultipleCheckedListener;

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->getTargetFragment()Lcom/autonavi/wh/support/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$onSingleCheckedListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->getTargetFragment()Lcom/autonavi/wh/support/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$onSingleCheckedListener;

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mOnSingleCheckedListener:Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$onSingleCheckedListener;

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v0, "title"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

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

    :cond_2
    :goto_0
    const-string v0, "choice_model"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "choice_model"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_8

    iput v4, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mChoiceModel:I

    const-string v0, "multiple_check_booleans"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "multiple_check_booleans"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mMultipleBooleans:[Z

    :cond_3
    const-string v0, "num_column"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "num_column"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mNumColumns:I

    :cond_4
    :goto_1
    const-string v0, "content"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "content"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const v1, 0x7f080164

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setFocusable(Z)V

    new-instance v2, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$SettingAdapter;

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$SettingAdapter;-><init>(Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mSettingAdapter:Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$SettingAdapter;

    iget-object v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mSettingAdapter:Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$SettingAdapter;

    invoke-virtual {v2, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$SettingAdapter;->setDataSource(Ljava/util/ArrayList;)V

    iget v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mChoiceModel:I

    if-ne v2, v4, :cond_a

    iget-object v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mSettingAdapter:Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$SettingAdapter;

    iget-object v3, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mMultipleBooleans:[Z

    invoke-virtual {v2, v3}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$SettingAdapter;->setMultipleChecked([Z)V

    iget v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mNumColumns:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mLastPosition:I

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mSettingAdapter:Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$SettingAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_6
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08006e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_7
    instance-of v3, v1, Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "single_check_id"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "single_check_id"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mSingleCheckedId:I

    :cond_9
    iput v5, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mChoiceModel:I

    goto/16 :goto_1

    :cond_a
    iget v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mChoiceModel:I

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mSettingAdapter:Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$SettingAdapter;

    iget v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;->mSingleCheckedId:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$SettingAdapter;->setSingleCheckedId(J)V

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_2
.end method
