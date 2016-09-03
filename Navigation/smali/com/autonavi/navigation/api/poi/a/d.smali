.class public final Lcom/autonavi/navigation/api/poi/a/d;
.super Lcom/autonavi/navigation/api/poi/a/a;

# interfaces
.implements Lcom/autonavi/wh/navigation/engine/i$a;


# instance fields
.field private final c:Lcom/autonavi/wh/navigation/engine/i;

.field private d:Lcom/autonavi/navigation/api/poi/PoiManager$DealerQueryResult;

.field private final e:Landroid/os/Handler;

.field private final f:Ljava/util/LinkedList;

.field private final g:Ljava/util/LinkedList;

.field private final h:Lcom/autonavi/navigation/api/internal/a/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/poi/a/a;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->e:Landroid/os/Handler;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/i;->a()Lcom/autonavi/wh/navigation/engine/i;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/navigation/engine/i;->a(Lcom/autonavi/wh/navigation/engine/i$a;)Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->f:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->g:Ljava/util/LinkedList;

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getMainDelegate()Lcom/autonavi/navigation/api/internal/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->h:Lcom/autonavi/navigation/api/internal/a/d;

    return-void
.end method

.method private a(Lcom/autonavi/wh/navigation/server/poi/GPoiCategory;)Lcom/autonavi/navigation/api/poi/model/PoiCategory;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    iget v2, p1, Lcom/autonavi/wh/navigation/server/poi/GPoiCategory;->lCategoryID:I

    iget-object v3, p1, Lcom/autonavi/wh/navigation/server/poi/GPoiCategory;->szName:Ljava/lang/String;

    iget-object v4, p1, Lcom/autonavi/wh/navigation/server/poi/GPoiCategory;->pSubCategory:[Lcom/autonavi/wh/navigation/server/poi/GPoiCategory;

    invoke-direct {p0, v4}, Lcom/autonavi/navigation/api/poi/a/d;->a([Lcom/autonavi/wh/navigation/server/poi/GPoiCategory;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/autonavi/navigation/api/poi/model/PoiCategory;-><init>([IILjava/lang/String;Ljava/util/List;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/autonavi/navigation/api/poi/a/d;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->f:Ljava/util/LinkedList;

    return-object v0
.end method

.method private a([Lcom/autonavi/wh/navigation/server/poi/GPoiCategory;)Ljava/util/List;
    .locals 4

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    array-length v2, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    invoke-direct {p0, v3}, Lcom/autonavi/navigation/api/poi/a/d;->a(Lcom/autonavi/wh/navigation/server/poi/GPoiCategory;)Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private b(Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;)Lcom/autonavi/wh/navigation/server/poi/G4SSearchCondition;
    .locals 4

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/wh/navigation/server/poi/G4SSearchCondition;

    invoke-direct {v0}, Lcom/autonavi/wh/navigation/server/poi/G4SSearchCondition;-><init>()V

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;->getAdminCode()I

    move-result v1

    iput v1, v0, Lcom/autonavi/wh/navigation/server/poi/G4SSearchCondition;->nAdminCode:I

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;->getCenterPoint()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/autonavi/wh/navigation/server/GCoord;

    iget v3, v1, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    iget v1, v1, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    invoke-direct {v2, v3, v1}, Lcom/autonavi/wh/navigation/server/GCoord;-><init>(II)V

    iput-object v2, v0, Lcom/autonavi/wh/navigation/server/poi/G4SSearchCondition;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    :goto_0
    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;->getRadius()I

    move-result v1

    iput v1, v0, Lcom/autonavi/wh/navigation/server/poi/G4SSearchCondition;->nAroundRange:I

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;->getMotorCategory()I

    move-result v1

    iput v1, v0, Lcom/autonavi/wh/navigation/server/poi/G4SSearchCondition;->eMotorType:I

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/autonavi/navigation/api/poi/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/wh/navigation/server/poi/G4SSearchCondition;->szKeyword:Ljava/lang/String;

    :cond_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/autonavi/wh/navigation/server/GCoord;

    invoke-direct {v1, v2, v2}, Lcom/autonavi/wh/navigation/server/GCoord;-><init>(II)V

    iput-object v1, v0, Lcom/autonavi/wh/navigation/server/poi/G4SSearchCondition;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    goto :goto_0
.end method

.method private b(I)Lcom/autonavi/wh/navigation/server/poi/GAdareaType;
    .locals 2

    sget-object v0, Lcom/autonavi/wh/navigation/server/poi/GAdareaType;->ADAREA_TYPE_CHINA:Lcom/autonavi/wh/navigation/server/poi/GAdareaType;

    const/16 v1, 0x2710

    if-ge p1, v1, :cond_1

    sget-object v0, Lcom/autonavi/wh/navigation/server/poi/GAdareaType;->ADAREA_TYPE_CHINA:Lcom/autonavi/wh/navigation/server/poi/GAdareaType;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    rem-int/lit16 v1, p1, 0x2710

    if-nez v1, :cond_2

    sget-object v0, Lcom/autonavi/wh/navigation/server/poi/GAdareaType;->ADAREA_TYPE_PROVINCE:Lcom/autonavi/wh/navigation/server/poi/GAdareaType;

    goto :goto_0

    :cond_2
    rem-int/lit16 v1, p1, 0x2710

    if-eqz v1, :cond_3

    rem-int/lit8 v1, p1, 0x64

    if-nez v1, :cond_3

    sget-object v0, Lcom/autonavi/wh/navigation/server/poi/GAdareaType;->ADAREA_TYPE_CITY:Lcom/autonavi/wh/navigation/server/poi/GAdareaType;

    goto :goto_0

    :cond_3
    rem-int/lit8 v1, p1, 0x64

    if-eqz v1, :cond_0

    sget-object v0, Lcom/autonavi/wh/navigation/server/poi/GAdareaType;->ADAREA_TYPE_TOWN:Lcom/autonavi/wh/navigation/server/poi/GAdareaType;

    goto :goto_0
.end method

.method static synthetic b(Lcom/autonavi/navigation/api/poi/a/d;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->g:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic c(Lcom/autonavi/navigation/api/poi/a/d;)Lcom/autonavi/navigation/api/poi/PoiManager$DealerQueryResult;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->d:Lcom/autonavi/navigation/api/poi/PoiManager$DealerQueryResult;

    return-object v0
.end method

.method private c(Lcom/autonavi/navigation/api/poi/PoiManager$AddressQuery;)Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;
    .locals 4

    new-instance v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;

    invoke-direct {v1}, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;-><init>()V

    sget-object v0, Lcom/autonavi/wh/navigation/server/poi/GSearchType;->GSEARCH_TYPE_ADDRESS:Lcom/autonavi/wh/navigation/server/poi/GSearchType;

    iput-object v0, v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->eSearchType:Lcom/autonavi/wh/navigation/server/poi/GSearchType;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$AddressQuery;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/poi/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->szKeyword:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$AddressQuery;->getPoiCategory()Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$AddressQuery;->getPoiCategory()Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->id:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "poiCategoryId can not be less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput v0, v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->lCategoryID:I

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$AddressQuery;->getAdminCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/poi/a/d;->c(I)Z

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$AddressQuery;->getTarget()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/autonavi/wh/navigation/server/GCoord;

    iget v3, v0, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    iget v0, v0, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    invoke-direct {v2, v3, v0}, Lcom/autonavi/wh/navigation/server/GCoord;-><init>(II)V

    iput-object v2, v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    :cond_1
    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/a/d;->a:Lcom/autonavi/navigation/api/poi/PoiManager$Query;

    return-object v1
.end method

.method private c(Lcom/autonavi/navigation/api/poi/PoiManager$AroundQuery;)Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;
    .locals 4

    new-instance v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;

    invoke-direct {v1}, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;-><init>()V

    sget-object v0, Lcom/autonavi/wh/navigation/server/poi/GSearchType;->GSEARCH_TYPE_AROUND:Lcom/autonavi/wh/navigation/server/poi/GSearchType;

    iput-object v0, v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->eSearchType:Lcom/autonavi/wh/navigation/server/poi/GSearchType;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$AroundQuery;->getCenterPoint()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    new-instance v2, Lcom/autonavi/wh/navigation/server/GCoord;

    iget v3, v0, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    iget v0, v0, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    invoke-direct {v2, v3, v0}, Lcom/autonavi/wh/navigation/server/GCoord;-><init>(II)V

    iput-object v2, v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$AroundQuery;->getRadius()I

    move-result v0

    iput v0, v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->lAroundRange:I

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$AroundQuery;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/poi/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->szKeyword:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$AroundQuery;->getPoiCategory()Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$AroundQuery;->getPoiCategory()Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->id:I

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "poiCategoryId can not be less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput v0, v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->lCategoryID:I

    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/a/d;->a:Lcom/autonavi/navigation/api/poi/PoiManager$Query;

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->a:Lcom/autonavi/navigation/api/poi/PoiManager$Query;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/autonavi/navigation/api/poi/PoiManager$Query;->setRequestCode(I)Lcom/autonavi/navigation/api/poi/PoiManager$Query;

    return-object v1
.end method

.method private c(Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;)Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;
    .locals 3

    new-instance v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;

    invoke-direct {v1}, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;-><init>()V

    sget-object v0, Lcom/autonavi/wh/navigation/server/poi/GSearchType;->GSEARCH_TYPE_CATEGORY:Lcom/autonavi/wh/navigation/server/poi/GSearchType;

    iput-object v0, v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->eSearchType:Lcom/autonavi/wh/navigation/server/poi/GSearchType;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;->getPoiCategory()Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;->getPoiCategory()Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->id:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "poiCategoryId can not be less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput v0, v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->lCategoryID:I

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/poi/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->szKeyword:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;->getAdminCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/poi/a/d;->c(I)Z

    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/a/d;->a:Lcom/autonavi/navigation/api/poi/PoiManager$Query;

    return-object v1
.end method

.method private c(Lcom/autonavi/navigation/api/poi/PoiManager$CrossingQuery;)Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;
    .locals 4

    new-instance v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;

    invoke-direct {v1}, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;-><init>()V

    sget-object v0, Lcom/autonavi/wh/navigation/server/poi/GSearchType;->GSEARCH_TYPE_CROSS:Lcom/autonavi/wh/navigation/server/poi/GSearchType;

    iput-object v0, v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->eSearchType:Lcom/autonavi/wh/navigation/server/poi/GSearchType;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$CrossingQuery;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/poi/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->szKeyword:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$CrossingQuery;->getPoiCategory()Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$CrossingQuery;->getPoiCategory()Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->id:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "poiCategoryId can not be less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput v0, v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->lCategoryID:I

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$CrossingQuery;->getAdminCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/poi/a/d;->c(I)Z

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$CrossingQuery;->getTarget()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/autonavi/wh/navigation/server/GCoord;

    iget v3, v0, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    iget v0, v0, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    invoke-direct {v2, v3, v0}, Lcom/autonavi/wh/navigation/server/GCoord;-><init>(II)V

    iput-object v2, v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    :cond_1
    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/a/d;->a:Lcom/autonavi/navigation/api/poi/PoiManager$Query;

    return-object v1
.end method

.method private c(Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;)Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;
    .locals 4

    new-instance v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;

    invoke-direct {v1}, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;-><init>()V

    sget-object v0, Lcom/autonavi/wh/navigation/server/poi/GSearchType;->GSEARCH_TYPE_NAME:Lcom/autonavi/wh/navigation/server/poi/GSearchType;

    iput-object v0, v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->eSearchType:Lcom/autonavi/wh/navigation/server/poi/GSearchType;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/poi/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->szKeyword:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;->getPoiCategory()Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;->getPoiCategory()Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->id:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "poiCategoryId can not be less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput v0, v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->lCategoryID:I

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;->getAdminCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/poi/a/d;->c(I)Z

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;->getTarget()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/autonavi/wh/navigation/server/GCoord;

    iget v3, v0, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    iget v0, v0, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    invoke-direct {v2, v3, v0}, Lcom/autonavi/wh/navigation/server/GCoord;-><init>(II)V

    iput-object v2, v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    :cond_1
    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/a/d;->a:Lcom/autonavi/navigation/api/poi/PoiManager$Query;

    return-object v1
.end method

.method private c(Lcom/autonavi/navigation/api/poi/PoiManager$TelQuery;)Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;
    .locals 4

    new-instance v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;

    invoke-direct {v1}, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;-><init>()V

    sget-object v0, Lcom/autonavi/wh/navigation/server/poi/GSearchType;->GSEARCH_TYPE_TEL:Lcom/autonavi/wh/navigation/server/poi/GSearchType;

    iput-object v0, v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->eSearchType:Lcom/autonavi/wh/navigation/server/poi/GSearchType;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$TelQuery;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/poi/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->szKeyword:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$TelQuery;->getPoiCategory()Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$TelQuery;->getPoiCategory()Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->id:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "poiCategoryId can not be less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput v0, v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->lCategoryID:I

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$TelQuery;->getAdminCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/poi/a/d;->c(I)Z

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$TelQuery;->getTarget()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/autonavi/wh/navigation/server/GCoord;

    iget v3, v0, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    iget v0, v0, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    invoke-direct {v2, v3, v0}, Lcom/autonavi/wh/navigation/server/GCoord;-><init>(II)V

    iput-object v2, v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    :cond_1
    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/a/d;->a:Lcom/autonavi/navigation/api/poi/PoiManager$Query;

    return-object v1
.end method

.method private c(I)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/poi/a/d;->b(I)Lcom/autonavi/wh/navigation/server/poi/GAdareaType;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/autonavi/wh/navigation/engine/i;->a(Lcom/autonavi/wh/navigation/server/poi/GAdareaType;I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Ljava/util/List;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/wh/navigation/server/poi/GPoiCategoryList;

    iget-object v1, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    invoke-virtual {v1, p1, v0}, Lcom/autonavi/wh/navigation/engine/i;->a(I[Lcom/autonavi/wh/navigation/server/poi/GPoiCategoryList;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/poi/GPoiCategoryList;->pCategory:[Lcom/autonavi/wh/navigation/server/poi/GPoiCategory;

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/poi/a/d;->a([Lcom/autonavi/wh/navigation/server/poi/GPoiCategory;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;II)Ljava/util/List;
    .locals 11

    const/4 v10, 0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/autonavi/wh/navigation/server/poi/GCandidateCondition;

    invoke-direct {v0}, Lcom/autonavi/wh/navigation/server/poi/GCandidateCondition;-><init>()V

    iput-object p1, v0, Lcom/autonavi/wh/navigation/server/poi/GCandidateCondition;->szKeyword:Ljava/lang/String;

    invoke-static {p3}, Lcom/autonavi/wh/navigation/server/poi/GCandidateType;->valueOf(I)Lcom/autonavi/wh/navigation/server/poi/GCandidateType;

    move-result-object v2

    iput-object v2, v0, Lcom/autonavi/wh/navigation/server/poi/GCandidateCondition;->eCandidateType:Lcom/autonavi/wh/navigation/server/poi/GCandidateType;

    new-array v2, v10, [Lcom/autonavi/wh/navigation/server/poi/GCandidateList;

    iget-object v3, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    invoke-direct {p0, p2}, Lcom/autonavi/navigation/api/poi/a/d;->b(I)Lcom/autonavi/wh/navigation/server/poi/GAdareaType;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/autonavi/wh/navigation/engine/i;->a(Lcom/autonavi/wh/navigation/server/poi/GAdareaType;I)Lcom/autonavi/wh/navigation/server/GStatus;

    iget-object v3, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    invoke-virtual {v3, v0, v2}, Lcom/autonavi/wh/navigation/engine/i;->a(Lcom/autonavi/wh/navigation/server/poi/GCandidateCondition;[Lcom/autonavi/wh/navigation/server/poi/GCandidateList;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v3, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v3, :cond_1

    aget-object v3, v2, v1

    iget-short v4, v3, Lcom/autonavi/wh/navigation/server/poi/GCandidateList;->NumberOfCandidate:S

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-byte v2, v3, Lcom/autonavi/wh/navigation/server/poi/GCandidateList;->Flag:B

    if-nez v2, :cond_0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    const-string v2, "GBK"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v6

    invoke-static {v10}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v7

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    iget-object v8, v3, Lcom/autonavi/wh/navigation/server/poi/GCandidateList;->pCandidateChar:[Lcom/autonavi/wh/navigation/server/poi/GCandidateChar;

    aget-object v8, v8, v2

    iget-short v8, v8, Lcom/autonavi/wh/navigation/server/poi/GCandidateChar;->wCharCode:S

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v6, v5, v7, v10}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v7, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v4, :cond_2

    iget-object v2, v3, Lcom/autonavi/wh/navigation/server/poi/GCandidateList;->pCandidateWord:[Lcom/autonavi/wh/navigation/server/poi/GCandidateWord;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/autonavi/wh/navigation/server/poi/GCandidateWord;->szWord:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public a(ILcom/autonavi/wh/navigation/server/GStatus;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne p2, v0, :cond_8

    if-eqz p1, :cond_0

    if-ne p1, v7, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->a:Lcom/autonavi/navigation/api/poi/PoiManager$Query;

    check-cast v0, Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;->getQueryItemSize()I

    move-result v1

    int-to-short v1, v1

    if-gtz v1, :cond_1

    const/16 v1, 0x1f4

    :cond_1
    new-array v2, v3, [Lcom/autonavi/wh/navigation/server/poi/GPoiResult;

    iget-object v3, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    new-instance v5, Lcom/autonavi/wh/navigation/server/poi/GGetPoiInput;

    invoke-direct {v5, v4, v1}, Lcom/autonavi/wh/navigation/server/poi/GGetPoiInput;-><init>(SS)V

    invoke-virtual {v3, v5, v2}, Lcom/autonavi/wh/navigation/engine/i;->a(Lcom/autonavi/wh/navigation/server/poi/GGetPoiInput;[Lcom/autonavi/wh/navigation/server/poi/GPoiResult;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v3, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v3, :cond_4

    aget-object v1, v2, v4

    iget-object v2, v1, Lcom/autonavi/wh/navigation/server/poi/GPoiResult;->pPOI:[Lcom/autonavi/wh/navigation/server/poi/GPoi;

    array-length v3, v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v4

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v6, v2, v1

    invoke-static {v6}, Lcom/autonavi/navigation/api/poi/a/b;->a(Lcom/autonavi/wh/navigation/server/poi/GPoi;)Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-ne p1, v7, :cond_3

    iget-object v1, p0, Lcom/autonavi/navigation/api/poi/a/d;->a:Lcom/autonavi/navigation/api/poi/PoiManager$Query;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/poi/PoiManager$Query;->getRequestCode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/autonavi/navigation/api/poi/a/d;->a:Lcom/autonavi/navigation/api/poi/PoiManager$Query;

    check-cast v1, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;

    move v3, v4

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_3

    iget-object v6, p0, Lcom/autonavi/navigation/api/poi/a/d;->h:Lcom/autonavi/navigation/api/internal/a/d;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;->getTarget()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v7

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v2

    invoke-interface {v6, v7, v2}, Lcom/autonavi/navigation/api/internal/a/d;->a(Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/map/model/LatLng;)I

    move-result v6

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v2, v6}, Lcom/autonavi/navigation/api/poi/model/Poi;->setDistance(I)Lcom/autonavi/navigation/api/poi/model/Poi;

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;->DISTANCE:Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/PoiManager$PoiCategoryQuery;->getOrderBy()Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;

    move-result-object v0

    if-ne v1, v0, :cond_9

    invoke-virtual {p0, v5}, Lcom/autonavi/navigation/api/poi/a/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_2
    new-instance v1, Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;

    iget-object v2, p0, Lcom/autonavi/navigation/api/poi/a/d;->a:Lcom/autonavi/navigation/api/poi/PoiManager$Query;

    invoke-direct {v1, v4, v0, v2}, Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;-><init>(ILjava/util/List;Lcom/autonavi/navigation/api/poi/PoiManager$Query;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->e:Landroid/os/Handler;

    new-instance v2, Lcom/autonavi/navigation/api/poi/a/d$1;

    invoke-direct {v2, p0, v1}, Lcom/autonavi/navigation/api/poi/a/d$1;-><init>(Lcom/autonavi/navigation/api/poi/a/d;Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_3
    return-void

    :cond_5
    if-ne p1, v3, :cond_6

    new-array v0, v3, [Lcom/autonavi/wh/navigation/server/poi/GPoi;

    iget-object v1, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    invoke-virtual {v1, v0}, Lcom/autonavi/wh/navigation/engine/i;->a([Lcom/autonavi/wh/navigation/server/poi/GPoi;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v0, v0, v4

    invoke-static {v0}, Lcom/autonavi/navigation/api/poi/a/b;->a(Lcom/autonavi/wh/navigation/server/poi/GPoi;)Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;

    iget-object v2, p0, Lcom/autonavi/navigation/api/poi/a/d;->a:Lcom/autonavi/navigation/api/poi/PoiManager$Query;

    invoke-direct {v0, v4, v1, v2}, Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;-><init>(ILjava/util/List;Lcom/autonavi/navigation/api/poi/PoiManager$Query;)V

    iget-object v1, p0, Lcom/autonavi/navigation/api/poi/a/d;->e:Landroid/os/Handler;

    new-instance v2, Lcom/autonavi/navigation/api/poi/a/d$2;

    invoke-direct {v2, p0, v0}, Lcom/autonavi/navigation/api/poi/a/d$2;-><init>(Lcom/autonavi/navigation/api/poi/a/d;Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_6
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NO_DATA:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne p2, v0, :cond_7

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/i;->c()Lcom/autonavi/wh/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->e:Landroid/os/Handler;

    new-instance v1, Lcom/autonavi/navigation/api/poi/a/d$3;

    invoke-direct {v1, p0}, Lcom/autonavi/navigation/api/poi/a/d$3;-><init>(Lcom/autonavi/navigation/api/poi/a/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/i;->c()Lcom/autonavi/wh/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->e:Landroid/os/Handler;

    new-instance v1, Lcom/autonavi/navigation/api/poi/a/d$4;

    invoke-direct {v1, p0}, Lcom/autonavi/navigation/api/poi/a/d$4;-><init>(Lcom/autonavi/navigation/api/poi/a/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/i;->c()Lcom/autonavi/wh/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->e:Landroid/os/Handler;

    new-instance v1, Lcom/autonavi/navigation/api/poi/a/d$5;

    invoke-direct {v1, p0}, Lcom/autonavi/navigation/api/poi/a/d$5;-><init>(Lcom/autonavi/navigation/api/poi/a/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_9
    move-object v0, v5

    goto :goto_2
.end method

.method public a(Lcom/autonavi/navigation/api/poi/PoiManager$AddressQuery;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/poi/a/d;->c(Lcom/autonavi/navigation/api/poi/PoiManager$AddressQuery;)Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/i;->a(Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;)Lcom/autonavi/wh/navigation/server/GStatus;

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/poi/PoiManager$AroundQuery;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/poi/a/d;->c(Lcom/autonavi/navigation/api/poi/PoiManager$AroundQuery;)Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/i;->a(Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;)Lcom/autonavi/wh/navigation/server/GStatus;

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/poi/a/d;->c(Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;)Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/i;->a(Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;)Lcom/autonavi/wh/navigation/server/GStatus;

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/poi/PoiManager$CrossingQuery;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/poi/a/d;->c(Lcom/autonavi/navigation/api/poi/PoiManager$CrossingQuery;)Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/i;->a(Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;)Lcom/autonavi/wh/navigation/server/GStatus;

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;)V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/poi/a/d;->b(Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;)Lcom/autonavi/wh/navigation/server/poi/G4SSearchCondition;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [[Lcom/autonavi/wh/navigation/server/poi/G4SDealerInfo;

    iget-object v3, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    invoke-virtual {v3, v0, v2}, Lcom/autonavi/wh/navigation/engine/i;->a(Lcom/autonavi/wh/navigation/server/poi/G4SSearchCondition;[[Lcom/autonavi/wh/navigation/server/poi/G4SDealerInfo;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    const/4 v3, 0x0

    sget-object v4, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v4, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    aget-object v4, v2, v1

    array-length v4, v4

    if-ge v0, v4, :cond_0

    aget-object v4, v2, v1

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/autonavi/navigation/api/poi/a/b;->a(Lcom/autonavi/wh/navigation/server/poi/G4SDealerInfo;)Lcom/autonavi/navigation/api/poi/model/DealerInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQueryResult;

    invoke-direct {v0, v1, v3}, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQueryResult;-><init>(ILjava/util/List;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->d:Lcom/autonavi/navigation/api/poi/PoiManager$DealerQueryResult;

    :goto_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->e:Landroid/os/Handler;

    new-instance v1, Lcom/autonavi/navigation/api/poi/a/d$6;

    invoke-direct {v1, p0}, Lcom/autonavi/navigation/api/poi/a/d$6;-><init>(Lcom/autonavi/navigation/api/poi/a/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    new-instance v0, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQueryResult;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v3}, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQueryResult;-><init>(ILjava/util/List;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->d:Lcom/autonavi/navigation/api/poi/PoiManager$DealerQueryResult;

    goto :goto_1
.end method

.method public a(Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/poi/a/d;->c(Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;)Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/i;->a(Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;)Lcom/autonavi/wh/navigation/server/GStatus;

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/poi/PoiManager$NearestQuery;)V
    .locals 4

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$NearestQuery;->getTarget()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    new-instance v2, Lcom/autonavi/wh/navigation/server/GCoord;

    iget v3, v0, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    iget v0, v0, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    invoke-direct {v2, v3, v0}, Lcom/autonavi/wh/navigation/server/GCoord;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/autonavi/wh/navigation/engine/i;->a(Lcom/autonavi/wh/navigation/server/GCoord;)Lcom/autonavi/wh/navigation/server/GStatus;

    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/a/d;->a:Lcom/autonavi/navigation/api/poi/PoiManager$Query;

    return-void
.end method

.method public declared-synchronized a(Lcom/autonavi/navigation/api/poi/PoiManager$OnDealerQueryResultListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->g:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->g:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/autonavi/navigation/api/poi/PoiManager$RouteQuery;)V
    .locals 3

    new-instance v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;

    invoke-direct {v1}, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;-><init>()V

    sget-object v0, Lcom/autonavi/wh/navigation/server/poi/GSearchType;->GSEARCH_TYPE_ROUTEPOI:Lcom/autonavi/wh/navigation/server/poi/GSearchType;

    iput-object v0, v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->eSearchType:Lcom/autonavi/wh/navigation/server/poi/GSearchType;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$RouteQuery;->getRadius()I

    move-result v0

    iput v0, v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->lAroundRange:I

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$RouteQuery;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/poi/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->szKeyword:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$RouteQuery;->getPoiCategory()Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$RouteQuery;->getPoiCategory()Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->id:I

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "poiCategoryId can not be less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput v0, v1, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->lCategoryID:I

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/i;->a(Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;)Lcom/autonavi/wh/navigation/server/GStatus;

    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/a/d;->a:Lcom/autonavi/navigation/api/poi/PoiManager$Query;

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/poi/PoiManager$TelQuery;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/poi/a/d;->c(Lcom/autonavi/navigation/api/poi/PoiManager$TelQuery;)Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/i;->a(Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;)Lcom/autonavi/wh/navigation/server/GStatus;

    return-void
.end method

.method public a([I)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/engine/i;->a([I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a([Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority;)Z
    .locals 4

    const/4 v1, 0x0

    array-length v0, p1

    new-array v2, v0, [Lcom/autonavi/wh/navigation/server/poi/GDisplayPoiPriority;

    move v0, v1

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    aget-object v3, p1, v0

    invoke-static {v3}, Lcom/autonavi/navigation/api/poi/a/b;->a(Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority;)Lcom/autonavi/wh/navigation/server/poi/GDisplayPoiPriority;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    invoke-virtual {v0, v2}, Lcom/autonavi/wh/navigation/engine/i;->a([Lcom/autonavi/wh/navigation/server/poi/GDisplayPoiPriority;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public b()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/wh/navigation/server/GVersion;

    iget-object v1, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    invoke-virtual {v1, v0}, Lcom/autonavi/wh/navigation/engine/i;->a([Lcom/autonavi/wh/navigation/server/GVersion;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/GVersion;->szVersion:Ljava/lang/String;

    const-string v1, "[Vv ]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/autonavi/navigation/api/poi/PoiManager$AddressQuery;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/poi/a/d;->c(Lcom/autonavi/navigation/api/poi/PoiManager$AddressQuery;)Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/i;->b(Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;)Lcom/autonavi/wh/navigation/server/GStatus;

    return-void
.end method

.method public b(Lcom/autonavi/navigation/api/poi/PoiManager$AroundQuery;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/poi/a/d;->c(Lcom/autonavi/navigation/api/poi/PoiManager$AroundQuery;)Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/i;->b(Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;)Lcom/autonavi/wh/navigation/server/GStatus;

    return-void
.end method

.method public b(Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/poi/a/d;->c(Lcom/autonavi/navigation/api/poi/PoiManager$CategoryQuery;)Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/i;->b(Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;)Lcom/autonavi/wh/navigation/server/GStatus;

    return-void
.end method

.method public b(Lcom/autonavi/navigation/api/poi/PoiManager$CrossingQuery;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/poi/a/d;->c(Lcom/autonavi/navigation/api/poi/PoiManager$CrossingQuery;)Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/i;->a(Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;)Lcom/autonavi/wh/navigation/server/GStatus;

    return-void
.end method

.method public b(Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/poi/a/d;->c(Lcom/autonavi/navigation/api/poi/PoiManager$NameQuery;)Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/i;->b(Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;)Lcom/autonavi/wh/navigation/server/GStatus;

    return-void
.end method

.method public declared-synchronized b(Lcom/autonavi/navigation/api/poi/PoiManager$OnDealerQueryResultListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->g:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->g:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/autonavi/navigation/api/poi/PoiManager$TelQuery;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/poi/a/d;->c(Lcom/autonavi/navigation/api/poi/PoiManager$TelQuery;)Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/i;->b(Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;)Lcom/autonavi/wh/navigation/server/GStatus;

    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .locals 8

    const/4 v1, 0x0

    new-instance v0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;

    invoke-direct {v0}, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;-><init>()V

    iput-object p1, v0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->szKeyword:Ljava/lang/String;

    sget-object v2, Lcom/autonavi/wh/navigation/server/poi/GSearchType;->GSEARCH_TYPE_NAME:Lcom/autonavi/wh/navigation/server/poi/GSearchType;

    iput-object v2, v0, Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;->eSearchType:Lcom/autonavi/wh/navigation/server/poi/GSearchType;

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/autonavi/wh/navigation/server/poi/GAdareaInfoList;

    iget-object v2, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    invoke-virtual {v2, v0, v3}, Lcom/autonavi/wh/navigation/engine/i;->a(Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;[Lcom/autonavi/wh/navigation/server/poi/GAdareaInfoList;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aget-object v0, v3, v1

    if-eqz v0, :cond_1

    aget-object v0, v3, v1

    iget v0, v0, Lcom/autonavi/wh/navigation/server/poi/GAdareaInfoList;->lNumberOfAdareaInfo:I

    if-lez v0, :cond_1

    aget-object v0, v3, v1

    iget-object v4, v0, Lcom/autonavi/wh/navigation/server/poi/GAdareaInfoList;->pAdareaInfo:[Lcom/autonavi/wh/navigation/server/poi/GAdareaInfo;

    move v0, v1

    :goto_0
    aget-object v5, v3, v1

    iget-object v5, v5, Lcom/autonavi/wh/navigation/server/poi/GAdareaInfoList;->pAdareaInfo:[Lcom/autonavi/wh/navigation/server/poi/GAdareaInfo;

    array-length v5, v5

    if-ge v0, v5, :cond_0

    new-instance v5, Lcom/autonavi/navigation/api/data/model/AdminArea;

    aget-object v6, v4, v0

    iget v6, v6, Lcom/autonavi/wh/navigation/server/poi/GAdareaInfo;->lAdminCode:I

    aget-object v7, v4, v0

    iget-object v7, v7, Lcom/autonavi/wh/navigation/server/poi/GAdareaInfo;->szAdminName:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/autonavi/navigation/api/data/model/AdminArea;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_1
    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d;->c:Lcom/autonavi/wh/navigation/engine/i;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/i;->c()Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
