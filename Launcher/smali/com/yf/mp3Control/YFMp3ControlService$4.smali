.class Lcom/yf/mp3Control/YFMp3ControlService$4;
.super Ljava/lang/Thread;
.source "YFMp3ControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yf/mp3Control/YFMp3ControlService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yf/mp3Control/YFMp3ControlService;


# direct methods
.method constructor <init>(Lcom/yf/mp3Control/YFMp3ControlService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yf/mp3Control/YFMp3ControlService$4;->this$0:Lcom/yf/mp3Control/YFMp3ControlService;

    .line 299
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 302
    :goto_0
    sget-boolean v2, Lcom/yf/mp3Control/YFMp3ControlService;->isstop:Z

    if-eqz v2, :cond_0

    .line 313
    return-void

    .line 303
    :cond_0
    iget-object v2, p0, Lcom/yf/mp3Control/YFMp3ControlService$4;->this$0:Lcom/yf/mp3Control/YFMp3ControlService;

    iget-object v2, v2, Lcom/yf/mp3Control/YFMp3ControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 304
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 305
    iget-object v2, p0, Lcom/yf/mp3Control/YFMp3ControlService$4;->this$0:Lcom/yf/mp3Control/YFMp3ControlService;

    iget-object v2, v2, Lcom/yf/mp3Control/YFMp3ControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 307
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
