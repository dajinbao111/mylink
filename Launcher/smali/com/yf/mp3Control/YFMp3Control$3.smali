.class Lcom/yf/mp3Control/YFMp3Control$3;
.super Ljava/lang/Object;
.source "YFMp3Control.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yf/mp3Control/YFMp3Control;->buttononclick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yf/mp3Control/YFMp3Control;


# direct methods
.method constructor <init>(Lcom/yf/mp3Control/YFMp3Control;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yf/mp3Control/YFMp3Control$3;->this$0:Lcom/yf/mp3Control/YFMp3Control;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/yf/mp3Control/YFMp3Control$3;->this$0:Lcom/yf/mp3Control/YFMp3Control;

    iget-object v0, v0, Lcom/yf/mp3Control/YFMp3Control;->serviceIntent:Landroid/content/Intent;

    const-string v1, "style"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    sget-object v0, Lcom/yf/mp3Control/YFMp3Control;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/yf/mp3Control/YFMp3Control$3;->this$0:Lcom/yf/mp3Control/YFMp3Control;

    iget-object v1, v1, Lcom/yf/mp3Control/YFMp3Control;->serviceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 97
    return-void
.end method
