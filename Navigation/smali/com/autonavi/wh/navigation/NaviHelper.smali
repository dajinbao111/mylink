.class public Lcom/autonavi/wh/navigation/NaviHelper;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_DATA_DIR_NAME:Ljava/lang/String; = "autonavidata"

.field private static final DEFAULT_TIME_ZONE:Ljava/lang/String; = "GMT+08:00"

.field public static final META_DATA_AUDIO_CONTROL_ADAPTER:Ljava/lang/String; = "com.autonavi.wh.meta.AUDIO_CONTROL_ADAPTER"

.field public static final META_DATA_BACK_TO_MAP_COMPONENT:Ljava/lang/String; = "com.autonavi.wh.meta.BACK_TO_MAP_COMPONENT"

.field public static final META_DATA_CAN_BUS_ADAPTER:Ljava/lang/String; = "com.autonavi.wh.meta.CAN_BUS_ADAPTER"

.field public static final META_DATA_CLIENT_ID:Ljava/lang/String; = "com.autonavi.wh.meta.CLINET_ID"

.field public static final META_DATA_LOCATION_ADAPTER:Ljava/lang/String; = "com.autonavi.wh.meta.LOCATION_ADAPTER"

.field public static final META_DATA_LOCATION_SENSOR_ADAPTER:Ljava/lang/String; = "com.autonavi.wh.meta.LOCATION_SENSOR_ADAPTER"

.field public static final META_DATA_MODEL_ID:Ljava/lang/String; = "com.autonavi.wh.meta.MODEL_ID"

.field public static final META_DATA_MULTI_AUDIO_CHANNEL:Ljava/lang/String; = "com.autonavi.wh.meta.MULTI_AUDIO_CHANNEL"

.field public static final META_DATA_PREFER_DATA_DIR:Ljava/lang/String; = "com.autonavi.wh.meta.PREFER_DATA_DIR"

.field public static final META_DATA_PREFER_TIME_ZONE:Ljava/lang/String; = "com.autonavi.wh.meta.PREFER_TIME_ZONE"

.field public static final META_DATA_PREFER_TRACES_DIR:Ljava/lang/String; = "com.autonavi.wh.meta.PREFER_TRACES_DIR"

.field private static final PREFER_TRACES_DIR:Ljava/lang/String; = "traces"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2

    invoke-static {p0}, Lcom/autonavi/wh/navigation/NaviHelper;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0
.end method

.method public static getClientId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.autonavi.wh.meta.CLINET_ID"

    invoke-static {p0, v0}, Lcom/autonavi/wh/navigation/NaviHelper;->getStringMeta(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMetaData(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getModelId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.autonavi.wh.meta.MODEL_ID"

    invoke-static {p0, v0}, Lcom/autonavi/wh/navigation/NaviHelper;->getStringMeta(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferTimeZone(Landroid/content/Context;)Ljava/util/TimeZone;
    .locals 1

    const-string v0, "com.autonavi.wh.meta.PREFER_TIME_ZONE"

    invoke-static {p0, v0}, Lcom/autonavi/wh/navigation/NaviHelper;->getStringMeta(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "GMT+08:00"

    :cond_0
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferTracesDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "com.autonavi.wh.meta.PREFER_TRACES_DIR"

    invoke-static {p0, v0}, Lcom/autonavi/wh/navigation/NaviHelper;->getStringMeta(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "traces"

    :cond_0
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "autonavidata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static getStringMeta(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/wh/navigation/NaviHelper;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
