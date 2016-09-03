.class public Lcom/autonavi/wh/ime/handwriting/WritingPath;
.super Ljava/lang/Object;


# instance fields
.field mBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x5000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/ime/handwriting/WritingPath;->mBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/handwriting/WritingPath;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method public endPath()V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/autonavi/wh/ime/handwriting/WritingPath;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/autonavi/wh/ime/handwriting/WritingPath;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public endStroke()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/ime/handwriting/WritingPath;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/autonavi/wh/ime/handwriting/WritingPath;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putPoint(FF)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/ime/handwriting/WritingPath;->mBuffer:Ljava/nio/ByteBuffer;

    float-to-int v1, p1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/autonavi/wh/ime/handwriting/WritingPath;->mBuffer:Ljava/nio/ByteBuffer;

    float-to-int v1, p2

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putPoint(II)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/ime/handwriting/WritingPath;->mBuffer:Ljava/nio/ByteBuffer;

    int-to-short v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/autonavi/wh/ime/handwriting/WritingPath;->mBuffer:Ljava/nio/ByteBuffer;

    int-to-short v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method
