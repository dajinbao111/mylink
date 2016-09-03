.class Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/util/DataSourceScanner$OnScannerListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

.field final synthetic val$savedInstanceState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iput-object p2, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onScanner(Ljava/lang/String;)V
    .locals 8

    const/16 v0, 0x3f

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===============dirPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/wh/navi/base/util/LogUtil;->d(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0118

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    # setter for: Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mDirPath:Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->access$202(Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;Ljava/lang/String;)Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v1, v1, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mApplication:Lcom/autonavi/wh/navi/base/application/T7LAApplication;

    invoke-virtual {v1, p1}, Lcom/autonavi/wh/navi/base/application/T7LAApplication;->engineInitializer(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const/4 v2, 0x1

    # setter for: Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->isInitializer:Z
    invoke-static {v1, v2}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->access$302(Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;Z)Z

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v1, v1, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mYFCompany:Lcom/autonavi/wh/navi/cooperation/YFCompany;

    invoke-virtual {v1}, Lcom/autonavi/wh/navi/cooperation/YFCompany;->startToListenSpeed()V
    :try_end_0
    .catch Lcom/autonavi/navigation/api/StartupException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-object v1, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/AnApi;->getSettings()Lcom/autonavi/navigation/api/settings/Settings;

    move-result-object v2

    # setter for: Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;
    invoke-static {v1, v2}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->access$102(Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;Lcom/autonavi/navigation/api/settings/Settings;)Lcom/autonavi/navigation/api/settings/Settings;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    # getter for: Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;
    invoke-static {v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->access$100(Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;)Lcom/autonavi/navigation/api/settings/Settings;

    move-result-object v1

    const-string v2, "disable_location_providers"

    invoke-virtual {v1, v2, v5}, Lcom/autonavi/navigation/api/settings/Settings;->putBoolean(Ljava/lang/String;Z)Z

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v2, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->addViews(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    # invokes: Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->adjustLocale()V
    invoke-static {v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->access$400(Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v1, v1, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mApplication:Lcom/autonavi/wh/navi/base/application/T7LAApplication;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "navi_volume"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    :goto_1
    iget-object v1, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v1, v1, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mApplication:Lcom/autonavi/wh/navi/base/application/T7LAApplication;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "navi_mute"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "times"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start up volume:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/autonavi/wh/navi/base/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    # getter for: Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;
    invoke-static {v2}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->access$100(Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;)Lcom/autonavi/navigation/api/settings/Settings;

    move-result-object v2

    const-string v3, "volume"

    invoke-virtual {v2, v3, v0}, Lcom/autonavi/navigation/api/settings/Settings;->putInt(Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-static {v0}, Lcom/autonavi/wh/navi/main/util/VolumeUtil;->naviVolumeToYfVolume(I)I

    move-result v0

    invoke-static {v2, v0}, Lcom/a/a/a;->b(Landroid/content/Context;I)I

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    # getter for: Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;
    invoke-static {v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->access$100(Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;)Lcom/autonavi/navigation/api/settings/Settings;

    move-result-object v0

    const-string v2, "mute"

    invoke-virtual {v0, v2, v6}, Lcom/autonavi/navigation/api/settings/Settings;->putBoolean(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mApplication:Lcom/autonavi/wh/navi/base/application/T7LAApplication;

    invoke-static {v0, v5}, Lcom/a/a/a;->b(Landroid/content/Context;I)I

    :cond_2
    const-string v0, "times"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMute:=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "times"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMute:=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v2, v2, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mApplication:Lcom/autonavi/wh/navi/base/application/T7LAApplication;

    invoke-static {v2, v6}, Lcom/a/a/a;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "times"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "YF:=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-static {v2}, Lcom/a/a/a;->c(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    # getter for: Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;
    invoke-static {v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->access$100(Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;)Lcom/autonavi/navigation/api/settings/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/settings/Settings;->save()Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mApplication:Lcom/autonavi/wh/navi/base/application/T7LAApplication;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "day_and_night"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_3

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mYFCompany:Lcom/autonavi/wh/navi/cooperation/YFCompany;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/cooperation/YFCompany;->registerReceiver()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mYFCompany:Lcom/autonavi/wh/navi/cooperation/YFCompany;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/cooperation/YFCompany;->isHeadLightOn()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    # getter for: Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;
    invoke-static {v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->access$100(Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;)Lcom/autonavi/navigation/api/settings/Settings;

    move-result-object v0

    const-string v1, "day_night_mode"

    invoke-virtual {v0, v1, v6}, Lcom/autonavi/navigation/api/settings/Settings;->putInt(Ljava/lang/String;I)Z

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mTmcBase:Lcom/autonavi/wh/navi/tmc/TmcBase;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/tmc/TmcBase;->create()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    # invokes: Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->confirmConfiguration()V
    invoke-static {v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->access$500(Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mApplication:Lcom/autonavi/wh/navi/base/application/T7LAApplication;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/application/T7LAApplication;->initPinYinPath()V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    iget v1, v1, Lcom/autonavi/navigation/api/StartupException;->errorCode:I

    const/16 v2, 0x1005

    if-ne v1, v2, :cond_1

    const-string v0, "==============noRegistered"

    invoke-static {v0}, Lcom/autonavi/wh/navi/base/util/LogUtil;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    # setter for: Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->isInitializer:Z
    invoke-static {v0, v5}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->access$302(Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;Z)Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/register/activity/RegisterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v1, v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->finish()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity$3;->this$0:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    # getter for: Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;
    invoke-static {v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->access$100(Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;)Lcom/autonavi/navigation/api/settings/Settings;

    move-result-object v0

    const-string v1, "day_night_mode"

    invoke-virtual {v0, v1, v5}, Lcom/autonavi/navigation/api/settings/Settings;->putInt(Ljava/lang/String;I)Z

    goto :goto_2

    :cond_5
    move v0, v1

    goto/16 :goto_1
.end method

.method public onStart()V
    .locals 0

    return-void
.end method
