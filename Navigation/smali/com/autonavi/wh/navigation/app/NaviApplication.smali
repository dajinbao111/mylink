.class public Lcom/autonavi/wh/navigation/app/NaviApplication;
.super Landroid/app/Application;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final META_CONFIGURATION_TITLE:Ljava/lang/String; = "com.autonavi.wh.meta.CONFIGURATION_TITLE"


# instance fields
.field private final mActivityStack:Ljava/util/Stack;

.field private mErrorHandler:Lorg/xml/sax/ErrorHandler;

.field private mTitles:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviApplication;->mActivityStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviApplication;->mTitles:Ljava/util/List;

    return-void
.end method

.method private setupDefaultTitles()V
    .locals 6

    const/4 v0, 0x0

    new-instance v2, Lcom/autonavi/wh/navigation/app/TitleParser;

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/autonavi/wh/navigation/app/TitleParser;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.autonavi.wh.meta.CONFIGURATION_TITLE"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/autonavi/wh/navigation/app/TitleParser;->getTitles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviApplication;->mTitles:Ljava/util/List;

    :goto_1
    return-void

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/autonavi/wh/navigation/res/ResUtils;->getRawId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :try_start_3
    sget-object v1, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-static {v0, v1, v2}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :cond_2
    :goto_2
    invoke-virtual {v2}, Lcom/autonavi/wh/navigation/app/TitleParser;->getTitles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviApplication;->mTitles:Ljava/util/List;

    goto :goto_1

    :catch_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    :cond_3
    :goto_3
    invoke-virtual {v2}, Lcom/autonavi/wh/navigation/app/TitleParser;->getTitles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviApplication;->mTitles:Ljava/util/List;

    goto :goto_1

    :catch_1
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    :cond_4
    :goto_4
    invoke-virtual {v2}, Lcom/autonavi/wh/navigation/app/TitleParser;->getTitles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviApplication;->mTitles:Ljava/util/List;

    goto :goto_1

    :catch_2
    move-exception v1

    if-eqz v0, :cond_5

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    :cond_5
    :goto_5
    invoke-virtual {v2}, Lcom/autonavi/wh/navigation/app/TitleParser;->getTitles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviApplication;->mTitles:Ljava/util/List;

    goto :goto_1

    :catch_3
    move-exception v1

    if-eqz v0, :cond_6

    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    :cond_6
    :goto_6
    invoke-virtual {v2}, Lcom/autonavi/wh/navigation/app/TitleParser;->getTitles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviApplication;->mTitles:Ljava/util/List;

    goto :goto_1

    :catch_4
    move-exception v1

    if-eqz v0, :cond_7

    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    :cond_7
    :goto_7
    invoke-virtual {v2}, Lcom/autonavi/wh/navigation/app/TitleParser;->getTitles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviApplication;->mTitles:Ljava/util/List;

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_8
    if-eqz v1, :cond_8

    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c

    :cond_8
    :goto_9
    invoke-virtual {v2}, Lcom/autonavi/wh/navigation/app/TitleParser;->getTitles()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/wh/navigation/app/NaviApplication;->mTitles:Ljava/util/List;

    throw v0

    :catch_5
    move-exception v0

    goto :goto_0

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_3

    :catch_8
    move-exception v0

    goto :goto_4

    :catch_9
    move-exception v0

    goto :goto_5

    :catch_a
    move-exception v0

    goto :goto_6

    :catch_b
    move-exception v0

    goto :goto_7

    :catch_c
    move-exception v1

    goto :goto_9

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_8
.end method


# virtual methods
.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviApplication;->getStackedActivities()[Lcom/autonavi/wh/navigation/app/NaviActivity;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, Lcom/autonavi/wh/navigation/app/NaviActivity;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getStackedActivities()[Lcom/autonavi/wh/navigation/app/NaviActivity;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviApplication;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    new-array v0, v0, [Lcom/autonavi/wh/navigation/app/NaviActivity;

    iget-object v1, p0, Lcom/autonavi/wh/navigation/app/NaviApplication;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method protected getTitle(Ljava/lang/String;)Lcom/autonavi/wh/navigation/app/Title;
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviApplication;->mTitles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navigation/app/Title;

    iget-object v2, v0, Lcom/autonavi/wh/navigation/app/Title;->component:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/app/NaviApplication;->setupDefaultTitles()V

    return-void
.end method

.method public pushActivity(Lcom/autonavi/wh/navigation/app/NaviActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviApplication;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putExtraInfo(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public removeActivity(Lcom/autonavi/wh/navigation/app/NaviActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviApplication;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setTracesDir(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviApplication;->getStackedActivities()[Lcom/autonavi/wh/navigation/app/NaviActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/autonavi/wh/navigation/app/NaviActivity;->finish()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
