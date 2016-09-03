.class Lcom/autonavi/wh/ime/handwriting/HandwritingBoard$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/ime/handwriting/HandwritingBoard;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/ime/handwriting/HandwritingBoard;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/ime/handwriting/HandwritingBoard$1;->this$0:Lcom/autonavi/wh/ime/handwriting/HandwritingBoard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/ime/handwriting/HandwritingBoard$1;->this$0:Lcom/autonavi/wh/ime/handwriting/HandwritingBoard;

    # getter for: Lcom/autonavi/wh/ime/handwriting/HandwritingBoard;->mDrawPath:Landroid/graphics/Path;
    invoke-static {v0}, Lcom/autonavi/wh/ime/handwriting/HandwritingBoard;->access$000(Lcom/autonavi/wh/ime/handwriting/HandwritingBoard;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lcom/autonavi/wh/ime/handwriting/HandwritingBoard$1;->this$0:Lcom/autonavi/wh/ime/handwriting/HandwritingBoard;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/handwriting/HandwritingBoard;->postInvalidate()V

    iget-object v0, p0, Lcom/autonavi/wh/ime/handwriting/HandwritingBoard$1;->this$0:Lcom/autonavi/wh/ime/handwriting/HandwritingBoard;

    iget-object v0, v0, Lcom/autonavi/wh/ime/handwriting/HandwritingBoard;->mWritingPath:Lcom/autonavi/wh/ime/handwriting/WritingPath;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/handwriting/WritingPath;->endPath()V

    iget-object v0, p0, Lcom/autonavi/wh/ime/handwriting/HandwritingBoard$1;->this$0:Lcom/autonavi/wh/ime/handwriting/HandwritingBoard;

    iget-object v0, v0, Lcom/autonavi/wh/ime/handwriting/HandwritingBoard;->mOnWritingConfirmedListener:Lcom/autonavi/wh/ime/handwriting/HandwritingBoard$OnWritingConfirmedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/ime/handwriting/HandwritingBoard$1;->this$0:Lcom/autonavi/wh/ime/handwriting/HandwritingBoard;

    iget-object v0, v0, Lcom/autonavi/wh/ime/handwriting/HandwritingBoard;->mOnWritingConfirmedListener:Lcom/autonavi/wh/ime/handwriting/HandwritingBoard$OnWritingConfirmedListener;

    iget-object v1, p0, Lcom/autonavi/wh/ime/handwriting/HandwritingBoard$1;->this$0:Lcom/autonavi/wh/ime/handwriting/HandwritingBoard;

    iget-object v1, v1, Lcom/autonavi/wh/ime/handwriting/HandwritingBoard;->mWritingPath:Lcom/autonavi/wh/ime/handwriting/WritingPath;

    invoke-interface {v0, v1}, Lcom/autonavi/wh/ime/handwriting/HandwritingBoard$OnWritingConfirmedListener;->onWritingConfirmed(Lcom/autonavi/wh/ime/handwriting/WritingPath;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/ime/handwriting/HandwritingBoard$1;->this$0:Lcom/autonavi/wh/ime/handwriting/HandwritingBoard;

    iget-object v0, v0, Lcom/autonavi/wh/ime/handwriting/HandwritingBoard;->mWritingPath:Lcom/autonavi/wh/ime/handwriting/WritingPath;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/handwriting/WritingPath;->clear()V

    return-void
.end method
