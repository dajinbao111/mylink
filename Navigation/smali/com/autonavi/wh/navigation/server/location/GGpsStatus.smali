.class public Lcom/autonavi/wh/navigation/server/location/GGpsStatus;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/wh/a/c;


# instance fields
.field public cStatus:B

.field public nTickTime:I


# direct methods
.method public constructor <init>(BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/autonavi/wh/navigation/server/location/GGpsStatus;->cStatus:B

    iput p2, p0, Lcom/autonavi/wh/navigation/server/location/GGpsStatus;->nTickTime:I

    return-void
.end method


# virtual methods
.method public writeToBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-byte v0, p0, Lcom/autonavi/wh/navigation/server/location/GGpsStatus;->cStatus:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/autonavi/wh/navigation/server/location/GGpsStatus;->nTickTime:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method
