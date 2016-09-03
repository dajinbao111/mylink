.class public Lcom/autonavi/wh/text/AcceptableInputFilter;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/InputFilter;


# static fields
.field public static final ACCEPT_DIGIT:I = 0x2

.field public static final ACCEPT_LETTER:I = 0x1

.field public static final ACCEPT_WHITE_SPACE:I = 0x4


# instance fields
.field private mAccept:I

.field private mAcceptChars:[C

.field private mOnRejectListener:Lcom/autonavi/wh/text/AcceptableInputFilter$OnRejectListener;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/wh/text/AcceptableInputFilter;->mAccept:I

    iput p1, p0, Lcom/autonavi/wh/text/AcceptableInputFilter;->mAccept:I

    return-void
.end method

.method public constructor <init>([C)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/autonavi/wh/text/AcceptableInputFilter;->mAccept:I

    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/autonavi/wh/text/AcceptableInputFilter;->mAcceptChars:[C

    iget-object v0, p0, Lcom/autonavi/wh/text/AcceptableInputFilter;->mAcceptChars:[C

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/autonavi/wh/text/AcceptableInputFilter;->mAcceptChars:[C

    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    return-void
.end method

.method private isAccepted(C)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/autonavi/wh/text/AcceptableInputFilter;->mAccept:I

    if-lez v2, :cond_4

    iget v2, p0, Lcom/autonavi/wh/text/AcceptableInputFilter;->mAccept:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/autonavi/wh/text/AcceptableInputFilter;->isLetter(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/autonavi/wh/text/AcceptableInputFilter;->mAccept:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    iget v2, p0, Lcom/autonavi/wh/text/AcceptableInputFilter;->mAccept:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/autonavi/wh/text/AcceptableInputFilter;->mAcceptChars:[C

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/autonavi/wh/text/AcceptableInputFilter;->mAcceptChars:[C

    array-length v2, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/autonavi/wh/text/AcceptableInputFilter;->mAcceptChars:[C

    invoke-static {v2, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static isLetter(I)Z
    .locals 1

    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6

    const/4 v5, 0x0

    sub-int v0, p3, p2

    new-array v0, v0, [C

    invoke-static {p1, p2, p3, v0, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/autonavi/wh/text/AcceptableInputFilter;->isAccepted(C)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/text/AcceptableInputFilter;->mOnRejectListener:Lcom/autonavi/wh/text/AcceptableInputFilter$OnRejectListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/text/AcceptableInputFilter;->mOnRejectListener:Lcom/autonavi/wh/text/AcceptableInputFilter$OnRejectListener;

    invoke-interface {v0, p0, v2}, Lcom/autonavi/wh/text/AcceptableInputFilter$OnRejectListener;->onRejected(Lcom/autonavi/wh/text/AcceptableInputFilter;C)V

    :cond_0
    const-string v4, ""

    :goto_1
    return-object v4

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_3

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    const/4 v3, 0x0

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    goto :goto_1

    :cond_3
    move-object v4, v0

    goto :goto_1
.end method

.method public setOnRejectListener(Lcom/autonavi/wh/text/AcceptableInputFilter$OnRejectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/text/AcceptableInputFilter;->mOnRejectListener:Lcom/autonavi/wh/text/AcceptableInputFilter$OnRejectListener;

    return-void
.end method
