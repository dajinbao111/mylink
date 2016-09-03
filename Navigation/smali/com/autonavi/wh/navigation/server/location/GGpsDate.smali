.class public Lcom/autonavi/wh/navigation/server/location/GGpsDate;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/wh/a/c;


# instance fields
.field public nDay:I

.field public nMonth:I

.field public nTickTime:I

.field public nYear:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/autonavi/wh/navigation/server/location/GGpsDate;->nTickTime:I

    iput p1, p0, Lcom/autonavi/wh/navigation/server/location/GGpsDate;->nYear:I

    iput p2, p0, Lcom/autonavi/wh/navigation/server/location/GGpsDate;->nMonth:I

    iput p3, p0, Lcom/autonavi/wh/navigation/server/location/GGpsDate;->nDay:I

    return-void
.end method


# virtual methods
.method public writeToBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget v0, p0, Lcom/autonavi/wh/navigation/server/location/GGpsDate;->nYear:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/autonavi/wh/navigation/server/location/GGpsDate;->nMonth:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/autonavi/wh/navigation/server/location/GGpsDate;->nDay:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/autonavi/wh/navigation/server/location/GGpsDate;->nTickTime:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method
