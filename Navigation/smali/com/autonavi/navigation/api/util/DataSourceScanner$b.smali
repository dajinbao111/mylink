.class Lcom/autonavi/navigation/api/util/DataSourceScanner$b;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/autonavi/navigation/api/util/DataSourceScanner;

.field private b:Z

.field private c:J

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Lcom/autonavi/navigation/api/util/DataSourceScanner$OnScannerListener;


# direct methods
.method private constructor <init>(Lcom/autonavi/navigation/api/util/DataSourceScanner;)V
    .locals 2

    const/4 v1, -0x1

    iput-object p1, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->a:Lcom/autonavi/navigation/api/util/DataSourceScanner;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->b:Z

    iput v1, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->d:I

    iput v1, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->e:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/navigation/api/util/DataSourceScanner;Lcom/autonavi/navigation/api/util/DataSourceScanner$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;-><init>(Lcom/autonavi/navigation/api/util/DataSourceScanner;)V

    return-void
.end method

.method private a(Ljava/io/File;)Ljava/io/File;
    .locals 6

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/AnApi;->isDataSource(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DataSourceScanner"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/navigation/api/internal/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "DataSourceScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file.getName(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/navigation/api/internal/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->a:Lcom/autonavi/navigation/api/util/DataSourceScanner;

    invoke-static {v0}, Lcom/autonavi/navigation/api/util/DataSourceScanner;->a(Lcom/autonavi/navigation/api/util/DataSourceScanner;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->a:Lcom/autonavi/navigation/api/util/DataSourceScanner;

    invoke-static {v0}, Lcom/autonavi/navigation/api/util/DataSourceScanner;->a(Lcom/autonavi/navigation/api/util/DataSourceScanner;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/util/DataSourceScanner$a;

    iget-object v0, v0, Lcom/autonavi/navigation/api/util/DataSourceScanner$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/autonavi/navigation/api/AnApi;->isDataSource(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dpi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "DataSourceScanner"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/autonavi/navigation/api/internal/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "DataSourceScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file.getName(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/autonavi/navigation/api/internal/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    move-object p1, v0

    goto :goto_0

    :cond_2
    move-object p1, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    goto/16 :goto_0
.end method

.method private a(Ljava/io/File;I)Ljava/io/File;
    .locals 13

    const/4 v0, 0x0

    const-string v1, "DataSourceScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findFile depth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/navigation/api/internal/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    if-gez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v1, v6

    if-lez v1, :cond_0

    add-int/lit8 v7, p2, -0x1

    if-eqz v7, :cond_0

    array-length v8, v6

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-ge v3, v8, :cond_0

    aget-object v1, v6, v3

    iget-wide v9, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->c:J

    sub-long v9, v4, v9

    iget v2, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->e:I

    int-to-long v11, v2

    cmp-long v2, v9, v11

    if-lez v2, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->b:Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v7, :cond_6

    :cond_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_6
    invoke-direct {p0, v1, v7}, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->a(Ljava/io/File;I)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5

    move-object v0, v1

    goto :goto_0
.end method

.method private b(Ljava/io/File;)Ljava/io/File;
    .locals 12

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v1, v6

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    array-length v7, v6

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-ge v3, v7, :cond_0

    aget-object v1, v6, v3

    iget-wide v8, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->c:J

    sub-long v8, v4, v8

    iget v2, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->e:I

    int-to-long v10, v2

    cmp-long v2, v8, v10

    if-lez v2, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->b:Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v1}, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->b(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5

    move-object v0, v1

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1
.end method

.method private b()Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->a:Lcom/autonavi/navigation/api/util/DataSourceScanner;

    invoke-static {v0}, Lcom/autonavi/navigation/api/util/DataSourceScanner;->b(Lcom/autonavi/navigation/api/util/DataSourceScanner;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "data_source_dir"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->a:Lcom/autonavi/navigation/api/util/DataSourceScanner;

    invoke-static {v0}, Lcom/autonavi/navigation/api/util/DataSourceScanner;->b(Lcom/autonavi/navigation/api/util/DataSourceScanner;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "data_source_dir"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_1
    const/4 v0, 0x0

    move v3, v0

    :goto_2
    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->a:Lcom/autonavi/navigation/api/util/DataSourceScanner;

    invoke-static {v0}, Lcom/autonavi/navigation/api/util/DataSourceScanner;->c(Lcom/autonavi/navigation/api/util/DataSourceScanner;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->a:Lcom/autonavi/navigation/api/util/DataSourceScanner;

    invoke-static {v0}, Lcom/autonavi/navigation/api/util/DataSourceScanner;->c(Lcom/autonavi/navigation/api/util/DataSourceScanner;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v4, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->d:I

    if-gez v4, :cond_3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->b(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    :goto_3
    iget-boolean v4, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->b:Z

    if-eqz v4, :cond_4

    :cond_2
    :goto_4
    iget-boolean v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->b:Z

    if-eqz v0, :cond_6

    const-string v0, "DataSourceScanner"

    const-string v1, "timeout,find dir block!"

    invoke-static {v0, v1}, Lcom/autonavi/navigation/api/internal/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->d:I

    invoke-direct {p0, v4, v0}, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->a(Ljava/io/File;I)Ljava/io/File;

    move-result-object v0

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_6
    move-object v2, v1

    goto :goto_0

    :cond_7
    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 4

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->cancel(Z)Z

    move-result v0

    const-string v1, "DataSourceScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelTask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/autonavi/navigation/api/internal/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->d:I

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/autonavi/navigation/api/internal/a/a/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/util/DataSourceScanner$OnScannerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->g:Lcom/autonavi/navigation/api/util/DataSourceScanner$OnScannerListener;

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->g:Lcom/autonavi/navigation/api/util/DataSourceScanner$OnScannerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->g:Lcom/autonavi/navigation/api/util/DataSourceScanner$OnScannerListener;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/util/DataSourceScanner$OnScannerListener;->onScanner(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->a:Lcom/autonavi/navigation/api/util/DataSourceScanner;

    invoke-static {v0}, Lcom/autonavi/navigation/api/util/DataSourceScanner;->b(Lcom/autonavi/navigation/api/util/DataSourceScanner;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "data_source_dir"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->a:Lcom/autonavi/navigation/api/util/DataSourceScanner;

    invoke-static {v0}, Lcom/autonavi/navigation/api/util/DataSourceScanner;->d(Lcom/autonavi/navigation/api/util/DataSourceScanner;)Z

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    if-gez p1, :cond_0

    const/16 p1, 0x4e20

    :cond_0
    iput p1, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->e:I

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->a([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    const-string v0, "DataSourceScanner"

    const-string v1, "FindAsyncTask onCancelled"

    invoke-static {v0, v1}, Lcom/autonavi/navigation/api/internal/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->g:Lcom/autonavi/navigation/api/util/DataSourceScanner$OnScannerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->g:Lcom/autonavi/navigation/api/util/DataSourceScanner$OnScannerListener;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/util/DataSourceScanner$OnScannerListener;->onCancel()V

    :cond_0
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->c:J

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->g:Lcom/autonavi/navigation/api/util/DataSourceScanner$OnScannerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->g:Lcom/autonavi/navigation/api/util/DataSourceScanner$OnScannerListener;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/util/DataSourceScanner$OnScannerListener;->onStart()V

    :cond_0
    return-void
.end method
