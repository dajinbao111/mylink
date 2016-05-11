.class public Lcom/yf/pad/PadActivity;
.super Landroid/app/Activity;
.source "PadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/pad/PadActivity$BtCallStatusObserver;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private BtnBlutooth:Landroid/widget/Button;

.field private bConnect:Z

.field private btCallStatusObserver:Lcom/yf/pad/PadActivity$BtCallStatusObserver;

.field private btnCarAssist:Landroid/widget/Button;

.field private btnCarButler:Landroid/widget/Button;

.field private btnFriends:Landroid/widget/Button;

.field private btnInterconnect:Landroid/widget/Button;

.field private btnListener:Landroid/widget/Button;

.field private btnMedia:Landroid/widget/Button;

.field private btnOther:Landroid/widget/Button;

.field private btnRadio:Landroid/widget/Button;

.field private btnSetting:Landroid/widget/Button;

.field private btnVoice:Landroid/widget/Button;

.field private iYFOsdSrv:Lcom/yftech/YFOsdSrv/IYFOsdSrv;

.field private isAuxIN:Z

.field private isClick:Z

.field private isPhone:Z

.field private isRecord:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private navi:Landroid/widget/Button;

.field private page1Back:Landroid/widget/FrameLayout;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-string v0, "NaviPad"

    sput-object v0, Lcom/yf/pad/PadActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/pad/PadActivity;->iYFOsdSrv:Lcom/yftech/YFOsdSrv/IYFOsdSrv;

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/yf/pad/PadActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 50
    iput-boolean v2, p0, Lcom/yf/pad/PadActivity;->isPhone:Z

    .line 52
    new-instance v0, Lcom/yf/pad/PadActivity$1;

    invoke-direct {v0, p0}, Lcom/yf/pad/PadActivity$1;-><init>(Lcom/yf/pad/PadActivity;)V

    iput-object v0, p0, Lcom/yf/pad/PadActivity;->serviceConnection:Landroid/content/ServiceConnection;

    .line 90
    iput-boolean v2, p0, Lcom/yf/pad/PadActivity;->bConnect:Z

    .line 91
    iput-boolean v2, p0, Lcom/yf/pad/PadActivity;->isAuxIN:Z

    .line 92
    iput-boolean v2, p0, Lcom/yf/pad/PadActivity;->isRecord:Z

    .line 96
    new-instance v0, Lcom/yf/pad/PadActivity$BtCallStatusObserver;

    iget-object v1, p0, Lcom/yf/pad/PadActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/yf/pad/PadActivity$BtCallStatusObserver;-><init>(Lcom/yf/pad/PadActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/yf/pad/PadActivity;->btCallStatusObserver:Lcom/yf/pad/PadActivity$BtCallStatusObserver;

    .line 320
    new-instance v0, Lcom/yf/pad/PadActivity$2;

    invoke-direct {v0, p0}, Lcom/yf/pad/PadActivity$2;-><init>(Lcom/yf/pad/PadActivity;)V

    iput-object v0, p0, Lcom/yf/pad/PadActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 409
    iput-boolean v2, p0, Lcom/yf/pad/PadActivity;->isClick:Z

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/yf/pad/PadActivity;Lcom/yftech/YFOsdSrv/IYFOsdSrv;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/yf/pad/PadActivity;->iYFOsdSrv:Lcom/yftech/YFOsdSrv/IYFOsdSrv;

    return-void
.end method

.method static synthetic access$1(Lcom/yf/pad/PadActivity;)V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/yf/pad/PadActivity;->setNavi()V

    return-void
.end method

.method static synthetic access$10(Lcom/yf/pad/PadActivity;Z)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/yf/pad/PadActivity;->refreshUI(Z)V

    return-void
.end method

.method static synthetic access$11(Lcom/yf/pad/PadActivity;)Landroid/view/IWindowManager;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->mWindowManager:Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic access$12(Lcom/yf/pad/PadActivity;Z)V
    .locals 0

    .prologue
    .line 409
    iput-boolean p1, p0, Lcom/yf/pad/PadActivity;->isClick:Z

    return-void
.end method

.method static synthetic access$2(Lcom/yf/pad/PadActivity;Landroid/content/ServiceConnection;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/yf/pad/PadActivity;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$3(Lcom/yf/pad/PadActivity;Z)V
    .locals 0

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/yf/pad/PadActivity;->bConnect:Z

    return-void
.end method

.method static synthetic access$4(Lcom/yf/pad/PadActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/yf/pad/PadActivity;I)V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/yf/pad/PadActivity;->setBackValue(I)V

    return-void
.end method

.method static synthetic access$6(Lcom/yf/pad/PadActivity;Z)V
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/yf/pad/PadActivity;->isAuxIN:Z

    return-void
.end method

.method static synthetic access$7(Lcom/yf/pad/PadActivity;Z)V
    .locals 0

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/yf/pad/PadActivity;->isRecord:Z

    return-void
.end method

.method static synthetic access$8(Lcom/yf/pad/PadActivity;Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/yf/pad/PadActivity;->isPhone:Z

    return-void
.end method

.method static synthetic access$9(Lcom/yf/pad/PadActivity;I)V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/yf/pad/PadActivity;->setBackground(I)V

    return-void
.end method

.method private findView()V
    .locals 2

    .prologue
    const v1, 0x7f0a0014

    .line 351
    const v0, 0x7f0a002a

    invoke-virtual {p0, v0}, Lcom/yf/pad/PadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yf/pad/PadActivity;->navi:Landroid/widget/Button;

    .line 352
    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/yf/pad/PadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yf/pad/PadActivity;->btnInterconnect:Landroid/widget/Button;

    .line 353
    const v0, 0x7f0a0027

    invoke-virtual {p0, v0}, Lcom/yf/pad/PadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yf/pad/PadActivity;->btnMedia:Landroid/widget/Button;

    .line 354
    const v0, 0x7f0a0029

    invoke-virtual {p0, v0}, Lcom/yf/pad/PadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yf/pad/PadActivity;->BtnBlutooth:Landroid/widget/Button;

    .line 355
    invoke-virtual {p0, v1}, Lcom/yf/pad/PadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/yf/pad/PadActivity;->page1Back:Landroid/widget/FrameLayout;

    .line 356
    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/yf/pad/PadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yf/pad/PadActivity;->btnOther:Landroid/widget/Button;

    .line 357
    const v0, 0x7f0a002b

    invoke-virtual {p0, v0}, Lcom/yf/pad/PadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yf/pad/PadActivity;->btnRadio:Landroid/widget/Button;

    .line 358
    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Lcom/yf/pad/PadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yf/pad/PadActivity;->btnSetting:Landroid/widget/Button;

    .line 359
    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/yf/pad/PadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yf/pad/PadActivity;->btnVoice:Landroid/widget/Button;

    .line 360
    invoke-virtual {p0, v1}, Lcom/yf/pad/PadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/yf/pad/PadActivity;->page1Back:Landroid/widget/FrameLayout;

    .line 361
    invoke-direct {p0}, Lcom/yf/pad/PadActivity;->setEventListener()V

    .line 362
    return-void
.end method

.method private refreshUI(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 123
    const-string v0, "ygl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refreshUI=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->btnMedia:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->btnRadio:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 126
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->btnInterconnect:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 127
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->btnVoice:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 128
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->btnOther:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 129
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->btnSetting:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 130
    return-void
.end method

.method private setBackValue(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 287
    const-string v2, "backgroud"

    .line 288
    const/4 v3, 0x0

    .line 287
    invoke-virtual {p0, v2, v3}, Lcom/yf/pad/PadActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 289
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 290
    .local v0, "et":Landroid/content/SharedPreferences$Editor;
    const-string v2, "first"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 291
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 292
    return-void
.end method

.method private setBackground(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 295
    packed-switch p1, :pswitch_data_0

    .line 318
    :goto_0
    return-void

    .line 297
    :pswitch_0
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->page1Back:Landroid/widget/FrameLayout;

    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 300
    :pswitch_1
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->page1Back:Landroid/widget/FrameLayout;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 303
    :pswitch_2
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->page1Back:Landroid/widget/FrameLayout;

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 306
    :pswitch_3
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->page1Back:Landroid/widget/FrameLayout;

    const v1, 0x7f0200c4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 309
    :pswitch_4
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->page1Back:Landroid/widget/FrameLayout;

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 312
    :pswitch_5
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->page1Back:Landroid/widget/FrameLayout;

    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 315
    :pswitch_6
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->page1Back:Landroid/widget/FrameLayout;

    const v1, 0x7f0200c7

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 295
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

.method private setEventListener()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->navi:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->btnInterconnect:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->btnMedia:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->BtnBlutooth:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->btnOther:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->btnRadio:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->btnSetting:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->btnVoice:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->navi:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 400
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->btnInterconnect:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 401
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->btnMedia:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 402
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->BtnBlutooth:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 403
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->btnOther:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 404
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->btnRadio:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 405
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->btnSetting:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 406
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->btnVoice:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 407
    return-void
.end method

.method private setNavi()V
    .locals 12

    .prologue
    const/16 v11, 0xf

    .line 239
    invoke-virtual {p0}, Lcom/yf/pad/PadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 241
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v9, "content://com.yftech.yfosdsrv.yfosdprovider/data/addnavi"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 243
    .local v3, "uri":Landroid/net/Uri;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 244
    .local v6, "values":Landroid/content/ContentValues;
    const-string v9, "pid"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 245
    const-string v9, "name"

    const-string v10, "com.autonavi.amapauto"

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1, v3, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 248
    invoke-virtual {p0}, Lcom/yf/pad/PadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 250
    .local v0, "resolve2":Landroid/content/ContentResolver;
    const-string v9, "content://com.yftech.yfosdsrv.yfosdprovider/data/volume"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 252
    .local v4, "uri2":Landroid/net/Uri;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 253
    .local v7, "values2":Landroid/content/ContentValues;
    const-string v9, "type"

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 254
    const-string v9, "volume"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    invoke-virtual {v0, v4, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 257
    invoke-virtual {p0}, Lcom/yf/pad/PadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 259
    .local v2, "resolver3":Landroid/content/ContentResolver;
    const-string v9, "content://com.yftech.yfosdsrv.yfosdprovider/data/volume"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 261
    .local v5, "uri3":Landroid/net/Uri;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 262
    .local v8, "values3":Landroid/content/ContentValues;
    const-string v9, "type"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 263
    const-string v9, "volume"

    const/16 v11, 0x8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 264
    invoke-virtual {v2, v5, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 266
    return-void
.end method

.method private toggleGps()V
    .locals 4

    .prologue
    .line 227
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 228
    .local v1, "gpsIntent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    .line 229
    const-string v3, "com.android.settings.widget.SettingsAppWidgetProvider"

    .line 228
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v2, "custom:3"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 232
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v1    # "gpsIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getPhoneStatus()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 269
    const/4 v7, 0x6

    .line 270
    .local v7, "nBtHid":I
    invoke-virtual {p0}, Lcom/yf/pad/PadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 272
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v8, "content://com.yftech.yfosdsrv.yfosdprovider/data/btcallstatus"

    .line 273
    .local v8, "strUri":Ljava/lang/String;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 275
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 277
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    const-string v2, "btcallstatus"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 280
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 283
    :cond_0
    const/4 v2, 0x6

    if-eq v7, v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 416
    iget-boolean v3, p0, Lcom/yf/pad/PadActivity;->isClick:Z

    if-eqz v3, :cond_0

    .line 501
    :goto_0
    return-void

    .line 419
    :cond_0
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/yf/pad/PadActivity$4;

    invoke-direct {v4, p0}, Lcom/yf/pad/PadActivity$4;-><init>(Lcom/yf/pad/PadActivity;)V

    .line 423
    const-wide/16 v5, 0x7d0

    .line 419
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 424
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/yf/pad/PadActivity;->isClick:Z

    .line 426
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 436
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/yf/pad/NaviActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 437
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "winName"

    const-string v4, "video"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const-string v3, "isconnect"

    iget-boolean v4, p0, Lcom/yf/pad/PadActivity;->bConnect:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 439
    const-string v3, "insert"

    iget-boolean v4, p0, Lcom/yf/pad/PadActivity;->isAuxIN:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 440
    const-string v3, "dvrinsert"

    iget-boolean v4, p0, Lcom/yf/pad/PadActivity;->isRecord:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 441
    invoke-virtual {p0, v1}, Lcom/yf/pad/PadActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 428
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_1
    const-string v3, "com.autonavi.amapauto"

    .line 429
    const-string v4, "com.autonavi.auto.MainMapActivity"

    .line 428
    invoke-virtual {p0, v3, v4}, Lcom/yf/pad/PadActivity;->startActivitySafely(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :pswitch_2
    :try_start_0
    iget-object v3, p0, Lcom/yf/pad/PadActivity;->iYFOsdSrv:Lcom/yftech/YFOsdSrv/IYFOsdSrv;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/yftech/YFOsdSrv/IYFOsdSrv;->SwitchSrc(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.yf.switch.audio.stream"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 458
    .local v2, "intent2":Landroid/content/Intent;
    const-string v3, "name"

    const-string v4, "radio"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    invoke-virtual {p0, v2}, Lcom/yf/pad/PadActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 451
    .end local v2    # "intent2":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 464
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_3
    const-string v3, "com.yftech.YFTestBtHid"

    .line 465
    const-string v4, "com.yftech.YFTestBtHid.MainActivity"

    .line 464
    invoke-virtual {p0, v3, v4}, Lcom/yf/pad/PadActivity;->startActivitySafely(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 474
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/yf/pad/WarnActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 475
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/yf/pad/PadActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 479
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_5
    const-string v3, "com.yf.bt"

    const-string v4, "com.yf.bt.MainActivity"

    invoke-virtual {p0, v3, v4}, Lcom/yf/pad/PadActivity;->startActivitySafely(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 488
    :pswitch_6
    :try_start_1
    iget-object v3, p0, Lcom/yf/pad/PadActivity;->iYFOsdSrv:Lcom/yftech/YFOsdSrv/IYFOsdSrv;

    const/16 v4, -0x1d

    invoke-interface {v3, v4}, Lcom/yftech/YFOsdSrv/IYFOsdSrv;->doSimCarKey(B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 494
    :goto_2
    const-string v3, "com.yf.setup"

    const-string v4, "com.yf.setup.MainActivity"

    invoke-virtual {p0, v3, v4}, Lcom/yf/pad/PadActivity;->startActivitySafely(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 489
    :catch_1
    move-exception v0

    .line 490
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 497
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_7
    const-string v3, "com.yf.voice"

    const-string v4, "com.yf.voice.MainActivity"

    invoke-virtual {p0, v3, v4}, Lcom/yf/pad/PadActivity;->startActivitySafely(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 426
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0027
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    const v7, 0x7f03000a

    invoke-virtual {p0, v7}, Lcom/yf/pad/PadActivity;->setContentView(I)V

    .line 136
    invoke-direct {p0}, Lcom/yf/pad/PadActivity;->findView()V

    .line 137
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.yf.bt.service.BtService"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v6, "startIntent":Landroid/content/Intent;
    invoke-virtual {p0, v6}, Lcom/yf/pad/PadActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 140
    invoke-virtual {p0}, Lcom/yf/pad/PadActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 141
    const/16 v8, 0x400

    .line 140
    invoke-virtual {v7, v8}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 147
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.yftech.YFOsdSrv"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v3, "service":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/yf/pad/PadActivity;->getApplication()Landroid/app/Application;

    move-result-object v7

    iget-object v8, p0, Lcom/yf/pad/PadActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v7, v3, v8, v9}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 151
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.yf.SettingService"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v4, "settingIntent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/yf/pad/PadActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 157
    iget-object v7, p0, Lcom/yf/pad/PadActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v8, "com.yftech.action.btconnectstatus"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    iget-object v7, p0, Lcom/yf/pad/PadActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v8, "com.yf.WallPaper"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    iget-object v7, p0, Lcom/yf/pad/PadActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v8, "com.yftech.auxevent"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    iget-object v7, p0, Lcom/yf/pad/PadActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Lcom/yf/pad/PadActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v7, v8}, Lcom/yf/pad/PadActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    const-string v7, "backgroud"

    invoke-virtual {p0, v7, v10}, Lcom/yf/pad/PadActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 165
    .local v5, "sp":Landroid/content/SharedPreferences;
    new-instance v7, Lcom/yf/pad/PadActivity$3;

    invoke-direct {v7, p0}, Lcom/yf/pad/PadActivity$3;-><init>(Lcom/yf/pad/PadActivity;)V

    iput-object v7, p0, Lcom/yf/pad/PadActivity;->mHandler:Landroid/os/Handler;

    .line 207
    const-string v7, "first"

    invoke-interface {v5, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 208
    .local v0, "i":I
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 209
    .local v1, "msg":Landroid/os/Message;
    iput v9, v1, Landroid/os/Message;->what:I

    .line 210
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 211
    iget-object v7, p0, Lcom/yf/pad/PadActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 213
    invoke-virtual {p0}, Lcom/yf/pad/PadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "content://com.yftech.yfosdsrv.yfosdprovider/data/btcallstatus"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/yf/pad/PadActivity;->btCallStatusObserver:Lcom/yf/pad/PadActivity$BtCallStatusObserver;

    invoke-virtual {v7, v8, v10, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 218
    invoke-virtual {p0}, Lcom/yf/pad/PadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "sound_effects_enabled"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 219
    const-string v7, "window"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v7

    iput-object v7, p0, Lcom/yf/pad/PadActivity;->mWindowManager:Landroid/view/IWindowManager;

    .line 220
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 221
    .local v2, "msgPutValueOfAnination":Landroid/os/Message;
    const/4 v7, 0x4

    iput v7, v2, Landroid/os/Message;->what:I

    .line 222
    iget-object v7, p0, Lcom/yf/pad/PadActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 223
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 366
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 371
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->serviceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/yf/pad/PadActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/yf/pad/PadActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yf/pad/PadActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 376
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 525
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 535
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 536
    const/4 v0, 0x1

    .line 538
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/yf/pad/PadActivity;->isPhone:Z

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yf/pad/PadActivity;->refreshUI(Z)V

    .line 81
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 83
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/yf/pad/PadActivity;->refreshUI(Z)V

    goto :goto_0
.end method

.method startActivitySafely(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 504
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 505
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 508
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/yf/pad/PadActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 521
    :goto_0
    return-void

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "activity_not_found"

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 511
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 512
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 513
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "activity_not_found"

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 514
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 515
    sget-object v2, Lcom/yf/pad/PadActivity;->TAG:Ljava/lang/String;

    .line 516
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Launcher does not have the permission to launch "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 518
    const-string v4, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 519
    const-string v4, "or use the exported attribute for this activity. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 516
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 515
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
