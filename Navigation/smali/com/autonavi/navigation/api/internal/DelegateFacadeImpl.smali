.class public final Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/internal/a/b;


# instance fields
.field private a:Lcom/autonavi/navigation/api/map/internal/l;

.field private b:Lcom/autonavi/navigation/api/track/a/a;

.field private c:Lcom/autonavi/navigation/api/safety/a/b;

.field private d:Lcom/autonavi/navigation/api/demo/a/b;

.field private e:Lcom/autonavi/navigation/api/favorite/a/b;

.field private f:Lcom/autonavi/navigation/api/register/a/b;

.field private g:Lcom/autonavi/navigation/api/location/a/c;

.field private h:Lcom/autonavi/navigation/api/poi/a/c;

.field private i:Lcom/autonavi/navigation/api/guide/a/c;

.field private j:Lcom/autonavi/navigation/api/route/a/d;

.field private k:Lcom/autonavi/navigation/api/settings/a/b;

.field private l:Lcom/autonavi/navigation/api/internal/a/d;

.field private m:Lcom/autonavi/navigation/api/data/a/b;

.field private n:Lcom/autonavi/navigation/api/internal/a/f;

.field private o:Lcom/autonavi/navigation/api/route/a/b;

.field private p:Lcom/autonavi/navigation/api/payment/a/b;

.field private q:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->q:Landroid/content/Context;

    return-object v0
.end method

.method public getDataManagerDelegate()Lcom/autonavi/navigation/api/data/a/b;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->m:Lcom/autonavi/navigation/api/data/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/data/a/c;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/data/a/c;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->m:Lcom/autonavi/navigation/api/data/a/b;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->m:Lcom/autonavi/navigation/api/data/a/b;

    return-object v0
.end method

.method public getDemoManagerDelegate()Lcom/autonavi/navigation/api/demo/a/b;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->d:Lcom/autonavi/navigation/api/demo/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/demo/a/c;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/demo/a/c;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->d:Lcom/autonavi/navigation/api/demo/a/b;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->d:Lcom/autonavi/navigation/api/demo/a/b;

    return-object v0
.end method

.method public getDetourRegionManagerDelegate()Lcom/autonavi/navigation/api/route/a/b;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->o:Lcom/autonavi/navigation/api/route/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/route/a/c;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/route/a/c;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->o:Lcom/autonavi/navigation/api/route/a/b;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->o:Lcom/autonavi/navigation/api/route/a/b;

    return-object v0
.end method

.method public getFavoriteManagerDelegate()Lcom/autonavi/navigation/api/favorite/a/b;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->e:Lcom/autonavi/navigation/api/favorite/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/favorite/a/c;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/favorite/a/c;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->e:Lcom/autonavi/navigation/api/favorite/a/b;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->e:Lcom/autonavi/navigation/api/favorite/a/b;

    return-object v0
.end method

.method public getGuideManagerDelegate()Lcom/autonavi/navigation/api/guide/a/c;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->i:Lcom/autonavi/navigation/api/guide/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/guide/a/d;

    iget-object v1, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->q:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/guide/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->i:Lcom/autonavi/navigation/api/guide/a/c;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->i:Lcom/autonavi/navigation/api/guide/a/c;

    return-object v0
.end method

.method public getLocationManagerDelegate()Lcom/autonavi/navigation/api/location/a/c;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->g:Lcom/autonavi/navigation/api/location/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/location/a/d;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/location/a/d;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->g:Lcom/autonavi/navigation/api/location/a/c;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->g:Lcom/autonavi/navigation/api/location/a/c;

    return-object v0
.end method

.method public getMainDelegate()Lcom/autonavi/navigation/api/internal/a/d;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->l:Lcom/autonavi/navigation/api/internal/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/internal/a/e;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/internal/a/e;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->l:Lcom/autonavi/navigation/api/internal/a/d;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->l:Lcom/autonavi/navigation/api/internal/a/d;

    return-object v0
.end method

.method public getMapManagerDelegate()Lcom/autonavi/navigation/api/map/internal/l;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->a:Lcom/autonavi/navigation/api/map/internal/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/map/internal/m;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/map/internal/m;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->a:Lcom/autonavi/navigation/api/map/internal/l;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->a:Lcom/autonavi/navigation/api/map/internal/l;

    return-object v0
.end method

.method public getPaymentManagerDelegate()Lcom/autonavi/navigation/api/payment/a/b;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->p:Lcom/autonavi/navigation/api/payment/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/payment/a/c;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/payment/a/c;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->p:Lcom/autonavi/navigation/api/payment/a/b;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->p:Lcom/autonavi/navigation/api/payment/a/b;

    return-object v0
.end method

.method public getPoiManagerDelegate()Lcom/autonavi/navigation/api/poi/a/c;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->h:Lcom/autonavi/navigation/api/poi/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/poi/a/d;

    iget-object v1, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->q:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/poi/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->h:Lcom/autonavi/navigation/api/poi/a/c;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->h:Lcom/autonavi/navigation/api/poi/a/c;

    return-object v0
.end method

.method public getRegisterManagerDelegate()Lcom/autonavi/navigation/api/register/a/b;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->f:Lcom/autonavi/navigation/api/register/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/register/a/c;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/register/a/c;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->f:Lcom/autonavi/navigation/api/register/a/b;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->f:Lcom/autonavi/navigation/api/register/a/b;

    return-object v0
.end method

.method public getRouteManagerDelegate()Lcom/autonavi/navigation/api/route/a/d;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->j:Lcom/autonavi/navigation/api/route/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/route/a/e;

    iget-object v1, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->q:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/route/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->j:Lcom/autonavi/navigation/api/route/a/d;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->j:Lcom/autonavi/navigation/api/route/a/d;

    return-object v0
.end method

.method public getSafetyManagerDelegate()Lcom/autonavi/navigation/api/safety/a/b;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->c:Lcom/autonavi/navigation/api/safety/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/safety/a/c;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/safety/a/c;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->c:Lcom/autonavi/navigation/api/safety/a/b;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->c:Lcom/autonavi/navigation/api/safety/a/b;

    return-object v0
.end method

.method public getSettingsDelegate()Lcom/autonavi/navigation/api/settings/a/b;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->k:Lcom/autonavi/navigation/api/settings/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/settings/a/c;

    iget-object v1, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->q:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/settings/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->k:Lcom/autonavi/navigation/api/settings/a/b;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->k:Lcom/autonavi/navigation/api/settings/a/b;

    return-object v0
.end method

.method public getTmcManagerDelegate()Lcom/autonavi/navigation/api/internal/a/f;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->n:Lcom/autonavi/navigation/api/internal/a/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/internal/a/g;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/internal/a/g;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->n:Lcom/autonavi/navigation/api/internal/a/f;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->n:Lcom/autonavi/navigation/api/internal/a/f;

    return-object v0
.end method

.method public getTrackManagerDelegate()Lcom/autonavi/navigation/api/track/a/a;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->b:Lcom/autonavi/navigation/api/track/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/track/a/b;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/track/a/b;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->b:Lcom/autonavi/navigation/api/track/a/a;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->b:Lcom/autonavi/navigation/api/track/a/a;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/DelegateFacadeImpl;->q:Landroid/content/Context;

    return-void
.end method
