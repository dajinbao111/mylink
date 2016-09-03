.class public Lcom/autonavi/wh/navi/search/PoiIconUtils;
.super Ljava/lang/Object;


# static fields
.field private static final POI_CATEGORY_ICON_NAME:Ljava/lang/String; = "ic_poi_cate_%s"

.field private static final POI_SUB_CATEGORY_ICON_NAME:Ljava/lang/String; = "ic_poi_sub_cate_%s"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPoiCategoryIconRes(Landroid/content/Context;I)I
    .locals 4

    div-int/lit16 v0, p1, 0x2710

    mul-int/lit16 v0, v0, 0x2710

    const-string v1, "ic_poi_cate_%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/autonavi/wh/navi/search/PoiIconUtils;->getResId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getPoiSubCategoryIconRes(Landroid/content/Context;I)I
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "ic_poi_sub_cate_%s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/autonavi/wh/navi/search/PoiIconUtils;->getResId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    div-int/lit16 v0, p1, 0x2710

    mul-int/lit16 v0, v0, 0x2710

    const-string v1, "ic_poi_sub_cate_%s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/autonavi/wh/navi/search/PoiIconUtils;->getResId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static getResId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
