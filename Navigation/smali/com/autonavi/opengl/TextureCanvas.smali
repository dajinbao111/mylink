.class public Lcom/autonavi/opengl/TextureCanvas;
.super Landroid/graphics/Canvas;


# instance fields
.field private final mGlBitmapSprite:Lcom/autonavi/opengl/GLBitmapSprite;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/autonavi/opengl/TextureCanvas;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/Canvas;-><init>()V

    new-instance v0, Lcom/autonavi/opengl/GLBitmapSprite;

    invoke-direct {v0}, Lcom/autonavi/opengl/GLBitmapSprite;-><init>()V

    iput-object v0, p0, Lcom/autonavi/opengl/TextureCanvas;->mGlBitmapSprite:Lcom/autonavi/opengl/GLBitmapSprite;

    invoke-virtual {p0, p1, p2}, Lcom/autonavi/opengl/TextureCanvas;->setSize(II)V

    return-void
.end method


# virtual methods
.method public bindTexture()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/opengl/TextureCanvas;->mGlBitmapSprite:Lcom/autonavi/opengl/GLBitmapSprite;

    invoke-virtual {v0}, Lcom/autonavi/opengl/GLBitmapSprite;->bindTexture()V

    return-void
.end method

.method public clearColor()V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/opengl/TextureCanvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public draw()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/opengl/TextureCanvas;->mGlBitmapSprite:Lcom/autonavi/opengl/GLBitmapSprite;

    invoke-virtual {v0}, Lcom/autonavi/opengl/GLBitmapSprite;->draw()V

    return-void
.end method

.method public drawAlignCenter(II)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/opengl/TextureCanvas;->mGlBitmapSprite:Lcom/autonavi/opengl/GLBitmapSprite;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/opengl/GLBitmapSprite;->drawAlignCenter(II)V

    return-void
.end method

.method public initTexImage2D()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/opengl/TextureCanvas;->mGlBitmapSprite:Lcom/autonavi/opengl/GLBitmapSprite;

    invoke-virtual {v0}, Lcom/autonavi/opengl/GLBitmapSprite;->initTexImage2D()V

    return-void
.end method

.method public setSize(II)V
    .locals 2

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/opengl/TextureCanvas;->mGlBitmapSprite:Lcom/autonavi/opengl/GLBitmapSprite;

    invoke-virtual {v0}, Lcom/autonavi/opengl/GLBitmapSprite;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_0

    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/opengl/TextureCanvas;->mGlBitmapSprite:Lcom/autonavi/opengl/GLBitmapSprite;

    invoke-virtual {v1, v0}, Lcom/autonavi/opengl/GLBitmapSprite;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/opengl/TextureCanvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public texImage2D()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/opengl/TextureCanvas;->mGlBitmapSprite:Lcom/autonavi/opengl/GLBitmapSprite;

    invoke-virtual {v0}, Lcom/autonavi/opengl/GLBitmapSprite;->texImage2D()V

    return-void
.end method
