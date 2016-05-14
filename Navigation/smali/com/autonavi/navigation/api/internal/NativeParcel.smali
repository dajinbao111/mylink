.class public Lcom/autonavi/navigation/api/internal/NativeParcel;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field private final b:Z

.field private c:J

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->c:J

    const/16 v0, 0x40

    invoke-static {v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->b:Z

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->c:J

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The buffer can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->c:J

    iput-boolean v2, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->b:Z

    return-void
.end method

.method private native _recycle(J)V
.end method

.method private static final a(I)Ljava/nio/ByteBuffer;
    .locals 2

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static a(III)V
    .locals 3

    or-int v0, p1, p2

    if-ltz v0, :cond_0

    if-gt p1, p0, :cond_0

    sub-int v0, p0, p1

    if-ge v0, p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; regionStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; regionLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private final b(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The NativeParcel is read-only!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->d:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Parcel was about to transport, you can\'t write anymore!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, p1, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public static obtain()Lcom/autonavi/navigation/api/internal/NativeParcel;
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/internal/NativeParcel;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;-><init>()V

    return-object v0
.end method

.method public static obtain(Ljava/nio/ByteBuffer;)Lcom/autonavi/navigation/api/internal/NativeParcel;
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/internal/NativeParcel;

    invoke-direct {v0, p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method


# virtual methods
.method public final dataAvail()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public final dataCapacity()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public final dataPosition()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public final dataSize()I
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    goto :goto_0
.end method

.method public final readBitmap()Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v0

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto :goto_0
.end method

.method public final readBoolean()Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final readBooleanArray()[Z
    .locals 4

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v2

    if-gez v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-array v0, v2, [Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readBoolean()Z

    move-result v3

    aput-boolean v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final readByte()B
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public final readByteArray([B)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readByteArray([BI)I

    move-result v0

    return v0
.end method

.method public final readByteArray([BI)I
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-gtz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "val can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v1, p1

    sub-int/2addr v1, p2

    if-ge v1, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad array length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public final readByteArray()[B
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0

    :cond_1
    new-array v0, v0, [B

    iget-object v1, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public final readByteBuffer(Ljava/nio/ByteBuffer;)I
    .locals 4

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public final readChar()C
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v0

    return v0
.end method

.method public final readCharArray()[C
    .locals 4

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v2

    if-gez v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-array v0, v2, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readChar()C

    move-result v3

    aput-char v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final readDouble()D
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public final readDoubleArray()[D
    .locals 5

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v2

    if-gez v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-array v0, v2, [D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readDouble()D

    move-result-wide v3

    aput-wide v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final readFloat()F
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    return v0
.end method

.method public final readFloatArray()[F
    .locals 4

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v2

    if-gez v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-array v0, v2, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readFloat()F

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final readInplace(I)Ljava/nio/ByteBuffer;
    .locals 3

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The capacity cannot be less than 1 !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-le p1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There are not enough data!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final readInt()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public final readIntArray()[I
    .locals 4

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v2

    if-gez v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-array v0, v2, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final readList(Ljava/util/List;)Ljava/util/List;
    .locals 3

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v1

    if-gez v1, :cond_1

    const/4 p1, 0x0

    :cond_0
    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The list can not be null or non-empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final readLong()J
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final readLongArray()[J
    .locals 5

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v2

    if-gez v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-array v0, v2, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final readParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Lcom/autonavi/navigation/api/internal/NativeParcelable;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1, p0}, Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;->createFromParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/internal/NativeParcelable;

    goto :goto_0
.end method

.method public final readParcelableArray(Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)[Lcom/autonavi/navigation/api/internal/NativeParcelable;
    .locals 4

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v2

    if-gez v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    invoke-interface {p1, v2}, Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/navigation/api/internal/NativeParcelable;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Lcom/autonavi/navigation/api/internal/NativeParcelable;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final readParcelableList(Ljava/util/List;Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Ljava/util/List;
    .locals 3

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v1

    if-gez v1, :cond_1

    const/4 p1, 0x0

    :cond_0
    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The list can not be null or non-empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Lcom/autonavi/navigation/api/internal/NativeParcelable;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final readShort()S
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public final readShortArray()[S
    .locals 4

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v2

    if-gez v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-array v0, v2, [S

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readShort()S

    move-result v3

    aput-short v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final readString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    goto :goto_0

    :cond_1
    new-array v2, v1, [C

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v3, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public final readStringArray()[Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v2

    if-gez v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final readStringList(Ljava/util/List;)Ljava/util/List;
    .locals 3

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v1

    if-gez v1, :cond_1

    const/4 p1, 0x0

    :cond_0
    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The list can not be null or non-empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final readValue()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readChar()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public recycle()V
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->b:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->c:J

    invoke-direct {p0, v0, v1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->_recycle(J)V

    :cond_0
    return-void
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->setDataPosition(I)V

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->d:Z

    return-void
.end method

.method public final setDataPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final transport()Ljava/nio/ByteBuffer;
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The NativeParcel didn\'t own the data, so it cannot be transported!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->d:Z

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final writeBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeBoolean(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeBoolean(Z)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->b(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    goto :goto_0
.end method

.method public final writeBoolean(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeByte(B)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final writeBooleanArray([Z)V
    .locals 3

    if-nez p1, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    :cond_0
    return-void

    :cond_1
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->b(I)V

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-boolean v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeBoolean(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final writeByte(B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->b(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final writeByteArray([B)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeByteArray([BII)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final writeByteArray([BII)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    :goto_0
    return-void

    :cond_0
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/autonavi/navigation/api/internal/NativeParcel;->a(III)V

    mul-int/lit8 v0, p3, 0x1

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->b(I)V

    invoke-virtual {p0, p3}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public final writeByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeBoolean(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeBoolean(Z)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->b(I)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public final writeChar(C)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->b(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final writeCharArray([C)V
    .locals 3

    if-nez p1, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    :cond_0
    return-void

    :cond_1
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->b(I)V

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-char v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeChar(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final writeDouble(D)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->b(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final writeDoubleArray([D)V
    .locals 4

    if-nez p1, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    :cond_0
    return-void

    :cond_1
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->b(I)V

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeDouble(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final writeFloat(F)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->b(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final writeFloatArray([F)V
    .locals 3

    if-nez p1, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    :cond_0
    return-void

    :cond_1
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->b(I)V

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final writeInplace(I)Ljava/nio/ByteBuffer;
    .locals 3

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The capacity cannot be less than 1 !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->b(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v1
.end method

.method public final writeInt(I)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->b(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final writeIntArray([I)V
    .locals 3

    if-nez p1, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    :cond_0
    return-void

    :cond_1
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->b(I)V

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final writeList(Ljava/util/List;)V
    .locals 3

    if-nez p1, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeValue(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final writeLong(J)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->b(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final writeLongArray([J)V
    .locals 4

    if-nez p1, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    :cond_0
    return-void

    :cond_1
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->b(I)V

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final writeParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeBoolean(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeBoolean(Z)V

    invoke-interface {p1, p0}, Lcom/autonavi/navigation/api/internal/NativeParcelable;->writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V

    goto :goto_0
.end method

.method public final writeParcelableArray([Lcom/autonavi/navigation/api/internal/NativeParcelable;)V
    .locals 3

    if-nez p1, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    :cond_0
    return-void

    :cond_1
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final writeParcelableList(Ljava/util/List;)V
    .locals 2

    if-nez p1, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/internal/NativeParcelable;

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable;)V

    goto :goto_0
.end method

.method public final writeShort(S)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->b(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final writeShortArray([S)V
    .locals 3

    if-nez p1, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    :cond_0
    return-void

    :cond_1
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->b(I)V

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-short v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeShort(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final writeString(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v0, v1, 0x2

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->b(I)V

    invoke-virtual {p0, v1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/autonavi/navigation/api/internal/NativeParcel;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final writeStringArray([Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    :cond_0
    return-void

    :cond_1
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final writeStringList(Ljava/util/List;)V
    .locals 2

    if-nez p1, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final writeValue(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeByte(B)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeChar(C)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeShort(S)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeLong(J)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeFloat(F)V

    goto :goto_0

    :cond_6
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeDouble(D)V

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
