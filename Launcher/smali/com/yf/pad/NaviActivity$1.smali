.class Lcom/yf/pad/NaviActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "NaviActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/pad/NaviActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yf/pad/NaviActivity;


# direct methods
.method constructor <init>(Lcom/yf/pad/NaviActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yf/pad/NaviActivity$1;->this$0:Lcom/yf/pad/NaviActivity;

    .line 215
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 219
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.yftech.action.btconnectstatus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    const-string v1, "connect"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 222
    .local v0, "nBtConnect":I
    if-ne v0, v4, :cond_1

    .line 223
    iget-object v1, p0, Lcom/yf/pad/NaviActivity$1;->this$0:Lcom/yf/pad/NaviActivity;

    invoke-static {v1, v4}, Lcom/yf/pad/NaviActivity;->access$0(Lcom/yf/pad/NaviActivity;Z)V

    .line 227
    :goto_0
    iget-object v1, p0, Lcom/yf/pad/NaviActivity$1;->this$0:Lcom/yf/pad/NaviActivity;

    # getter for: Lcom/yf/pad/NaviActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/yf/pad/NaviActivity;->access$1(Lcom/yf/pad/NaviActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 234
    .end local v0    # "nBtConnect":I
    :cond_0
    :goto_1
    return-void

    .line 225
    .restart local v0    # "nBtConnect":I
    :cond_1
    iget-object v1, p0, Lcom/yf/pad/NaviActivity$1;->this$0:Lcom/yf/pad/NaviActivity;

    invoke-static {v1, v3}, Lcom/yf/pad/NaviActivity;->access$0(Lcom/yf/pad/NaviActivity;Z)V

    goto :goto_0

    .line 228
    .end local v0    # "nBtConnect":I
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.yftech.auxevent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/yf/pad/NaviActivity$1;->this$0:Lcom/yf/pad/NaviActivity;

    const-string v2, "insert"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/yf/pad/NaviActivity;->access$2(Lcom/yf/pad/NaviActivity;Z)V

    .line 230
    iget-object v1, p0, Lcom/yf/pad/NaviActivity$1;->this$0:Lcom/yf/pad/NaviActivity;

    const-string v2, "dvrinsert"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/yf/pad/NaviActivity;->access$3(Lcom/yf/pad/NaviActivity;Z)V

    .line 232
    iget-object v1, p0, Lcom/yf/pad/NaviActivity$1;->this$0:Lcom/yf/pad/NaviActivity;

    # getter for: Lcom/yf/pad/NaviActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/yf/pad/NaviActivity;->access$1(Lcom/yf/pad/NaviActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
