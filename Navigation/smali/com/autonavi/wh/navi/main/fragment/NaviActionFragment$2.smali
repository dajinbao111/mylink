.class Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$2;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$2;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$2;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    iget-object v1, v1, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$2;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    # getter for: Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->access$200(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment$2;->this$0:Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;

    # getter for: Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->mTmcChange:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;->access$100(Lcom/autonavi/wh/navi/main/fragment/NaviActionFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
