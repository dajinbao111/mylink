.class public Lcom/yf/mp3Control/YFMp3ControlService;
.super Landroid/app/Service;
.source "YFMp3ControlService.java"


# static fields
.field public static isstop:Z

.field public static mediaPlayer:Landroid/media/MediaPlayer;

.field public static mp3Cursor:Landroid/database/Cursor;


# instance fields
.field public broadIntent:Landroid/content/Intent;

.field mHandler:Landroid/os/Handler;

.field mRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yf/mp3Control/YFMp3ControlService;->isstop:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 137
    new-instance v0, Lcom/yf/mp3Control/YFMp3ControlService$1;

    invoke-direct {v0, p0}, Lcom/yf/mp3Control/YFMp3ControlService$1;-><init>(Lcom/yf/mp3Control/YFMp3ControlService;)V

    iput-object v0, p0, Lcom/yf/mp3Control/YFMp3ControlService;->mHandler:Landroid/os/Handler;

    .line 157
    new-instance v0, Lcom/yf/mp3Control/YFMp3ControlService$2;

    invoke-direct {v0, p0}, Lcom/yf/mp3Control/YFMp3ControlService$2;-><init>(Lcom/yf/mp3Control/YFMp3ControlService;)V

    iput-object v0, p0, Lcom/yf/mp3Control/YFMp3ControlService;->mRunnable:Ljava/lang/Runnable;

    .line 18
    return-void
.end method

.method private MP3ControlInit()V
    .locals 2

    .prologue
    .line 395
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "in it"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 398
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    invoke-static {}, Lcom/yf/mp3Control/YFMp3ControlService;->getMusicInfo()V

    .line 400
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    sget-object v0, Lcom/yf/mp3Control/YFMp3Control;->mp3Play:Landroid/widget/ImageView;

    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 409
    :goto_0
    return-void

    .line 403
    :cond_0
    sget-object v0, Lcom/yf/mp3Control/YFMp3Control;->mp3Play:Landroid/widget/ImageView;

    const v1, 0x7f0200b3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 406
    :cond_1
    sget-object v0, Lcom/yf/mp3Control/YFMp3Control;->mp3Title:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private MP3PreOrNext()V
    .locals 5

    .prologue
    .line 322
    :try_start_0
    sget-object v1, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 323
    sget-object v1, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    sget-object v3, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    .line 324
    const-string v4, "_data"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 323
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 325
    sget-object v1, Lcom/yf/mp3Control/YFMp3Control;->mp3Play:Landroid/widget/ImageView;

    const v2, 0x7f0200b2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 327
    sget-object v1, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 328
    sget-object v1, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 329
    iget-object v1, p0, Lcom/yf/mp3Control/YFMp3ControlService;->broadIntent:Landroid/content/Intent;

    const-string v2, "mediastyle"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 330
    iget-object v1, p0, Lcom/yf/mp3Control/YFMp3ControlService;->broadIntent:Landroid/content/Intent;

    const-string v2, "cursor"

    sget-object v3, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 331
    iget-object v1, p0, Lcom/yf/mp3Control/YFMp3ControlService;->broadIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/yf/mp3Control/YFMp3ControlService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 342
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 335
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 338
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 340
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private MP3SDLoadorRemove()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 346
    sget-object v0, Lcom/yf/mp3Control/YFMp3Control;->mp3Play:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 348
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 349
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 350
    sput-object v2, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    .line 351
    sget-object v0, Lcom/yf/mp3Control/YFMp3Control;->mp3Play:Landroid/widget/ImageView;

    const v1, 0x7f0200b3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 352
    invoke-virtual {p0}, Lcom/yf/mp3Control/YFMp3ControlService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 353
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 352
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    sput-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    .line 356
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 359
    sget-object v0, Lcom/yf/mp3Control/YFMp3Control;->mp3Title:Landroid/widget/TextView;

    sget-object v1, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    sget-object v2, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    .line 360
    const-string v3, "title"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 359
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    sget-object v0, Lcom/yf/mp3Control/YFMp3Control;->mp3PlayerName:Landroid/widget/TextView;

    .line 362
    sget-object v1, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    sget-object v2, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    .line 363
    const-string v3, "artist"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 362
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    :try_start_0
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 367
    sget-object v1, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    sget-object v2, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    .line 368
    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 367
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 370
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v6

    .line 373
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 374
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v6

    .line 376
    .local v6, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 377
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v6

    .line 379
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 383
    .end local v6    # "e":Ljava/io/IOException;
    :cond_1
    sget-object v0, Lcom/yf/mp3Control/YFMp3Control;->mp3Title:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getCursor()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/yf/mp3Control/YFMp3ControlService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 39
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 38
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    sput-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    .line 41
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 42
    invoke-direct {p0}, Lcom/yf/mp3Control/YFMp3ControlService;->mediaSetListener()V

    .line 43
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 45
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 49
    :try_start_0
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    sget-object v2, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    .line 50
    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 49
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v6

    .line 55
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 56
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v6

    .line 58
    .local v6, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 59
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v6

    .line 61
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMusicInfo()V
    .locals 6

    .prologue
    .line 87
    sget-object v2, Lcom/yf/mp3Control/YFMp3Control;->mp3Title:Landroid/widget/TextView;

    sget-object v3, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    sget-object v4, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    .line 88
    const-string v5, "title"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 87
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    sget-object v2, Lcom/yf/mp3Control/YFMp3Control;->mp3PlayerName:Landroid/widget/TextView;

    sget-object v3, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    sget-object v4, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    .line 90
    const-string v5, "artist"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 89
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    sget-object v2, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    .line 92
    sget-object v3, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    const-string v4, "duration"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 91
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "allTime":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 95
    .local v1, "time":I
    sget-object v2, Lcom/yf/mp3Control/YFMp3Control;->time:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "00:00 / "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/yf/mp3Control/YFMp3ControlService;->toTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method

