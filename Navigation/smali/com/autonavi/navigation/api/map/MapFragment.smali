.class public Lcom/autonavi/navigation/api/map/MapFragment;
.super Landroid/support/v4/app/Fragment;


# instance fields
.field private final a:Lcom/autonavi/navigation/api/map/internal/h;

.field private b:Lcom/autonavi/navigation/api/map/AnMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Lcom/autonavi/navigation/api/map/internal/i;

    invoke-direct {v0, p0}, Lcom/autonavi/navigation/api/map/internal/i;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/MapFragment;->a:Lcom/autonavi/navigation/api/map/internal/h;

    return-void
.end method

.method public static newInstance()Lcom/autonavi/navigation/api/map/MapFragment;
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/map/MapFragment;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/map/MapFragment;-><init>()V

    return-object v0
.end method

.method public static newInstance(Lcom/autonavi/navigation/api/map/AnMapOptions;)Lcom/autonavi/navigation/api/map/MapFragment;
    .locals 3

    new-instance v0, Lcom/autonavi/navigation/api/map/MapFragment;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/map/MapFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "KEY_MAP_OPTIONS"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/MapFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getMap()Lcom/autonavi/navigation/api/map/AnMap;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/MapFragment;->b:Lcom/autonavi/navigation/api/map/AnMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/map/AnMap;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/MapFragment;->a:Lcom/autonavi/navigation/api/map/internal/h;

    invoke-interface {v1}, Lcom/autonavi/navigation/api/map/internal/h;->a()Lcom/autonavi/navigation/api/map/internal/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;-><init>(Lcom/autonavi/navigation/api/map/internal/a;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/MapFragment;->b:Lcom/autonavi/navigation/api/map/AnMap;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/MapFragment;->b:Lcom/autonavi/navigation/api/map/AnMap;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/MapFragment;->a:Lcom/autonavi/navigation/api/map/internal/h;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/h;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/MapFragment;->a:Lcom/autonavi/navigation/api/map/internal/h;

    invoke-interface {v0, p1, p2, p3}, Lcom/autonavi/navigation/api/map/internal/h;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/MapFragment;->a:Lcom/autonavi/navigation/api/map/internal/h;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/h;->d()V

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    invoke-static {p1, p2}, Lcom/autonavi/navigation/api/map/AnMapOptions;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/autonavi/navigation/api/map/AnMapOptions;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz v0, :cond_0

    const-string v2, "KEY_MAP_OPTIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/MapFragment;->a:Lcom/autonavi/navigation/api/map/internal/h;

    invoke-interface {v0, p1, v1, p3}, Lcom/autonavi/navigation/api/map/internal/h;->a(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/MapFragment;->a:Lcom/autonavi/navigation/api/map/internal/h;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/h;->e()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/MapFragment;->a:Lcom/autonavi/navigation/api/map/internal/h;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/h;->c()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/MapFragment;->a:Lcom/autonavi/navigation/api/map/internal/h;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/h;->b()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/MapFragment;->a:Lcom/autonavi/navigation/api/map/internal/h;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/h;->b(Landroid/os/Bundle;)V

    return-void
.end method
