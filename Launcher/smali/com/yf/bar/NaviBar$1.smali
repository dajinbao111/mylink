.class Lcom/yf/bar/NaviBar$1;
.super Landroid/os/Handler;
.source "NaviBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/bar/NaviBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yf/bar/NaviBar;


# direct methods
.method constructor <init>(Lcom/yf/bar/NaviBar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yf/bar/NaviBar$1;->this$0:Lcom/yf/bar/NaviBar;

    .line 210
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 214
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 225
    :goto_0
    return-void

    .line 216
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 218
    .local v0, "sysTime":J
    const-string v3, "hh:mm:ss"

    invoke-static {v3, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    .line 219
    .local v2, "sysTimeStr":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/yf/bar/NaviBar$1;->this$0:Lcom/yf/bar/NaviBar;

    # getter for: Lcom/yf/bar/NaviBar;->mTime:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/yf/bar/NaviBar;->access$0(Lcom/yf/bar/NaviBar;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
