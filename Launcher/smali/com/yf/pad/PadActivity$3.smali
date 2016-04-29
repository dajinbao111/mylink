.class Lcom/yf/pad/PadActivity$3;
.super Landroid/os/Handler;
.source "PadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yf/pad/PadActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/yf/pad/PadActivity$3;->this$0:Lcom/yf/pad/PadActivity;

    .line 165
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 169
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 170
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 203
    :goto_0
    :pswitch_0
    return-void

    .line 172
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 173
    .local v1, "position":I
    iget-object v2, p0, Lcom/yf/pad/PadActivity$3;->this$0:Lcom/yf/pad/PadActivity;

    # invokes: Lcom/yf/pad/PadActivity;->setBackground(I)V
    invoke-static {v2, v1}, Lcom/yf/pad/PadActivity;->access$9(Lcom/yf/pad/PadActivity;I)V

    goto :goto_0

    .line 178
    .end local v1    # "position":I
    :pswitch_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_0

    .line 179
    iget-object v2, p0, Lcom/yf/pad/PadActivity$3;->this$0:Lcom/yf/pad/PadActivity;

    # invokes: Lcom/yf/pad/PadActivity;->refreshUI(Z)V
    invoke-static {v2, v4}, Lcom/yf/pad/PadActivity;->access$10(Lcom/yf/pad/PadActivity;Z)V

    goto :goto_0

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/yf/pad/PadActivity$3;->this$0:Lcom/yf/pad/PadActivity;

    # invokes: Lcom/yf/pad/PadActivity;->refreshUI(Z)V
    invoke-static {v2, v3}, Lcom/yf/pad/PadActivity;->access$10(Lcom/yf/pad/PadActivity;Z)V

    goto :goto_0

    .line 194
    :pswitch_3
    :try_start_0
    iget-object v2, p0, Lcom/yf/pad/PadActivity$3;->this$0:Lcom/yf/pad/PadActivity;

    # getter for: Lcom/yf/pad/PadActivity;->mWindowManager:Landroid/view/IWindowManager;
    invoke-static {v2}, Lcom/yf/pad/PadActivity;->access$11(Lcom/yf/pad/PadActivity;)Landroid/view/IWindowManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 195
    iget-object v2, p0, Lcom/yf/pad/PadActivity$3;->this$0:Lcom/yf/pad/PadActivity;

    # getter for: Lcom/yf/pad/PadActivity;->mWindowManager:Landroid/view/IWindowManager;
    invoke-static {v2}, Lcom/yf/pad/PadActivity;->access$11(Lcom/yf/pad/PadActivity;)Landroid/view/IWindowManager;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/view/IWindowManager;->setAnimationScale(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
