.class public Lcom/yf/mp3Control/YFMp3ControlBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "YFMp3ControlBroadcast.java"


# instance fields
.field public context:Landroid/content/Context;

.field public mp3Cursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumArt(I)Ljava/lang/String;
    .locals 17
    .param p1, "trackId"    # I

    .prologue
    .line 50
    const-string v16, "content://media/external/audio/media/#"

    .line 51
    .local v16, "mUriTrack":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "album_id"

    aput-object v2, v3, v1

    .line 52
    .local v3, "projection":[Ljava/lang/String;
    const-string v4, "_id = ?"

    .line 53
    .local v4, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 54
    .local v5, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yf/mp3Control/YFMp3ControlBroadcast;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 55
    const/4 v6, 0x0

    .line 54
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 56
    .local v14, "cur":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 57
    .local v13, "album_id":I
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 58
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 59
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 61
    :cond_0
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 62
    const/4 v14, 0x0

    .line 63
    if-gez v13, :cond_1

    .line 64
    const/4 v12, 0x0

    .line 80
    :goto_0
    return-object v12

    .line 66
    :cond_1
    const-string v15, "content://media/external/audio/albums"

    .line 67
    .local v15, "mUriAlbums":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    .end local v3    # "projection":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "album_art"

    aput-object v2, v3, v1

    .line 68
    .restart local v3    # "projection":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yf/mp3Control/YFMp3ControlBroadcast;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 70
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v3

    .line 68
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 71
    const/4 v12, 0x0

    .line 72
    .local v12, "album_art":Ljava/lang/String;
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 73
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 74
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 77
    :cond_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 78
    const/4 v14, 0x0

    .line 80
    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 21
    iput-object p1, p0, Lcom/yf/mp3Control/YFMp3ControlBroadcast;->context:Landroid/content/Context;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 23
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 22
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/mp3Control/YFMp3ControlBroadcast;->mp3Cursor:Landroid/database/Cursor;

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 27
    .local v6, "bundle":Landroid/os/Bundle;
    if-eqz v6, :cond_0

    .line 28
    const-string v0, "mediastyle"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 30
    :pswitch_0
    const-string v0, "state"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 31
    sget-object v0, Lcom/yf/mp3Control/YFMp3Control;->mp3Play:Landroid/widget/ImageView;

    const v1, 0x7f0200b3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 32
    :cond_1
    const-string v0, "state"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 33
    sget-object v0, Lcom/yf/mp3Control/YFMp3Control;->mp3Play:Landroid/widget/ImageView;

    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 37
    :pswitch_1
    iget-object v0, p0, Lcom/yf/mp3Control/YFMp3ControlBroadcast;->mp3Cursor:Landroid/database/Cursor;

    const-string v1, "cursor"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 38
    invoke-static {}, Lcom/yf/mp3Control/YFMp3ControlService;->getMusicInfo()V

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
