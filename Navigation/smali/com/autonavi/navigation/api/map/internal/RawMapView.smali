.class public Lcom/autonavi/navigation/api/map/internal/RawMapView;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/autonavi/navigation/api/map/internal/a$a;


# static fields
.field public static a:I

.field public static b:I

.field public static c:Z


# instance fields
.field private final d:Landroid/content/Context;

.field private e:Ljavax/microedition/khronos/egl/EGLSurface;

.field private final f:Lcom/autonavi/navigation/api/map/internal/l;

.field private final g:Lcom/autonavi/navigation/api/settings/a/b;

.field private h:Ljava/nio/ByteBuffer;

.field private i:Lcom/autonavi/navigation/api/map/AnMap$SnapshotReadyCallback;

.field private j:Landroid/graphics/Bitmap;

.field private k:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->a:I

    sput v0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->b:I

    sput-boolean v0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/navigation/api/map/internal/RawMapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->k:J

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/internal/RawMapView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-static {}, Lcom/autonavi/navigation/api/map/internal/f;->a()Lcom/autonavi/navigation/api/map/internal/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/internal/f;->e()V

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getMapManagerDelegate()Lcom/autonavi/navigation/api/map/internal/l;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->f:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getSettingsDelegate()Lcom/autonavi/navigation/api/settings/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->g:Lcom/autonavi/navigation/api/settings/a/b;

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->g:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v1, "orientation"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;I)Z

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->g:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v1, "orientation"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;I)Z

    return-void
.end method

.method private getSnapshotBitmap()Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->f:Lcom/autonavi/navigation/api/map/internal/l;

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-interface {v3, v5, v5, v4, v0}, Lcom/autonavi/navigation/api/map/internal/l;->b(IIII)Ljava/nio/ByteBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMapBitmap"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/navigation/api/internal/a/a/f;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/internal/RawMapView;->getMapBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/autonavi/navigation/api/map/internal/f;->a()Lcom/autonavi/navigation/api/map/internal/f;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/internal/f;->b(Ljavax/microedition/khronos/egl/EGLSurface;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$SnapshotReadyCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/autonavi/navigation/api/map/internal/RawMapView;->a(Lcom/autonavi/navigation/api/map/AnMap$SnapshotReadyCallback;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$SnapshotReadyCallback;Landroid/graphics/Bitmap;)V
    .locals 1

    iput-object p2, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->j:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->i:Lcom/autonavi/navigation/api/map/AnMap$SnapshotReadyCallback;

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->f:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->a()Z

    return-void
.end method

.method public b()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->i:Lcom/autonavi/navigation/api/map/AnMap$SnapshotReadyCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->i:Lcom/autonavi/navigation/api/map/AnMap$SnapshotReadyCallback;

    invoke-direct {p0}, Lcom/autonavi/navigation/api/map/internal/RawMapView;->getSnapshotBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap$SnapshotReadyCallback;->onSnapshotReady(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->i:Lcom/autonavi/navigation/api/map/AnMap$SnapshotReadyCallback;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->g:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v1, "map_pixels_enabled"

    invoke-interface {v0, v1, v5}, Lcom/autonavi/navigation/api/settings/a/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->f:Lcom/autonavi/navigation/api/map/internal/l;

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-interface {v3, v5, v5, v4, v0}, Lcom/autonavi/navigation/api/map/internal/l;->a(IIII)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMapTexture times: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v1, v4, v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", textureID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/navigation/api/internal/a/a/f;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/autonavi/navigation/api/map/internal/f;->a()Lcom/autonavi/navigation/api/map/internal/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/map/internal/f;->a(I)V

    :cond_1
    invoke-static {}, Lcom/autonavi/navigation/api/map/internal/f;->a()Lcom/autonavi/navigation/api/map/internal/f;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/internal/f;->c(Ljavax/microedition/khronos/egl/EGLSurface;)V

    goto :goto_0
.end method

.method public getMapBitmap()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->h:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->h:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :try_start_0
    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/autonavi/navigation/api/map/internal/RawMapView;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/autonavi/navigation/api/map/internal/RawMapView;->d()V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->g:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v1, "rect_of_map"

    new-instance v2, Landroid/graphics/Rect;

    add-int/lit8 v3, p1, -0x1

    add-int/lit8 v4, p2, -0x1

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v0, v1, v2}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;Landroid/graphics/Rect;)Z

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/navigation/api/map/internal/f;->a()Lcom/autonavi/navigation/api/map/internal/f;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/internal/f;->a(Ljavax/microedition/khronos/egl/EGLSurface;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_0
    invoke-static {}, Lcom/autonavi/navigation/api/map/internal/f;->a()Lcom/autonavi/navigation/api/map/internal/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/map/internal/f;->a(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->f:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p0}, Lcom/autonavi/navigation/api/map/internal/l;->a(Lcom/autonavi/navigation/api/map/internal/a$a;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->f:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->d()Z

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->g:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v1, "rect_of_map"

    new-instance v2, Landroid/graphics/Rect;

    add-int/lit8 v3, p3, -0x1

    add-int/lit8 v4, p4, -0x1

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v0, v1, v2}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/navigation/api/internal/a/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/autonavi/navigation/api/map/internal/RawMapView;->c()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/autonavi/navigation/api/map/internal/RawMapView;->d()V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    sget v0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->a:I

    sget v0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->a:I

    sget v1, Lcom/autonavi/navigation/api/map/internal/RawMapView;->b:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->c:Z

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->f:Lcom/autonavi/navigation/api/map/internal/l;

    sget-boolean v1, Lcom/autonavi/navigation/api/map/internal/RawMapView;->c:Z

    invoke-interface {v0, v1}, Lcom/autonavi/navigation/api/map/internal/l;->b(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    sget v0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->b:I

    sget v0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->a:I

    sget v1, Lcom/autonavi/navigation/api/map/internal/RawMapView;->b:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->c:Z

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->f:Lcom/autonavi/navigation/api/map/internal/l;

    sget-boolean v1, Lcom/autonavi/navigation/api/map/internal/RawMapView;->c:Z

    invoke-interface {v0, v1}, Lcom/autonavi/navigation/api/map/internal/l;->b(Z)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/RawMapView;->f:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p0}, Lcom/autonavi/navigation/api/map/internal/l;->b(Lcom/autonavi/navigation/api/map/internal/a$a;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
