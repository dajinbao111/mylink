.class public Lcom/yf/pad/NaviActivity;
.super Landroid/app/Activity;
.source "NaviActivity.java"


# instance fields
.field private auxIn:Landroid/widget/Button;

.field private bConnect:Z

.field private bMusic:Landroid/widget/Button;

.field private background:Landroid/widget/FrameLayout;

.field private drivingRecord:Landroid/widget/Button;

.field private image:Landroid/widget/Button;

.field private isAuxIN:Z

.field private isClick:Z

.field private isRecord:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private music:Landroid/widget/Button;

.field private winName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/pad/NaviActivity;->background:Landroid/widget/FrameLayout;

    .line 27
    iput-boolean v1, p0, Lcom/yf/pad/NaviActivity;->isClick:Z

    .line 28
    iput-boolean v1, p0, Lcom/yf/pad/NaviActivity;->bConnect:Z

    .line 29
    iput-boolean v1, p0, Lcom/yf/pad/NaviActivity;->isAuxIN:Z

    .line 30
    iput-boolean v1, p0, Lcom/yf/pad/NaviActivity;->isRecord:Z

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/pad/NaviActivity;->winName:Ljava/lang/String;

    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/yf/pad/NaviActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 215
    new-instance v0, Lcom/yf/pad/NaviActivity$1;

    invoke-direct {v0, p0}, Lcom/yf/pad/NaviActivity$1;-><init>(Lcom/yf/pad/NaviActivity;)V

    iput-object v0, p0, Lcom/yf/pad/NaviActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/yf/pad/NaviActivity;Z)V
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/yf/pad/NaviActivity;->bConnect:Z

    return-void
.end method

.method static synthetic access$1(Lcom/yf/pad/NaviActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yf/pad/NaviActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/yf/pad/NaviActivity;Z)V
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/yf/pad/NaviActivity;->isAuxIN:Z

    return-void
.end method

.method static synthetic access$3(Lcom/yf/pad/NaviActivity;Z)V
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/yf/pad/NaviActivity;->isRecord:Z

    return-void
.end method

.method static synthetic access$4(Lcom/yf/pad/NaviActivity;Z)V
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/yf/pad/NaviActivity;->isClick:Z

    return-void
.end method

