.class public Lcom/yf/pad/YfPadServeice;
.super Landroid/app/Service;
.source "YfPadServeice.java"


# instance fields
.field private isConnect:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private start_end:Z

.field threadRefesh:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 15
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/yf/pad/YfPadServeice;->mIntentFilter:Landroid/content/IntentFilter;

    .line 16
    iput-boolean v2, p0, Lcom/yf/pad/YfPadServeice;->start_end:Z

    .line 23
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/yf/pad/YfPadServeice$1;

    invoke-direct {v1, p0}, Lcom/yf/pad/YfPadServeice$1;-><init>(Lcom/yf/pad/YfPadServeice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/yf/pad/YfPadServeice;->threadRefesh:Ljava/lang/Thread;

    .line 44
    iput-boolean v2, p0, Lcom/yf/pad/YfPadServeice;->isConnect:Z

    .line 45
    new-instance v0, Lcom/yf/pad/YfPadServeice$2;

    invoke-direct {v0, p0}, Lcom/yf/pad/YfPadServeice$2;-><init>(Lcom/yf/pad/YfPadServeice;)V

    iput-object v0, p0, Lcom/yf/pad/YfPadServeice;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 14
    return-void
.end method

.method static synthetic access$0(Lcom/yf/pad/YfPadServeice;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/yf/pad/YfPadServeice;->start_end:Z

    return v0
.end method

.method static synthetic access$1(Lcom/yf/pad/YfPadServeice;Z)V
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/yf/pad/YfPadServeice;->start_end:Z

    return-void
.end method

.method static synthetic access$2(Lcom/yf/pad/YfPadServeice;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/yf/pad/YfPadServeice;->isConnect:Z

    return v0
.end method

.method static synthetic access$3(Lcom/yf/pad/YfPadServeice;Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/yf/pad/YfPadServeice;->isConnect:Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 95
    iget-object v0, p0, Lcom/yf/pad/YfPadServeice;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/yf/pad/YfPadServeice;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/yf/pad/YfPadServeice;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/yf/pad/YfPadServeice;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/yf/pad/YfPadServeice;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    iget-object v0, p0, Lcom/yf/pad/YfPadServeice;->threadRefesh:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 99
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 104
    iget-object v0, p0, Lcom/yf/pad/YfPadServeice;->threadRefesh:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/pad/YfPadServeice;->threadRefesh:Ljava/lang/Thread;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/yf/pad/YfPadServeice;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yf/pad/YfPadServeice;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    return-void
.end method
