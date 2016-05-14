.class Lcom/autonavi/navigation/api/route/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/autonavi/navigation/api/route/a/a;


# direct methods
.method constructor <init>(Lcom/autonavi/navigation/api/route/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/route/a/a$1;->a:Lcom/autonavi/navigation/api/route/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/io/File;)I
    .locals 6

    const-wide/16 v4, 0x0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/autonavi/navigation/api/route/a/a$1;->a(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
