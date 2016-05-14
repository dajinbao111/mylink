.class Lcom/autonavi/navigation/api/map/internal/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/autonavi/navigation/api/map/internal/l;

.field private c:Lcom/autonavi/navigation/api/map/AnMap$OnMapLongClickListener;

.field private d:Lcom/autonavi/navigation/api/map/AnMap$OnMapClickListener;

.field private e:Lcom/autonavi/navigation/api/map/AnMap$OnPoiClickListener;

.field private f:Lcom/autonavi/navigation/api/map/AnMap$OnTrafficIncidentClickListener;

.field private g:Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;

.field private h:Lcom/autonavi/navigation/api/map/AnMap$OnMapScrollListener;

.field private i:Lcom/autonavi/navigation/api/map/AnMap$OnMapActionUpListener;

.field private j:Z

.field private final k:Lcom/autonavi/navigation/api/map/internal/g;

.field private l:Lcom/autonavi/navigation/api/map/internal/j;

.field private m:Landroid/view/ScaleGestureDetector;

.field private n:Landroid/view/GestureDetector;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/navigation/api/map/internal/l;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->j:Z

    iput-boolean v1, p0, Lcom/autonavi/navigation/api/map/internal/r;->o:Z

    iput-boolean v1, p0, Lcom/autonavi/navigation/api/map/internal/r;->p:Z

    iput-boolean v1, p0, Lcom/autonavi/navigation/api/map/internal/r;->q:Z

    iput-boolean v1, p0, Lcom/autonavi/navigation/api/map/internal/r;->r:Z

    iput-boolean v1, p0, Lcom/autonavi/navigation/api/map/internal/r;->s:Z

    iput-boolean v1, p0, Lcom/autonavi/navigation/api/map/internal/r;->t:Z

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/r;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/autonavi/navigation/api/map/internal/r;->b:Lcom/autonavi/navigation/api/map/internal/l;

    new-instance v0, Lcom/autonavi/navigation/api/map/internal/g;

    invoke-direct {v0, p2}, Lcom/autonavi/navigation/api/map/internal/g;-><init>(Lcom/autonavi/navigation/api/map/internal/l;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->k:Lcom/autonavi/navigation/api/map/internal/g;

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->m:Landroid/view/ScaleGestureDetector;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/r;->a:Landroid/content/Context;

    new-instance v2, Lcom/autonavi/navigation/api/map/internal/r$1;

    invoke-direct {v2, p0}, Lcom/autonavi/navigation/api/map/internal/r$1;-><init>(Lcom/autonavi/navigation/api/map/internal/r;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->m:Landroid/view/ScaleGestureDetector;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->m:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/autonavi/navigation/api/map/internal/r;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->o:Z

    return v0
.end method

.method static synthetic a(Lcom/autonavi/navigation/api/map/internal/r;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/navigation/api/map/internal/r;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/internal/l;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->b:Lcom/autonavi/navigation/api/map/internal/l;

    return-object v0
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->n:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/r;->a:Landroid/content/Context;

    new-instance v2, Lcom/autonavi/navigation/api/map/internal/r$2;

    invoke-direct {v2, p0}, Lcom/autonavi/navigation/api/map/internal/r$2;-><init>(Lcom/autonavi/navigation/api/map/internal/r;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->n:Landroid/view/GestureDetector;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->n:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/internal/g;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->k:Lcom/autonavi/navigation/api/map/internal/g;

    return-object v0
.end method

.method private c(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->l:Lcom/autonavi/navigation/api/map/internal/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/map/internal/j;

    new-instance v1, Lcom/autonavi/navigation/api/map/internal/r$3;

    invoke-direct {v1, p0}, Lcom/autonavi/navigation/api/map/internal/r$3;-><init>(Lcom/autonavi/navigation/api/map/internal/r;)V

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/map/internal/j;-><init>(Lcom/autonavi/navigation/api/map/internal/j$a;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->l:Lcom/autonavi/navigation/api/map/internal/j;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->l:Lcom/autonavi/navigation/api/map/internal/j;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/map/internal/j;->a(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->l:Lcom/autonavi/navigation/api/map/internal/j;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/internal/j;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/autonavi/navigation/api/map/internal/r;)Landroid/view/ScaleGestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->m:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method static synthetic e(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/internal/j;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->l:Lcom/autonavi/navigation/api/map/internal/j;

    return-object v0
.end method

.method static synthetic f(Lcom/autonavi/navigation/api/map/internal/r;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->p:Z

    return v0
.end method

.method static synthetic g(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/AnMap$OnMapScrollListener;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->h:Lcom/autonavi/navigation/api/map/AnMap$OnMapScrollListener;

    return-object v0
.end method

.method static synthetic h(Lcom/autonavi/navigation/api/map/internal/r;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->q:Z

    return v0
.end method

.method static synthetic i(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->g:Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;

    return-object v0
.end method

.method static synthetic j(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/AnMap$OnMapLongClickListener;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->c:Lcom/autonavi/navigation/api/map/AnMap$OnMapLongClickListener;

    return-object v0
.end method

.method static synthetic k(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/AnMap$OnPoiClickListener;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->e:Lcom/autonavi/navigation/api/map/AnMap$OnPoiClickListener;

    return-object v0
.end method

.method static synthetic l(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/AnMap$OnMapClickListener;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->d:Lcom/autonavi/navigation/api/map/AnMap$OnMapClickListener;

    return-object v0
.end method

.method static synthetic m(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/AnMap$OnTrafficIncidentClickListener;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->f:Lcom/autonavi/navigation/api/map/AnMap$OnTrafficIncidentClickListener;

    return-object v0
.end method

.method static synthetic n(Lcom/autonavi/navigation/api/map/internal/r;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->t:Z

    return v0
.end method

.method static synthetic o(Lcom/autonavi/navigation/api/map/internal/r;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->s:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnMapActionUpListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/r;->i:Lcom/autonavi/navigation/api/map/AnMap$OnMapActionUpListener;

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnMapClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/r;->d:Lcom/autonavi/navigation/api/map/AnMap$OnMapClickListener;

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/r;->g:Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnMapLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/r;->c:Lcom/autonavi/navigation/api/map/AnMap$OnMapLongClickListener;

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnMapScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/r;->h:Lcom/autonavi/navigation/api/map/AnMap$OnMapScrollListener;

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnPoiClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/r;->e:Lcom/autonavi/navigation/api/map/AnMap$OnPoiClickListener;

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficIncidentClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/r;->f:Lcom/autonavi/navigation/api/map/AnMap$OnTrafficIncidentClickListener;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/navigation/api/map/internal/r;->o:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->o:Z

    return v0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/navigation/api/map/internal/r;->p:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->p:Z

    return v0
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/navigation/api/map/internal/r;->q:Z

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->r:Z

    return v0
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/navigation/api/map/internal/r;->r:Z

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->s:Z

    return v0
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/navigation/api/map/internal/r;->s:Z

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->t:Z

    return v0
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/navigation/api/map/internal/r;->t:Z

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->r:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/autonavi/navigation/api/map/internal/r;->a(Landroid/view/MotionEvent;)Z

    invoke-direct {p0, p2}, Lcom/autonavi/navigation/api/map/internal/r;->c(Landroid/view/MotionEvent;)Z

    invoke-direct {p0, p2}, Lcom/autonavi/navigation/api/map/internal/r;->b(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->p:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->h:Lcom/autonavi/navigation/api/map/AnMap$OnMapScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->h:Lcom/autonavi/navigation/api/map/AnMap$OnMapScrollListener;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/AnMap$OnMapScrollListener;->onScrollEnd()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->j:Z

    :cond_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->i:Lcom/autonavi/navigation/api/map/AnMap$OnMapActionUpListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r;->i:Lcom/autonavi/navigation/api/map/AnMap$OnMapActionUpListener;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/AnMap$OnMapActionUpListener;->onActionUp()V

    :cond_2
    return v1
.end method
