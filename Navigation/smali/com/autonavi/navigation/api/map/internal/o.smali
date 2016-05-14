.class public Lcom/autonavi/navigation/api/map/internal/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/map/internal/n;


# instance fields
.field private final a:Lcom/autonavi/navigation/api/map/internal/v;

.field private final b:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/autonavi/navigation/api/map/AnMapOptions;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/o;->b:Landroid/view/ViewGroup;

    new-instance v0, Lcom/autonavi/navigation/api/map/internal/p;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/autonavi/navigation/api/map/internal/p;-><init>(Landroid/content/Context;Lcom/autonavi/navigation/api/map/AnMapOptions;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/o;->a:Lcom/autonavi/navigation/api/map/internal/v;

    return-void
.end method


# virtual methods
.method public a()Lcom/autonavi/navigation/api/map/internal/a;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/o;->a:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->a()Lcom/autonavi/navigation/api/map/internal/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/o;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/o;->a:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v1}, Lcom/autonavi/navigation/api/map/internal/v;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/o;->a:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/o;->a:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->U()V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/o;->a:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/v;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/o;->a:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->V()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/o;->a:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->W()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/o;->a:Lcom/autonavi/navigation/api/map/internal/v;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/v;->X()V

    return-void
.end method
