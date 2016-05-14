.class public Lcom/autonavi/xm/navigation/server/map/GBitmap;
.super Ljava/lang/Object;


# instance fields
.field public cBPP:I

.field public cbxPitch:I

.field public cbyPicth:I

.field public cxWidth:I

.field public cyHeight:I

.field public eFormat:Lcom/autonavi/xm/navigation/server/map/GColorFormat;

.field public nID:I

.field public pAlpha:Ljava/nio/ByteBuffer;

.field public pData:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIIIILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->nID:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cxWidth:I

    iput p3, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cyHeight:I

    iput p4, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cbxPitch:I

    iput p5, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cbyPicth:I

    iput p6, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cBPP:I

    invoke-static {p7}, Lcom/autonavi/xm/navigation/server/map/GColorFormat;->valueOf(I)Lcom/autonavi/xm/navigation/server/map/GColorFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->eFormat:Lcom/autonavi/xm/navigation/server/map/GColorFormat;

    iput-object p8, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->pData:Ljava/nio/ByteBuffer;

    iput-object p9, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->pAlpha:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public getBufferSize()I
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->pData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->pAlpha:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->pData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->pAlpha:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->nID:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cxWidth:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cyHeight:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cbxPitch:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cbyPicth:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->cBPP:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->eFormat:Lcom/autonavi/xm/navigation/server/map/GColorFormat;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/map/GColorFormat;->nativeValue:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->pData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->pData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->pData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->pAlpha:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->pAlpha:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/map/GBitmap;->pAlpha:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method
