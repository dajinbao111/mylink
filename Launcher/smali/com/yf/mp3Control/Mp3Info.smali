.class public Lcom/yf/mp3Control/Mp3Info;
.super Ljava/lang/Object;
.source "Mp3Info.java"


# static fields
.field public static final MP3INIT:I = 0x4

.field public static final NEXT:I = 0x1

.field public static final PLAY_PAUSE:I = 0x3

.field public static final PLAY_WITHNAME:I = 0x8

.field public static final PRE:I = 0x2

.field public static final SDLOAD:I = 0x5

.field public static final SDREMOVE:I = 0x6

.field public static final USB_LOAD:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCursorpostion(Ljava/lang/String;Landroid/content/Context;)I
    .locals 10
    .param p0, "musicpath"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x6

    .line 19
    const/4 v8, 0x0

    .line 20
    .local v8, "musicpostion":I
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_display_name"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    .line 21
    const-string v1, "album"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "artist"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    .line 22
    const-string v1, "duration"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "_size"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    .line 23
    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v0, "_data"

    aput-object v0, v2, v9

    const/4 v0, 0x7

    .line 24
    const-string v1, "title"

    aput-object v1, v2, v0

    .line 27
    .local v2, "mString":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 28
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    .line 27
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 31
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 33
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v7, v0, :cond_1

    .line 46
    .end local v7    # "i":I
    :cond_0
    :goto_1
    return v8

    .line 35
    .restart local v7    # "i":I
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    .line 39
    goto :goto_1

    .line 41
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 33
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method
