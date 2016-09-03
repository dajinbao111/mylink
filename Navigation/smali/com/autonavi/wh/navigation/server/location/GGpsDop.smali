.class public Lcom/autonavi/wh/navigation/server/location/GGpsDop;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/wh/a/c;


# instance fields
.field public nHDOP:I

.field public nPDOP:I

.field public nTickTime:I

.field public nVDOP:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/wh/navigation/server/location/GGpsDop;->nHDOP:I

    iput p2, p0, Lcom/autonavi/wh/navigation/server/location/GGpsDop;->nVDOP:I

    iput p3, p0, Lcom/autonavi/wh/navigation/server/location/GGpsDop;->nPDOP:I

    iput p4, p0, Lcom/autonavi/wh/navigation/server/location/GGpsDop;->nTickTime:I

    return-void
.end method


# virtual methods
.method public writeToBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget v0, p0, Lcom/autonavi/wh/navigation/server/location/GGpsDop;->nHDOP:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/autonavi/wh/navigation/server/location/GGpsDop;->nVDOP:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/autonavi/wh/navigation/server/location/GGpsDop;->nPDOP:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/autonavi/wh/navigation/server/location/GGpsDop;->nTickTime:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method
