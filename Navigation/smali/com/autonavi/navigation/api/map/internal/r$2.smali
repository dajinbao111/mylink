.class Lcom/autonavi/navigation/api/map/internal/r$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic a:Lcom/autonavi/navigation/api/map/internal/r;


# direct methods
.method constructor <init>(Lcom/autonavi/navigation/api/map/internal/r;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/r$2;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "=======================onDoubleTap======================="

    invoke-static {v0}, Lcom/autonavi/navigation/api/internal/a/a/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r$2;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/internal/r;->a(Lcom/autonavi/navigation/api/map/internal/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r$2;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/internal/r;->b(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->l()Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "=======================onDown======================="

    invoke-static {v0}, Lcom/autonavi/navigation/api/internal/a/a/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r$2;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/internal/r;->c(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/internal/g;->a()V

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-gt v2, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-gt v2, v1, :cond_0

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/r$2;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v2}, Lcom/autonavi/navigation/api/map/internal/r;->d(Lcom/autonavi/navigation/api/map/internal/r;)Landroid/view/ScaleGestureDetector;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/r$2;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v2}, Lcom/autonavi/navigation/api/map/internal/r;->e(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/internal/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/map/internal/j;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string v2, "=======================onFling======================="

    invoke-static {v2}, Lcom/autonavi/navigation/api/internal/a/a/f;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/r$2;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v2}, Lcom/autonavi/navigation/api/map/internal/r;->h(Lcom/autonavi/navigation/api/map/internal/r;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r$2;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/internal/r;->c(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/internal/g;

    move-result-object v0

    float-to-int v2, p3

    float-to-int v3, p4

    iget-object v4, p0, Lcom/autonavi/navigation/api/map/internal/r$2;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v4}, Lcom/autonavi/navigation/api/map/internal/r;->i(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/autonavi/navigation/api/map/internal/g;->a(IILcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;)V

    move v0, v1

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    const-string v0, "=======================onLongPress======================="

    invoke-static {v0}, Lcom/autonavi/navigation/api/internal/a/a/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r$2;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/internal/r;->j(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/AnMap$OnMapLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r$2;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/internal/r;->b(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/internal/l;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/autonavi/navigation/api/map/internal/l;->a(Landroid/graphics/Point;)Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/r$2;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v1}, Lcom/autonavi/navigation/api/map/internal/r;->j(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/AnMap$OnMapLongClickListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/autonavi/navigation/api/map/AnMap$OnMapLongClickListener;->onMapLongClick(Lcom/autonavi/navigation/api/map/model/LatLng;)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v0, :cond_0

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/r$2;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v1}, Lcom/autonavi/navigation/api/map/internal/r;->d(Lcom/autonavi/navigation/api/map/internal/r;)Landroid/view/ScaleGestureDetector;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/r$2;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v1}, Lcom/autonavi/navigation/api/map/internal/r;->e(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/internal/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/map/internal/j;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "=======================onScroll======================="

    invoke-static {v1}, Lcom/autonavi/navigation/api/internal/a/a/f;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/r$2;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v1}, Lcom/autonavi/navigation/api/map/internal/r;->f(Lcom/autonavi/navigation/api/map/internal/r;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/r$2;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v1, v0}, Lcom/autonavi/navigation/api/map/internal/r;->a(Lcom/autonavi/navigation/api/map/internal/r;Z)Z

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/r$2;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v1}, Lcom/autonavi/navigation/api/map/internal/r;->g(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/AnMap$OnMapScrollListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/r$2;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v1}, Lcom/autonavi/navigation/api/map/internal/r;->g(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/AnMap$OnMapScrollListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/navigation/api/map/AnMap$OnMapScrollListener;->onScroll()V

    :cond_2
    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/r$2;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v1}, Lcom/autonavi/navigation/api/map/internal/r;->b(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/internal/l;

    move-result-object v1

    float-to-int v2, p3

    float-to-int v3, p4

    invoke-interface {v1, v2, v3}, Lcom/autonavi/navigation/api/map/internal/l;->a(II)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v1, 0x1

    const-string v0, "=======================onSingleTapUp======================="

    invoke-static {v0}, Lcom/autonavi/navigation/api/internal/a/a/f;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/r$2;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v2}, Lcom/autonavi/navigation/api/map/internal/r;->k(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/AnMap$OnPoiClickListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/r$2;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v2}, Lcom/autonavi/navigation/api/map/internal/r;->b(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/internal/l;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v2, v3}, Lcom/autonavi/navigation/api/map/internal/l;->c(Landroid/graphics/Point;)Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r$2;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/internal/r;->k(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/AnMap$OnPoiClickListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/autonavi/navigation/api/map/AnMap$OnPoiClickListener;->onPoiClick(Lcom/autonavi/navigation/api/poi/model/Poi;)V

    move v0, v1

    :cond_0
    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/r$2;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v2}, Lcom/autonavi/navigation/api/map/internal/r;->l(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/AnMap$OnMapClickListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/r$2;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v2}, Lcom/autonavi/navigation/api/map/internal/r;->b(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/internal/l;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v2, v3}, Lcom/autonavi/navigation/api/map/internal/l;->a(Landroid/graphics/Point;)Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r$2;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/internal/r;->l(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/AnMap$OnMapClickListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/autonavi/navigation/api/map/AnMap$OnMapClickListener;->onMapClick(Lcom/autonavi/navigation/api/map/model/LatLng;)V

    move v0, v1

    :cond_1
    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/r$2;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v2}, Lcom/autonavi/navigation/api/map/internal/r;->m(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/AnMap$OnTrafficIncidentClickListener;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/r$2;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v2}, Lcom/autonavi/navigation/api/map/internal/r;->b(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/internal/l;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v2, v3}, Lcom/autonavi/navigation/api/map/internal/l;->b(Landroid/graphics/Point;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r$2;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/internal/r;->m(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/AnMap$OnTrafficIncidentClickListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/autonavi/navigation/api/map/AnMap$OnTrafficIncidentClickListener;->onTrafficIncidentClick(Ljava/util/List;)V

    move v0, v1

    :cond_2
    return v0
.end method