.method private setBackground(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 129
    packed-switch p1, :pswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/yf/pad/NaviActivity;->background:Landroid/widget/FrameLayout;

    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v0, p0, Lcom/yf/pad/NaviActivity;->background:Landroid/widget/FrameLayout;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 137
    :pswitch_2
    iget-object v0, p0, Lcom/yf/pad/NaviActivity;->background:Landroid/widget/FrameLayout;

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 140
    :pswitch_3
    iget-object v0, p0, Lcom/yf/pad/NaviActivity;->background:Landroid/widget/FrameLayout;

    const v1, 0x7f0200c4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 143
    :pswitch_4
    iget-object v0, p0, Lcom/yf/pad/NaviActivity;->background:Landroid/widget/FrameLayout;

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 146
    :pswitch_5
    iget-object v0, p0, Lcom/yf/pad/NaviActivity;->background:Landroid/widget/FrameLayout;

    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 149
    :pswitch_6
    iget-object v0, p0, Lcom/yf/pad/NaviActivity;->background:Landroid/widget/FrameLayout;

    const v1, 0x7f0200c7

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 155
    iget-boolean v3, p0, Lcom/yf/pad/NaviActivity;->isClick:Z

    if-eqz v3, :cond_0

    .line 198
    :goto_0
    return-void

    .line 159
    :cond_0
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/yf/pad/NaviActivity$3;

    invoke-direct {v4, p0}, Lcom/yf/pad/NaviActivity$3;-><init>(Lcom/yf/pad/NaviActivity;)V

    .line 163
    const-wide/16 v5, 0x5dc

    .line 159
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/yf/pad/NaviActivity;->isClick:Z

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 169
    :pswitch_0
    const-string v3, "com.yf.music"

    const-string v4, "com.yf.musiclist.MusiclistActivity"

    invoke-virtual {p0, v3, v4}, Lcom/yf/pad/NaviActivity;->startActivitySafely(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :pswitch_1
    const-string v3, "com.yf.video"

    const-string v4, "com.yf.video.MainActivity"

    invoke-virtual {p0, v3, v4}, Lcom/yf/pad/NaviActivity;->startActivitySafely(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :pswitch_2
    const-string v3, "com.yf.image"

    const-string v4, "com.yf.image.MainActivity"

    invoke-virtual {p0, v3, v4}, Lcom/yf/pad/NaviActivity;->startActivitySafely(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.yf.A2dpMusic"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, "intent2":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/yf/pad/NaviActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 185
    .end local v0    # "intent2":Landroid/content/Intent;
    :pswitch_4
    const-string v3, "com.yf.audioin"

    const-string v4, "com.yf.audioin.MainActivity"

    invoke-virtual {p0, v3, v4}, Lcom/yf/pad/NaviActivity;->startActivitySafely(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :pswitch_5
    const-string v3, "com.yftech.YFDriverRec"

    const-string v4, "com.yftech.YFDriverRec.MainActivity"

    invoke-virtual {p0, v3, v4}, Lcom/yf/pad/NaviActivity;->startActivitySafely(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.yf.switch.audio.stream"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, "intent3":Landroid/content/Intent;
    const-string v3, "name"

    const-string v4, "dvr"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0, v1}, Lcom/yf/pad/NaviActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 192
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.yf.switch.voice"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v2, "intent4":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/yf/pad/NaviActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0020
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v3, 0x7f030009

    invoke-virtual {p0, v3}, Lcom/yf/pad/NaviActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/yf/pad/NaviActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 41
    const/16 v4, 0x400

    .line 40
    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 42
    const v3, 0x7f0a0014

    invoke-virtual {p0, v3}, Lcom/yf/pad/NaviActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/yf/pad/NaviActivity;->background:Landroid/widget/FrameLayout;

    .line 43
    const v3, 0x7f0a0024

    invoke-virtual {p0, v3}, Lcom/yf/pad/NaviActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/yf/pad/NaviActivity;->bMusic:Landroid/widget/Button;

    .line 44
    const v3, 0x7f0a0025

    invoke-virtual {p0, v3}, Lcom/yf/pad/NaviActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/yf/pad/NaviActivity;->auxIn:Landroid/widget/Button;

    .line 45
    const v3, 0x7f0a0023

    invoke-virtual {p0, v3}, Lcom/yf/pad/NaviActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/yf/pad/NaviActivity;->image:Landroid/widget/Button;

    .line 46
    const v3, 0x7f0a0020

    invoke-virtual {p0, v3}, Lcom/yf/pad/NaviActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/yf/pad/NaviActivity;->music:Landroid/widget/Button;

    .line 47
    const v3, 0x7f0a0021

    invoke-virtual {p0, v3}, Lcom/yf/pad/NaviActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/yf/pad/NaviActivity;->drivingRecord:Landroid/widget/Button;

    .line 48
    invoke-virtual {p0}, Lcom/yf/pad/NaviActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 49
    .local v8, "intent":Landroid/content/Intent;
    const-string v3, "isconnect"

    invoke-virtual {v8, v3, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/yf/pad/NaviActivity;->bConnect:Z

    .line 50
    const-string v3, "insert"

    invoke-virtual {v8, v3, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/yf/pad/NaviActivity;->isAuxIN:Z

    .line 51
    const-string v3, "dvrinsert"

    invoke-virtual {v8, v3, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/yf/pad/NaviActivity;->isRecord:Z

    .line 52
    const-string v3, "winName"

    invoke-virtual {v8, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/yf/pad/NaviActivity;->winName:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/yf/pad/NaviActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 56
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "content://com.yftech.yfosdsrv.yfosdprovider/data/btstatus"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 58
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 60
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    const-string v2, "btstatus"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 65
    .local v9, "nStatus":I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 68
    .end local v9    # "nStatus":I
    :cond_0
    iget-object v2, p0, Lcom/yf/pad/NaviActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.yftech.action.btconnectstatus"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcom/yf/pad/NaviActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.yftech.auxevent"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lcom/yf/pad/NaviActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/yf/pad/NaviActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lcom/yf/pad/NaviActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    const-string v2, "backgroud"

    invoke-virtual {p0, v2, v11}, Lcom/yf/pad/NaviActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 74
    .local v10, "sp":Landroid/content/SharedPreferences;
    const-string v2, "first"

    invoke-interface {v10, v2, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 75
    .local v7, "i":I
    invoke-direct {p0, v7}, Lcom/yf/pad/NaviActivity;->setBackground(I)V

    .line 76
    invoke-virtual {p0}, Lcom/yf/pad/NaviActivity;->setAuxinBmusic()V

    .line 77
    new-instance v2, Lcom/yf/pad/NaviActivity$2;

    invoke-direct {v2, p0}, Lcom/yf/pad/NaviActivity$2;-><init>(Lcom/yf/pad/NaviActivity;)V

    iput-object v2, p0, Lcom/yf/pad/NaviActivity;->mHandler:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yf/pad/NaviActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yf/pad/NaviActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 90
    return-void
.end method

.method public setAuxinBmusic()V
    .locals 6

    .prologue
    const v5, 0x7f0a0025

    const v4, 0x7f0a0021

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    iget-boolean v0, p0, Lcom/yf/pad/NaviActivity;->bConnect:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/yf/pad/NaviActivity;->bMusic:Landroid/widget/Button;

    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 96
    iget-object v0, p0, Lcom/yf/pad/NaviActivity;->bMusic:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 97
    iget-object v0, p0, Lcom/yf/pad/NaviActivity;->image:Landroid/widget/Button;

    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 104
    :goto_0
    iget-boolean v0, p0, Lcom/yf/pad/NaviActivity;->isAuxIN:Z

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/yf/pad/NaviActivity;->auxIn:Landroid/widget/Button;

    const v1, 0x7f020019

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 106
    iget-object v0, p0, Lcom/yf/pad/NaviActivity;->auxIn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/yf/pad/NaviActivity;->bMusic:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 115
    :goto_1
    iget-boolean v0, p0, Lcom/yf/pad/NaviActivity;->isRecord:Z

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/yf/pad/NaviActivity;->drivingRecord:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/yf/pad/NaviActivity;->drivingRecord:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 118
    iget-object v0, p0, Lcom/yf/pad/NaviActivity;->music:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 119
    iget-object v0, p0, Lcom/yf/pad/NaviActivity;->auxIn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 126
    :goto_2
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/yf/pad/NaviActivity;->bMusic:Landroid/widget/Button;

    const v1, 0x7f020093

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 101
    iget-object v0, p0, Lcom/yf/pad/NaviActivity;->bMusic:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/yf/pad/NaviActivity;->image:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setNextFocusRightId(I)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/yf/pad/NaviActivity;->auxIn:Landroid/widget/Button;

    const v1, 0x7f020097

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 112
    iget-object v0, p0, Lcom/yf/pad/NaviActivity;->auxIn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/yf/pad/NaviActivity;->bMusic:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setNextFocusRightId(I)V

    goto :goto_1

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/yf/pad/NaviActivity;->drivingRecord:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/yf/pad/NaviActivity;->drivingRecord:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 123
    iget-object v0, p0, Lcom/yf/pad/NaviActivity;->music:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 124
    iget-object v0, p0, Lcom/yf/pad/NaviActivity;->auxIn:Landroid/widget/Button;

    const v1, 0x7f0a0020

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    goto :goto_2
.end method

.method startActivitySafely(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 201
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 205
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/yf/pad/NaviActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 213
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "activity_not_found"

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 208
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 209
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "activity_not_found"

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 211
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
