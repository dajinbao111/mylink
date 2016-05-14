.class Lcom/autonavi/navigation/api/map/internal/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/view/animation/Interpolator;

.field final synthetic c:J

.field final synthetic d:Lcom/autonavi/navigation/api/map/model/LatLng;

.field final synthetic e:Lcom/autonavi/navigation/api/map/model/LatLng;

.field final synthetic f:Lcom/autonavi/navigation/api/map/AnMap$CancelableCallback;

.field final synthetic g:Lcom/autonavi/navigation/api/map/internal/b;


# direct methods
.method constructor <init>(Lcom/autonavi/navigation/api/map/internal/b;JLandroid/view/animation/Interpolator;JLcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/map/AnMap$CancelableCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/b$1;->g:Lcom/autonavi/navigation/api/map/internal/b;

    iput-wide p2, p0, Lcom/autonavi/navigation/api/map/internal/b$1;->a:J

    iput-object p4, p0, Lcom/autonavi/navigation/api/map/internal/b$1;->b:Landroid/view/animation/Interpolator;

    iput-wide p5, p0, Lcom/autonavi/navigation/api/map/internal/b$1;->c:J

    iput-object p7, p0, Lcom/autonavi/navigation/api/map/internal/b$1;->d:Lcom/autonavi/navigation/api/map/model/LatLng;

    iput-object p8, p0, Lcom/autonavi/navigation/api/map/internal/b$1;->e:Lcom/autonavi/navigation/api/map/model/LatLng;

    iput-object p9, p0, Lcom/autonavi/navigation/api/map/internal/b$1;->f:Lcom/autonavi/navigation/api/map/AnMap$CancelableCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/autonavi/navigation/api/map/internal/b$1;->a:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/b$1;->b:Landroid/view/animation/Interpolator;

    long-to-float v0, v0

    iget-wide v3, p0, Lcom/autonavi/navigation/api/map/internal/b$1;->c:J

    long-to-float v1, v3

    div-float/2addr v0, v1

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/b$1;->d:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget v1, v1, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    sub-float v2, v5, v0

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/b$1;->e:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget v3, v3, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/b$1;->d:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget v2, v2, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float v3, v5, v0

    iget-object v4, p0, Lcom/autonavi/navigation/api/map/internal/b$1;->e:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget v4, v4, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/b$1;->g:Lcom/autonavi/navigation/api/map/internal/b;

    invoke-static {v3}, Lcom/autonavi/navigation/api/map/internal/b;->a(Lcom/autonavi/navigation/api/map/internal/b;)Lcom/autonavi/navigation/api/map/internal/l;

    move-result-object v3

    new-instance v4, Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-direct {v4, v1, v2}, Lcom/autonavi/navigation/api/map/model/LatLng;-><init>(II)V

    invoke-interface {v3, v4}, Lcom/autonavi/navigation/api/map/internal/l;->b(Lcom/autonavi/navigation/api/map/model/LatLng;)Z

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b$1;->g:Lcom/autonavi/navigation/api/map/internal/b;

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/internal/b;->b(Lcom/autonavi/navigation/api/map/internal/b;)Lcom/autonavi/navigation/api/map/internal/g;

    move-result-object v0

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Lcom/autonavi/navigation/api/map/internal/g;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b$1;->f:Lcom/autonavi/navigation/api/map/AnMap$CancelableCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/b$1;->f:Lcom/autonavi/navigation/api/map/AnMap$CancelableCallback;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/AnMap$CancelableCallback;->onFinish()V

    goto :goto_0
.end method
