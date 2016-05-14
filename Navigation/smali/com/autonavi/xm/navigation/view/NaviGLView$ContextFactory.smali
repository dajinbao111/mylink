.class Lcom/autonavi/xm/navigation/view/NaviGLView$ContextFactory;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private EGL_CONTEXT_CLIENT_VERSION:I

.field final synthetic this$0:Lcom/autonavi/xm/navigation/view/NaviGLView;


# direct methods
.method private constructor <init>(Lcom/autonavi/xm/navigation/view/NaviGLView;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xm/navigation/view/NaviGLView$ContextFactory;->this$0:Lcom/autonavi/xm/navigation/view/NaviGLView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3098

    iput v0, p0, Lcom/autonavi/xm/navigation/view/NaviGLView$ContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/xm/navigation/view/NaviGLView;Lcom/autonavi/xm/navigation/view/NaviGLView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navigation/view/NaviGLView$ContextFactory;-><init>(Lcom/autonavi/xm/navigation/view/NaviGLView;)V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3

    const-string v0, "Before eglCreateContext"

    # invokes: Lcom/autonavi/xm/navigation/view/NaviGLView;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    invoke-static {v0, p1}, Lcom/autonavi/xm/navigation/view/NaviGLView;->access$100(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/autonavi/xm/navigation/view/NaviGLView$ContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/autonavi/xm/navigation/view/NaviGLView$ContextFactory;->this$0:Lcom/autonavi/xm/navigation/view/NaviGLView;

    # getter for: Lcom/autonavi/xm/navigation/view/NaviGLView;->mOpenglEsVersion:I
    invoke-static {v2}, Lcom/autonavi/xm/navigation/view/NaviGLView;->access$200(Lcom/autonavi/xm/navigation/view/NaviGLView;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3038

    aput v2, v0, v1

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    const-string v1, "After eglCreateContext"

    # invokes: Lcom/autonavi/xm/navigation/view/NaviGLView;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    invoke-static {v1, p1}, Lcom/autonavi/xm/navigation/view/NaviGLView;->access$100(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-object v0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    return-void
.end method
