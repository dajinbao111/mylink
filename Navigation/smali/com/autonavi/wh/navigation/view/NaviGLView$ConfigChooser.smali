.class Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# instance fields
.field private EGL_OPENGL_ES2_BIT:I

.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private final mValue:[I

.field final synthetic this$0:Lcom/autonavi/wh/navigation/view/NaviGLView;


# direct methods
.method public constructor <init>(Lcom/autonavi/wh/navigation/view/NaviGLView;IIIIII)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;->this$0:Lcom/autonavi/wh/navigation/view/NaviGLView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;->EGL_OPENGL_ES2_BIT:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;->mValue:[I

    iput p2, p0, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;->mRedSize:I

    iput p3, p0, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;->mGreenSize:I

    iput p4, p0, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;->mBlueSize:I

    iput p5, p0, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;->mAlphaSize:I

    iput p6, p0, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;->mDepthSize:I

    iput p7, p0, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;->mStencilSize:I

    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;->mValue:[I

    const/4 v1, 0x0

    aget p5, v0, v1

    :cond_0
    return p5
.end method

.method private getConfigAttribs(IZ)[I
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x4

    if-ne p1, v5, :cond_1

    const/16 v2, 0xb

    new-array v2, v2, [I

    const/16 v3, 0x3024

    aput v3, v2, v1

    aput v4, v2, v0

    const/16 v3, 0x3023

    aput v3, v2, v5

    aput v4, v2, v6

    const/16 v3, 0x3022

    aput v3, v2, v4

    const/4 v3, 0x5

    aput v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0x3040

    aput v4, v2, v3

    const/4 v3, 0x7

    iget v4, p0, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;->EGL_OPENGL_ES2_BIT:I

    aput v4, v2, v3

    const/16 v3, 0x8

    const/16 v4, 0x3032

    aput v4, v2, v3

    const/16 v3, 0x9

    if-eqz p2, :cond_0

    :goto_0
    aput v0, v2, v3

    const/16 v0, 0xa

    const/16 v1, 0x3038

    aput v1, v2, v0

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v2, 0x9

    new-array v2, v2, [I

    const/16 v3, 0x3024

    aput v3, v2, v1

    aput v4, v2, v0

    const/16 v3, 0x3023

    aput v3, v2, v5

    aput v4, v2, v6

    const/16 v3, 0x3022

    aput v3, v2, v4

    const/4 v3, 0x5

    aput v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0x3032

    aput v4, v2, v3

    const/4 v3, 0x7

    if-eqz p2, :cond_2

    :goto_2
    aput v0, v2, v3

    const/16 v0, 0x8

    const/16 v1, 0x3038

    aput v1, v2, v0

    move-object v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;->this$0:Lcom/autonavi/wh/navigation/view/NaviGLView;

    # getter for: Lcom/autonavi/wh/navigation/view/NaviGLView;->mOpenglEsVersion:I
    invoke-static {v0}, Lcom/autonavi/wh/navigation/view/NaviGLView;->access$200(Lcom/autonavi/wh/navigation/view/NaviGLView;)I

    move-result v2

    # getter for: Lcom/autonavi/wh/navigation/view/NaviGLView;->ANTI_ALIAS_DISABLED:Z
    invoke-static {}, Lcom/autonavi/wh/navigation/view/NaviGLView;->access$300()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;->getConfigAttribs(IZ)[I

    move-result-object v2

    new-array v5, v1, [I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget v0, v5, v4

    if-gtz v0, :cond_2

    # getter for: Lcom/autonavi/wh/navigation/view/NaviGLView;->ANTI_ALIAS_DISABLED:Z
    invoke-static {}, Lcom/autonavi/wh/navigation/view/NaviGLView;->access$300()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;->this$0:Lcom/autonavi/wh/navigation/view/NaviGLView;

    # getter for: Lcom/autonavi/wh/navigation/view/NaviGLView;->mOpenglEsVersion:I
    invoke-static {v0}, Lcom/autonavi/wh/navigation/view/NaviGLView;->access$200(Lcom/autonavi/wh/navigation/view/NaviGLView;)I

    move-result v0

    invoke-direct {p0, v0, v4}, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;->getConfigAttribs(IZ)[I

    move-result-object v2

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget v4, v5, v4

    :goto_1
    if-gtz v4, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    invoke-virtual {p0, p1, p2, v3}, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0

    :cond_2
    move v4, v0

    goto :goto_1
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 11

    const/4 v5, 0x0

    array-length v7, p3

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v3, p3, v6

    const/16 v4, 0x3025

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    const/16 v4, 0x3026

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    iget v1, p0, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;->mDepthSize:I

    if-lt v8, v1, :cond_0

    iget v1, p0, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;->mStencilSize:I

    if-ge v0, v1, :cond_1

    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_1
    const/16 v4, 0x3024

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    const/16 v4, 0x3023

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    const/16 v4, 0x3022

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    const/16 v4, 0x3021

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    iget v1, p0, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;->mRedSize:I

    if-ne v8, v1, :cond_0

    iget v1, p0, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;->mGreenSize:I

    if-ne v9, v1, :cond_0

    iget v1, p0, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;->mBlueSize:I

    if-ne v10, v1, :cond_0

    iget v1, p0, Lcom/autonavi/wh/navigation/view/NaviGLView$ConfigChooser;->mAlphaSize:I

    if-ne v0, v1, :cond_0

    :goto_1
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method
