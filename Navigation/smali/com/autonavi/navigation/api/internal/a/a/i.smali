.class public Lcom/autonavi/navigation/api/internal/a/a/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/media/AudioTrack;

.field private b:[B

.field private c:Landroid/media/SoundPool;

.field private d:Lcom/autonavi/navigation/api/settings/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->a:Landroid/media/AudioTrack;

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->c:Landroid/media/SoundPool;

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->d:Lcom/autonavi/navigation/api/settings/a/b;

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getSettingsDelegate()Lcom/autonavi/navigation/api/settings/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->d:Lcom/autonavi/navigation/api/settings/a/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 9

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x2c

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-object v3, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    array-length v3, v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    :cond_3
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    invoke-virtual {v7, v0}, Ljava/io/FileInputStream;->read([B)I

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v1, 0x14

    aget-byte v0, v0, v1

    iget-object v1, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v2, 0x15

    aget-byte v1, v1, v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    mul-int/lit16 v1, v1, 0x100

    add-int/2addr v0, v1

    const/4 v1, 0x1

    if-eq v1, v0, :cond_4

    if-eqz v7, :cond_0

    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v1, 0x2b

    aget-byte v0, v0, v1

    if-gez v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v1, 0x2b

    aget-byte v0, v0, v1

    add-int/lit16 v0, v0, 0x100

    move v3, v0

    :goto_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v1, 0x2a

    aget-byte v0, v0, v1

    if-gez v0, :cond_7

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v1, 0x2a

    aget-byte v0, v0, v1

    add-int/lit16 v0, v0, 0x100

    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v1, 0x29

    aget-byte v0, v0, v1

    if-gez v0, :cond_8

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v1, 0x29

    aget-byte v0, v0, v1

    add-int/lit16 v0, v0, 0x100

    move v1, v0

    :goto_3
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v4, 0x28

    aget-byte v0, v0, v4

    if-gez v0, :cond_9

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v4, 0x28

    aget-byte v0, v0, v4

    add-int/lit16 v0, v0, 0x100

    :goto_4
    mul-int/lit16 v3, v3, 0x100

    mul-int/lit16 v3, v3, 0x100

    mul-int/lit16 v3, v3, 0x100

    mul-int/lit16 v2, v2, 0x100

    mul-int/lit16 v2, v2, 0x100

    add-int/2addr v2, v3

    mul-int/lit16 v1, v1, 0x100

    add-int/2addr v1, v2

    add-int v5, v1, v0

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v1, 0x17

    aget-byte v0, v0, v1

    if-gez v0, :cond_a

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v1, 0x17

    aget-byte v0, v0, v1

    add-int/lit16 v0, v0, 0x100

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v2, 0x16

    aget-byte v0, v0, v2

    if-gez v0, :cond_b

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v2, 0x16

    aget-byte v0, v0, v2

    add-int/lit16 v0, v0, 0x100

    :goto_6
    mul-int/lit16 v1, v1, 0x100

    add-int v3, v1, v0

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v1, 0x23

    aget-byte v0, v0, v1

    if-gez v0, :cond_c

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v1, 0x23

    aget-byte v0, v0, v1

    add-int/lit16 v0, v0, 0x100

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v2, 0x22

    aget-byte v0, v0, v2

    if-gez v0, :cond_d

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v2, 0x22

    aget-byte v0, v0, v2

    add-int/lit16 v0, v0, 0x100

    :goto_8
    mul-int/lit16 v1, v1, 0x100

    add-int/2addr v0, v1

    div-int/lit8 v4, v0, 0x8

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v1, 0x1b

    aget-byte v0, v0, v1

    if-gez v0, :cond_e

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v1, 0x1b

    aget-byte v0, v0, v1

    add-int/lit16 v0, v0, 0x100

    move v6, v0

    :goto_9
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v1, 0x1a

    aget-byte v0, v0, v1

    if-gez v0, :cond_f

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v1, 0x1a

    aget-byte v0, v0, v1

    add-int/lit16 v0, v0, 0x100

    move v2, v0

    :goto_a
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v1, 0x19

    aget-byte v0, v0, v1

    if-gez v0, :cond_10

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v1, 0x19

    aget-byte v0, v0, v1

    add-int/lit16 v0, v0, 0x100

    move v1, v0

    :goto_b
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v8, 0x18

    aget-byte v0, v0, v8

    if-gez v0, :cond_11

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v8, 0x18

    aget-byte v0, v0, v8

    add-int/lit16 v0, v0, 0x100

    :goto_c
    mul-int/lit16 v6, v6, 0x100

    mul-int/lit16 v6, v6, 0x100

    mul-int/lit16 v6, v6, 0x100

    mul-int/lit16 v2, v2, 0x100

    mul-int/lit16 v2, v2, 0x100

    add-int/2addr v2, v6

    mul-int/lit16 v1, v1, 0x100

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int v2, v0, v3

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->a:Landroid/media/AudioTrack;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->a:Landroid/media/AudioTrack;

    :cond_5
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->a:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->d:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v1, "volume"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/autonavi/navigation/api/settings/a/b;->b(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->a:Landroid/media/AudioTrack;

    invoke-virtual {v1, v0, v0}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->a:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2, v5}, Landroid/media/AudioTrack;->write([BII)I

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v7, :cond_0

    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    :try_start_5
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v1, 0x2b

    aget-byte v0, v0, v1

    move v3, v0

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v1, 0x2a

    aget-byte v0, v0, v1

    move v2, v0

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v1, 0x29

    aget-byte v0, v0, v1

    move v1, v0

    goto/16 :goto_3

    :cond_9
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v4, 0x28

    aget-byte v0, v0, v4

    goto/16 :goto_4

    :cond_a
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v1, 0x17

    aget-byte v0, v0, v1

    move v1, v0

    goto/16 :goto_5

    :cond_b
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v2, 0x16

    aget-byte v0, v0, v2

    goto/16 :goto_6

    :cond_c
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v1, 0x23

    aget-byte v0, v0, v1

    move v1, v0

    goto/16 :goto_7

    :cond_d
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v2, 0x22

    aget-byte v0, v0, v2

    goto/16 :goto_8

    :cond_e
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v1, 0x1b

    aget-byte v0, v0, v1

    move v6, v0

    goto/16 :goto_9

    :cond_f
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v1, 0x1a

    aget-byte v0, v0, v1

    move v2, v0

    goto/16 :goto_a

    :cond_10
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v1, 0x19

    aget-byte v0, v0, v1

    move v1, v0

    goto/16 :goto_b

    :cond_11
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/a/i;->b:[B

    const/16 v8, 0x18

    aget-byte v0, v0, v8
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_c

    :catch_2
    move-exception v0

    :goto_d
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v1, :cond_0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_4
    move-exception v0

    move-object v7, v1

    :goto_e
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v7, :cond_0

    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_6
    move-exception v0

    move-object v7, v1

    :goto_f
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v7, :cond_0

    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_8
    move-exception v0

    move-object v7, v1

    :goto_10
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v7, :cond_0

    :try_start_d
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    goto/16 :goto_0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v7, v1

    :goto_11
    if-eqz v7, :cond_12

    :try_start_e
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    :cond_12
    :goto_12
    throw v0

    :catch_a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    :catchall_1
    move-exception v0

    goto :goto_11

    :catchall_2
    move-exception v0

    move-object v7, v1

    goto :goto_11

    :catch_b
    move-exception v0

    goto :goto_10

    :catch_c
    move-exception v0

    goto :goto_f

    :catch_d
    move-exception v0

    goto :goto_e

    :catch_e
    move-exception v0

    move-object v1, v7

    goto :goto_d
.end method
