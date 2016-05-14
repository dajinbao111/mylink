.class public Lcom/autonavi/navigation/api/util/DataSourceScanner;
.super Ljava/lang/Object;


# static fields
.field public static final DATA_SOURCE_DIR:Ljava/lang/String; = "data_source_dir"

.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/List;

.field private final c:Ljava/util/List;

.field private final d:Lcom/autonavi/navigation/api/util/DataSourceScanner$b;

.field private e:Landroid/content/SharedPreferences;

.field private final f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/extsd"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/flash"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/inand"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/Removable"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/mnt"

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/navigation/api/util/DataSourceScanner;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner;->c:Ljava/util/List;

    new-instance v0, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;-><init>(Lcom/autonavi/navigation/api/util/DataSourceScanner;Lcom/autonavi/navigation/api/util/DataSourceScanner$1;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner;->d:Lcom/autonavi/navigation/api/util/DataSourceScanner$b;

    iput-object p1, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner;->f:Landroid/content/Context;

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner;->d:Lcom/autonavi/navigation/api/util/DataSourceScanner$b;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    sget-object v1, Lcom/autonavi/navigation/api/util/DataSourceScanner;->a:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner;->f:Landroid/content/Context;

    const-string v1, "datasource"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner;->e:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner;->e:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic a(Lcom/autonavi/navigation/api/util/DataSourceScanner;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/autonavi/navigation/api/util/DataSourceScanner;)Landroid/content/SharedPreferences;
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/navigation/api/util/DataSourceScanner;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner;->e:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/autonavi/navigation/api/util/DataSourceScanner;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/autonavi/navigation/api/util/DataSourceScanner;)Z
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/navigation/api/util/DataSourceScanner;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public varargs addScannerRootDir([Ljava/lang/String;)Lcom/autonavi/navigation/api/util/DataSourceScanner;
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner;->b:Ljava/util/List;

    invoke-interface {v4, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public setDirDepth(I)Lcom/autonavi/navigation/api/util/DataSourceScanner;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner;->d:Lcom/autonavi/navigation/api/util/DataSourceScanner$b;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->a(I)V

    return-object p0
.end method

.method public setOnScannerResultListener(Lcom/autonavi/navigation/api/util/DataSourceScanner$OnScannerListener;)Lcom/autonavi/navigation/api/util/DataSourceScanner;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner;->d:Lcom/autonavi/navigation/api/util/DataSourceScanner$b;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->a(Lcom/autonavi/navigation/api/util/DataSourceScanner$OnScannerListener;)V

    return-object p0
.end method

.method public varargs setPreferentialScannerDir([Ljava/lang/String;)Lcom/autonavi/navigation/api/util/DataSourceScanner;
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    if-eqz p1, :cond_3

    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, p1, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    :cond_1
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/autonavi/navigation/api/util/DataSourceScanner$a;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/autonavi/navigation/api/util/DataSourceScanner$a;-><init>(Lcom/autonavi/navigation/api/util/DataSourceScanner;Lcom/autonavi/navigation/api/util/DataSourceScanner$1;)V

    aget-object v4, v4, v1

    iput-object v4, v5, Lcom/autonavi/navigation/api/util/DataSourceScanner$a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/autonavi/navigation/api/util/DataSourceScanner$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner;->c:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public setTimeoutMillis(I)Lcom/autonavi/navigation/api/util/DataSourceScanner;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner;->d:Lcom/autonavi/navigation/api/util/DataSourceScanner$b;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->b(I)V

    return-object p0
.end method

.method public start()Lcom/autonavi/navigation/api/util/DataSourceScanner;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner;->d:Lcom/autonavi/navigation/api/util/DataSourceScanner$b;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object p0
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/DataSourceScanner;->d:Lcom/autonavi/navigation/api/util/DataSourceScanner$b;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/util/DataSourceScanner$b;->a()V

    return-void
.end method
