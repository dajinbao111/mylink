.class public Lcom/autonavi/wh/navigation/server/location/GGpsPos;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/wh/a/c;


# instance fields
.field public cLat:B

.field public cLon:B

.field public lLat:I

.field public lLatS:I

.field public lLon:I

.field public lLonS:I

.field public nTickTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(BBIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/autonavi/wh/navigation/server/location/GGpsPos;->cLon:B

    iput-byte p2, p0, Lcom/autonavi/wh/navigation/server/location/GGpsPos;->cLat:B

    iput p3, p0, Lcom/autonavi/wh/navigation/server/location/GGpsPos;->lLon:I

    iput p4, p0, Lcom/autonavi/wh/navigation/server/location/GGpsPos;->lLat:I

    iput p5, p0, Lcom/autonavi/wh/navigation/server/location/GGpsPos;->lLonS:I

    iput p6, p0, Lcom/autonavi/wh/navigation/server/location/GGpsPos;->lLatS:I

    iput p7, p0, Lcom/autonavi/wh/navigation/server/location/GGpsPos;->nTickTime:I

    return-void
.end method


# virtual methods
.method public writeToBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-byte v0, p0, Lcom/autonavi/wh/navigation/server/location/GGpsPos;->cLon:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/autonavi/wh/navigation/server/location/GGpsPos;->cLat:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/autonavi/wh/navigation/server/location/GGpsPos;->lLon:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/autonavi/wh/navigation/server/location/GGpsPos;->lLat:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/autonavi/wh/navigation/server/location/GGpsPos;->lLonS:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/autonavi/wh/navigation/server/location/GGpsPos;->lLatS:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/autonavi/wh/navigation/server/location/GGpsPos;->nTickTime:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method
