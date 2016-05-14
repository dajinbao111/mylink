.class Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xm/navi/tmc/TmcUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$1;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tmcUpdate(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$1;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    # getter for: Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mTmcTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->access$000(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment$1;->this$0:Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;

    # getter for: Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->mTmcTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;->access$000(Lcom/autonavi/xm/navi/main/fragment/NaviActionFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
