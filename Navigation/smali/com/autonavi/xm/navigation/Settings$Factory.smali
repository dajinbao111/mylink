.class public Lcom/autonavi/xm/navigation/Settings$Factory;
.super Ljava/lang/Object;


# static fields
.field private static final FACTORY_SETTINGS_ENABLED:Ljava/lang/String; = "factory_settings_enabled"

.field public static final GPS_PROVIDER_UNAVAILABLE:Ljava/lang/String; = "gps_provider_unavailable"

.field public static final REPEAT_SIMULATION:Ljava/lang/String; = "repeat_simulation"

.field public static final SET_MY_LOCATION_ENABLED:Ljava/lang/String; = "set_my_location_enabled"

.field public static final SHOW_GPS_LOCATION:Ljava/lang/String; = "show_gps_location"

.field public static final TRACE_LOCATION:Ljava/lang/String; = "trace_location"

.field public static final TRACE_LOG:Ljava/lang/String; = "trace_log"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFactorySettingsEnabled(Ljava/lang/String;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "factory_settings_enabled"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public static loadDefaultValues(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/autonavi/xm/navigation/lib/R$xml;->preferences_factory:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static reset(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "trace_log"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "trace_location"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_gps_location"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "set_my_location_enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "repeat_simulation"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gps_provider_unavailable"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {p0}, Lcom/autonavi/xm/navigation/Settings$Factory;->loadDefaultValues(Landroid/content/Context;)V

    return-void
.end method
