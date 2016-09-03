.class public Lcom/autonavi/wh/navi/register/activity/RegisterActivity;
.super Lcom/autonavi/wh/navigation/app/NaviActivity;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final DIALOG_ID_REGISTER_FAILED:I = 0x1

.field private static final DIALOG_ID_REGISTER_FAILED_INVALID_ACTIVE_CODE:I = 0x2

.field private static final DIALOG_ID_REGISTER_FAILED_INVALID_DATA:I = 0x3

.field private static final DIALOG_ID_REGISTER_FAILED_INVALID_DEVICE_ID:I = 0x4

.field private static final DIALOG_ID_REGISTER_OK:I = 0x0

.field private static final MAX_REG_CODE_LEN:I = 0x18

.field public static final REQUEST_NETWORK_ACTIVATION:I = 0x5


# instance fields
.field private mDeviceIdTV:Landroid/widget/TextView;

.field private mEdtActiveCodeET:Landroid/widget/EditText;

.field private mEdtInstallCodeET:Landroid/widget/EditText;

.field private mEdtSerialNumET:Landroid/widget/EditText;

.field private mInputTableLayout:Landroid/widget/TableLayout;

.field private mMapVerTV:Landroid/widget/TextView;

.field private mRegisterBTN:Landroid/widget/Button;

.field private mRegisterManager:Lcom/autonavi/navigation/api/register/RegisterManager;

.field private mSoftVersionTV:Landroid/widget/TextView;

.field private mToast:Lcom/autonavi/wh/navi/base/widget/NaviToast;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/wh/navi/register/activity/RegisterActivity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->fillInstallCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/autonavi/wh/navi/register/activity/RegisterActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mEdtInstallCodeET:Landroid/widget/EditText;

    return-object v0
.end method

