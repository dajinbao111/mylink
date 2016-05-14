.class public Lcom/autonavi/navigation/api/map/internal/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/map/internal/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Message;
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    return-object v0
.end method

.method public a(I)Landroid/os/Message;
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    return-object v0
.end method

.method public a(II)Landroid/os/Message;
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    return-object v0
.end method

.method public a(Lcom/autonavi/navigation/api/map/model/CameraPosition;)Landroid/os/Message;
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Lcom/autonavi/navigation/api/map/model/LatLng;)Landroid/os/Message;
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/map/model/ZoomLevel;)Landroid/os/Message;
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;

    invoke-direct {v1}, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;->target(Lcom/autonavi/navigation/api/map/model/LatLng;)Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;->zoom(Lcom/autonavi/navigation/api/map/model/ZoomLevel;)Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;->build()Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Lcom/autonavi/navigation/api/map/model/MapMode;)Landroid/os/Message;
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Lcom/autonavi/navigation/api/map/model/ZoomLevel;)Landroid/os/Message;
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Landroid/os/Message;
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    return-object v0
.end method

.method public b(I)Landroid/os/Message;
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    return-object v0
.end method

.method public c()Landroid/os/Message;
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    return-object v0
.end method

.method public c(I)Landroid/os/Message;
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    return-object v0
.end method

.method public d(I)Landroid/os/Message;
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    return-object v0
.end method
