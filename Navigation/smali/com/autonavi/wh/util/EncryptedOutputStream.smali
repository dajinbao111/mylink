.class public Lcom/autonavi/wh/util/EncryptedOutputStream;
.super Ljava/io/FilterOutputStream;


# instance fields
.field private mBase64Stream:Lcom/autonavi/wh/util/Base64OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v0, Lcom/autonavi/wh/util/Base64OutputStream;

    const/16 v1, 0xb

    invoke-direct {v0, p1, v1}, Lcom/autonavi/wh/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/autonavi/wh/util/EncryptedOutputStream;->mBase64Stream:Lcom/autonavi/wh/util/Base64OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/util/EncryptedOutputStream;->mBase64Stream:Lcom/autonavi/wh/util/Base64OutputStream;

    invoke-virtual {v0}, Lcom/autonavi/wh/util/Base64OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/util/EncryptedOutputStream;->mBase64Stream:Lcom/autonavi/wh/util/Base64OutputStream;

    invoke-virtual {v0}, Lcom/autonavi/wh/util/Base64OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/util/EncryptedOutputStream;->mBase64Stream:Lcom/autonavi/wh/util/Base64OutputStream;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/util/Base64OutputStream;->write(I)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/util/EncryptedOutputStream;->mBase64Stream:Lcom/autonavi/wh/util/Base64OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/autonavi/wh/util/Base64OutputStream;->write([BII)V

    return-void
.end method
