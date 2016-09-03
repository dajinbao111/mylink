.class public Lcom/autonavi/wh/navigation/view/NaviGLView;
.super Landroid/opengl/GLSurfaceView;


# static fields
.field private static final ANTI_ALIAS_DISABLED:Z

.field private static final TAG:Ljava/lang/String; = "NaviGLView"


# instance fields
.field private mOpenglEsVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/autonavidata/unantialias"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/autonavi/wh/navigation/view/NaviGLView;->ANTI_ALIAS_DISABLED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/wh/navigation/view/NaviGLView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/autonavi/wh/navigation/view/NaviGLView;->mOpenglEsVersion:I

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/autonavi/wh/navigation/view/NaviGLView;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-void
.end method

.method static synthetic access$200(Lcom/autonavi/wh/navigation/view/NaviGLView;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/wh/navigation/view/NaviGLView;->mOpenglEsVersion:I

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/autonavi/wh/navigation/view/NaviGLView;->ANTI_ALIAS_DISABLED:Z

    return v0
.end method

.method private static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 5

    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    const-string v1, "NaviGLView"

    const-string v2, "%s: EGL error: 0x%x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public setup(I)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    const/4 v2, 0x5

    const/4 v5, 0x0

    iput p1, p0, Lcom/autonavi/wh/navigation/view/NaviGLView;->mOpenglEsVersion:I

    new-instance v0, Lcom/autonavi/wh/navigation/view/NaviGLView$ContextFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/autonavi/wh/navigation/view/NaviGLView$ContextFactory;-><init>(Lcom/autonavi/wh/navigation/view/NaviGLView;Lcom/autonavi/wh/navigation/view/NaviGLView$1;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navigation/view/NaviGLView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    new-instance v0, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;

    const/4 v3, 0x6

    const/16 v6, 0x10

    move-object v1, p0

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;-><init>(Lcom/autonavi/wh/navigation/view/NaviGLView;IIIIII)V

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navigation/view/NaviGLView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    return-void
.end method
