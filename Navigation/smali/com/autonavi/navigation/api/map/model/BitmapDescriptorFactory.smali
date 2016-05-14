.class public final Lcom/autonavi/navigation/api/map/model/BitmapDescriptorFactory;
.super Ljava/lang/Object;


# static fields
.field public static final HUE_AZURE:F = 210.0f

.field public static final HUE_BLUE:F = 240.0f

.field public static final HUE_CYAN:F = 180.0f

.field public static final HUE_GREEN:F = 120.0f

.field public static final HUE_MAGENTA:F = 300.0f

.field public static final HUE_ORANGE:F = 30.0f

.field public static final HUE_RED:F = 0.0f

.field public static final HUE_ROSE:F = 330.0f

.field public static final HUE_VIOLET:F = 270.0f

.field public static final HUE_YELLOW:F = 60.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static defaultMarker()Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;
    .locals 1

    :try_start_0
    const-string v0, "marker_blue.png"

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static defaultMarker(F)Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;
    .locals 4

    const/high16 v2, 0x43a50000    # 330.0f

    const/4 v3, 0x0

    const/high16 v0, 0x41700000    # 15.0f

    add-float/2addr v0, p0

    float-to-int v0, v0

    :try_start_0
    div-int/lit8 v0, v0, 0x1e

    mul-int/lit8 v0, v0, 0x1e

    int-to-float v0, v0

    cmpl-float v1, v0, v2

    if-lez v1, :cond_1

    move v1, v2

    :goto_0
    const-string v0, "marker_red"

    cmpl-float v3, v1, v3

    if-nez v3, :cond_2

    const-string v0, "marker_red"

    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_1
    cmpg-float v1, v0, v3

    if-gez v1, :cond_b

    move v1, v3

    goto :goto_0

    :cond_2
    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v3, v1, v3

    if-nez v3, :cond_3

    const-string v0, "marker_orange"

    goto :goto_1

    :cond_3
    const/high16 v3, 0x42700000    # 60.0f

    cmpl-float v3, v1, v3

    if-nez v3, :cond_4

    const-string v0, "marker_yellow"

    goto :goto_1

    :cond_4
    const/high16 v3, 0x42f00000    # 120.0f

    cmpl-float v3, v1, v3

    if-nez v3, :cond_5

    const-string v0, "marker_green"

    goto :goto_1

    :cond_5
    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v3, v1, v3

    if-nez v3, :cond_6

    const-string v0, "marker_cyan"

    goto :goto_1

    :cond_6
    const/high16 v3, 0x43520000    # 210.0f

    cmpl-float v3, v1, v3

    if-nez v3, :cond_7

    const-string v0, "marker_azure"

    goto :goto_1

    :cond_7
    const/high16 v3, 0x43700000    # 240.0f

    cmpl-float v3, v1, v3

    if-nez v3, :cond_8

    const-string v0, "marker_blue"

    goto :goto_1

    :cond_8
    const/high16 v3, 0x43870000    # 270.0f

    cmpl-float v3, v1, v3

    if-nez v3, :cond_9

    const-string v0, "marker_violet"

    goto :goto_1

    :cond_9
    const/high16 v3, 0x43960000    # 300.0f

    cmpl-float v3, v1, v3

    if-nez v3, :cond_a

    const-string v0, "marker_magenta"

    goto :goto_1

    :cond_a
    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const-string v0, "marker_rose"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2

    :cond_b
    move v1, v0

    goto :goto_0
.end method

.method public static fromAsset(Ljava/lang/String;)Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/autonavi/navigation/api/map/model/BitmapDescriptorFactory;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/assets/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/autonavi/navigation/api/map/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    invoke-direct {v0, p0}, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static fromFile(Ljava/lang/String;)Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/navigation/api/internal/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/autonavi/navigation/api/map/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_2
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public static fromPath(Ljava/lang/String;)Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;
    .locals 1

    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromResource(I)Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromView(Landroid/view/View;)Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    invoke-static {p0}, Lcom/autonavi/navigation/api/map/model/BitmapDescriptorFactory;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static getIncidentBitmapDescriptor(I)Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;
    .locals 1

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getMapManagerDelegate()Lcom/autonavi/navigation/api/map/internal/l;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/autonavi/navigation/api/map/internal/l;->f(I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static getTurningBitmapDescriptor(IZ)Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;
    .locals 1

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getMapManagerDelegate()Lcom/autonavi/navigation/api/map/internal/l;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/autonavi/navigation/api/map/internal/l;->a(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    move-result-object v0

    return-object v0
.end method
