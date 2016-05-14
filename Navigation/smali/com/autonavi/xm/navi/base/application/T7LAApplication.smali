.class public Lcom/autonavi/xm/navi/base/application/T7LAApplication;
.super Lcom/autonavi/xm/navigation/app/NaviApplication;


# static fields
.field private static DATA_PATH:Ljava/lang/String;

.field private static PINYIN_BIN_FILE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "pinyin.bin"

    sput-object v0, Lcom/autonavi/xm/navi/base/application/T7LAApplication;->PINYIN_BIN_FILE_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "autonavidata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autonavi/xm/navi/base/application/T7LAApplication;->DATA_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/app/NaviApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public engineInitializer(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p1, Lcom/autonavi/xm/navi/base/application/T7LAApplication;->DATA_PATH:Ljava/lang/String;

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navi/base/application/T7LAApplication;->DATA_PATH:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/autonavi/navigation/api/AnApi;->setDataSource(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->startup()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "startup failed:"

    invoke-static {v1, v0}, Lcom/autonavi/xm/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "anapi is running"

    invoke-static {v0}, Lcom/autonavi/xm/navi/base/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initPinYinPath()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/autonavi/xm/navi/base/application/T7LAApplication;->DATA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GNaviRes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PATH_OF_PINYIN_BIN"

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/autonavi/xm/navi/base/application/T7LAApplication;->PINYIN_BIN_FILE_NAME:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Lcom/autonavi/xm/navigation/app/NaviApplication;->onCreate()V

    invoke-static {p0}, Lcom/autonavi/xm/navi/base/application/AppErrorLogHandler;->getInstance(Landroid/content/Context;)Lcom/autonavi/xm/navi/base/application/AppErrorLogHandler;

    return-void
.end method

.method public onTerminate()V
    .locals 1

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->shutdown()V

    invoke-super {p0}, Lcom/autonavi/xm/navigation/app/NaviApplication;->onTerminate()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
