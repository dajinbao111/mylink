.class Lcom/autonavi/navigation/api/map/internal/j;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Landroid/graphics/Point;

.field private final b:[Landroid/graphics/Point;

.field private c:Landroid/graphics/Point;

.field private d:Z

.field private e:Z

.field private final f:Lcom/autonavi/navigation/api/map/internal/j$a;


# direct methods
.method public constructor <init>(Lcom/autonavi/navigation/api/map/internal/j$a;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v5, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    new-array v0, v5, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    iput-boolean v3, p0, Lcom/autonavi/navigation/api/map/internal/j;->d:Z

    iput-boolean v3, p0, Lcom/autonavi/navigation/api/map/internal/j;->e:Z

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/j;->f:Lcom/autonavi/navigation/api/map/internal/j$a;

    return-void
.end method

.method private static a(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)D
    .locals 8

    const-wide v6, 0x4076800000000000L    # 360.0

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    invoke-static {p0, p1, v1, v2}, Lcom/autonavi/navigation/api/map/internal/j;->a(Landroid/graphics/Point;Landroid/graphics/Point;D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p2, v1, v2}, Lcom/autonavi/navigation/api/map/internal/j;->a(Landroid/graphics/Point;Landroid/graphics/Point;D)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-wide/16 v0, 0x0

    :cond_1
    :goto_0
    return-wide v0

    :cond_2
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    iget v4, p2, Landroid/graphics/Point;->y:I

    iget v5, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_3

    sub-double/2addr v0, v6

    goto :goto_0

    :cond_3
    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    add-double/2addr v0, v6

    goto :goto_0
.end method

.method private static a(Landroid/graphics/Point;Landroid/graphics/Point;D)Z
    .locals 4

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v2, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    mul-double v2, p2, p2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v2, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p0, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, p0, Landroid/graphics/Point;->x:I

    iget v5, p1, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    iget v4, p3, Landroid/graphics/Point;->y:I

    iget v5, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    iget v5, p2, Landroid/graphics/Point;->x:I

    iget v6, p3, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    iget v6, p3, Landroid/graphics/Point;->x:I

    iget v7, p2, Landroid/graphics/Point;->y:I

    mul-int/2addr v6, v7

    iget v7, p2, Landroid/graphics/Point;->x:I

    iget v8, p3, Landroid/graphics/Point;->y:I

    mul-int/2addr v7, v8

    sub-int/2addr v6, v7

    mul-int v7, v4, v2

    mul-int v8, v1, v5

    sub-int/2addr v7, v8

    if-eqz v7, :cond_0

    mul-int v0, v5, v3

    mul-int/2addr v2, v6

    sub-int/2addr v0, v2

    div-int/2addr v0, v7

    iput v0, p4, Landroid/graphics/Point;->x:I

    mul-int v0, v1, v6

    mul-int v1, v4, v3

    sub-int/2addr v0, v1

    div-int/2addr v0, v7

    iput v0, p4, Landroid/graphics/Point;->y:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 11

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p0, Landroid/graphics/Point;->x:I

    iget v1, p0, Landroid/graphics/Point;->x:I

    iget v2, p0, Landroid/graphics/Point;->y:I

    iget v3, p0, Landroid/graphics/Point;->y:I

    const/4 v6, 0x3

    new-array v7, v6, [Landroid/graphics/Point;

    aput-object p1, v7, v4

    aput-object p2, v7, v5

    const/4 v6, 0x2

    aput-object p3, v7, v6

    array-length v8, v7

    move v6, v4

    :goto_0
    if-ge v6, v8, :cond_4

    aget-object v9, v7, v6

    iget v10, v9, Landroid/graphics/Point;->x:I

    if-ge v10, v0, :cond_0

    iget v0, v9, Landroid/graphics/Point;->x:I

    :cond_0
    iget v10, v9, Landroid/graphics/Point;->x:I

    if-le v10, v1, :cond_1

    iget v1, v9, Landroid/graphics/Point;->x:I

    :cond_1
    iget v10, v9, Landroid/graphics/Point;->y:I

    if-ge v10, v2, :cond_2

    iget v2, v9, Landroid/graphics/Point;->y:I

    :cond_2
    iget v10, v9, Landroid/graphics/Point;->y:I

    if-le v10, v3, :cond_3

    iget v3, v9, Landroid/graphics/Point;->y:I

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    iget v6, p4, Landroid/graphics/Point;->x:I

    if-ge v6, v0, :cond_5

    move v0, v4

    :goto_1
    return v0

    :cond_5
    iget v0, p4, Landroid/graphics/Point;->x:I

    if-le v0, v1, :cond_6

    move v0, v4

    goto :goto_1

    :cond_6
    iget v0, p4, Landroid/graphics/Point;->y:I

    if-ge v0, v2, :cond_7

    move v0, v4

    goto :goto_1

    :cond_7
    iget v0, p4, Landroid/graphics/Point;->y:I

    if-le v0, v3, :cond_8

    move v0, v4

    goto :goto_1

    :cond_8
    move v0, v5

    goto :goto_1
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 14

    const/4 v5, 0x6

    const-wide/16 v12, 0x0

    const/4 v11, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_b

    const/4 v0, 0x2

    if-ne v3, v0, :cond_a

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    aget-object v0, v0, v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    aget-object v0, v0, v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->y:I

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->d:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v0, v0, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v0, v0, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    aget-object v0, v0, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v4, v4, v1

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    mul-int v4, v0, v3

    if-lez v4, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0xc

    if-le v4, v5, :cond_2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0xc

    if-le v4, v5, :cond_2

    iput-boolean v1, p0, Lcom/autonavi/navigation/api/map/internal/j;->e:Z

    iget-object v4, p0, Lcom/autonavi/navigation/api/map/internal/j;->f:Lcom/autonavi/navigation/api/map/internal/j$a;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/autonavi/navigation/api/map/internal/j;->f:Lcom/autonavi/navigation/api/map/internal/j$a;

    add-int/2addr v0, v3

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v3, 0x41000000    # 8.0f

    div-float/2addr v0, v3

    invoke-interface {v4, v0}, Lcom/autonavi/navigation/api/map/internal/j$a;->b(F)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v0, v0, v2

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    aget-object v2, v3, v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v0, Landroid/graphics/Point;->y:I

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v0, v0, v2

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v0, v0, v1

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, v0, Landroid/graphics/Point;->y:I

    iput-boolean v2, p0, Lcom/autonavi/navigation/api/map/internal/j;->e:Z

    :cond_2
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    aget-object v0, v0, v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    aget-object v0, v0, v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v0, v0, v2

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v0, v0, v1

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v0, v0, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v0, v0, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->c:Landroid/graphics/Point;

    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->c:Landroid/graphics/Point;

    :cond_3
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v0, v0, v2

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/autonavi/navigation/api/map/internal/j;->c:Landroid/graphics/Point;

    invoke-static {v0, v3, v4, v5, v6}, Lcom/autonavi/navigation/api/map/internal/j;->a(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v0

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/autonavi/navigation/api/map/internal/j;->c:Landroid/graphics/Point;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/autonavi/navigation/api/map/internal/j;->b(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v0, :cond_a

    if-eqz v3, :cond_a

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->c:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    aget-object v4, v4, v2

    invoke-static {v0, v3, v4}, Lcom/autonavi/navigation/api/map/internal/j;->a(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v3

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->c:Landroid/graphics/Point;

    iget-object v5, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    aget-object v6, v6, v1

    invoke-static {v0, v5, v6}, Lcom/autonavi/navigation/api/map/internal/j;->a(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x403e000000000000L    # 30.0

    cmpl-double v0, v7, v9

    if-gtz v0, :cond_4

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x403e000000000000L    # 30.0

    cmpl-double v0, v7, v9

    if-lez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v0, v0, v2

    iput v11, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v0, v0, v2

    iput v11, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v0, v0, v1

    iput v11, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v0, v0, v1

    iput v11, v0, Landroid/graphics/Point;->y:I

    move v0, v1

    goto/16 :goto_0

    :cond_5
    mul-double v7, v3, v5

    cmpl-double v0, v7, v12

    if-ltz v0, :cond_a

    add-double v7, v3, v5

    cmpl-double v0, v7, v12

    if-eqz v0, :cond_a

    add-double v7, v3, v5

    double-to-int v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v7, v1, :cond_a

    cmpl-double v3, v3, v12

    if-eqz v3, :cond_6

    cmpl-double v3, v5, v12

    if-nez v3, :cond_7

    :cond_6
    mul-int/lit8 v0, v0, 0x2

    :cond_7
    iput-boolean v1, p0, Lcom/autonavi/navigation/api/map/internal/j;->d:Z

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/j;->f:Lcom/autonavi/navigation/api/map/internal/j$a;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/j;->f:Lcom/autonavi/navigation/api/map/internal/j$a;

    int-to-float v0, v0

    invoke-interface {v3, v0}, Lcom/autonavi/navigation/api/map/internal/j$a;->a(F)V

    :cond_8
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v0, v0, v2

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/graphics/Point;->x:I

    iput v3, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v0, v0, v2

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    aget-object v2, v3, v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v0, Landroid/graphics/Point;->y:I

    move v0, v1

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v0, v0, v2

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/graphics/Point;->x:I

    iput v3, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v0, v0, v2

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v0, v0, v1

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/graphics/Point;->x:I

    iput v3, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v0, v0, v1

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    aget-object v1, v3, v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    iput-boolean v2, p0, Lcom/autonavi/navigation/api/map/internal/j;->d:Z

    :cond_a
    :goto_1
    move v0, v2

    goto/16 :goto_0

    :cond_b
    if-eq v0, v1, :cond_c

    if-eq v0, v5, :cond_c

    const/16 v3, 0x106

    if-eq v0, v3, :cond_c

    const/16 v3, 0x206

    if-eq v0, v3, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v5, :cond_a

    :cond_c
    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->e:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->f:Lcom/autonavi/navigation/api/map/internal/j$a;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->f:Lcom/autonavi/navigation/api/map/internal/j$a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/j$a;->b()V

    :cond_d
    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->d:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->f:Lcom/autonavi/navigation/api/map/internal/j$a;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->f:Lcom/autonavi/navigation/api/map/internal/j$a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/j$a;->a()V

    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v5, :cond_f

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->e:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->d:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->f:Lcom/autonavi/navigation/api/map/internal/j$a;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    aget-object v0, v0, v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    aget-object v0, v0, v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    aget-object v0, v0, v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    aget-object v0, v0, v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v0, v0, v2

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    aget-object v3, v3, v2

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    invoke-static {v0, v3, v4, v5}, Lcom/autonavi/navigation/api/map/internal/j;->a(Landroid/graphics/Point;Landroid/graphics/Point;D)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v0, v0, v1

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/j;->b:[Landroid/graphics/Point;

    aget-object v3, v3, v1

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    invoke-static {v0, v3, v4, v5}, Lcom/autonavi/navigation/api/map/internal/j;->a(Landroid/graphics/Point;Landroid/graphics/Point;D)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->f:Lcom/autonavi/navigation/api/map/internal/j$a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/j$a;->c()V

    :cond_f
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v0, v0, v2

    iput v11, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v0, v0, v2

    iput v11, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v0, v0, v1

    iput v11, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/j;->a:[Landroid/graphics/Point;

    aget-object v0, v0, v1

    iput v11, v0, Landroid/graphics/Point;->y:I

    iput-boolean v2, p0, Lcom/autonavi/navigation/api/map/internal/j;->d:Z

    iput-boolean v2, p0, Lcom/autonavi/navigation/api/map/internal/j;->e:Z

    goto/16 :goto_1
.end method
