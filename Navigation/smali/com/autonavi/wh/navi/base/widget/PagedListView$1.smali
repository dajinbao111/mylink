.class Lcom/autonavi/wh/navi/base/widget/PagedListView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/base/widget/PagedListView;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/base/widget/PagedListView;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/base/widget/PagedListView$1;->this$0:Lcom/autonavi/wh/navi/base/widget/PagedListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/PagedListView$1;->this$0:Lcom/autonavi/wh/navi/base/widget/PagedListView;

    # setter for: Lcom/autonavi/wh/navi/base/widget/PagedListView;->mVisibleCount:I
    invoke-static {v0, p3}, Lcom/autonavi/wh/navi/base/widget/PagedListView;->access$002(Lcom/autonavi/wh/navi/base/widget/PagedListView;I)I

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/PagedListView$1;->this$0:Lcom/autonavi/wh/navi/base/widget/PagedListView;

    # invokes: Lcom/autonavi/wh/navi/base/widget/PagedListView;->detectPagebility()V
    invoke-static {v0}, Lcom/autonavi/wh/navi/base/widget/PagedListView;->access$100(Lcom/autonavi/wh/navi/base/widget/PagedListView;)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