.method private fillInstallCode()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mRegisterManager:Lcom/autonavi/navigation/api/register/RegisterManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mEdtSerialNumET:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x18

    if-ge v2, v3, :cond_2

    const v1, 0x7f0b014a

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->showToast(I)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mEdtSerialNumET:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mEdtSerialNumET:Landroid/widget/EditText;

    const v2, 0x7f04000d

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mEdtInstallCodeET:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mRegisterManager:Lcom/autonavi/navigation/api/register/RegisterManager;

    invoke-virtual {v2, v1}, Lcom/autonavi/navigation/api/register/RegisterManager;->getInstallCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mEdtInstallCodeET:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private handleRegister()V
    .locals 6

    const v5, 0x7f0b002b

    const/high16 v4, 0x7f0b0000

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->fillInstallCode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mEdtActiveCodeET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    const v0, 0x7f0b014b

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->showToast(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mEdtActiveCodeET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mEdtActiveCodeET:Landroid/widget/EditText;

    const v1, 0x7f04000d

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mEdtSerialNumET:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mRegisterManager:Lcom/autonavi/navigation/api/register/RegisterManager;

    invoke-virtual {v2, v1, v0}, Lcom/autonavi/navigation/api/register/RegisterManager;->register(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/autonavi/navigation/api/register/RegisterException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mRegisterManager:Lcom/autonavi/navigation/api/register/RegisterManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/register/RegisterManager;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;

    invoke-direct {v0}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;-><init>()V

    invoke-virtual {v0, v5}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;->setTitle(I)Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;

    move-result-object v0

    const v1, 0x7f0b0148

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;->setMessage(I)Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;->setPositiveButton(I)Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;->setCancelable(Z)Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;->create()Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->showDialogFragment(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    iget v0, v0, Lcom/autonavi/navigation/api/register/RegisterException;->errorCode:I

    invoke-static {v0}, Lcom/autonavi/navigation/api/register/RegisterException;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;

    invoke-direct {v0}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;-><init>()V

    invoke-virtual {v0, v5}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;->setTitle(I)Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;

    move-result-object v0

    const v1, 0x7f0b0144

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;->setPositiveButton(I)Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;->setCancelable(Z)Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment$Builder;->create()Lcom/autonavi/wh/navi/base/widget/CustomAlertDialogFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->showDialogFragment(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    goto/16 :goto_0
.end method

.method private setContentText()V
    .locals 6

    const v5, 0x7f0b013e

    const/4 v4, 0x0

    const v0, 0x7f080146

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mEdtSerialNumET:Landroid/widget/EditText;

    const v0, 0x7f080147

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mEdtInstallCodeET:Landroid/widget/EditText;

    const v0, 0x7f080148

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mEdtActiveCodeET:Landroid/widget/EditText;

    const v0, 0x7f080149

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mRegisterBTN:Landroid/widget/Button;

    const v0, 0x7f080143

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mSoftVersionTV:Landroid/widget/TextView;

    const v0, 0x7f080142

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mDeviceIdTV:Landroid/widget/TextView;

    const v0, 0x7f080145

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mInputTableLayout:Landroid/widget/TableLayout;

    const v0, 0x7f080144

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mMapVerTV:Landroid/widget/TextView;

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mSoftVersionTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getRegisterManager()Lcom/autonavi/navigation/api/register/RegisterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/register/RegisterManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mDeviceIdTV:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    move-object v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v1, :cond_0

    const v0, 0x7f0b0139

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->showToast(I)V

    :cond_0
    invoke-static {}, Lcom/autonavi/navigation/api/util/AnApiUtils;->getDataVersion()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mMapVerTV:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    move-object v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_1

    if-nez v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mEdtSerialNumET:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mEdtSerialNumET:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mEdtActiveCodeET:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mEdtActiveCodeET:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mEdtInstallCodeET:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mInputTableLayout:Landroid/widget/TableLayout;

    invoke-static {v0, v4}, Lcom/autonavi/wh/view/BaseView;->setViewGroupEnabled(Landroid/view/ViewGroup;Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mRegisterBTN:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mEdtSerialNumET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v2, v1, 0x2

    new-array v2, v2, [Landroid/text/InputFilter;

    invoke-static {v0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/autonavi/wh/text/AcceptableInputFilter;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Lcom/autonavi/wh/text/AcceptableInputFilter;-><init>(I)V

    new-instance v3, Lcom/autonavi/wh/navi/register/activity/RegisterActivity$1;

    invoke-direct {v3, p0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity$1;-><init>(Lcom/autonavi/wh/navi/register/activity/RegisterActivity;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/wh/text/AcceptableInputFilter;->setOnRejectListener(Lcom/autonavi/wh/text/AcceptableInputFilter$OnRejectListener;)V

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    new-instance v3, Landroid/text/InputFilter$AllCaps;

    invoke-direct {v3}, Landroid/text/InputFilter$AllCaps;-><init>()V

    aput-object v3, v2, v1

    iget-object v1, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mEdtSerialNumET:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mEdtSerialNumET:Landroid/widget/EditText;

    new-instance v2, Lcom/autonavi/wh/navi/register/activity/RegisterActivity$2;

    invoke-direct {v2, p0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity$2;-><init>(Lcom/autonavi/wh/navi/register/activity/RegisterActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mEdtActiveCodeET:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mEdtActiveCodeET:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v3, v2, 0x2

    new-array v3, v3, [Landroid/text/InputFilter;

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v0, v3, v2

    add-int/lit8 v0, v2, 0x1

    new-instance v1, Landroid/text/InputFilter$AllCaps;

    invoke-direct {v1}, Landroid/text/InputFilter$AllCaps;-><init>()V

    aput-object v1, v3, v0

    iget-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mEdtActiveCodeET:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void

    :cond_3
    const v0, 0x7f0b0138

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    const v0, 0x7f0b013c

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method


# virtual methods
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
    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->setContentView(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->setTitleSimple(Z)V

    const-string v0, "times"

    const-string v1, "ddddd"

    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getRegisterManager()Lcom/autonavi/navigation/api/register/RegisterManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mRegisterManager:Lcom/autonavi/navigation/api/register/RegisterManager;

    const-string v0, "times"

    const-string v1, "cccc"

    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->setContentText()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->onTerminate()V

    invoke-super {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->onDestroy()V

    return-void
.end method

.method public onDialogCancel(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;)V
    .locals 1

    invoke-virtual {p1}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->getDialogId()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onDialogClick(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->getDialogId()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->handleRegister()V

    const/4 v0, 0x1

    return v0
.end method

.method public onRegister(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->handleRegister()V

    return-void
.end method

.method public showToast(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->showToast(II)V

    return-void
.end method

.method public showToast(II)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mToast:Lcom/autonavi/wh/navi/base/widget/NaviToast;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navi/base/widget/NaviToast;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navi/base/widget/NaviToast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mToast:Lcom/autonavi/wh/navi/base/widget/NaviToast;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mToast:Lcom/autonavi/wh/navi/base/widget/NaviToast;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/wh/navi/base/widget/NaviToast;->show(II)V

    return-void
.end method
