.class public Lcom/autonavi/navigation/api/internal/a/a/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/autonavi/xm/navigation/server/map/GBitmap;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->pAlpha:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/autonavi/navigation/api/internal/a/a/b;->b(Lcom/autonavi/xm/navigation/server/map/GBitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cxWidth:I

    iget v2, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cyHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->pData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->pAlpha:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cxWidth:I

    iget v2, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cyHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->pData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    move v0, v1

    :goto_1
    iget v2, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cyHeight:I

    if-ge v0, v2, :cond_2

    move v2, v1

    :goto_2
    iget v5, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cxWidth:I

    if-ge v2, v5, :cond_1

    invoke-virtual {v4, v2, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    const v6, 0xffffff

    and-int/2addr v5, v6

    iget-object v6, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->pAlpha:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    shl-int/lit8 v7, v6, 0x3

    and-int/lit8 v6, v6, 0x7

    or-int/2addr v6, v7

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    invoke-virtual {v3, v2, v0, v5}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v3

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;)Lcom/autonavi/xm/navigation/server/map/GBitmap;
    .locals 11

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int v0, v3, v4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    mul-int v0, v3, v4

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    const v9, 0xffffff

    and-int/2addr v7, v9

    shr-int/lit8 v9, v7, 0x13

    and-int/lit8 v9, v9, 0x1f

    shl-int/lit8 v9, v9, 0xb

    shr-int/lit8 v10, v7, 0xa

    and-int/lit8 v10, v10, 0x3f

    shl-int/lit8 v10, v10, 0x5

    or-int/2addr v9, v10

    shr-int/lit8 v7, v7, 0x3

    and-int/lit8 v7, v7, 0x1f

    or-int/2addr v7, v9

    int-to-short v7, v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    mul-int/lit8 v7, v8, 0x20

    div-int/lit16 v7, v7, 0x100

    int-to-byte v7, v7

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GBitmap;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/server/map/GBitmap;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, v0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->nID:I

    const/16 v1, 0x10

    iput v1, v0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cBPP:I

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GColorFormat;->COLOR_FORMAT_RGB565:Lcom/autonavi/xm/navigation/server/map/GColorFormat;

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->eFormat:Lcom/autonavi/xm/navigation/server/map/GColorFormat;

    iput v3, v0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cxWidth:I

    iput v4, v0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cyHeight:I

    const/4 v1, 0x2

    iput v1, v0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cbxPitch:I

    iget v1, v0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cbxPitch:I

    iget v2, v0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cxWidth:I

    mul-int/2addr v1, v2

    iput v1, v0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cbyPicth:I

    iput-object v6, v0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->pData:Ljava/nio/ByteBuffer;

    iput-object v5, v0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->pAlpha:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public static b(Lcom/autonavi/xm/navigation/server/map/GBitmap;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v1, 0x0

    iget v0, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cxWidth:I

    iget v2, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cyHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget v0, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cxWidth:I

    iget v2, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cyHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->pData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    const/16 v0, 0xff

    move v2, v0

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cyHeight:I

    if-ge v0, v3, :cond_1

    move v3, v1

    :goto_1
    iget v4, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cxWidth:I

    if-ge v3, v4, :cond_0

    invoke-virtual {v6, v3, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    const v7, 0xffffff

    and-int/2addr v7, v4

    shl-int/lit8 v4, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    or-int/2addr v4, v2

    shl-int/lit8 v2, v4, 0x18

    or-int/2addr v2, v7

    invoke-virtual {v5, v3, v0, v2}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    return-object v5
.end method
