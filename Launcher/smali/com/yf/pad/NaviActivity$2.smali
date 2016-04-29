.class Lcom/yf/pad/NaviActivity$2;
.super Landroid/os/Handler;
.source "NaviActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yf/pad/NaviActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yf/pad/NaviActivity;


# direct methods
.method constructor <init>(Lcom/yf/pad/NaviActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yf/pad/NaviActivity$2;->this$0:Lcom/yf/pad/NaviActivity;

    .line 77
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 81
    iget-object v0, p0, Lcom/yf/pad/NaviActivity$2;->this$0:Lcom/yf/pad/NaviActivity;

    invoke-virtual {v0}, Lcom/yf/pad/NaviActivity;->setAuxinBmusic()V

    .line 82
    return-void
.end method
