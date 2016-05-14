.class public Lcom/autonavi/navigation/api/map/internal/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/autonavi/navigation/api/map/internal/f;


# instance fields
.field private b:Ljavax/microedition/khronos/egl/EGL10;

.field private c:Ljavax/microedition/khronos/egl/EGLConfig;

.field private d:Ljavax/microedition/khronos/egl/EGLContext;

.field private e:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private f:I

.field private final g:[I

.field private h:[I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->f:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->g:[I

    return-void
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->g:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->g:[I

    const/4 v1, 0x0

    aget p5, v0, v1

    :cond_0
    return p5
.end method

.method public static a()Lcom/autonavi/navigation/api/map/internal/f;
    .locals 1

    sget-object v0, Lcom/autonavi/navigation/api/map/internal/f;->a:Lcom/autonavi/navigation/api/map/internal/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/map/internal/f;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/map/internal/f;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/map/internal/f;->a:Lcom/autonavi/navigation/api/map/internal/f;

    :cond_0
    sget-object v0, Lcom/autonavi/navigation/api/map/internal/f;->a:Lcom/autonavi/navigation/api/map/internal/f;

    return-object v0
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12

    const/4 v11, 0x5

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

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/navigation/api/map/internal/f;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    const/16 v4, 0x3026

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/navigation/api/map/internal/f;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    const/16 v1, 0x10

    if-lt v8, v1, :cond_0

    if-gez v0, :cond_1

    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_1
    const/16 v4, 0x3024

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/navigation/api/map/internal/f;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    const/16 v4, 0x3023

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/navigation/api/map/internal/f;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    const/16 v4, 0x3022

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/navigation/api/map/internal/f;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    const/16 v4, 0x3021

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/navigation/api/map/internal/f;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    if-ne v8, v11, :cond_0

    const/4 v1, 0x6

    if-ne v9, v1, :cond_0

    if-ne v10, v11, :cond_0

    if-nez v0, :cond_0

    :goto_1
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private a(IZ)[I
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p1, v5, :cond_2

    const/16 v3, 0xf

    new-array v3, v3, [I

    const/16 v4, 0x3024

    aput v4, v3, v1

    aput v6, v3, v0

    const/16 v4, 0x3023

    aput v4, v3, v5

    const/4 v4, 0x3

    const/4 v5, 0x6

    aput v5, v3, v4

    const/16 v4, 0x3022

    aput v4, v3, v2

    aput v6, v3, v6

    const/4 v4, 0x6

    const/16 v5, 0x3021

    aput v5, v3, v4

    const/4 v4, 0x7

    aput v1, v3, v4

    const/16 v4, 0x8

    const/16 v5, 0x3040

    aput v5, v3, v4

    const/16 v4, 0x9

    aput v2, v3, v4

    const/16 v4, 0xa

    const/16 v5, 0x3032

    aput v5, v3, v4

    const/16 v4, 0xb

    if-eqz p2, :cond_1

    :goto_0
    aput v0, v3, v4

    const/16 v0, 0xc

    const/16 v4, 0x3031

    aput v4, v3, v0

    const/16 v0, 0xd

    if-eqz p2, :cond_0

    move v1, v2

    :cond_0
    aput v1, v3, v0

    const/16 v0, 0xe

    const/16 v1, 0x3038

    aput v1, v3, v0

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    const/16 v3, 0xb

    new-array v3, v3, [I

    const/16 v4, 0x3024

    aput v4, v3, v1

    aput v2, v3, v0

    const/16 v4, 0x3023

    aput v4, v3, v5

    const/4 v4, 0x3

    aput v2, v3, v4

    const/16 v4, 0x3022

    aput v4, v3, v2

    aput v2, v3, v6

    const/4 v2, 0x6

    const/16 v4, 0x3032

    aput v4, v3, v2

    const/4 v2, 0x7

    if-eqz p2, :cond_3

    :goto_2
    aput v0, v3, v2

    const/16 v0, 0x8

    const/16 v1, 0x3031

    aput v1, v3, v0

    const/16 v0, 0x9

    aput v5, v3, v0

    const/16 v0, 0xa

    const/16 v1, 0x3038

    aput v1, v3, v0

    move-object v0, v3

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    goto :goto_1

    :array_0
    .array-data 4
        0x3024
        0x4
        0x3023
        0x4
        0x3022
        0x4
        0x3038
    .end array-data
.end method


# virtual methods
.method public a(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 4

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/f;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/f;->c:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/map/internal/f;->b(Ljavax/microedition/khronos/egl/EGLSurface;)V

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/map/internal/f;->f:I

    return-void
.end method

.method public a(Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 5

    if-eqz p1, :cond_0

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/f;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/f;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->d:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/f;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/f;->d:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iput-object v3, p0, Lcom/autonavi/navigation/api/map/internal/f;->d:Ljavax/microedition/khronos/egl/EGLContext;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/f;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    iput-object v3, p0, Lcom/autonavi/navigation/api/map/internal/f;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->c:Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz v0, :cond_2

    iput-object v3, p0, Lcom/autonavi/navigation/api/map/internal/f;->c:Ljavax/microedition/khronos/egl/EGLConfig;

    :cond_2
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->b:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_3

    iput-object v3, p0, Lcom/autonavi/navigation/api/map/internal/f;->b:Ljavax/microedition/khronos/egl/EGL10;

    :cond_3
    return-void
.end method

.method public b(Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/f;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/f;->d:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, p1, p1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    :cond_0
    return-void
.end method

.method public c()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->d:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method public c(Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/f;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->f:I

    return v0
.end method

.method public e()V
    .locals 7

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->b:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->b:Ljavax/microedition/khronos/egl/EGL10;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->b:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->c:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_3

    new-array v0, v6, [I

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/f;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/f;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    invoke-direct {p0, v6, v5}, Lcom/autonavi/navigation/api/map/internal/f;->a(IZ)[I

    move-result-object v2

    new-array v5, v5, [I

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/f;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget v0, v5, v4

    if-gtz v0, :cond_2

    invoke-direct {p0, v6, v4}, Lcom/autonavi/navigation/api/map/internal/f;->a(IZ)[I

    move-result-object v2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/f;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget v0, v5, v4

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    aget v0, v5, v4

    new-array v3, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/f;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget v4, v5, v4

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/f;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-direct {p0, v0, v1, v3}, Lcom/autonavi/navigation/api/map/internal/f;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->c:Ljavax/microedition/khronos/egl/EGLConfig;

    :cond_3
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->d:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v0, :cond_4

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->h:[I

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/f;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/f;->c:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v4, p0, Lcom/autonavi/navigation/api/map/internal/f;->h:[I

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/f;->d:Ljavax/microedition/khronos/egl/EGLContext;

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method
