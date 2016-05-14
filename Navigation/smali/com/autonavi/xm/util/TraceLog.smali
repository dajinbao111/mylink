.class public Lcom/autonavi/xm/util/TraceLog;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_LOG_FILE_DIR:Ljava/lang/String;

.field private static final LOG_FILE_NAME:Ljava/lang/String; = "traces.log"

.field private static final LOG_FORMAT:Ljava/lang/String; = "%1$s\t%2$s\t%3$s\t%4$s\n"

.field private static final LOG_LEVEL:I = 0x5

.field private static final LOG_LEVEL_ASSERT:I = 0x5

.field private static final LOG_LEVEL_DEBUG:I = 0x1

.field private static final LOG_LEVEL_ERROR:I = 0x4

.field private static final LOG_LEVEL_INFO:I = 0x2

.field private static final LOG_LEVEL_NONE:I = 0x7fffffff

.field private static final LOG_LEVEL_VERBOSE:I = 0x0

.field private static final LOG_LEVEL_WARN:I = 0x3

.field private static final TIME_FORMAT:Ljava/lang/String; = "MM-dd HH:mm:ss.SSS"

.field private static mLogWriter:Ljava/io/BufferedWriter;

.field private static sDateFormat:Ljava/text/SimpleDateFormat;

.field private static sLogFileDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autonavi/xm/util/TraceLog;->DEFAULT_LOG_FILE_DIR:Ljava/lang/String;

    sget-object v0, Lcom/autonavi/xm/util/TraceLog;->DEFAULT_LOG_FILE_DIR:Ljava/lang/String;

    sput-object v0, Lcom/autonavi/xm/util/TraceLog;->sLogFileDir:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method public static final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

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

.method public static final setWtfFileDir(Ljava/lang/String;)V
    .locals 2

    const-string v1, "%1$s\t%2$s\t%3$s\t%4$s\n"

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/xm/util/TraceLog;->sLogFileDir:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p0, Lcom/autonavi/xm/util/TraceLog;->sLogFileDir:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xm/util/TraceLog;->mLogWriter:Ljava/io/BufferedWriter;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static final v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

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

.method public static final wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/autonavi/xm/util/TraceLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "%1$s\t%2$s\t%3$s\t%4$s\n"

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcom/autonavi/xm/util/TraceLog;->sDateFormat:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/autonavi/xm/util/TraceLog;->sDateFormat:Ljava/text/SimpleDateFormat;

    :cond_2
    sget-object v0, Lcom/autonavi/xm/util/TraceLog;->sDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%1$s\t%2$s\t%3$s\t%4$s\n"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object p0, v4, v0

    const/4 v0, 0x3

    aput-object p1, v4, v0

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_1
    sget-object v1, Lcom/autonavi/xm/util/TraceLog;->mLogWriter:Ljava/io/BufferedWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    :try_start_1
    new-instance v4, Ljava/io/File;

    sget-object v0, Lcom/autonavi/xm/util/TraceLog;->sLogFileDir:Ljava/lang/String;

    const-string v5, "traces.log"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_3

    const-class v2, Lcom/autonavi/xm/util/TraceLog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not make dirs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/autonavi/xm/util/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    :try_start_3
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    const/4 v6, 0x1

    invoke-direct {v5, v4, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    sput-object v0, Lcom/autonavi/xm/util/TraceLog;->mLogWriter:Ljava/io/BufferedWriter;

    move-object v1, v0

    :cond_4
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    if-eqz v1, :cond_5

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    const/4 v1, 0x0

    :try_start_6
    sput-object v1, Lcom/autonavi/xm/util/TraceLog;->mLogWriter:Ljava/io/BufferedWriter;

    :cond_5
    const-class v1, Lcom/autonavi/xm/util/TraceLog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Writing log file failed!"

    invoke-static {v1, v2, v0}, Lcom/autonavi/xm/util/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    :cond_6
    move-object v2, v0

    goto :goto_1
.end method
