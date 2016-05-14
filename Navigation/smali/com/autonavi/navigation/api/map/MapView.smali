.class public Lcom/autonavi/navigation/api/map/MapView;
.super Landroid/widget/FrameLayout;


# instance fields
.field private final a:Lcom/autonavi/navigation/api/map/internal/n;

.field private b:Lcom/autonavi/navigation/api/map/AnMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/autonavi/navigation/api/map/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/navigation/api/map/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/autonavi/navigation/api/map/internal/o;

    invoke-static {p1, p2}, Lcom/autonavi/navigation/api/map/AnMapOptions;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/autonavi/navigation/api/map/AnMapOptions;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/autonavi/navigation/api/map/internal/o;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/autonavi/navigation/api/map/AnMapOptions;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/MapView;->a:Lcom/autonavi/navigation/api/map/internal/n;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/navigation/api/map/AnMapOptions;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/autonavi/navigation/api/map/internal/o;

    invoke-direct {v0, p0, p1, p2}, Lcom/autonavi/navigation/api/map/internal/o;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/autonavi/navigation/api/map/AnMapOptions;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/MapView;->a:Lcom/autonavi/navigation/api/map/internal/n;

    return-void
.end method


# virtual methods
.method public getMap()Lcom/autonavi/navigation/api/map/AnMap;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/MapView;->b:Lcom/autonavi/navigation/api/map/AnMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/map/AnMap;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/MapView;->a:Lcom/autonavi/navigation/api/map/internal/n;

    invoke-interface {v1}, Lcom/autonavi/navigation/api/map/internal/n;->a()Lcom/autonavi/navigation/api/map/internal/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;-><init>(Lcom/autonavi/navigation/api/map/internal/a;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/MapView;->b:Lcom/autonavi/navigation/api/map/AnMap;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/MapView;->b:Lcom/autonavi/navigation/api/map/AnMap;

    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/MapView;->a:Lcom/autonavi/navigation/api/map/internal/n;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/n;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/MapView;->a:Lcom/autonavi/navigation/api/map/internal/n;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/n;->d()V

    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/MapView;->a:Lcom/autonavi/navigation/api/map/internal/n;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/n;->e()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/MapView;->a:Lcom/autonavi/navigation/api/map/internal/n;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/n;->c()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/MapView;->a:Lcom/autonavi/navigation/api/map/internal/n;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/n;->b()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/MapView;->a:Lcom/autonavi/navigation/api/map/internal/n;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/n;->b(Landroid/os/Bundle;)V

    return-void
.end method
