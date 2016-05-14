.class public Lcom/autonavi/xm/ime/handwriting/HwRecognizer;
.super Ljava/lang/Object;


# static fields
.field public static final CODE_BACKSPACE:I = 0x8

.field public static final CODE_RETURN:I = 0xd

.field public static final CODE_SPACE:I = 0x20

.field public static final CODE_TAB:I = 0x9

.field public static final ERROR_ILLEGAL_ARGUMENT:I = -0x4

.field public static final ERROR_ILLEGAL_STATE:I = -0x3

.field public static final ERROR_OUT_OF_MEMORY:I = -0x2

.field public static final ERROR_UNKNOWN:I = -0x1

.field public static final ERROR_UNRECOGNIZED:I = -0x5

.field public static final MODE_CHINESE:I = 0xf

.field public static final MODE_CS_BOPOMOFO:I = 0x20000

.field public static final MODE_CS_CURSIVE:I = 0x10000

.field public static final MODE_ENGLISH:I = 0x600

.field public static final MODE_GESTURE:I = 0x8000

.field public static final MODE_HIRAGANA:I = 0x40000

.field public static final MODE_KATAKANA:I = 0x80000

.field public static final MODE_LCALPHA:I = 0x400

.field public static final MODE_NUMERIC:I = 0x100

.field public static final MODE_PUNC_COMMON:I = 0x800

.field public static final MODE_PUNC_RARE:I = 0x1000

.field public static final MODE_SC_COMMON:I = 0x1

.field public static final MODE_SC_RADICAL:I = 0x80

.field public static final MODE_SC_RARE:I = 0x2

.field public static final MODE_SC_TO_TC:I = 0x40

.field public static final MODE_SIMPLE_CHINESE:I = 0x3

.field public static final MODE_SYMPUNC:I = 0x1800

.field public static final MODE_SYM_COMMON:I = 0x2000

.field public static final MODE_SYM_RARE:I = 0x4000

.field public static final MODE_TC_COMMON:I = 0x4

.field public static final MODE_TC_RARE:I = 0x8

.field public static final MODE_TC_TO_SC:I = 0x20

.field public static final MODE_TRADITIONAL_CHINESE:I = 0xc

.field public static final MODE_UCALPHA:I = 0x200

.field public static final MODE_VALID:I = 0xfffff

.field public static final SUCCESS:I


# instance fields
.field private mCandidatesBuffer:[B

.field private mNativeRecognizer:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ime_hw"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/autonavi/xm/ime/handwriting/HwRecognizer;->native_create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/xm/ime/handwriting/HwRecognizer;->mNativeRecognizer:J

    iget-wide v0, p0, Lcom/autonavi/xm/ime/handwriting/HwRecognizer;->mNativeRecognizer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/autonavi/xm/ime/handwriting/HwRecognizer;->mNativeRecognizer:J

    invoke-static {v0, v1}, Lcom/autonavi/xm/ime/handwriting/HwRecognizer;->native_prepare(J)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can not create HwRecognizer!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method public static getMaxCandidateNum()I
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/ime/handwriting/HwRecognizer;->native_getMaxCandidateNum()I

    move-result v0

    return v0
.end method

.method private static native native_create()J
.end method

.method private static native native_getCandidateNum(J)I
.end method

.method private static native native_getMaxCandidateNum()I
.end method

.method private static native native_getMode(J)I
.end method

.method private static native native_prepare(J)I
.end method

.method private static native native_recognize(JLjava/nio/ByteBuffer;[B)I
.end method

.method private static native native_release(J)I
.end method

.method private static native native_setCandidateNum(JI)I
.end method

.method private static native native_setMode(JI)I
.end method


# virtual methods
.method public getCandidateNum()I
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/xm/ime/handwriting/HwRecognizer;->mNativeRecognizer:J

    invoke-static {v0, v1}, Lcom/autonavi/xm/ime/handwriting/HwRecognizer;->native_getCandidateNum(J)I

    move-result v0

    return v0
.end method

.method public getMode()I
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/xm/ime/handwriting/HwRecognizer;->mNativeRecognizer:J

    invoke-static {v0, v1}, Lcom/autonavi/xm/ime/handwriting/HwRecognizer;->native_getMode(J)I

    move-result v0

    return v0
.end method

.method public recognize(Lcom/autonavi/xm/ime/handwriting/WritingPath;)[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/autonavi/xm/ime/handwriting/WritingPath;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/autonavi/xm/ime/handwriting/HwRecognizer;->mCandidatesBuffer:[B

    if-nez v2, :cond_2

    invoke-static {}, Lcom/autonavi/xm/ime/handwriting/HwRecognizer;->getMaxCandidateNum()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/autonavi/xm/ime/handwriting/HwRecognizer;->mCandidatesBuffer:[B

    :cond_2
    iget-wide v2, p0, Lcom/autonavi/xm/ime/handwriting/HwRecognizer;->mNativeRecognizer:J

    iget-object v4, p1, Lcom/autonavi/xm/ime/handwriting/WritingPath;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/autonavi/xm/ime/handwriting/HwRecognizer;->mCandidatesBuffer:[B

    invoke-static {v2, v3, v4, v5}, Lcom/autonavi/xm/ime/handwriting/HwRecognizer;->native_recognize(JLjava/nio/ByteBuffer;[B)I

    move-result v2

    if-lez v2, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/autonavi/xm/ime/handwriting/HwRecognizer;->mCandidatesBuffer:[B

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-array v0, v2, [Ljava/lang/String;

    :goto_0
    if-ge v1, v2, :cond_0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public release()V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/xm/ime/handwriting/HwRecognizer;->mNativeRecognizer:J

    invoke-static {v0, v1}, Lcom/autonavi/xm/ime/handwriting/HwRecognizer;->native_release(J)I

    return-void
.end method

.method public setCandidateNum(I)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/xm/ime/handwriting/HwRecognizer;->mNativeRecognizer:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/xm/ime/handwriting/HwRecognizer;->native_setCandidateNum(JI)I

    return-void
.end method

.method public setMode(I)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/xm/ime/handwriting/HwRecognizer;->mNativeRecognizer:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/xm/ime/handwriting/HwRecognizer;->native_setMode(JI)I

    return-void
.end method
