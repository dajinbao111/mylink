.class public final Lcom/autonavi/navigation/api/map/model/MarkerOptions;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/autonavi/navigation/api/map/model/MarkerOptions$a;


# instance fields
.field private a:Lcom/autonavi/navigation/api/map/model/LatLng;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

.field private e:F

.field private f:F

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/autonavi/navigation/api/map/model/MarkerOptions$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/map/model/MarkerOptions$a;-><init>(Lcom/autonavi/navigation/api/map/model/MarkerOptions$1;)V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->CREATOR:Lcom/autonavi/navigation/api/map/model/MarkerOptions$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->e:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->f:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->h:Z

    return-void
.end method


# virtual methods
.method public anchor(FF)Lcom/autonavi/navigation/api/map/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->e:F

    iput p2, p0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->f:F

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public draggable(Z)Lcom/autonavi/navigation/api/map/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->g:Z

    return-object p0
.end method

.method public getAnchorU()F
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->e:F

    return v0
.end method

.method public getAnchorV()F
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->f:F

    return v0
.end method

.method public getIcon()Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->d:Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/navigation/api/map/model/BitmapDescriptorFactory;->defaultMarker()Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->d:Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->d:Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    return-object v0
.end method

.method public getPosition()Lcom/autonavi/navigation/api/map/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->a:Lcom/autonavi/navigation/api/map/model/LatLng;

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->b:Ljava/lang/String;

    return-object v0
.end method

.method public icon(Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;)Lcom/autonavi/navigation/api/map/model/MarkerOptions;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->d:Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    return-object p0
.end method

.method public isDraggable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->g:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->h:Z

    return v0
.end method

.method public position(Lcom/autonavi/navigation/api/map/model/LatLng;)Lcom/autonavi/navigation/api/map/model/MarkerOptions;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->a:Lcom/autonavi/navigation/api/map/model/LatLng;

    return-object p0
.end method

.method public snippet(Ljava/lang/String;)Lcom/autonavi/navigation/api/map/model/MarkerOptions;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->c:Ljava/lang/String;

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/autonavi/navigation/api/map/model/MarkerOptions;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->b:Ljava/lang/String;

    return-object p0
.end method

.method public visible(Z)Lcom/autonavi/navigation/api/map/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->h:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->a:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->d:Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->e:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->f:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    const/4 v0, 0x2

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->h:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/autonavi/navigation/api/map/model/MarkerOptions;->g:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void
.end method
