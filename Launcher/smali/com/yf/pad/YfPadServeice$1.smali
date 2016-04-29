.class Lcom/yf/pad/YfPadServeice$1;
.super Ljava/lang/Object;
.source "YfPadServeice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/pad/YfPadServeice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yf/pad/YfPadServeice;


# direct methods
.method constructor <init>(Lcom/yf/pad/YfPadServeice;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yf/pad/YfPadServeice$1;->this$0:Lcom/yf/pad/YfPadServeice;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 28
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/yf/pad/YfPadServeice$1;->this$0:Lcom/yf/pad/YfPadServeice;

    # getter for: Lcom/yf/pad/YfPadServeice;->start_end:Z
    invoke-static {v2}, Lcom/yf/pad/YfPadServeice;->access$0(Lcom/yf/pad/YfPadServeice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    const-wide/16 v2, 0xfa0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "yf.intent.action.service"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "keep_service"

    const-string v3, "yes"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    iget-object v2, p0, Lcom/yf/pad/YfPadServeice$1;->this$0:Lcom/yf/pad/YfPadServeice;

    invoke-virtual {v2, v1}, Lcom/yf/pad/YfPadServeice;->sendBroadcast(Landroid/content/Intent;)V

    .line 38
    iget-object v2, p0, Lcom/yf/pad/YfPadServeice$1;->this$0:Lcom/yf/pad/YfPadServeice;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/yf/pad/YfPadServeice;->access$1(Lcom/yf/pad/YfPadServeice;Z)V

    goto :goto_0

    .line 31
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
