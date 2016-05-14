.class Lcom/autonavi/xm/ime/widget/EditText$BlinkHandler;
.super Landroid/os/Handler;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/autonavi/xm/ime/widget/EditText;


# direct methods
.method private constructor <init>(Lcom/autonavi/xm/ime/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/ime/widget/EditText$BlinkHandler;->this$0:Lcom/autonavi/xm/ime/widget/EditText;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/xm/ime/widget/EditText;Lcom/autonavi/xm/ime/widget/EditText$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xm/ime/widget/EditText$BlinkHandler;-><init>(Lcom/autonavi/xm/ime/widget/EditText;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/ime/widget/EditText$BlinkHandler;->mCancelled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/autonavi/xm/ime/widget/EditText$BlinkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/ime/widget/EditText$BlinkHandler;->mCancelled:Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    iget-boolean v0, p0, Lcom/autonavi/xm/ime/widget/EditText$BlinkHandler;->mCancelled:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p0}, Lcom/autonavi/xm/ime/widget/EditText$BlinkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/autonavi/xm/ime/widget/EditText$BlinkHandler;->this$0:Lcom/autonavi/xm/ime/widget/EditText;

    invoke-virtual {v0}, Lcom/autonavi/xm/ime/widget/EditText;->shouldBlink()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/ime/widget/EditText$BlinkHandler;->this$0:Lcom/autonavi/xm/ime/widget/EditText;

    invoke-virtual {v0}, Lcom/autonavi/xm/ime/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/ime/widget/EditText$BlinkHandler;->this$0:Lcom/autonavi/xm/ime/widget/EditText;

    invoke-virtual {v0}, Lcom/autonavi/xm/ime/widget/EditText;->superInvalidateCursorPath()V

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/autonavi/xm/ime/widget/EditText$BlinkHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public uncancel()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xm/ime/widget/EditText$BlinkHandler;->mCancelled:Z

    return-void
.end method
