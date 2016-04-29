.class public Lcom/yf/pad/WarnActivity;
.super Landroid/app/Activity;
.source "WarnActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 18
    const-string v1, "ygl"

    const-string v2, "onClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 34
    :goto_0
    return-void

    .line 22
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yf/pad/OtherActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "winName"

    const-string v2, "other_app"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    invoke-virtual {p0, v0}, Lcom/yf/pad/WarnActivity;->startActivity(Landroid/content/Intent;)V

    .line 25
    invoke-virtual {p0}, Lcom/yf/pad/WarnActivity;->finish()V

    goto :goto_0

    .line 28
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    const-string v1, "ygl"

    const-string v2, "cancle"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p0}, Lcom/yf/pad/WarnActivity;->finish()V

    goto :goto_0

    .line 20
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0042
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/yf/pad/WarnActivity;->setContentView(I)V

    .line 14
    return-void
.end method
