.class Lcom/yf/mp3Control/YFMp3ControlService$3;
.super Ljava/lang/Object;
.source "YFMp3ControlService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yf/mp3Control/YFMp3ControlService;->mediaSetListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yf/mp3Control/YFMp3ControlService;


# direct methods
.method constructor <init>(Lcom/yf/mp3Control/YFMp3ControlService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yf/mp3Control/YFMp3ControlService$3;->this$0:Lcom/yf/mp3Control/YFMp3ControlService;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 104
    sget-object v1, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    sget-object v1, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    sget-object v1, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 110
    :goto_0
    invoke-static {}, Lcom/yf/mp3Control/YFMp3ControlService;->getMusicInfo()V

    .line 111
    sget-object v1, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 113
    :try_start_0
    sget-object v1, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    sget-object v3, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    .line 114
    const-string v4, "_data"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 113
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 115
    sget-object v1, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 116
    sget-object v1, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 132
    :cond_0
    :goto_1
    return-void

    .line 108
    :cond_1
    sget-object v1, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 120
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 123
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
