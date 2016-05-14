.class public Lcom/autonavi/xm/navigation/server/location/GGpsAlt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xm/a/c;


# instance fields
.field public lAlt:I

.field public nTickTime:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/location/GGpsAlt;->lAlt:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/location/GGpsAlt;->nTickTime:I

    return-void
.end method


# virtual methods
.method public writeToBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/navigation/server/location/GGpsAlt;->lAlt:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/autonavi/xm/navigation/server/location/GGpsAlt;->nTickTime:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method
