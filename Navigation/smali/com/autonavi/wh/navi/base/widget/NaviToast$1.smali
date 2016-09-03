.class Lcom/autonavi/wh/navi/base/widget/NaviToast$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/base/widget/NaviToast;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/base/widget/NaviToast;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/base/widget/NaviToast$1;->this$0:Lcom/autonavi/wh/navi/base/widget/NaviToast;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/NaviToast$1;->this$0:Lcom/autonavi/wh/navi/base/widget/NaviToast;

    # getter for: Lcom/autonavi/wh/navi/base/widget/NaviToast;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/autonavi/wh/navi/base/widget/NaviToast;->access$000(Lcom/autonavi/wh/navi/base/widget/NaviToast;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/NaviToast$1;->this$0:Lcom/autonavi/wh/navi/base/widget/NaviToast;

    new-instance v1, Landroid/widget/Toast;

    iget-object v3, p0, Lcom/autonavi/wh/navi/base/widget/NaviToast$1;->this$0:Lcom/autonavi/wh/navi/base/widget/NaviToast;

    # getter for: Lcom/autonavi/wh/navi/base/widget/NaviToast;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/autonavi/wh/navi/base/widget/NaviToast;->access$100(Lcom/autonavi/wh/navi/base/widget/NaviToast;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/autonavi/wh/navi/base/widget/NaviToast;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/base/widget/NaviToast;->access$002(Lcom/autonavi/wh/navi/base/widget/NaviToast;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/NaviToast$1;->this$0:Lcom/autonavi/wh/navi/base/widget/NaviToast;

    # getter for: Lcom/autonavi/wh/navi/base/widget/NaviToast;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/autonavi/wh/navi/base/widget/NaviToast;->access$000(Lcom/autonavi/wh/navi/base/widget/NaviToast;)Landroid/widget/Toast;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/widget/NaviToast$1;->this$0:Lcom/autonavi/wh/navi/base/widget/NaviToast;

    # getter for: Lcom/autonavi/wh/navi/base/widget/NaviToast;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/autonavi/wh/navi/base/widget/NaviToast;->access$100(Lcom/autonavi/wh/navi/base/widget/NaviToast;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f03002d

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/NaviToast$1;->this$0:Lcom/autonavi/wh/navi/base/widget/NaviToast;

    # getter for: Lcom/autonavi/wh/navi/base/widget/NaviToast;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/autonavi/wh/navi/base/widget/NaviToast;->access$000(Lcom/autonavi/wh/navi/base/widget/NaviToast;)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/widget/NaviToast$1;->this$0:Lcom/autonavi/wh/navi/base/widget/NaviToast;

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/NaviToast$1;->this$0:Lcom/autonavi/wh/navi/base/widget/NaviToast;

    # getter for: Lcom/autonavi/wh/navi/base/widget/NaviToast;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/autonavi/wh/navi/base/widget/NaviToast;->access$000(Lcom/autonavi/wh/navi/base/widget/NaviToast;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f080014

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    # setter for: Lcom/autonavi/wh/navi/base/widget/NaviToast;->mTxt:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/autonavi/wh/navi/base/widget/NaviToast;->access$202(Lcom/autonavi/wh/navi/base/widget/NaviToast;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/widget/NaviToast$1;->this$0:Lcom/autonavi/wh/navi/base/widget/NaviToast;

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/NaviToast$1;->this$0:Lcom/autonavi/wh/navi/base/widget/NaviToast;

    # getter for: Lcom/autonavi/wh/navi/base/widget/NaviToast;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/autonavi/wh/navi/base/widget/NaviToast;->access$000(Lcom/autonavi/wh/navi/base/widget/NaviToast;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f080065

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast v0, Landroid/widget/ImageView;

    # setter for: Lcom/autonavi/wh/navi/base/widget/NaviToast;->mImg:Landroid/widget/ImageView;
    invoke-static {v1, v0}, Lcom/autonavi/wh/navi/base/widget/NaviToast;->access$302(Lcom/autonavi/wh/navi/base/widget/NaviToast;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/widget/NaviToast$1;->this$0:Lcom/autonavi/wh/navi/base/widget/NaviToast;

    # getter for: Lcom/autonavi/wh/navi/base/widget/NaviToast;->mTxt:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/autonavi/wh/navi/base/widget/NaviToast;->access$200(Lcom/autonavi/wh/navi/base/widget/NaviToast;)Landroid/widget/TextView;

    move-result-object v3

    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/widget/NaviToast$1;->this$0:Lcom/autonavi/wh/navi/base/widget/NaviToast;

    # getter for: Lcom/autonavi/wh/navi/base/widget/NaviToast;->mImg:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/autonavi/wh/navi/base/widget/NaviToast;->access$300(Lcom/autonavi/wh/navi/base/widget/NaviToast;)Landroid/widget/ImageView;

    move-result-object v3

    aget-object v1, v0, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_1

    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/widget/NaviToast$1;->this$0:Lcom/autonavi/wh/navi/base/widget/NaviToast;

    # getter for: Lcom/autonavi/wh/navi/base/widget/NaviToast;->mImg:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/autonavi/wh/navi/base/widget/NaviToast;->access$300(Lcom/autonavi/wh/navi/base/widget/NaviToast;)Landroid/widget/ImageView;

    move-result-object v2

    aget-object v1, v0, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/base/widget/NaviToast$1;->this$0:Lcom/autonavi/wh/navi/base/widget/NaviToast;

    # getter for: Lcom/autonavi/wh/navi/base/widget/NaviToast;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/autonavi/wh/navi/base/widget/NaviToast;->access$000(Lcom/autonavi/wh/navi/base/widget/NaviToast;)Landroid/widget/Toast;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setDuration(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/NaviToast$1;->this$0:Lcom/autonavi/wh/navi/base/widget/NaviToast;

    # getter for: Lcom/autonavi/wh/navi/base/widget/NaviToast;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/autonavi/wh/navi/base/widget/NaviToast;->access$000(Lcom/autonavi/wh/navi/base/widget/NaviToast;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
