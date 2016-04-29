.class Lcom/yf/pad/PadActivity$BtCallStatusObserver;
.super Landroid/database/ContentObserver;
.source "PadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/pad/PadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BtCallStatusObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yf/pad/PadActivity;


# direct methods
.method public constructor <init>(Lcom/yf/pad/PadActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/yf/pad/PadActivity$BtCallStatusObserver;->this$0:Lcom/yf/pad/PadActivity;

    .line 101
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 102
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 105
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 106
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 107
    .local v0, "msg":Landroid/os/Message;
    const-string v1, "ygl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onChange"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yf/pad/PadActivity$BtCallStatusObserver;->this$0:Lcom/yf/pad/PadActivity;

    invoke-virtual {v3}, Lcom/yf/pad/PadActivity;->getPhoneStatus()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p0, Lcom/yf/pad/PadActivity$BtCallStatusObserver;->this$0:Lcom/yf/pad/PadActivity;

    invoke-virtual {v1}, Lcom/yf/pad/PadActivity;->getPhoneStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iput v6, v0, Landroid/os/Message;->what:I

    .line 110
    iput v5, v0, Landroid/os/Message;->arg1:I

    .line 111
    iget-object v1, p0, Lcom/yf/pad/PadActivity$BtCallStatusObserver;->this$0:Lcom/yf/pad/PadActivity;

    # getter for: Lcom/yf/pad/PadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/yf/pad/PadActivity;->access$4(Lcom/yf/pad/PadActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 112
    iget-object v1, p0, Lcom/yf/pad/PadActivity$BtCallStatusObserver;->this$0:Lcom/yf/pad/PadActivity;

    invoke-static {v1, v5}, Lcom/yf/pad/PadActivity;->access$8(Lcom/yf/pad/PadActivity;Z)V

    .line 119
    :goto_0
    return-void

    .line 114
    :cond_0
    iput v6, v0, Landroid/os/Message;->what:I

    .line 115
    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 116
    iget-object v1, p0, Lcom/yf/pad/PadActivity$BtCallStatusObserver;->this$0:Lcom/yf/pad/PadActivity;

    # getter for: Lcom/yf/pad/PadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/yf/pad/PadActivity;->access$4(Lcom/yf/pad/PadActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    iget-object v1, p0, Lcom/yf/pad/PadActivity$BtCallStatusObserver;->this$0:Lcom/yf/pad/PadActivity;

    invoke-static {v1, v4}, Lcom/yf/pad/PadActivity;->access$8(Lcom/yf/pad/PadActivity;Z)V

    goto :goto_0
.end method
