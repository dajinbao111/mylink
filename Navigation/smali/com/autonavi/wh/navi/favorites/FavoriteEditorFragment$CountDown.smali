.class Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment$CountDown;
.super Landroid/os/CountDownTimer;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;


# direct methods
.method public constructor <init>(Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment$CountDown;->this$0:Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment$CountDown;->this$0:Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;

    const/4 v1, 0x0

    # setter for: Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIsCountingDown:Z
    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->access$302(Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;Z)Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment$CountDown;->this$0:Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;

    # getter for: Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mTextConfirm:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->access$400(Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment$CountDown;->this$0:Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;

    const v2, 0x7f0b00cc

    invoke-virtual {v1, v2}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment$CountDown;->this$0:Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;

    # invokes: Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->doConfirmClicked()V
    invoke-static {v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->access$500(Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;)V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment$CountDown;->this$0:Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;

    # getter for: Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mTextConfirm:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->access$400(Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment$CountDown;->this$0:Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;

    const v3, 0x7f0b00cc

    invoke-virtual {v2, v3}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
