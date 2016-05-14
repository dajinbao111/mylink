.class public final Lcom/autonavi/navigation/api/util/AnApiUtils;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/autonavi/navigation/api/internal/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getMainDelegate()Lcom/autonavi/navigation/api/internal/a/d;

    move-result-object v0

    sput-object v0, Lcom/autonavi/navigation/api/util/AnApiUtils;->a:Lcom/autonavi/navigation/api/internal/a/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculationLineAngle(Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/map/model/LatLng;)F
    .locals 2

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "calculateLineAngle, fromPoint or toPoint is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/autonavi/navigation/api/util/AnApiUtils;->a:Lcom/autonavi/navigation/api/internal/a/d;

    invoke-interface {v0, p0, p1}, Lcom/autonavi/navigation/api/internal/a/d;->b(Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/map/model/LatLng;)F

    move-result v0

    return v0
.end method

.method public static compareDataVersion(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/autonavi/navigation/api/util/AnApiUtils;->a:Lcom/autonavi/navigation/api/internal/a/d;

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/a/a;->a()Lcom/autonavi/navigation/api/internal/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/internal/a/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/autonavi/navigation/api/internal/a/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static compareEngineDataVersion(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/autonavi/navigation/api/util/AnApiUtils;->a:Lcom/autonavi/navigation/api/internal/a/d;

    invoke-interface {v0, p0}, Lcom/autonavi/navigation/api/internal/a/d;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static fromSpCode(Ljava/lang/String;)Lcom/autonavi/navigation/api/map/model/LatLng;
    .locals 2

    const-string v0, "spCode can not be empty"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertFalse(Ljava/lang/String;Z)V

    sget-object v0, Lcom/autonavi/navigation/api/util/AnApiUtils;->a:Lcom/autonavi/navigation/api/internal/a/d;

    invoke-interface {v0, p0}, Lcom/autonavi/navigation/api/internal/a/d;->g(Ljava/lang/String;)Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public static getAdminAreaFiles(I)Ljava/util/List;
    .locals 2

    sget-object v0, Lcom/autonavi/navigation/api/util/AnApiUtils;->a:Lcom/autonavi/navigation/api/internal/a/d;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/AnApi;->getDataSource()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/autonavi/navigation/api/internal/a/d;->b(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getApiVersion()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/a/a;->a()Lcom/autonavi/navigation/api/internal/a/a/a;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/navigation/api/internal/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/internal/a/a/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataVersion()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/autonavi/navigation/api/util/AnApiUtils;->a:Lcom/autonavi/navigation/api/internal/a/d;

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/a/a;->a()Lcom/autonavi/navigation/api/internal/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/internal/a/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/navigation/api/internal/a/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/autonavi/navigation/api/util/AnApiUtils;->a:Lcom/autonavi/navigation/api/internal/a/d;

    invoke-interface {v0, p0}, Lcom/autonavi/navigation/api/internal/a/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEngineVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/autonavi/navigation/api/util/AnApiUtils;->a:Lcom/autonavi/navigation/api/internal/a/d;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/d;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGResourceDataVersion()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/AnApi;->getDataSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GNaviRes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GResource.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/autonavi/navigation/api/util/AnApiUtils;->a:Lcom/autonavi/navigation/api/internal/a/d;

    invoke-interface {v1, v0}, Lcom/autonavi/navigation/api/internal/a/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPointDistance(Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/map/model/LatLng;)I
    .locals 1

    const-string v0, "from can not be null"

    invoke-static {v0, p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "to can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/autonavi/navigation/api/util/AnApiUtils;->a:Lcom/autonavi/navigation/api/internal/a/d;

    invoke-interface {v0, p0, p1}, Lcom/autonavi/navigation/api/internal/a/d;->a(Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/map/model/LatLng;)I

    move-result v0

    return v0
.end method

.method public static hasAdminAreaData(Ljava/lang/String;I)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "adminAreaDataPath can not be empty"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertFalse(Ljava/lang/String;Z)V

    sget-object v0, Lcom/autonavi/navigation/api/util/AnApiUtils;->a:Lcom/autonavi/navigation/api/internal/a/d;

    invoke-interface {v0, p0, p1}, Lcom/autonavi/navigation/api/internal/a/d;->a(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public static hasGlobalData()Z
    .locals 2

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/a/a;->a()Lcom/autonavi/navigation/api/internal/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/internal/a/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/autonavi/navigation/api/util/AnApiUtils;->a:Lcom/autonavi/navigation/api/internal/a/d;

    invoke-interface {v1, v0}, Lcom/autonavi/navigation/api/internal/a/d;->h(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static speak(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/navigation/api/util/AnApiUtils;->speak(Ljava/lang/String;)V

    return-void
.end method

.method public static speak(Ljava/lang/String;)V
    .locals 2

    const-string v0, "text can not be empty"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertFalse(Ljava/lang/String;Z)V

    sget-object v0, Lcom/autonavi/navigation/api/util/AnApiUtils;->a:Lcom/autonavi/navigation/api/internal/a/d;

    invoke-interface {v0, p0}, Lcom/autonavi/navigation/api/internal/a/d;->c(Ljava/lang/String;)Z

    return-void
.end method

.method public static stopSpeak()V
    .locals 1

    sget-object v0, Lcom/autonavi/navigation/api/util/AnApiUtils;->a:Lcom/autonavi/navigation/api/internal/a/d;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/d;->c()Z

    return-void
.end method

.method public static toSpCode(Lcom/autonavi/navigation/api/map/model/LatLng;)Ljava/lang/String;
    .locals 1

    const-string v0, "latLng can not be null"

    invoke-static {v0, p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/autonavi/navigation/api/util/AnApiUtils;->a:Lcom/autonavi/navigation/api/internal/a/d;

    invoke-interface {v0, p0}, Lcom/autonavi/navigation/api/internal/a/d;->a(Lcom/autonavi/navigation/api/map/model/LatLng;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
