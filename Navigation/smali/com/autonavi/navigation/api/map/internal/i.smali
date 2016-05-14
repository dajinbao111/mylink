.class public Lcom/autonavi/navigation/api/map/internal/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/map/internal/h;


# instance fields
.field private final a:Lcom/autonavi/navigation/api/map/internal/v;

.field private final b:Landroid/support/v4/app/Fragment;

.field private c:Lcom/autonavi/navigation/api/map/AnMapOptions;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/i;->b:Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/i;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "KEY_MAP_OPTIONS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/AnMapOptions;

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/i;->c:Lcom/autonavi/navigation/api/map/AnMapOptions;

    :cond_0
    new-instance v0, Lcom/autonavi/navigation/api/map/internal/p;

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/navigation/api/internal/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/i;->c:Lcom/autonavi/navigation/api/map/AnMapOptions;

    invoke-direct {v0, v1, v2}, Lcom/autonavi/navigation/api/map/internal/p;-><init>(Landroid/content/Context;Lcom/autonavi/navigation/api/map/AnMapOptions;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/i;->a:Lcom/autonavi/navigation/api/map/internal/v;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/i;->a:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/autonavi/navigation/api/map/internal/a;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/i;->a:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->a()Lcom/autonavi/navigation/api/map/internal/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "KEY_MAP_OPTIONS"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KEY_MAP_OPTIONS"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/AnMapOptions;

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/i;->c:Lcom/autonavi/navigation/api/map/AnMapOptions;

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/i;->a:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/i;->a:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->U()V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/i;->a:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/i;->a:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->V()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/i;->a:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->W()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/i;->a:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->X()V

    return-void
.end method
