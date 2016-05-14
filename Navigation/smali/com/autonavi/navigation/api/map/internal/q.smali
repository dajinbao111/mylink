.class public Lcom/autonavi/navigation/api/map/internal/q;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/autonavi/navigation/api/map/internal/l$b;
.implements Lcom/autonavi/navigation/api/map/internal/w;


# instance fields
.field private a:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final b:Landroid/content/Context;

.field private c:Lcom/autonavi/navigation/api/map/internal/l;

.field private d:Landroid/view/View;

.field private e:Lcom/autonavi/navigation/api/map/AnMap$OnMarkerInfoWindowClickListener;

.field private f:Lcom/autonavi/navigation/api/map/AnMap$MarkerInfoWindowAdapter;

.field private g:Lcom/autonavi/navigation/api/map/AnMap$OnMarkerClickListener;

.field private final h:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/navigation/api/map/internal/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/autonavi/navigation/api/map/internal/q$1;

    invoke-direct {v0, p0}, Lcom/autonavi/navigation/api/map/internal/q$1;-><init>(Lcom/autonavi/navigation/api/map/internal/q;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->h:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/q;->b:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getMapManagerDelegate()Lcom/autonavi/navigation/api/map/internal/l;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->c:Lcom/autonavi/navigation/api/map/internal/l;

    return-void
.end method

.method static synthetic a(Lcom/autonavi/navigation/api/map/internal/q;)Lcom/autonavi/navigation/api/map/internal/l;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->c:Lcom/autonavi/navigation/api/map/internal/l;

    return-object v0
.end method

.method static synthetic a(Lcom/autonavi/navigation/api/map/internal/q;Lcom/autonavi/navigation/api/map/model/Marker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/map/internal/q;->b(Lcom/autonavi/navigation/api/map/model/Marker;)V

    return-void
.end method

.method private a(I)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/navigation/api/map/model/Marker;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/model/Marker;->getId()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/autonavi/navigation/api/map/internal/q;)Lcom/autonavi/navigation/api/map/AnMap$OnMarkerClickListener;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->g:Lcom/autonavi/navigation/api/map/AnMap$OnMarkerClickListener;

    return-object v0
.end method

.method private b(Lcom/autonavi/navigation/api/map/model/Marker;)V
    .locals 4

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/map/model/Marker;->getSnippet()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/map/model/Marker;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->d:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/map/internal/q;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/autonavi/navigation/api/map/internal/q;->d:Landroid/view/View;

    :cond_2
    new-instance v1, Lcom/autonavi/navigation/api/map/internal/q$c;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/map/model/Marker;->getPosition()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    invoke-direct {v1, p0, v2, v2, v0}, Lcom/autonavi/navigation/api/map/internal/q$c;-><init>(Lcom/autonavi/navigation/api/map/internal/q;IILcom/autonavi/navigation/api/map/model/LatLng;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->f:Lcom/autonavi/navigation/api/map/AnMap$MarkerInfoWindowAdapter;

    if-nez v0, :cond_3

    new-instance v0, Lcom/autonavi/navigation/api/map/internal/q$a;

    invoke-direct {v0, p0, v3}, Lcom/autonavi/navigation/api/map/internal/q$a;-><init>(Lcom/autonavi/navigation/api/map/internal/q;Lcom/autonavi/navigation/api/map/internal/q$1;)V

    :cond_3
    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/AnMap$MarkerInfoWindowAdapter;->getInfoWindow(Lcom/autonavi/navigation/api/map/model/Marker;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/autonavi/navigation/api/map/internal/q;->d:Landroid/view/View;

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/q;->d:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->d:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/navigation/api/map/internal/q;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/q;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/AnMap$MarkerInfoWindowAdapter;->getInfoContents(Lcom/autonavi/navigation/api/map/model/Marker;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->d:Landroid/view/View;

    if-nez v0, :cond_6

    new-instance v0, Lcom/autonavi/navigation/api/map/internal/q$a;

    invoke-direct {v0, p0, v3}, Lcom/autonavi/navigation/api/map/internal/q$a;-><init>(Lcom/autonavi/navigation/api/map/internal/q;Lcom/autonavi/navigation/api/map/internal/q$1;)V

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/AnMap$MarkerInfoWindowAdapter;->getInfoWindow(Lcom/autonavi/navigation/api/map/model/Marker;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/autonavi/navigation/api/map/internal/q;->d:Landroid/view/View;

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/q;->d:Landroid/view/View;

    if-nez v2, :cond_5

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/AnMap$MarkerInfoWindowAdapter;->getInfoContents(Lcom/autonavi/navigation/api/map/model/Marker;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->d:Landroid/view/View;

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->d:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/navigation/api/map/internal/q;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->d:Landroid/view/View;

    sget v2, Lcom/autonavi/navigation/api/R$drawable;->api_marker_info_window_default:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method static synthetic c(Lcom/autonavi/navigation/api/map/internal/q;)Lcom/autonavi/navigation/api/map/AnMap$OnMarkerInfoWindowClickListener;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->e:Lcom/autonavi/navigation/api/map/AnMap$OnMarkerInfoWindowClickListener;

    return-object v0
.end method

.method static synthetic d(Lcom/autonavi/navigation/api/map/internal/q;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public U()V
    .locals 0

    return-void
.end method

.method public V()V
    .locals 0

    return-void
.end method

.method public W()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p0}, Lcom/autonavi/navigation/api/map/internal/l;->b(Lcom/autonavi/navigation/api/map/internal/l$b;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iput-object v1, p0, Lcom/autonavi/navigation/api/map/internal/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v1, p0, Lcom/autonavi/navigation/api/map/internal/q;->d:Landroid/view/View;

    iput-object v1, p0, Lcom/autonavi/navigation/api/map/internal/q;->c:Lcom/autonavi/navigation/api/map/internal/l;

    return-void
.end method

.method public X()V
    .locals 0

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/model/MarkerOptions;)Lcom/autonavi/navigation/api/map/model/Marker;
    .locals 5

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->getPosition()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/model/LatLng;->hashCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/map/internal/q;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/autonavi/navigation/api/map/model/Marker;

    invoke-direct {v1}, Lcom/autonavi/navigation/api/map/model/Marker;-><init>()V

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->getPosition()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/map/model/Marker;->setPosition(Lcom/autonavi/navigation/api/map/model/LatLng;)V

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->getAnchorU()F

    move-result v0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->getAnchorV()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/navigation/api/map/model/Marker;->setAnchor(FF)V

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->getIcon()Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/map/model/Marker;->setIcon(Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;)V

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->isVisible()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/map/model/Marker;->setVisible(Z)V

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/map/model/Marker;->setSnippet(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/map/model/Marker;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->isDraggable()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/map/model/Marker;->setDraggable(Z)V

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->getIcon()Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/autonavi/navigation/api/map/model/BitmapDescriptorFactory;->defaultMarker()Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->icon(Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;)Lcom/autonavi/navigation/api/map/model/MarkerOptions;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/q;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->getIcon()Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/autonavi/navigation/api/map/internal/l;->a(Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->a()Z

    new-instance v2, Lcom/autonavi/navigation/api/map/internal/q$c;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->getIcon()Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->getIcon()Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->getPosition()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v4

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/autonavi/navigation/api/map/internal/q$c;-><init>(Lcom/autonavi/navigation/api/map/internal/q;IILcom/autonavi/navigation/api/map/model/LatLng;)V

    new-instance v3, Lcom/autonavi/navigation/api/map/internal/q$d;

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->b:Landroid/content/Context;

    invoke-direct {v3, p0, v0}, Lcom/autonavi/navigation/api/map/internal/q$d;-><init>(Lcom/autonavi/navigation/api/map/internal/q;Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/autonavi/navigation/api/map/internal/q$d;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3, v0}, Lcom/autonavi/navigation/api/map/internal/q$d;->setVisibility(I)V

    invoke-virtual {p0, v3, v2}, Lcom/autonavi/navigation/api/map/internal/q;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Lcom/autonavi/navigation/api/map/internal/q$d;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, v1}, Lcom/autonavi/navigation/api/map/internal/l;->a(Lcom/autonavi/navigation/api/map/model/Marker;)Z

    move-object v0, v1

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public a()Ljava/util/List;
    .locals 8

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/navigation/api/map/model/Marker;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/model/Marker;->getPosition()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    iget-object v4, p0, Lcom/autonavi/navigation/api/map/internal/q;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v4, v0}, Lcom/autonavi/navigation/api/map/internal/l;->a(Lcom/autonavi/navigation/api/map/model/LatLng;)Landroid/graphics/Point;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Lcom/autonavi/navigation/api/map/internal/l$a;

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget v7, v4, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/navigation/api/map/model/Marker;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/model/Marker;->getIcon()Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v7

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v6, v0, v4}, Lcom/autonavi/navigation/api/map/internal/l$a;-><init>(Ljava/lang/Object;II)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p0}, Lcom/autonavi/navigation/api/map/internal/l;->a(Lcom/autonavi/navigation/api/map/internal/l$b;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/model/Marker;)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/autonavi/navigation/api/map/model/Marker;

    invoke-virtual {v1, p1}, Lcom/autonavi/navigation/api/map/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/l;->b(Lcom/autonavi/navigation/api/map/model/Marker;)Z

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/map/internal/q;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/map/internal/q;->removeView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/map/model/Marker;->remove()V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->d:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/map/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/map/internal/q;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->d:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->a()Z

    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/navigation/api/map/model/Marker;

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/map/internal/q;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/autonavi/navigation/api/map/internal/q;->removeView(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/model/Marker;->remove()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/map/internal/q;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->d:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->u()V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->c:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->a()Z

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 10

    const/4 v9, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/internal/q;->getChildCount()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_4

    invoke-virtual {p0, v1}, Lcom/autonavi/navigation/api/map/internal/q;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lcom/autonavi/navigation/api/map/internal/q$c;

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/internal/q$c;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/internal/q$c;->a()Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget v7, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v8, v5, 0x2

    sub-int/2addr v7, v8

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v6

    add-int/2addr v5, v7

    add-int/2addr v6, v0

    invoke-virtual {v4, v7, v0, v5, v6}, Landroid/view/View;->layout(IIII)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_1

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMarkerInfoWindowAdapter(Lcom/autonavi/navigation/api/map/AnMap$MarkerInfoWindowAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/q;->f:Lcom/autonavi/navigation/api/map/AnMap$MarkerInfoWindowAdapter;

    return-void
.end method

.method public setOnMarkerClickListener(Lcom/autonavi/navigation/api/map/AnMap$OnMarkerClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/q;->g:Lcom/autonavi/navigation/api/map/AnMap$OnMarkerClickListener;

    return-void
.end method

.method public setOnMarkerDragListener(Lcom/autonavi/navigation/api/map/AnMap$OnMarkerDragListener;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOnMarkerInfoWindowClickListener(Lcom/autonavi/navigation/api/map/AnMap$OnMarkerInfoWindowClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/q;->e:Lcom/autonavi/navigation/api/map/AnMap$OnMarkerInfoWindowClickListener;

    return-void
.end method
