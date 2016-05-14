.class public final Lcom/autonavi/xm/navi/base/util/LogUtil;
.super Ljava/lang/Object;


# static fields
.field private static final LOG_FILE_NAME:Ljava/lang/String; = "AppLog.txt"

.field private static final LOG_FORMAT:Ljava/lang/String; = "%1$s\t%2$s\t%3$s\t%4$s\n"

.field private static final LOG_LEVEL:I = 0x6

.field private static final LOG_LEVEL_DEBUG:I = 0x1

.field private static final LOG_LEVEL_ERROR:I = 0x4

.field private static final LOG_LEVEL_FILE:I = 0x5

.field private static final LOG_LEVEL_INFO:I = 0x2

.field private static final LOG_LEVEL_NONE:I = 0x6

.field private static final LOG_LEVEL_VERBOSE:I = 0x0

.field private static final LOG_LEVEL_WARN:I = 0x3

.field private static final TAG_DEFAULT:Ljava/lang/String; = "xmgd"

.field private static final TIME_FORMAT:Ljava/lang/String; = "MM-dd HH:mm:ss.SSS"

.field private static sDateFormat:Ljava/text/SimpleDateFormat;

.field private static sLogFileDir:Ljava/lang/String;

.field private static sLogOutput:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "xmgd"

    invoke-static {v0, p0}, Lcom/autonavi/xm/navi/base/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "xmgd"

    invoke-static {v0, p0, p1}, Lcom/autonavi/xm/navi/base/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "xmgd"

    invoke-static {v0, p0}, Lcom/autonavi/xm/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "xmgd"

    invoke-static {v0, p0, p1}, Lcom/autonavi/xm/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final f(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method private static getLogPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AppLog.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    const-string v0, "xmgd"

    invoke-static {v0, p0}, Lcom/autonavi/xm/navi/base/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "xmgd"

    invoke-static {v0, p0, p1}, Lcom/autonavi/xm/navi/base/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    const-string v0, "xmgd"

    invoke-static {v0, p0}, Lcom/autonavi/xm/navi/base/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static final v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public static final v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "xmgd"

    invoke-static {v0, p0, p1}, Lcom/autonavi/xm/navi/base/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    const-string v0, "xmgd"

    invoke-static {v0, p0}, Lcom/autonavi/xm/navi/base/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
