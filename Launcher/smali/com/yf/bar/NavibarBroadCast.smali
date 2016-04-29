.class public Lcom/yf/bar/NavibarBroadCast;
.super Landroid/content/BroadcastReceiver;
.source "NavibarBroadCast.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.fmt.action.FMT_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    invoke-static {p1}, Lcom/yf/bar/NaviBar;->getFMTState(Landroid/content/Context;)V

    .line 21
    :cond_0
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 43
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    return-void
.end method
