.class Lcom/yf/mp3Control/YFMp3ControlService$2;
.super Ljava/lang/Object;
.source "YFMp3ControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/mp3Control/YFMp3ControlService;
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
    iput-object p1, p0, Lcom/yf/mp3Control/YFMp3ControlService$2;->this$0:Lcom/yf/mp3Control/YFMp3ControlService;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 160
    iget-object v0, p0, Lcom/yf/mp3Control/YFMp3ControlService$2;->this$0:Lcom/yf/mp3Control/YFMp3ControlService;

    iget-object v0, v0, Lcom/yf/mp3Control/YFMp3ControlService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/mp3Control/YFMp3ControlService$2;->this$0:Lcom/yf/mp3Control/YFMp3ControlService;

    iget-object v1, v1, Lcom/yf/mp3Control/YFMp3ControlService;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    return-void
.end method
