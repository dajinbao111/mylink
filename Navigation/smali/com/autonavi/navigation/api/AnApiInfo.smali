.class public final Lcom/autonavi/navigation/api/AnApiInfo;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UUID.txt"

    iput-object v0, p0, Lcom/autonavi/navigation/api/AnApiInfo;->a:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/a/a;->a()Lcom/autonavi/navigation/api/internal/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/internal/a/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UUID.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/a/a;->a()Lcom/autonavi/navigation/api/internal/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/internal/a/a/a;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v3, "map_v.dat"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/autonavi/navigation/api/internal/a/a/d;->a(Ljava/io/File;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UNICODE"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=(.*)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getMapIsbn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApiInfo;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ISBN"

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/AnApiInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/AnApiInfo;->b:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApiInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getMapReviewNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApiInfo;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "REVIEW_NUM"

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/AnApiInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/AnApiInfo;->c:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApiInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApiInfo;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/autonavi/navigation/api/AnApiInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/navigation/api/internal/a/a/d;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/AnApiInfo;->d:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApiInfo;->d:Ljava/lang/String;

    return-object v0
.end method
