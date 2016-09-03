.class Lcom/autonavi/wh/navi/register/activity/RegisterActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/register/activity/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/register/activity/RegisterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity$2;->this$0:Lcom/autonavi/wh/navi/register/activity/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity$2;->this$0:Lcom/autonavi/wh/navi/register/activity/RegisterActivity;

    # invokes: Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->fillInstallCode()Ljava/lang/String;
    invoke-static {v0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->access$000(Lcom/autonavi/wh/navi/register/activity/RegisterActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity$2;->this$0:Lcom/autonavi/wh/navi/register/activity/RegisterActivity;

    const v1, 0x7f0b0143

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->showToast(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity$2;->this$0:Lcom/autonavi/wh/navi/register/activity/RegisterActivity;

    # getter for: Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->mEdtInstallCodeET:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->access$100(Lcom/autonavi/wh/navi/register/activity/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
