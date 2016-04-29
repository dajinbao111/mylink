.class public Lcom/yf/pad/OtherActivity;
.super Landroid/app/Activity;
.source "OtherActivity.java"


# instance fields
.field private background:Landroid/widget/FrameLayout;

.field private isClick:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/pad/OtherActivity;->background:Landroid/widget/FrameLayout;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/pad/OtherActivity;->isClick:Z

    .line 14
    return-void
.end method

.method static synthetic access$0(Lcom/yf/pad/OtherActivity;Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/yf/pad/OtherActivity;->isClick:Z

    return-void
.end method

.method private setBackground(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 30
    packed-switch p1, :pswitch_data_0

    .line 53
    :goto_0
    return-void

    .line 32
    :pswitch_0
    iget-object v0, p0, Lcom/yf/pad/OtherActivity;->background:Landroid/widget/FrameLayout;

    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 35
    :pswitch_1
    iget-object v0, p0, Lcom/yf/pad/OtherActivity;->background:Landroid/widget/FrameLayout;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 38
    :pswitch_2
    iget-object v0, p0, Lcom/yf/pad/OtherActivity;->background:Landroid/widget/FrameLayout;

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 41
    :pswitch_3
    iget-object v0, p0, Lcom/yf/pad/OtherActivity;->background:Landroid/widget/FrameLayout;

    const v1, 0x7f0200c4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 44
    :pswitch_4
    iget-object v0, p0, Lcom/yf/pad/OtherActivity;->background:Landroid/widget/FrameLayout;

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 47
    :pswitch_5
    iget-object v0, p0, Lcom/yf/pad/OtherActivity;->background:Landroid/widget/FrameLayout;

    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 50
    :pswitch_6
    iget-object v0, p0, Lcom/yf/pad/OtherActivity;->background:Landroid/widget/FrameLayout;

    const v1, 0x7f0200c7

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 30
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
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/yf/pad/OtherActivity;->isClick:Z

    if-eqz v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 62
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/yf/pad/OtherActivity$1;

    invoke-direct {v1, p0}, Lcom/yf/pad/OtherActivity$1;-><init>(Lcom/yf/pad/OtherActivity;)V

    .line 66
    const-wide/16 v2, 0x5dc

    .line 62
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/pad/OtherActivity;->isClick:Z

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 72
    :pswitch_0
    const-string v0, "com.estrongs.android.pop"

    const-string v1, "com.estrongs.android.pop.view.FileExplorerActivity"

    invoke-virtual {p0, v0, v1}, Lcom/yf/pad/OtherActivity;->startActivitySafely(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :pswitch_1
    const-string v0, "com.vcyber.gmonline"

    const-string v1, "com.vcyber.gmonline.WelcomeActivity"

    invoke-virtual {p0, v0, v1}, Lcom/yf/pad/OtherActivity;->startActivitySafely(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :pswitch_2
    const-string v0, "com.vcyber.gmcontacts"

    const-string v1, "com.vcyber.gmcontacts.Welcome"

    invoke-virtual {p0, v0, v1}, Lcom/yf/pad/OtherActivity;->startActivitySafely(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :pswitch_3
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings"

    invoke-virtual {p0, v0, v1}, Lcom/yf/pad/OtherActivity;->startActivitySafely(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a002f
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v2, 0x7f03000c

    invoke-virtual {p0, v2}, Lcom/yf/pad/OtherActivity;->setContentView(I)V

    .line 20
    invoke-virtual {p0}, Lcom/yf/pad/OtherActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 21
    const/16 v3, 0x400

    .line 20
    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 22
    const v2, 0x7f0a0014

    invoke-virtual {p0, v2}, Lcom/yf/pad/OtherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/yf/pad/OtherActivity;->background:Landroid/widget/FrameLayout;

    .line 23
    const-string v2, "backgroud"

    invoke-virtual {p0, v2, v4}, Lcom/yf/pad/OtherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 25
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "first"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 26
    .local v0, "i":I
    invoke-direct {p0, v0}, Lcom/yf/pad/OtherActivity;->setBackground(I)V

    .line 27
    return-void
.end method

.method startActivitySafely(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 95
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 99
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/yf/pad/OtherActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "activity_not_found"

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 102
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 103
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "activity_not_found"

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 105
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
