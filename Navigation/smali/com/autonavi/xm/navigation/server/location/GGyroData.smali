.class public Lcom/autonavi/xm/navigation/server/location/GGyroData;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xm/a/c;


# instance fields
.field public Value:[I

.field public nCount:I

.field public nInterval:I

.field public nTimestamp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/location/GGyroData;->Value:[I

    return-void
.end method

.method public constructor <init>(II[II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/location/GGyroData;->Value:[I

    iput p1, p0, Lcom/autonavi/xm/navigation/server/location/GGyroData;->nCount:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/location/GGyroData;->nInterval:I

    iput-object p3, p0, Lcom/autonavi/xm/navigation/server/location/GGyroData;->Value:[I

    iput p4, p0, Lcom/autonavi/xm/navigation/server/location/GGyroData;->nTimestamp:I

    return-void
.end method


# virtual methods
.method public writeToBuffer(Ljava/nio/ByteBuffer;)V
    .locals 4

    iget v0, p0, Lcom/autonavi/xm/navigation/server/location/GGyroData;->nCount:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/autonavi/xm/navigation/server/location/GGyroData;->nInterval:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/location/GGyroData;->Value:[I

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, v1, v0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/autonavi/xm/navigation/server/location/GGyroData;->nTimestamp:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method
