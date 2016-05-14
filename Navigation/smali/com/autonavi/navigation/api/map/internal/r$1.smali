.class Lcom/autonavi/navigation/api/map/internal/r$1;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;


# instance fields
.field final synthetic a:Lcom/autonavi/navigation/api/map/internal/r;


# direct methods
.method constructor <init>(Lcom/autonavi/navigation/api/map/internal/r;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/r$1;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v0, "=======================onScale======================="

    invoke-static {v0}, Lcom/autonavi/navigation/api/internal/a/a/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r$1;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/internal/r;->a(Lcom/autonavi/navigation/api/map/internal/r;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    sub-float v1, v0, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    cmpg-float v1, v0, v3

    if-gez v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r$1;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/internal/r;->b(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->p()Z

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r$1;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/internal/r;->b(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->o()Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    const-string v0, "=======================onScaleEnd======================="

    invoke-static {v0}, Lcom/autonavi/navigation/api/internal/a/a/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r$1;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/internal/r;->a(Lcom/autonavi/navigation/api/map/internal/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r$1;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/internal/r;->b(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->q()Z

    :cond_0
    return-void
.end method
