.class public final enum Lcom/autonavi/xm/navigation/server/poi/GSearchType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum GSEARCH_TYPE_ADDRESS:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

.field public static final enum GSEARCH_TYPE_AROUND:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

.field public static final enum GSEARCH_TYPE_CATEGORY:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

.field public static final enum GSEARCH_TYPE_CROSS:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

.field public static final enum GSEARCH_TYPE_MAX:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

.field public static final enum GSEARCH_TYPE_NAME:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

.field public static final enum GSEARCH_TYPE_ROUTEPOI:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

.field public static final enum GSEARCH_TYPE_TEL:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

.field private static final synthetic a:[Lcom/autonavi/xm/navigation/server/poi/GSearchType;


# instance fields
.field public final nativeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    const-string v1, "GSEARCH_TYPE_NAME"

    invoke-direct {v0, v1, v4, v4}, Lcom/autonavi/xm/navigation/server/poi/GSearchType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_NAME:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    const-string v1, "GSEARCH_TYPE_CATEGORY"

    invoke-direct {v0, v1, v5, v5}, Lcom/autonavi/xm/navigation/server/poi/GSearchType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_CATEGORY:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    const-string v1, "GSEARCH_TYPE_TEL"

    invoke-direct {v0, v1, v6, v6}, Lcom/autonavi/xm/navigation/server/poi/GSearchType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_TEL:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    const-string v1, "GSEARCH_TYPE_AROUND"

    invoke-direct {v0, v1, v7, v7}, Lcom/autonavi/xm/navigation/server/poi/GSearchType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_AROUND:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    const-string v1, "GSEARCH_TYPE_ADDRESS"

    invoke-direct {v0, v1, v8, v8}, Lcom/autonavi/xm/navigation/server/poi/GSearchType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_ADDRESS:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    const-string v1, "GSEARCH_TYPE_ROUTEPOI"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/poi/GSearchType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_ROUTEPOI:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    const-string v1, "GSEARCH_TYPE_CROSS"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/poi/GSearchType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_CROSS:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    const-string v1, "GSEARCH_TYPE_MAX"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/poi/GSearchType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_MAX:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_NAME:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_CATEGORY:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_TEL:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_AROUND:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_ADDRESS:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_ROUTEPOI:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_CROSS:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_MAX:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->a:[Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->nativeValue:I

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/xm/navigation/server/poi/GSearchType;
    .locals 5

    invoke-static {}, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->values()[Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    move-result-object v2

    const/4 v1, 0x0

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v3, v1, v0

    ushr-int/lit8 v3, v3, 0x1

    aget-object v4, v2, v3

    iget v4, v4, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->nativeValue:I

    sub-int/2addr v4, p0

    if-gez v4, :cond_0

    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    :cond_0
    if-lez v4, :cond_1

    add-int/lit8 v0, v3, -0x1

    goto :goto_0

    :cond_1
    aget-object v0, v2, v3

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/poi/GSearchType;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/poi/GSearchType;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->a:[Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/poi/GSearchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    return-object v0
.end method
