.class public Lcom/autonavi/xm/navigation/Settings;
.super Ljava/lang/Object;


# static fields
.field public static final AUTO_SAVE_SETTINGS:Ljava/lang/String; = "auto_save_settings"

.field public static final DATA_DIR:Ljava/lang/String; = "data_dir"

.field public static final TTS_AUDIO_FOCUS:Ljava/lang/String; = "tts_audio_focus"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadDefaultValues(Landroid/content/Context;)V
    .locals 4

    sget v0, Lcom/autonavi/xm/navigation/lib/R$xml;->preferences:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tts_audio_focus"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/autonavi/xm/navigation/lib/R$integer;->settings_tts_audio_focus:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
