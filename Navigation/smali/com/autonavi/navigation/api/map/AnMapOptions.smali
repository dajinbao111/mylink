.class public final Lcom/autonavi/navigation/api/map/AnMapOptions;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/autonavi/navigation/api/map/AnMapOptions$AMapOptionsCreator;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lcom/autonavi/navigation/api/map/model/CameraPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/map/AnMapOptions$AMapOptionsCreator;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/map/AnMapOptions$AMapOptionsCreator;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/map/AnMapOptions;->CREATOR:Lcom/autonavi/navigation/api/map/AnMapOptions$AMapOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->a:Z

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->b:Z

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->c:Z

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->d:Z

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->e:Z

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->f:Z

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->g:Z

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->h:Z

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->i:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->j:Z

    return-void
.end method

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/autonavi/navigation/api/map/AnMapOptions;
    .locals 8

    const/16 v7, 0xb

    const/16 v6, 0x8

    const/4 v5, 0x6

    const/16 v4, 0xa

    const/4 v3, 0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/autonavi/navigation/api/R$styleable;->MapAttrs:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    new-instance v0, Lcom/autonavi/navigation/api/map/AnMapOptions;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/map/AnMapOptions;-><init>()V

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/autonavi/navigation/api/map/AnMapOptions;->setViewModeControlsEnabled(Z)Lcom/autonavi/navigation/api/map/AnMapOptions;

    :cond_1
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/autonavi/navigation/api/map/AnMapOptions;->setRotateGesturesEnabled(Z)Lcom/autonavi/navigation/api/map/AnMapOptions;

    :cond_2
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/autonavi/navigation/api/map/AnMapOptions;->setScrollGesturesEnabled(Z)Lcom/autonavi/navigation/api/map/AnMapOptions;

    :cond_3
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/autonavi/navigation/api/map/AnMapOptions;->setTiltGesturesEnabled(Z)Lcom/autonavi/navigation/api/map/AnMapOptions;

    :cond_4
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v7, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/autonavi/navigation/api/map/AnMapOptions;->setZoomGesturesEnabled(Z)Lcom/autonavi/navigation/api/map/AnMapOptions;

    :cond_5
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/autonavi/navigation/api/map/AnMapOptions;->setZoomControlsEnabled(Z)Lcom/autonavi/navigation/api/map/AnMapOptions;

    :cond_6
    invoke-static {p0, p1}, Lcom/autonavi/navigation/api/map/model/CameraPosition;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/autonavi/navigation/api/map/AnMapOptions;->setCameraPosition(Lcom/autonavi/navigation/api/map/model/CameraPosition;)Lcom/autonavi/navigation/api/map/AnMapOptions;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCameraPosition()Lcom/autonavi/navigation/api/map/model/CameraPosition;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->k:Lcom/autonavi/navigation/api/map/model/CameraPosition;

    return-object v0
.end method

.method public getZOrderOnTop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->j:Z

    return v0
.end method

.method public isAllGesturesEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->i:Z

    return v0
.end method

.method public isGpsAnnunciatorEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->h:Z

    return v0
.end method

.method public isRotateGesturesEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->a:Z

    return v0
.end method

.method public isScrollGesturesEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->b:Z

    return v0
.end method

.method public isTiltGesturesEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->c:Z

    return v0
.end method

.method public isViewModeControlsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->f:Z

    return v0
.end method

.method public isZoomControlsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->e:Z

    return v0
.end method

.method public isZoomGesturesEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->d:Z

    return v0
.end method

.method public isZoomLevelEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->g:Z

    return v0
.end method

.method public setAllGesturesEnabled(Z)Lcom/autonavi/navigation/api/map/AnMapOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->i:Z

    return-object p0
.end method

.method public setCameraPosition(Lcom/autonavi/navigation/api/map/model/CameraPosition;)Lcom/autonavi/navigation/api/map/AnMapOptions;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->k:Lcom/autonavi/navigation/api/map/model/CameraPosition;

    return-object p0
.end method

.method public setGpsAnnunciatorEnabled(Z)Lcom/autonavi/navigation/api/map/AnMapOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->h:Z

    return-object p0
.end method

.method public setRotateGesturesEnabled(Z)Lcom/autonavi/navigation/api/map/AnMapOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->a:Z

    return-object p0
.end method

.method public setScrollGesturesEnabled(Z)Lcom/autonavi/navigation/api/map/AnMapOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->b:Z

    return-object p0
.end method

.method public setTiltGesturesEnabled(Z)Lcom/autonavi/navigation/api/map/AnMapOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->c:Z

    return-object p0
.end method

.method public setViewModeControlsEnabled(Z)Lcom/autonavi/navigation/api/map/AnMapOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->f:Z

    return-object p0
.end method

.method public setZoomControlsEnabled(Z)Lcom/autonavi/navigation/api/map/AnMapOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->e:Z

    return-object p0
.end method

.method public setZoomGesturesEnabled(Z)Lcom/autonavi/navigation/api/map/AnMapOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->d:Z

    return-object p0
.end method

.method public setZoomLevelEnabled(Z)Lcom/autonavi/navigation/api/map/AnMapOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->g:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->k:Lcom/autonavi/navigation/api/map/model/CameraPosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    const/4 v0, 0x7

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->a:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->b:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->c:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->d:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->e:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->f:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->g:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void
.end method

.method public zOrderOnTop(Z)Lcom/autonavi/navigation/api/map/AnMapOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/navigation/api/map/AnMapOptions;->j:Z

    return-object p0
.end method
