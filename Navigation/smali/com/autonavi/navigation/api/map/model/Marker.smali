.class public final Lcom/autonavi/navigation/api/map/model/Marker;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# instance fields
.field private a:Lcom/autonavi/navigation/api/map/model/LatLng;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

.field private e:F

.field private f:F

.field private g:Z

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/autonavi/navigation/api/map/model/Marker;->e:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/autonavi/navigation/api/map/model/Marker;->f:F

    iput-boolean v1, p0, Lcom/autonavi/navigation/api/map/model/Marker;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/map/model/Marker;->h:Z

    iput v1, p0, Lcom/autonavi/navigation/api/map/model/Marker;->i:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAnchorU()F
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/Marker;->e:F

    return v0
.end method

.method public getAnchorV()F
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/Marker;->f:F

    return v0
.end method

.method public getIcon()Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/Marker;->d:Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/navigation/api/map/model/BitmapDescriptorFactory;->defaultMarker()Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/model/Marker;->d:Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/Marker;->d:Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/Marker;->i:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/Marker;->a:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/model/LatLng;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/autonavi/navigation/api/map/model/Marker;->i:I

    :cond_0
    iget v0, p0, Lcom/autonavi/navigation/api/map/model/Marker;->i:I

    return v0
.end method

.method public getPosition()Lcom/autonavi/navigation/api/map/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/Marker;->a:Lcom/autonavi/navigation/api/map/model/LatLng;

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/Marker;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/Marker;->b:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDraggable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/model/Marker;->g:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/model/Marker;->h:Z

    return v0
.end method

.method public remove()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/Marker;->d:Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/Marker;->d:Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/autonavi/navigation/api/map/model/Marker;->d:Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    :cond_0
    iput-object v1, p0, Lcom/autonavi/navigation/api/map/model/Marker;->a:Lcom/autonavi/navigation/api/map/model/LatLng;

    return-void
.end method

.method public setAnchor(FF)V
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/map/model/Marker;->e:F

    iput p2, p0, Lcom/autonavi/navigation/api/map/model/Marker;->f:F

    return-void
.end method

.method public setDraggable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/navigation/api/map/model/Marker;->g:Z

    return-void
.end method

.method public setIcon(Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/model/Marker;->d:Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    return-void
.end method

.method public setPosition(Lcom/autonavi/navigation/api/map/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/model/Marker;->a:Lcom/autonavi/navigation/api/map/model/LatLng;

    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/model/Marker;->c:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/model/Marker;->b:Ljava/lang/String;

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/navigation/api/map/model/Marker;->h:Z

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/Marker;->a:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable;)V

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/model/Marker;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/model/Marker;->getIcon()Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
