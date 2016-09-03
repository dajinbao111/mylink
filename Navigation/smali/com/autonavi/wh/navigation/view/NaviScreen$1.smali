.class Lcom/autonavi/wh/navigation/view/NaviScreen$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navigation/view/NaviScreen;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navigation/view/NaviScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navigation/view/NaviScreen$1;->this$0:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/autonavi/wh/navigation/lib/R$id;->goBack:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen$1;->this$0:Lcom/autonavi/wh/navigation/view/NaviScreen;

    iget-object v0, v0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen$1;->this$0:Lcom/autonavi/wh/navigation/view/NaviScreen;

    iget-object v0, v0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen$1;->this$0:Lcom/autonavi/wh/navigation/view/NaviScreen;

    iget-object v0, v0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Lcom/autonavi/wh/navigation/lib/R$id;->backToMap:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen$1;->this$0:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/view/NaviScreen;->backToMap()V

    goto :goto_0
.end method
