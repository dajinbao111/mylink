.class public Lcom/autonavi/xm/navigation/server/location/GGpsTime;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xm/a/c;


# instance fields
.field public nHour:I

.field public nMinute:I

.field public nSecond:I

.field public nTickTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/location/GGpsTime;->nHour:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/location/GGpsTime;->nMinute:I

    iput p3, p0, Lcom/autonavi/xm/navigation/server/location/GGpsTime;->nSecond:I

    iput p4, p0, Lcom/autonavi/xm/navigation/server/location/GGpsTime;->nTickTime:I

    return-void
.end method


# virtual methods
.method public writeToBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/navigation/server/location/GGpsTime;->nHour:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/autonavi/xm/navigation/server/location/GGpsTime;->nMinute:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/autonavi/xm/navigation/server/location/GGpsTime;->nSecond:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/autonavi/xm/navigation/server/location/GGpsTime;->nTickTime:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method
