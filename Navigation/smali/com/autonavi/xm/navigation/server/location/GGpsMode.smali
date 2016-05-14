.class public Lcom/autonavi/xm/navigation/server/location/GGpsMode;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xm/a/c;


# instance fields
.field public cMode:B

.field public nTickTime:I


# direct methods
.method public constructor <init>(BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/autonavi/xm/navigation/server/location/GGpsMode;->cMode:B

    iput p2, p0, Lcom/autonavi/xm/navigation/server/location/GGpsMode;->nTickTime:I

    return-void
.end method


# virtual methods
.method public writeToBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-byte v0, p0, Lcom/autonavi/xm/navigation/server/location/GGpsMode;->cMode:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/autonavi/xm/navigation/server/location/GGpsMode;->nTickTime:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method
