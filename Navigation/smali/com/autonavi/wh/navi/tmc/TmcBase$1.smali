.class Lcom/autonavi/wh/navi/tmc/TmcBase$1;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/tmc/TmcBase;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/tmc/TmcBase;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/tmc/TmcBase$1;->this$0:Lcom/autonavi/wh/navi/tmc/TmcBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TMC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcast...action is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/autonavi/wh/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "TMC"

    const-string v2, "broadcast...wifi is ok....."

    invoke-static {v0, v2}, Lcom/autonavi/wh/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase$1;->this$0:Lcom/autonavi/wh/navi/tmc/TmcBase;

    # setter for: Lcom/autonavi/wh/navi/tmc/TmcBase;->mIsUpdating:Z
    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/tmc/TmcBase;->access$002(Lcom/autonavi/wh/navi/tmc/TmcBase;Z)Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase$1;->this$0:Lcom/autonavi/wh/navi/tmc/TmcBase;

    invoke-virtual {v0, v1, v1}, Lcom/autonavi/wh/navi/tmc/TmcBase;->update(ZZ)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "TMC"

    const-string v2, "broadcast...wifi is not ok....."

    invoke-static {v0, v2}, Lcom/autonavi/wh/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/tmc/TmcBase$1;->this$0:Lcom/autonavi/wh/navi/tmc/TmcBase;

    # setter for: Lcom/autonavi/wh/navi/tmc/TmcBase;->mIsUpdating:Z
    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/tmc/TmcBase;->access$002(Lcom/autonavi/wh/navi/tmc/TmcBase;Z)Z

    goto :goto_1
.end method
