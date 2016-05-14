.class public Lcom/autonavi/opengl/GLBitmapSprite;
.super Ljava/lang/Object;


# static fields
.field private static final INTEGER_SIZE_BYTES:I = 0x4

.field private static final SHORT_SIZE_BYTES:I = 0x2


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mClearUseless:Z

.field private final mCoordBuffer:Ljava/nio/ShortBuffer;

.field private mHeight:I

.field private final mIndexBuffer:Ljava/nio/ShortBuffer;

.field private mPow2Height:I

.field private mPow2PixelsBuffer:Ljava/nio/ByteBuffer;

.field private mPow2Width:I

.field private mTextureId:I

.field private final mVerticleBuffer:Ljava/nio/ShortBuffer;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/autonavi/opengl/GLBitmapSprite;-><init>(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/opengl/GLBitmapSprite;-><init>(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 4

    const/16 v3, 0x10

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mTextureId:I

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mVerticleBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mCoordBuffer:Ljava/nio/ShortBuffer;

    iget-object v0, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mCoordBuffer:Ljava/nio/ShortBuffer;

    const/16 v1, 0x8

    new-array v1, v1, [S

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mIndexBuffer:Ljava/nio/ShortBuffer;

    iget-object v0, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mIndexBuffer:Ljava/nio/ShortBuffer;

    const/4 v1, 0x6

    new-array v1, v1, [S

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    iput-boolean p2, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mClearUseless:Z

    invoke-virtual {p0, p1}, Lcom/autonavi/opengl/GLBitmapSprite;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x1s
        0x1s
        0x0s
        0x0s
        0x1s
        0x0s
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x1s
        0x2s
        0x3s
    .end array-data
.end method

.method public static beginDrawing()V
    .locals 1

    const/16 v0, 0xde1

    invoke-static {v0}, Landroid/opengl/GLES10;->glEnable(I)V

    const v0, 0x8074

    invoke-static {v0}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    const v0, 0x8078

    invoke-static {v0}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    return-void
.end method

.method public static endDrawing()V
    .locals 1

    const/16 v0, 0xde1

    invoke-static {v0}, Landroid/opengl/GLES10;->glDisable(I)V

    const v0, 0x8074

    invoke-static {v0}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    const v0, 0x8078

    invoke-static {v0}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    return-void
.end method

.method public static roundUpPower2(I)I
    .locals 2

    add-int/lit8 v0, p0, -0x1

    shr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private setSize(II)V
    .locals 8

    const/4 v7, 0x0

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mWidth:I

    iput p2, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mHeight:I

    invoke-static {p1}, Lcom/autonavi/opengl/GLBitmapSprite;->roundUpPower2(I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mPow2Width:I

    invoke-static {p2}, Lcom/autonavi/opengl/GLBitmapSprite;->roundUpPower2(I)I

    move-result v1

    iput v1, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mPow2Height:I

    sub-int v2, p2, v1

    iget-object v3, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mVerticleBuffer:Ljava/nio/ShortBuffer;

    const/16 v4, 0x8

    new-array v4, v4, [S

    aput-short v7, v4, v7

    const/4 v5, 0x1

    int-to-short v6, v2

    aput-short v6, v4, v5

    const/4 v5, 0x2

    int-to-short v6, v0

    aput-short v6, v4, v5

    const/4 v5, 0x3

    int-to-short v6, v2

    aput-short v6, v4, v5

    const/4 v5, 0x4

    aput-short v7, v4, v5

    const/4 v5, 0x5

    add-int v6, v1, v2

    int-to-short v6, v6

    aput-short v6, v4, v5

    const/4 v5, 0x6

    int-to-short v6, v0

    aput-short v6, v4, v5

    const/4 v5, 0x7

    add-int/2addr v2, v1

    int-to-short v2, v2

    aput-short v2, v4, v5

    invoke-virtual {v3, v4}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    iget-boolean v2, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mClearUseless:Z

    if-eqz v2, :cond_0

    if-ne p1, v0, :cond_2

    if-eq p2, v1, :cond_0

    :cond_2
    mul-int/lit8 v0, v0, 0x4

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mPow2PixelsBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0
.end method


# virtual methods
.method public bindTexture()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x46180000    # 9728.0f

    const/16 v1, 0xde1

    new-array v0, v4, [I

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES10;->glGenTextures(I[II)V

    aget v0, v0, v3

    iput v0, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mTextureId:I

    iget v0, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mTextureId:I

    invoke-static {v1, v0}, Landroid/opengl/GLES10;->glBindTexture(II)V

    const/16 v0, 0x2801

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES10;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES10;->glTexParameterf(IIF)V

    return-void
.end method

.method public draw()V
    .locals 5

    const/16 v4, 0x1402

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/16 v0, 0xde1

    iget v1, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mTextureId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES10;->glBindTexture(II)V

    iget-object v0, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mVerticleBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v3, v4, v2, v0}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mCoordBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v3, v4, v2, v0}, Landroid/opengl/GLES10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    const/4 v0, 0x4

    const/4 v1, 0x6

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES10;->glDrawElements(IIILjava/nio/Buffer;)V

    return-void
.end method

.method public drawAlignCenter(II)V
    .locals 3

    invoke-static {}, Landroid/opengl/GLES10;->glPushMatrix()V

    iget v0, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mWidth:I

    shr-int/lit8 v0, v0, 0x1

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mHeight:I

    shr-int/lit8 v1, v1, 0x1

    sub-int v1, p2, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES10;->glTranslatef(FFF)V

    invoke-virtual {p0}, Lcom/autonavi/opengl/GLBitmapSprite;->draw()V

    invoke-static {}, Landroid/opengl/GLES10;->glPopMatrix()V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public initTexImage2D()V
    .locals 9

    const/16 v2, 0x1908

    const/16 v0, 0xde1

    const/4 v1, 0x0

    iget v3, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mTextureId:I

    invoke-static {v0, v3}, Landroid/opengl/GLES10;->glBindTexture(II)V

    iget v3, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mWidth:I

    iget v4, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mPow2Width:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mHeight:I

    iget v4, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mPow2Height:I

    if-ne v3, v4, :cond_0

    iget-object v2, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    :goto_0
    return-void

    :cond_0
    iget v3, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mPow2Width:I

    iget v4, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mPow2Height:I

    const/16 v7, 0x1401

    iget-object v8, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mPow2PixelsBuffer:Ljava/nio/ByteBuffer;

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iget-object v2, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v1, v1, v2}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iput-object p1, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/autonavi/opengl/GLBitmapSprite;->setSize(II)V

    goto :goto_0
.end method

.method public texImage2D()V
    .locals 4

    const/16 v3, 0xde1

    const/4 v2, 0x0

    iget v0, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mTextureId:I

    invoke-static {v3, v0}, Landroid/opengl/GLES10;->glBindTexture(II)V

    iget v0, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mWidth:I

    iget v1, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mPow2Width:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mHeight:I

    iget v1, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mPow2Height:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v2, v0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/opengl/GLBitmapSprite;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v2, v2, v2, v0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    goto :goto_0
.end method
