.class public Lcom/autonavi/xm/view/ClickRepeater;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final DEFAULT_REPEAT_DELAY:I = 0x1e

.field private static final REPEAT_TIMEOUT:I

.field private static final WHAT_REPEAT:I


# instance fields
.field private mHostView:Landroid/view/View;

.field private mIsRepeating:Z

.field private mOnRepeatListener:Lcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;

.field private mRepeatDelay:I

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/autonavi/xm/view/ClickRepeater;->REPEAT_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const/16 v0, 0x1e

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/autonavi/xm/view/ClickRepeater;-><init>(Landroid/view/View;ILcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/xm/view/ClickRepeater;-><init>(Landroid/view/View;ILcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xm/view/ClickRepeater;->mIsRepeating:Z

    new-instance v0, Lcom/autonavi/xm/view/ClickRepeater$1;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/view/ClickRepeater$1;-><init>(Lcom/autonavi/xm/view/ClickRepeater;)V

    iput-object v0, p0, Lcom/autonavi/xm/view/ClickRepeater;->mUiHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/autonavi/xm/view/ClickRepeater;->mHostView:Landroid/view/View;

    iput p2, p0, Lcom/autonavi/xm/view/ClickRepeater;->mRepeatDelay:I

    iput-object p3, p0, Lcom/autonavi/xm/view/ClickRepeater;->mOnRepeatListener:Lcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xm/view/ClickRepeater;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/view/ClickRepeater;->mHostView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/autonavi/xm/view/ClickRepeater;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/view/ClickRepeater;->mIsRepeating:Z

    return v0
.end method

.method static synthetic access$102(Lcom/autonavi/xm/view/ClickRepeater;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/view/ClickRepeater;->mIsRepeating:Z

    return p1
.end method

.method static synthetic access$200(Lcom/autonavi/xm/view/ClickRepeater;)Lcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/view/ClickRepeater;->mOnRepeatListener:Lcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/autonavi/xm/view/ClickRepeater;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/view/ClickRepeater;->mRepeatDelay:I

    return v0
.end method

.method public static attach(Landroid/view/View;)Lcom/autonavi/xm/view/ClickRepeater;
    .locals 1

    new-instance v0, Lcom/autonavi/xm/view/ClickRepeater;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/view/ClickRepeater;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static attach(Landroid/view/View;I)Lcom/autonavi/xm/view/ClickRepeater;
    .locals 1

    new-instance v0, Lcom/autonavi/xm/view/ClickRepeater;

    invoke-direct {v0, p0, p1}, Lcom/autonavi/xm/view/ClickRepeater;-><init>(Landroid/view/View;I)V

    return-object v0
.end method

.method public static attach(Landroid/view/View;ILcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;)Lcom/autonavi/xm/view/ClickRepeater;
    .locals 1

    new-instance v0, Lcom/autonavi/xm/view/ClickRepeater;

    invoke-direct {v0, p0, p1, p2}, Lcom/autonavi/xm/view/ClickRepeater;-><init>(Landroid/view/View;ILcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;)V

    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v5

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/xm/view/ClickRepeater;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    sget v3, Lcom/autonavi/xm/view/ClickRepeater;->REPEAT_TIMEOUT:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/autonavi/xm/view/ClickRepeater;->stop()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setOnRepeatListener(Lcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;)Lcom/autonavi/xm/view/ClickRepeater;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/view/ClickRepeater;->mOnRepeatListener:Lcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;

    return-object p0
.end method

.method public setRepeatDelay(I)Lcom/autonavi/xm/view/ClickRepeater;
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/autonavi/xm/view/ClickRepeater;->mRepeatDelay:I

    :cond_0
    return-object p0
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/view/ClickRepeater;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stop()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/view/ClickRepeater;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/autonavi/xm/view/ClickRepeater;->mIsRepeating:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/view/ClickRepeater;->mOnRepeatListener:Lcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/view/ClickRepeater;->mOnRepeatListener:Lcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;

    iget-object v1, p0, Lcom/autonavi/xm/view/ClickRepeater;->mHostView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;->onRepeatEnd(Landroid/view/View;)V

    :cond_0
    iput-boolean v2, p0, Lcom/autonavi/xm/view/ClickRepeater;->mIsRepeating:Z

    :cond_1
    return-void
.end method
