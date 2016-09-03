.class Lcom/autonavi/wh/navi/register/activity/RegisterActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/wh/text/AcceptableInputFilter$OnRejectListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/register/activity/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/register/activity/RegisterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity$1;->this$0:Lcom/autonavi/wh/navi/register/activity/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRejected(Lcom/autonavi/wh/text/AcceptableInputFilter;C)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/register/activity/RegisterActivity$1;->this$0:Lcom/autonavi/wh/navi/register/activity/RegisterActivity;

    const v1, 0x7f0b0149

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;->showToast(I)V

    return-void
.end method
