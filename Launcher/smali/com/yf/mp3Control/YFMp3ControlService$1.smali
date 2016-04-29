.class Lcom/yf/mp3Control/YFMp3ControlService$1;
.super Landroid/os/Handler;
.source "YFMp3ControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/mp3Control/YFMp3ControlService;
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
    iput-object p1, p0, Lcom/yf/mp3Control/YFMp3ControlService$1;->this$0:Lcom/yf/mp3Control/YFMp3ControlService;

    .line 137
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 141
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-nez v3, :cond_0

    .line 142
    sget-object v3, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    sget-object v3, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    sget-object v3, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    .line 146
    sget-object v4, Lcom/yf/mp3Control/YFMp3ControlService;->mp3Cursor:Landroid/database/Cursor;

    .line 147
    const-string v5, "duration"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 145
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "allTime":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 150
    .local v2, "time":I
    sget-object v3, Lcom/yf/mp3Control/YFMp3ControlService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    invoke-static {v3}, Lcom/yf/mp3Control/YFMp3ControlService;->toTime(I)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "curTime":Ljava/lang/String;
    sget-object v3, Lcom/yf/mp3Control/YFMp3Control;->time:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/yf/mp3Control/YFMp3ControlService;->toTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .end local v0    # "allTime":Ljava/lang/String;
    .end local v1    # "curTime":Ljava/lang/String;
    .end local v2    # "time":I
    :cond_0
    return-void
.end method
