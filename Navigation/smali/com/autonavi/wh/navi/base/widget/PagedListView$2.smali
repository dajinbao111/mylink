.class Lcom/autonavi/wh/navi/base/widget/PagedListView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/base/widget/PagedListView;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/base/widget/PagedListView;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/base/widget/PagedListView$2;->this$0:Lcom/autonavi/wh/navi/base/widget/PagedListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/PagedListView$2;->this$0:Lcom/autonavi/wh/navi/base/widget/PagedListView;

    # getter for: Lcom/autonavi/wh/navi/base/widget/PagedListView;->mBtnPageDown:Landroid/view/View;
    invoke-static {v0}, Lcom/autonavi/wh/navi/base/widget/PagedListView;->access$200(Lcom/autonavi/wh/navi/base/widget/PagedListView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/PagedListView$2;->this$0:Lcom/autonavi/wh/navi/base/widget/PagedListView;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/PagedListView;->pageDown()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/PagedListView$2;->this$0:Lcom/autonavi/wh/navi/base/widget/PagedListView;

    # getter for: Lcom/autonavi/wh/navi/base/widget/PagedListView;->mBtnPageUp:Landroid/view/View;
    invoke-static {v0}, Lcom/autonavi/wh/navi/base/widget/PagedListView;->access$300(Lcom/autonavi/wh/navi/base/widget/PagedListView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/PagedListView$2;->this$0:Lcom/autonavi/wh/navi/base/widget/PagedListView;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/PagedListView;->pageUp()V

    goto :goto_0
.end method
