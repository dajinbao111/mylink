.class Lcom/yf/pad/YfPadServeice$2;
.super Landroid/content/BroadcastReceiver;
.source "YfPadServeice.java"


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
    iput-object p1, p0, Lcom/yf/pad/YfPadServeice$2;->this$0:Lcom/yf/pad/YfPadServeice;

    .line 45
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

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50
    const-string v2, "status"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 51
    .local v1, "status":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 52
    iget-object v2, p0, Lcom/yf/pad/YfPadServeice$2;->this$0:Lcom/yf/pad/YfPadServeice;

    # getter for: Lcom/yf/pad/YfPadServeice;->isConnect:Z
    invoke-static {v2}, Lcom/yf/pad/YfPadServeice;->access$2(Lcom/yf/pad/YfPadServeice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v0, "intent2":Landroid/content/Intent;
    iget-object v2, p0, Lcom/yf/pad/YfPadServeice$2;->this$0:Lcom/yf/pad/YfPadServeice;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/yf/pad/YfPadServeice;->access$3(Lcom/yf/pad/YfPadServeice;Z)V

    .line 88
    .end local v0    # "intent2":Landroid/content/Intent;
    .end local v1    # "status":I
    :cond_0
    :goto_0
    return-void

    .line 60
    .restart local v1    # "status":I
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.yf.dissmisdialog"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .restart local v0    # "intent2":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 63
    iget-object v2, p0, Lcom/yf/pad/YfPadServeice$2;->this$0:Lcom/yf/pad/YfPadServeice;

    invoke-static {v2, v4}, Lcom/yf/pad/YfPadServeice;->access$3(Lcom/yf/pad/YfPadServeice;Z)V

    goto :goto_0

    .line 66
    .end local v0    # "intent2":Landroid/content/Intent;
    .end local v1    # "status":I
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    .restart local v0    # "intent2":Landroid/content/Intent;
    const-string v2, "com.yf.alarm"

    .line 70
    const-string v3, "com.yf.alarm.service.AlarmService"

    .line 69
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 75
    iget-object v2, p0, Lcom/yf/pad/YfPadServeice$2;->this$0:Lcom/yf/pad/YfPadServeice;

    invoke-static {v2, v4}, Lcom/yf/pad/YfPadServeice;->access$1(Lcom/yf/pad/YfPadServeice;Z)V

    goto :goto_0
.end method
