.class final Lcom/autonavi/xm/util/FileUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic val$sortSign:I

.field final synthetic val$sortType:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    iput p1, p0, Lcom/autonavi/xm/util/FileUtils$1;->val$sortType:I

    iput p2, p0, Lcom/autonavi/xm/util/FileUtils$1;->val$sortSign:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 9

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v0, 0x0

    const-wide/16 v7, 0x0

    iget v3, p0, Lcom/autonavi/xm/util/FileUtils$1;->val$sortType:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget v5, p0, Lcom/autonavi/xm/util/FileUtils$1;->val$sortSign:I

    cmp-long v6, v3, v7

    if-nez v6, :cond_0

    :goto_1
    mul-int/2addr v0, v5

    goto :goto_0

    :cond_0
    cmp-long v0, v3, v7

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_1

    :pswitch_1
    iget v0, p0, Lcom/autonavi/xm/util/FileUtils$1;->val$sortSign:I

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget v5, p0, Lcom/autonavi/xm/util/FileUtils$1;->val$sortSign:I

    cmp-long v6, v3, v7

    if-nez v6, :cond_2

    :goto_2
    mul-int/2addr v0, v5

    goto :goto_0

    :cond_2
    cmp-long v0, v3, v7

    if-lez v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/autonavi/xm/util/FileUtils$1;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
