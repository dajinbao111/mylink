.class public Lcom/yf/bar/BatteryController;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.BatteryController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yf/bar/BatteryController;->mIconViews:Ljava/util/ArrayList;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yf/bar/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    .line 41
    iput-object p1, p0, Lcom/yf/bar/BatteryController;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 44
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 46
    return-void
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yf/bar/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public addLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yf/bar/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "action":Ljava/lang/String;
    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 59
    const-string v9, "level"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 60
    .local v4, "level":I
    const-string v9, "plugged"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_1

    move v5, v7

    .line 61
    .local v5, "plugged":Z
    :goto_0
    if-eqz v5, :cond_2

    const v3, 0x7f0200d1

    .line 63
    .local v3, "icon":I
    :goto_1
    iget-object v9, p0, Lcom/yf/bar/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 64
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-lt v2, v0, :cond_3

    .line 71
    iget-object v9, p0, Lcom/yf/bar/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 72
    const/4 v2, 0x0

    :goto_3
    if-lt v2, v0, :cond_4

    .line 78
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "icon":I
    .end local v4    # "level":I
    .end local v5    # "plugged":Z
    :cond_0
    return-void

    .restart local v4    # "level":I
    :cond_1
    move v5, v8

    .line 60
    goto :goto_0

    .line 62
    .restart local v5    # "plugged":Z
    :cond_2
    const v3, 0x7f0200c8

    goto :goto_1

    .line 65
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "icon":I
    :cond_3
    iget-object v9, p0, Lcom/yf/bar/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 66
    .local v6, "v":Landroid/widget/ImageView;
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 68
    iget-object v9, p0, Lcom/yf/bar/BatteryController;->mContext:Landroid/content/Context;

    const v10, 0x7f080004

    new-array v11, v7, [Ljava/lang/Object;

    .line 69
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    .line 68
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 73
    .end local v6    # "v":Landroid/widget/ImageView;
    :cond_4
    iget-object v9, p0, Lcom/yf/bar/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 74
    .local v6, "v":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/yf/bar/BatteryController;->mContext:Landroid/content/Context;

    const v10, 0x7f080005

    new-array v11, v7, [Ljava/lang/Object;

    .line 75
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    .line 74
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method
