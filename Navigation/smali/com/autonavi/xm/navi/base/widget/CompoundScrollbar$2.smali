.class Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar$2;->this$0:Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar$2;->this$0:Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar;

    iget-object v1, p0, Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar$2;->this$0:Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar;

    # getter for: Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/xm/widget/ScrollView;
    invoke-static {v1}, Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar;->access$000(Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar;)Lcom/autonavi/xm/widget/ScrollView;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar$2;->this$0:Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar;

    # getter for: Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/xm/widget/ScrollView;
    invoke-static {v2}, Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar;->access$000(Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar;)Lcom/autonavi/xm/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xm/widget/ScrollView;->getScrollY()I

    move-result v2

    iget-object v3, p0, Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar$2;->this$0:Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar;

    # getter for: Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/xm/widget/ScrollView;
    invoke-static {v3}, Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar;->access$000(Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar;)Lcom/autonavi/xm/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/xm/widget/ScrollView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar$2;->this$0:Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar;

    # getter for: Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar;->mScrollView:Lcom/autonavi/xm/widget/ScrollView;
    invoke-static {v4}, Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar;->access$000(Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar;)Lcom/autonavi/xm/widget/ScrollView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autonavi/xm/widget/ScrollView;->getContentHeight()I

    move-result v4

    # invokes: Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar;->doScroll(Landroid/view/ViewGroup;III)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar;->access$100(Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar;Landroid/view/ViewGroup;III)V

    return-void
.end method
