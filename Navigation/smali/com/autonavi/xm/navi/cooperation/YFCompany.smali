.class public Lcom/autonavi/xm/navi/cooperation/YFCompany;
.super Ljava/lang/Object;


# static fields
.field public static final NOTIFY_ACTION_KEY:Ljava/lang/String; = "notify"

.field private static final SET_SPEED_RATE:I = 0x3e8

.field public static final VALUE_ACC_OFF:I = 0x1

.field public static final VALUE_LIGHT_OFF:I = 0x4

.field public static final VALUE_LIGHT_ON:I = 0x3

.field public static final VALUE_REMAIN:I = 0x2

.field public static final YFCOMPANY_BROADCAST_NOTIFY_ACTION:Ljava/lang/String; = "com.yftech.notify"


# instance fields
.field public mApp:Lcom/autonavi/xm/navi/base/application/T7LAApplication;

.field protected mContext:Landroid/content/Context;

.field protected mHasRegister:Z

.field private final mSpeedHandler:Landroid/os/Handler;

.field protected mYfCompanyIntentFilter:Landroid/content/IntentFilter;

.field protected speedRunnable:Ljava/lang/Runnable;

.field protected yfCompanyReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/xm/navi/base/application/T7LAApplication;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/cooperation/YFCompany;->mHasRegister:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/navi/cooperation/YFCompany;->mSpeedHandler:Landroid/os/Handler;

    new-instance v0, Lcom/autonavi/xm/navi/cooperation/YFCompany$1;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navi/cooperation/YFCompany$1;-><init>(Lcom/autonavi/xm/navi/cooperation/YFCompany;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/cooperation/YFCompany;->speedRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/autonavi/xm/navi/cooperation/YFCompany$2;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navi/cooperation/YFCompany$2;-><init>(Lcom/autonavi/xm/navi/cooperation/YFCompany;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/cooperation/YFCompany;->yfCompanyReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/autonavi/xm/navi/cooperation/YFCompany;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/autonavi/xm/navi/cooperation/YFCompany;->mApp:Lcom/autonavi/xm/navi/base/application/T7LAApplication;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.yftech.notify"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/cooperation/YFCompany;->mYfCompanyIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xm/navi/cooperation/YFCompany;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/cooperation/YFCompany;->mSpeedHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/autonavi/xm/navi/cooperation/YFCompany;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/autonavi/xm/navi/cooperation/YFCompany;->handleReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private handleReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "YFCompany"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/xm/navi/base/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.yftech.notify"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "notify"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_1

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getSettings()Lcom/autonavi/navigation/api/settings/Settings;

    move-result-object v0

    const-string v1, "volume"

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/navigation/api/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xm/navi/cooperation/YFCompany;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "navi_volume"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/cooperation/YFCompany;->mApp:Lcom/autonavi/xm/navi/base/application/T7LAApplication;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/application/T7LAApplication;->onTerminate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/AnApi;->getSettings()Lcom/autonavi/navigation/api/settings/Settings;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xm/navi/cooperation/YFCompany;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "day_and_night"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    if-ne v2, v4, :cond_0

    const-string v0, "day_night_mode"

    invoke-virtual {v1, v0, v6}, Lcom/autonavi/navigation/api/settings/Settings;->putInt(Ljava/lang/String;I)Z

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/settings/Settings;->save()Z

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    if-ne v2, v4, :cond_0

    const-string v0, "day_night_mode"

    invoke-virtual {v1, v0, v5}, Lcom/autonavi/navigation/api/settings/Settings;->putInt(Ljava/lang/String;I)Z

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/settings/Settings;->save()Z

    goto :goto_0
.end method

.method public static simulateAccOffBroadCast(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yftech.notify"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "notify"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static simulateLightOffBroadCast(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yftech.notify"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "notify"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static simulateLightOnBroadCast(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yftech.notify"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "notify"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public endToListenSpeed()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/cooperation/YFCompany;->mSpeedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/xm/navi/cooperation/YFCompany;->speedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hasRegisterReceiver()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/cooperation/YFCompany;->mHasRegister:Z

    return v0
.end method

.method public isHeadLightOn()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/cooperation/YFCompany;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/a/a/a;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public registerMuteReceiver()V
    .locals 0

    return-void
.end method

.method public registerReceiver()V
    .locals 3

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/cooperation/YFCompany;->mHasRegister:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/cooperation/YFCompany;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/autonavi/xm/navi/cooperation/YFCompany;->yfCompanyReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/autonavi/xm/navi/cooperation/YFCompany;->mYfCompanyIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/cooperation/YFCompany;->mHasRegister:Z

    :cond_0
    return-void
.end method

.method public startToListenSpeed()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/cooperation/YFCompany;->mSpeedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/xm/navi/cooperation/YFCompany;->speedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unRegisterReceiver()V
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/cooperation/YFCompany;->mHasRegister:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/cooperation/YFCompany;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/autonavi/xm/navi/cooperation/YFCompany;->yfCompanyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/cooperation/YFCompany;->mHasRegister:Z

    :cond_0
    return-void
.end method
