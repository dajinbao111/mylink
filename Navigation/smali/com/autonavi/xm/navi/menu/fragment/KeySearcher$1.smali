.class Lcom/autonavi/xm/navi/menu/fragment/KeySearcher$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher$1;->this$0:Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher$1;->this$0:Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;

    # getter for: Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->isShowInputMethodView:Z
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->access$000(Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher$1;->this$0:Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;

    # invokes: Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->showInputMethodView()V
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->access$100(Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