.method private mediaSetListener()V
    .locals 2

    .prologue
    .line 100
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/yf/mp3Control/YFMp3ControlService$3;

    invoke-direct {v1, p0}, Lcom/yf/mp3Control/YFMp3ControlService$3;-><init>(Lcom/yf/mp3Control/YFMp3ControlService;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 135
    return-void
.end method

.method private registerReceiver()V
    .locals 4

    .prologue
    .line 25
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 26
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/yf/mp3Control/YFMp3ControlSDLoadOrRemoveBroadcast;

    invoke-direct {v0}, Lcom/yf/mp3Control/YFMp3ControlSDLoadOrRemoveBroadcast;-><init>()V

    .line 33
    .local v0, "broadcast":Lcom/yf/mp3Control/YFMp3ControlSDLoadOrRemoveBroadcast;
    invoke-virtual {p0, v0, v1}, Lcom/yf/mp3Control/YFMp3ControlService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 34
    new-instance v2, Landroid/content/Intent;

    const-string v3, "yf.mp3broadcast"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/yf/mp3Control/YFMp3ControlService;->broadIntent:Landroid/content/Intent;

    .line 35
    return-void
.end method

.method public static toTime(I)Ljava/lang/String;
    .locals 6
    .param p0, "time"    # I

    .prologue
    .line 79
    div-int/lit16 p0, p0, 0x3e8

    .line 80
    div-int/lit8 v0, p0, 0x3c

    .line 81
    .local v0, "minute":I
    rem-int/lit8 v1, p0, 0x3c

    .line 82
    .local v1, "second":I
    rem-int/lit8 v0, v0, 0x3c

    .line 83
    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 414
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 72
    invoke-direct {p0}, Lcom/yf/mp3Control/YFMp3ControlService;->registerReceiver()V

    .line 73
    invoke-direct {p0}, Lcom/yf/mp3Control/YFMp3ControlService;->getCursor()V

    .line 75
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 168
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 170
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "style"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 298
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yf/mp3Control/YFMp3ControlService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/mp3Control/YFMp3ControlService;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 299
    new-instance v8, Lcom/yf/mp3Control/YFMp3ControlService$4;

    invoke-direct {v8, p0}, Lcom/yf/mp3Control/YFMp3ControlService$4;-><init>(Lcom/yf/mp3Control/YFMp3ControlService;)V

    .line 315
    .local v8, "thread":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 316
    return-void

    .line 175
    .end local v8    # "thread":Ljava/lang/Thread;
    :pswitch_0
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 182
    :goto_1
    invoke-direct {p0}, Lcom/yf/mp3Control/YFMp3ControlService;->MP3PreOrNext()V

    goto :goto_0

    .line 180
    :cond_1
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    goto :goto_1

    .line 184
    :cond_2
    sget-object v0, Lcom/yf/mp3Control/YFMp3Control;->mp3Title:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 190
    :pswitch_1
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    .line 192
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    .line 194
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 196
    iget-object v0, p0, Lcom/yf/mp3Control/YFMp3ControlService;->broadIntent:Landroid/content/Intent;

    const-string v1, "mediastyle"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    iget-object v0, p0, Lcom/yf/mp3Control/YFMp3ControlService;->broadIntent:Landroid/content/Intent;

    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    iget-object v0, p0, Lcom/yf/mp3Control/YFMp3ControlService;->broadIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/yf/mp3Control/YFMp3ControlService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 200
    :cond_3
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 201
    iget-object v0, p0, Lcom/yf/mp3Control/YFMp3ControlService;->broadIntent:Landroid/content/Intent;

    const-string v1, "state"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    iget-object v0, p0, Lcom/yf/mp3Control/YFMp3ControlService;->broadIntent:Landroid/content/Intent;

    const-string v1, "mediastyle"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    iget-object v0, p0, Lcom/yf/mp3Control/YFMp3ControlService;->broadIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/yf/mp3Control/YFMp3ControlService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 207
    :cond_4
    sget-object v0, Lcom/yf/mp3Control/YFMp3Control;->mp3Title:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 213
    :pswitch_2
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_6

    .line 215
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_5

    .line 216
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 221
    :goto_2
    invoke-direct {p0}, Lcom/yf/mp3Control/YFMp3ControlService;->MP3PreOrNext()V

    goto/16 :goto_0

    .line 219
    :cond_5
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_2

    .line 224
    :cond_6
    sget-object v0, Lcom/yf/mp3Control/YFMp3Control;->mp3Title:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 231
    :pswitch_3
    invoke-direct {p0}, Lcom/yf/mp3Control/YFMp3ControlService;->MP3ControlInit()V

    goto/16 :goto_0

    .line 236
    :pswitch_4
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/yf/mp3Control/YFMp3ControlService;->MP3SDLoadorRemove()V

    goto/16 :goto_0

    .line 242
    :pswitch_5
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/yf/mp3Control/YFMp3ControlService;->MP3SDLoadorRemove()V

    goto/16 :goto_0

    .line 247
    :pswitch_6
    invoke-virtual {p0}, Lcom/yf/mp3Control/YFMp3ControlService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 248
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 247
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    sput-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    .line 250
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 251
    new-instance v6, Lcom/yf/mp3Control/YFMp3Control;

    .line 252
    invoke-virtual {p0}, Lcom/yf/mp3Control/YFMp3ControlService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 251
    invoke-direct {v6, v0, v2}, Lcom/yf/mp3Control/YFMp3Control;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 253
    .local v6, "control":Lcom/yf/mp3Control/YFMp3Control;
    goto/16 :goto_0

    .line 255
    .end local v6    # "control":Lcom/yf/mp3Control/YFMp3Control;
    :pswitch_7
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 257
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 261
    :try_start_0
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    .line 262
    const-string v1, "musicPathString"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-virtual {p0}, Lcom/yf/mp3Control/YFMp3ControlService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 261
    invoke-static {v1, v2}, Lcom/yf/mp3Control/Mp3Info;->getCursorpostion(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 264
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 265
    sget-object v1, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    sget-object v2, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    .line 266
    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 265
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/yf/mp3Control/YFMp3Control;->mp3Play:Landroid/widget/ImageView;

    .line 268
    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 269
    sget-object v0, Lcom/yf/mp3Control/YFMp3Control;->mp3Title:Landroid/widget/TextView;

    sget-object v1, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    sget-object v2, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    .line 270
    const-string v3, "title"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 269
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    sget-object v0, Lcom/yf/mp3Control/YFMp3Control;->mp3PlayerName:Landroid/widget/TextView;

    sget-object v1, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    sget-object v2, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    .line 272
    const-string v3, "artist"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 271
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 274
    sget-object v0, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_0

    .line 275
    :catch_0
    move-exception v7

    .line 277
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .line 278
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    .line 280
    .local v7, "e":Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/SecurityException;->printStackTrace()V

    goto/16 :goto_0

    .line 281
    .end local v7    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v7

    .line 283
    .local v7, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 284
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v7

    .line 286
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
