.class Lcom/yf/pad/PadActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "PadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/pad/PadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yf/pad/PadActivity;


# direct methods
.method constructor <init>(Lcom/yf/pad/PadActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yf/pad/PadActivity$2;->this$0:Lcom/yf/pad/PadActivity;

    .line 320
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 324
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.yftech.action.btconnectstatus"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 325
    const-string v3, "connect"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 328
    .local v1, "nBtConnect":I
    if-ne v1, v6, :cond_1

    .line 329
    iget-object v3, p0, Lcom/yf/pad/PadActivity$2;->this$0:Lcom/yf/pad/PadActivity;

    invoke-static {v3, v6}, Lcom/yf/pad/PadActivity;->access$3(Lcom/yf/pad/PadActivity;Z)V

    .line 346
    .end local v1    # "nBtConnect":I
    :cond_0
    :goto_0
    return-void

    .line 331
    .restart local v1    # "nBtConnect":I
    :cond_1
    iget-object v3, p0, Lcom/yf/pad/PadActivity$2;->this$0:Lcom/yf/pad/PadActivity;

    invoke-static {v3, v5}, Lcom/yf/pad/PadActivity;->access$3(Lcom/yf/pad/PadActivity;Z)V

    goto :goto_0

    .line 333
    .end local v1    # "nBtConnect":I
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.yf.WallPaper"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 334
    const-string v3, "position"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 336
    .local v2, "position":I
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 337
    .local v0, "msg":Landroid/os/Message;
    iput v6, v0, Landroid/os/Message;->what:I

    .line 338
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 339
    iget-object v3, p0, Lcom/yf/pad/PadActivity$2;->this$0:Lcom/yf/pad/PadActivity;

    # getter for: Lcom/yf/pad/PadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/yf/pad/PadActivity;->access$4(Lcom/yf/pad/PadActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 340
    iget-object v3, p0, Lcom/yf/pad/PadActivity$2;->this$0:Lcom/yf/pad/PadActivity;

    # invokes: Lcom/yf/pad/PadActivity;->setBackValue(I)V
    invoke-static {v3, v2}, Lcom/yf/pad/PadActivity;->access$5(Lcom/yf/pad/PadActivity;I)V

    goto :goto_0

    .line 341
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "position":I
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.yftech.auxevent"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 342
    iget-object v3, p0, Lcom/yf/pad/PadActivity$2;->this$0:Lcom/yf/pad/PadActivity;

    const-string v4, "insert"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/yf/pad/PadActivity;->access$6(Lcom/yf/pad/PadActivity;Z)V

    .line 343
    iget-object v3, p0, Lcom/yf/pad/PadActivity$2;->this$0:Lcom/yf/pad/PadActivity;

    const-string v4, "dvrinsert"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/yf/pad/PadActivity;->access$7(Lcom/yf/pad/PadActivity;Z)V

    goto :goto_0
.end method
