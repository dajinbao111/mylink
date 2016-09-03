.class public Lcom/autonavi/wh/navigation/view/NaviSurfaceView;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private mHolder:Landroid/view/SurfaceHolder;

.field private mIsCreated:Z

.field private mOnDrawFrameListener:Lcom/autonavi/wh/navigation/view/NaviSurfaceView$OnDrawFrameListener;

.field private mOnSizeChangeListener:Lcom/autonavi/wh/view/OnSizeChangeListener;

.field private mRenderThread:Lcom/autonavi/wh/navigation/view/NaviSurfaceView$RenderThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/autonavi/wh/navigation/view/NaviSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/wh/navigation/view/NaviSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/wh/navigation/view/NaviSurfaceView;->mIsCreated:Z

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/view/NaviSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/wh/navigation/view/NaviSurfaceView;)Lcom/autonavi/wh/navigation/view/NaviSurfaceView$OnDrawFrameListener;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviSurfaceView;->mOnDrawFrameListener:Lcom/autonavi/wh/navigation/view/NaviSurfaceView$OnDrawFrameListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/autonavi/wh/navigation/view/NaviSurfaceView;)Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviSurfaceView;->mRenderThread:Lcom/autonavi/wh/navigation/view/NaviSurfaceView$RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviSurfaceView;->mRenderThread:Lcom/autonavi/wh/navigation/view/NaviSurfaceView$RenderThread;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/view/NaviSurfaceView$RenderThread;->shutdown()V

    :cond_0
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviSurfaceView;->mOnSizeChangeListener:Lcom/autonavi/wh/view/OnSizeChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviSurfaceView;->mOnSizeChangeListener:Lcom/autonavi/wh/view/OnSizeChangeListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/autonavi/wh/view/OnSizeChangeListener;->onSizeChanged(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/view/NaviSurfaceView;->mIsCreated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviSurfaceView;->mRenderThread:Lcom/autonavi/wh/navigation/view/NaviSurfaceView$RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviSurfaceView;->mRenderThread:Lcom/autonavi/wh/navigation/view/NaviSurfaceView$RenderThread;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/view/NaviSurfaceView$RenderThread;->render()V

    :cond_0
    return-void
.end method

.method public setOnDrawFrameListener(Lcom/autonavi/wh/navigation/view/NaviSurfaceView$OnDrawFrameListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navigation/view/NaviSurfaceView;->mOnDrawFrameListener:Lcom/autonavi/wh/navigation/view/NaviSurfaceView$OnDrawFrameListener;

    return-void
.end method

.method public setOnSizeChangeListener(Lcom/autonavi/wh/view/OnSizeChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navigation/view/NaviSurfaceView;->mOnSizeChangeListener:Lcom/autonavi/wh/view/OnSizeChangeListener;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/view/NaviSurfaceView;->requestRender()V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviSurfaceView;->mRenderThread:Lcom/autonavi/wh/navigation/view/NaviSurfaceView$RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviSurfaceView;->mRenderThread:Lcom/autonavi/wh/navigation/view/NaviSurfaceView$RenderThread;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/view/NaviSurfaceView$RenderThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/autonavi/wh/navigation/view/NaviSurfaceView$RenderThread;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navigation/view/NaviSurfaceView$RenderThread;-><init>(Lcom/autonavi/wh/navigation/view/NaviSurfaceView;)V

    iput-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviSurfaceView;->mRenderThread:Lcom/autonavi/wh/navigation/view/NaviSurfaceView$RenderThread;

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviSurfaceView;->mRenderThread:Lcom/autonavi/wh/navigation/view/NaviSurfaceView$RenderThread;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/view/NaviSurfaceView$RenderThread;->start()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/navigation/view/NaviSurfaceView;->mIsCreated:Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/wh/navigation/view/NaviSurfaceView;->mIsCreated:Z

    return-void
.end method
