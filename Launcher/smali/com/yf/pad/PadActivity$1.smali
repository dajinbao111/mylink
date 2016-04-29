.class Lcom/yf/pad/PadActivity$1;
.super Ljava/lang/Object;
.source "PadActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/pad/PadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yf/pad/PadActivity;


# direct methods
.method constructor <init>(Lcom/yf/pad/PadActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yf/pad/PadActivity$1;->this$0:Lcom/yf/pad/PadActivity;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;
    .param p2, "arg1"    # Landroid/os/IBinder;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yf/pad/PadActivity$1;->this$0:Lcom/yf/pad/PadActivity;

    invoke-static {p2}, Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yftech/YFOsdSrv/IYFOsdSrv;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/pad/PadActivity;->access$0(Lcom/yf/pad/PadActivity;Lcom/yftech/YFOsdSrv/IYFOsdSrv;)V

    .line 58
    iget-object v0, p0, Lcom/yf/pad/PadActivity$1;->this$0:Lcom/yf/pad/PadActivity;

    # invokes: Lcom/yf/pad/PadActivity;->setNavi()V
    invoke-static {v0}, Lcom/yf/pad/PadActivity;->access$1(Lcom/yf/pad/PadActivity;)V

    .line 59
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yf/pad/PadActivity$1;->this$0:Lcom/yf/pad/PadActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yf/pad/PadActivity;->access$2(Lcom/yf/pad/PadActivity;Landroid/content/ServiceConnection;)V

    .line 64
    return-void
.end method
