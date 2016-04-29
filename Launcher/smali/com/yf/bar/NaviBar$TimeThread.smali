.class public Lcom/yf/bar/NaviBar$TimeThread;
.super Ljava/lang/Thread;
.source "NaviBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/bar/NaviBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yf/bar/NaviBar;


# direct methods
.method public constructor <init>(Lcom/yf/bar/NaviBar;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/yf/bar/NaviBar$TimeThread;->this$0:Lcom/yf/bar/NaviBar;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 199
    :goto_0
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 200
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 201
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 202
    iget-object v2, p0, Lcom/yf/bar/NaviBar$TimeThread;->this$0:Lcom/yf/bar/NaviBar;

    # getter for: Lcom/yf/bar/NaviBar;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/yf/bar/NaviBar;->access$1(Lcom/yf/bar/NaviBar;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
