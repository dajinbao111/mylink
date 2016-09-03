.class public Lcom/autonavi/wh/text/TextFormatter;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDistance(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/autonavi/wh/text/TextFormatter;->formatDistance(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDistance(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x447a0000    # 1000.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    sget v0, Lcom/autonavi/wh/framework/R$string;->format_distance_meter:I

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    int-to-float v0, p1

    div-float v1, v0, v2

    if-nez p2, :cond_1

    cmpl-float v0, v1, v2

    if-ltz v0, :cond_2

    :cond_1
    sget v0, Lcom/autonavi/wh/framework/R$string;->format_distance_kilometer_short:I

    :goto_1
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget v0, Lcom/autonavi/wh/framework/R$string;->format_distance_kilometer:I

    goto :goto_1
.end method

.method public static formatElapsedTime(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    sget v0, Lcom/autonavi/wh/framework/R$string;->format_short_time:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    div-int/lit8 v3, p1, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    rem-int/lit8 v3, p1, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatElapsedTime(Landroid/content/Context;IIII)Ljava/lang/String;
    .locals 2

    div-int/lit16 v0, p4, 0x3e8

    add-int/2addr v0, p3

    div-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, p2

    mul-int/lit8 v1, p1, 0x3c

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/autonavi/wh/text/TextFormatter;->formatElapsedTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatSpeed(Landroid/content/Context;FZ)Ljava/lang/String;
    .locals 4

    if-eqz p2, :cond_0

    sget v0, Lcom/autonavi/wh/framework/R$string;->format_km_per_hour:I

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget v0, Lcom/autonavi/wh/framework/R$string;->format_m_per_second:I

    goto :goto_0
.end method

.method public static formatToShortDistance(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/autonavi/wh/text/TextFormatter;->formatDistance(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatToShortSpeed(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 4

    if-eqz p2, :cond_0

    sget v0, Lcom/autonavi/wh/framework/R$string;->format_km_per_hour_short:I

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget v0, Lcom/autonavi/wh/framework/R$string;->format_m_per_second_short:I

    goto :goto_0
.end method
