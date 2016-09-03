.class public Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;
.super Ljava/lang/Object;


# instance fields
.field private mNativeInstance:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ime_pinyin"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->_create(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->mNativeInstance:J

    iget-wide v0, p0, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private static native _chooseCandidate(JI)I
.end method

.method private static native _create(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native _delSearch(JIZZ)I
.end method

.method private static native _getCandidate(JI)Ljava/lang/String;
.end method

.method private static native _getFixedCount(J)I
.end method

.method private static native _getPinyin(JZ)Ljava/lang/String;
.end method

.method private static native _getStartPostions(J)[I
.end method

.method private static native _prepare(J)Z
.end method

.method private static native _release(J)Z
.end method

.method private static native _reset(J)Z
.end method

.method private static native _search(JLjava/lang/String;)I
.end method


# virtual methods
.method public chooseCandidate(I)I
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->mNativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->_chooseCandidate(JI)I

    move-result v0

    return v0
.end method

.method public delSearch(IZZ)I
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->mNativeInstance:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->_delSearch(JIZZ)I

    move-result v0

    return v0
.end method

.method public getCandidate(I)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->mNativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->_getCandidate(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFixedCount()I
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->mNativeInstance:J

    invoke-static {v0, v1}, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->_getFixedCount(J)I

    move-result v0

    return v0
.end method

.method public getPinyin(Z)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->mNativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->_getPinyin(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartPostions()[I
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->mNativeInstance:J

    invoke-static {v0, v1}, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->_getStartPostions(J)[I

    move-result-object v0

    return-object v0
.end method

.method public prepare()V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->mNativeInstance:J

    invoke-static {v0, v1}, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->_prepare(J)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    iget-wide v0, p0, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->mNativeInstance:J

    invoke-static {v0, v1}, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->_release(J)Z

    move-result v0

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->mNativeInstance:J

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public reset()Z
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->mNativeInstance:J

    invoke-static {v0, v1}, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->_reset(J)Z

    move-result v0

    return v0
.end method

.method public search(Ljava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->mNativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/wh/ime/pinyin/PinyinDecoder;->_search(JLjava/lang/String;)I

    move-result v0

    return v0
.end method
