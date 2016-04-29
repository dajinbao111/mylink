.class Lcom/yf/pad/PadActivity$4;
.super Ljava/lang/Object;
.source "PadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yf/pad/PadActivity;->onClick(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/yf/pad/PadActivity$4;->this$0:Lcom/yf/pad/PadActivity;

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/yf/pad/PadActivity$4;->this$0:Lcom/yf/pad/PadActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yf/pad/PadActivity;->access$12(Lcom/yf/pad/PadActivity;Z)V

    .line 422
    return-void
.end method
