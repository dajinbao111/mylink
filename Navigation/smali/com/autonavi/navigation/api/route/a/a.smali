.class public abstract Lcom/autonavi/navigation/api/route/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/route/a/d;


# instance fields
.field protected a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/navigation/api/route/a/a;->a:Landroid/content/Context;

    return-void
.end method

.method private e()[Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/route/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/autonavi/navigation/api/route/a/a$2;

    invoke-direct {v1, p0}, Lcom/autonavi/navigation/api/route/a/a$2;-><init>(Lcom/autonavi/navigation/api/route/a/a;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 10

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/autonavi/navigation/api/route/a/a;->e()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v0, Lcom/autonavi/navigation/api/route/a/a$1;

    invoke-direct {v0, p0}, Lcom/autonavi/navigation/api/route/a/a$1;-><init>(Lcom/autonavi/navigation/api/route/a/a;)V

    invoke-static {v3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v1, v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v7, Lcom/autonavi/navigation/api/route/model/RouteFile;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aget-object v8, v6, v2

    const/4 v9, 0x1

    aget-object v6, v6, v9

    invoke-direct {v7, v5, v8, v6}, Lcom/autonavi/navigation/api/route/model/RouteFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public b()V
    .locals 4

    invoke-direct {p0}, Lcom/autonavi/navigation/api/route/a/a;->e()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected c()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/a/a;->a()Lcom/autonavi/navigation/api/internal/a/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/route/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/internal/a/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/AnApi;->getDataSource()Ljava/lang/String;

    move-result-object v1

    const-string v2, "routes"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
