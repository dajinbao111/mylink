.class public Lcom/yf/mp3Control/AiltakBroadCast;
.super Landroid/content/BroadcastReceiver;
.source "AiltakBroadCast.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 13
    sget-object v1, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 14
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 15
    .local v0, "mainactivity":Landroid/content/Intent;
    const-string v1, "com.android.launcher"

    .line 16
    const-string v2, "com.android.launcher2.NaviPad"

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 28
    .end local v0    # "mainactivity":Landroid/content/Intent;
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-static {p2, p1}, Lcom/yf/mp3Control/AiltakUtil;->getAiltakInfo(Landroid/content/Intent;Landroid/content/Context;)V

    goto :goto_0
.end method
