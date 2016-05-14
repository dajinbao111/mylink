.class public Lcom/autonavi/xm/navigation/server/location/GPulseData;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xm/a/c;


# instance fields
.field public nCount:I

.field public nInterval:I

.field public nTimestamp:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/location/GPulseData;->nCount:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/location/GPulseData;->nInterval:I

    iput p3, p0, Lcom/autonavi/xm/navigation/server/location/GPulseData;->nTimestamp:I

    return-void
.end method


# virtual methods
.method public writeToBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/navigation/server/location/GPulseData;->nCount:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/autonavi/xm/navigation/server/location/GPulseData;->nInterval:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/autonavi/xm/navigation/server/location/GPulseData;->nTimestamp:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method
