.class public Lcom/yf/bar/NaviBar;
.super Landroid/widget/LinearLayout;
.source "NaviBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/bar/NaviBar$TimeThread;
    }
.end annotation


# static fields
.field private static final msgKey1:I = 0x1

.field public static signal_battery:Landroid/widget/ImageView;

.field private static tempCheck:I

.field private static tempFre:I

.field public static wifi_state:Landroid/widget/ImageView;


# instance fields
.field public context:Landroid/content/Context;

.field mBatteryController:Lcom/yf/bar/BatteryController;

.field private mHandler:Landroid/os/Handler;

.field private mTime:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput v0, Lcom/yf/bar/NaviBar;->tempFre:I

    .line 37
    sput v0, Lcom/yf/bar/NaviBar;->tempCheck:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 210
    new-instance v0, Lcom/yf/bar/NaviBar$1;

    invoke-direct {v0, p0}, Lcom/yf/bar/NaviBar$1;-><init>(Lcom/yf/bar/NaviBar;)V

    iput-object v0, p0, Lcom/yf/bar/NaviBar;->mHandler:Landroid/os/Handler;

    .line 43
    iput-object p1, p0, Lcom/yf/bar/NaviBar;->context:Landroid/content/Context;

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030007

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 45
    invoke-direct {p0}, Lcom/yf/bar/NaviBar;->initView()V

    .line 46
    invoke-direct {p0}, Lcom/yf/bar/NaviBar;->setEventListener()V

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/yf/bar/NaviBar;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yf/bar/NaviBar;->mTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yf/bar/NaviBar;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/yf/bar/NaviBar;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getFMTState(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 107
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v4, "content://com.yf.provider.YFFMT/fmtconfigure"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 108
    .local v1, "uri":Landroid/net/Uri;
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const-string v4, "isChecked"

    aput-object v4, v2, v10

    const-string v4, "value"

    aput-object v4, v2, v11

    .local v2, "columns":[Ljava/lang/String;
    move-object v4, v3

    move-object v5, v3

    .line 109
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 110
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 111
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lt v7, v3, :cond_1

    .line 119
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 127
    .end local v7    # "i":I
    :cond_0
    return-void

    .line 113
    .restart local v7    # "i":I
    :cond_1
    invoke-interface {v6, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 114
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 115
    .local v8, "isChecked":I
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 116
    .local v9, "value":I
    sput v9, Lcom/yf/bar/NaviBar;->tempFre:I

    .line 117
    sput v8, Lcom/yf/bar/NaviBar;->tempCheck:I

    .line 112
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private getSystemService()V
    .locals 3

    .prologue
    .line 87
    iget-object v1, p0, Lcom/yf/bar/NaviBar;->context:Landroid/content/Context;

    .line 88
    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 103
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 56
    const v2, 0x7f0a001b

    invoke-virtual {p0, v2}, Lcom/yf/bar/NaviBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sput-object v2, Lcom/yf/bar/NaviBar;->wifi_state:Landroid/widget/ImageView;

    .line 58
    const v2, 0x7f0a001c

    invoke-virtual {p0, v2}, Lcom/yf/bar/NaviBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sput-object v2, Lcom/yf/bar/NaviBar;->signal_battery:Landroid/widget/ImageView;

    .line 59
    new-instance v2, Lcom/yf/bar/BatteryController;

    iget-object v3, p0, Lcom/yf/bar/NaviBar;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/yf/bar/BatteryController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/yf/bar/NaviBar;->mBatteryController:Lcom/yf/bar/BatteryController;

    .line 60
    iget-object v2, p0, Lcom/yf/bar/NaviBar;->mBatteryController:Lcom/yf/bar/BatteryController;

    sget-object v3, Lcom/yf/bar/NaviBar;->signal_battery:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/yf/bar/BatteryController;->addIconView(Landroid/widget/ImageView;)V

    .line 63
    new-instance v1, Lcom/yf/bar/WifiStateReceiver;

    iget-object v2, p0, Lcom/yf/bar/NaviBar;->context:Landroid/content/Context;

    .line 64
    sget-object v3, Lcom/yf/bar/NaviBar;->wifi_state:Landroid/widget/ImageView;

    .line 63
    invoke-direct {v1, v2, v3}, Lcom/yf/bar/WifiStateReceiver;-><init>(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 65
    .local v1, "wifiReceiver":Lcom/yf/bar/WifiStateReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcom/yf/bar/NaviBar;->context:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    invoke-direct {p0}, Lcom/yf/bar/NaviBar;->getSystemService()V

    .line 75
    iget-object v2, p0, Lcom/yf/bar/NaviBar;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/yf/bar/NaviBar;->getFMTState(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method private setEventListener()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method private startActivitySafely(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 179
    const/high16 v1, 0x10200000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/yf/bar/NaviBar;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 192
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 188
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 151
    return-void
.end method
