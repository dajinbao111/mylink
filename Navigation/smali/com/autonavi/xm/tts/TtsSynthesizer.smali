.class public Lcom/autonavi/xm/tts/TtsSynthesizer;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "stlport_shared"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "tts_player"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The path to the resource can not be null or empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/autonavi/xm/tts/TtsSynthesizer;->native_create(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/xm/tts/TtsSynthesizer;->a:J

    iget-wide v0, p0, Lcom/autonavi/xm/tts/TtsSynthesizer;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    :cond_2
    return-void
.end method

.method private native native_create(Ljava/lang/String;)J
.end method

.method private native native_createByFd(Ljava/io/FileDescriptor;JJ)J
.end method

.method private native native_getChineseVoice(J)I
.end method

.method private native native_getDefaultVoice(J)I
.end method

.method private native native_getEnglishVoice(J)I
.end method

.method private native native_getLanguage(J)I
.end method

.method private native native_getParam(JII)I
.end method

.method private native native_getVolume(J)I
.end method

.method private native native_release(J)I
.end method

.method private native native_setChineseVoice(JI)V
.end method

.method private native native_setDefaultVoice(JI)V
.end method

.method private native native_setEnglishVoice(JI)V
.end method

.method private native native_setLanguage(JI)V
.end method

.method private native native_setOutputListener(JLcom/autonavi/xm/tts/TtsSynthesizer$OnDataOutputListener;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native native_setParam(JII)V
.end method

.method private native native_setVolume(JI)V
.end method

.method private native native_stop(J)V
.end method

.method private native native_synthesize(JLjava/lang/String;)I
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The text can not be null or empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/autonavi/xm/tts/TtsSynthesizer;->b:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/tts/TtsSynthesizer;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/autonavi/xm/tts/TtsSynthesizer;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/autonavi/xm/tts/TtsSynthesizer;->b:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xm/tts/TtsSynthesizer;->b:Ljava/lang/StringBuffer;

    :cond_2
    iget-wide v0, p0, Lcom/autonavi/xm/tts/TtsSynthesizer;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/autonavi/xm/tts/TtsSynthesizer;->native_synthesize(JLjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-ltz v0, :cond_3

    :goto_0
    monitor-exit p0

    return v0

    :cond_3
    neg-int v0, v0

    sparse-switch v0, :sswitch_data_0

    const/high16 v0, -0x80000000

    goto :goto_0

    :sswitch_0
    const/4 v0, -0x1

    goto :goto_0

    :sswitch_1
    const/4 v0, -0x3

    goto :goto_0

    :sswitch_2
    const/4 v0, -0x2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x8005 -> :sswitch_2
        0x8008 -> :sswitch_1
    .end sparse-switch
.end method

.method public a()V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/xm/tts/TtsSynthesizer;->a:J

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xm/tts/TtsSynthesizer;->native_stop(J)V

    return-void
.end method

.method public a(Lcom/autonavi/xm/tts/c;)V
    .locals 3

    iget-wide v0, p0, Lcom/autonavi/xm/tts/TtsSynthesizer;->a:J

    iget v2, p1, Lcom/autonavi/xm/tts/c;->J:I

    invoke-direct {p0, v0, v1, v2}, Lcom/autonavi/xm/tts/TtsSynthesizer;->native_setDefaultVoice(JI)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "[z1]"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/autonavi/xm/tts/TtsSynthesizer;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "[z0]"

    goto :goto_0
.end method

.method public declared-synchronized a(Lcom/autonavi/xm/tts/TtsSynthesizer$OnDataOutputListener;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Lcom/autonavi/xm/tts/TtsSynthesizer;->a:J

    const-string v4, "onDataOutput"

    const-string v5, "([BII)Z"

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/xm/tts/TtsSynthesizer;->native_setOutputListener(JLcom/autonavi/xm/tts/TtsSynthesizer$OnDataOutputListener;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/autonavi/xm/tts/TtsSynthesizer;->a:J

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xm/tts/TtsSynthesizer;->native_release(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/high16 v0, -0x80000000

    :goto_0
    monitor-exit p0

    return v0

    :sswitch_0
    const-wide/16 v0, 0x0

    :try_start_1
    iput-wide v0, p0, Lcom/autonavi/xm/tts/TtsSynthesizer;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const/4 v0, -0x2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8005 -> :sswitch_1
    .end sparse-switch
.end method

.method public b(Lcom/autonavi/xm/tts/c;)V
    .locals 3

    iget-wide v0, p0, Lcom/autonavi/xm/tts/TtsSynthesizer;->a:J

    iget v2, p1, Lcom/autonavi/xm/tts/c;->J:I

    invoke-direct {p0, v0, v1, v2}, Lcom/autonavi/xm/tts/TtsSynthesizer;->native_setChineseVoice(JI)V

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/tts/TtsSynthesizer;->b:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/tts/TtsSynthesizer;->b:Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/tts/TtsSynthesizer;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public c(Lcom/autonavi/xm/tts/c;)V
    .locals 3

    iget-wide v0, p0, Lcom/autonavi/xm/tts/TtsSynthesizer;->a:J

    iget v2, p1, Lcom/autonavi/xm/tts/c;->J:I

    invoke-direct {p0, v0, v1, v2}, Lcom/autonavi/xm/tts/TtsSynthesizer;->native_setEnglishVoice(JI)V

    return-void
.end method
