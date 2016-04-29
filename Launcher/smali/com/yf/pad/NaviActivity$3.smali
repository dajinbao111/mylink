.class Lcom/yf/pad/NaviActivity$3;
.super Ljava/lang/Object;
.source "NaviActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yf/pad/NaviActivity;->onClick(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/yf/pad/NaviActivity$3;->this$0:Lcom/yf/pad/NaviActivity;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/yf/pad/NaviActivity$3;->this$0:Lcom/yf/pad/NaviActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yf/pad/NaviActivity;->access$4(Lcom/yf/pad/NaviActivity;Z)V

    .line 162
    return-void
.end method
