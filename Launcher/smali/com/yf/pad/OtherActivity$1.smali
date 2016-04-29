.class Lcom/yf/pad/OtherActivity$1;
.super Ljava/lang/Object;
.source "OtherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yf/pad/OtherActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yf/pad/OtherActivity;


# direct methods
.method constructor <init>(Lcom/yf/pad/OtherActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yf/pad/OtherActivity$1;->this$0:Lcom/yf/pad/OtherActivity;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yf/pad/OtherActivity$1;->this$0:Lcom/yf/pad/OtherActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yf/pad/OtherActivity;->access$0(Lcom/yf/pad/OtherActivity;Z)V

    .line 65
    return-void
.end method
