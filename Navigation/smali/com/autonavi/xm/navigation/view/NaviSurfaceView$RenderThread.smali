.class Lcom/autonavi/xm/navigation/view/NaviSurfaceView$RenderThread;
.super Ljava/lang/Thread;


# instance fields
.field private mIsPending:Z

.field private mIsRunning:Z

.field final synthetic this$0:Lcom/autonavi/xm/navigation/view/NaviSurfaceView;


# direct methods
.method public constructor <init>(Lcom/autonavi/xm/navigation/view/NaviSurfaceView;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xm/navigation/view/NaviSurfaceView$RenderThread;->this$0:Lcom/autonavi/xm/navigation/view/NaviSurfaceView;

    const-class v0, Lcom/autonavi/xm/navigation/view/NaviSurfaceView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/view/NaviSurfaceView$RenderThread;->mIsRunning:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/view/NaviSurfaceView$RenderThread;->mIsPending:Z

    return-void
.end method


# virtual methods
.method public render()V
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/view/NaviSurfaceView$RenderThread;->mIsRunning:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/view/NaviSurfaceView$RenderThread;->mIsPending:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 2

    :goto_0
    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/view/NaviSurfaceView$RenderThread;->mIsRunning:Z

    if-eqz v0, :cond_2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/view/NaviSurfaceView$RenderThread;->mIsPending:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/view/NaviSurfaceView$RenderThread;->this$0:Lcom/autonavi/xm/navigation/view/NaviSurfaceView;

    # getter for: Lcom/autonavi/xm/navigation/view/NaviSurfaceView;->mOnDrawFrameListener:Lcom/autonavi/xm/navigation/view/NaviSurfaceView$OnDrawFrameListener;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/view/NaviSurfaceView;->access$000(Lcom/autonavi/xm/navigation/view/NaviSurfaceView;)Lcom/autonavi/xm/navigation/view/NaviSurfaceView$OnDrawFrameListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/view/NaviSurfaceView$RenderThread;->this$0:Lcom/autonavi/xm/navigation/view/NaviSurfaceView;

    # getter for: Lcom/autonavi/xm/navigation/view/NaviSurfaceView;->mOnDrawFrameListener:Lcom/autonavi/xm/navigation/view/NaviSurfaceView$OnDrawFrameListener;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/view/NaviSurfaceView;->access$000(Lcom/autonavi/xm/navigation/view/NaviSurfaceView;)Lcom/autonavi/xm/navigation/view/NaviSurfaceView$OnDrawFrameListener;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navigation/view/NaviSurfaceView$RenderThread;->this$0:Lcom/autonavi/xm/navigation/view/NaviSurfaceView;

    # getter for: Lcom/autonavi/xm/navigation/view/NaviSurfaceView;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v1}, Lcom/autonavi/xm/navigation/view/NaviSurfaceView;->access$100(Lcom/autonavi/xm/navigation/view/NaviSurfaceView;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/xm/navigation/view/NaviSurfaceView$OnDrawFrameListener;->onDrawFrame(Landroid/view/Surface;)V

    :cond_0
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/view/NaviSurfaceView$RenderThread;->mIsPending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    :try_start_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_5
    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/view/NaviSurfaceView$RenderThread;->mIsRunning:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :cond_2
    return-void
.end method

.method public shutdown()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/view/NaviSurfaceView$RenderThread;->mIsRunning:Z

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
