.class public Lcom/autonavi/navigation/api/poi/model/Poi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final CREATOR:Lcom/autonavi/navigation/api/poi/model/Poi$a;

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/poi/model/Poi$b;


# instance fields
.field private a:Lcom/autonavi/navigation/api/internal/ObjectId;

.field private b:Lcom/autonavi/navigation/api/map/model/LatLng;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/autonavi/navigation/api/poi/model/Poi$a;

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/poi/model/Poi$a;-><init>(Lcom/autonavi/navigation/api/poi/model/Poi$1;)V

    sput-object v0, Lcom/autonavi/navigation/api/poi/model/Poi;->CREATOR:Lcom/autonavi/navigation/api/poi/model/Poi$a;

    new-instance v0, Lcom/autonavi/navigation/api/poi/model/Poi$b;

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/poi/model/Poi$b;-><init>(Lcom/autonavi/navigation/api/poi/model/Poi$1;)V

    sput-object v0, Lcom/autonavi/navigation/api/poi/model/Poi;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/poi/model/Poi$b;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/navigation/api/internal/ObjectId;Lcom/autonavi/navigation/api/map/model/LatLng;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->a:Lcom/autonavi/navigation/api/internal/ObjectId;

    iput-object p2, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->b:Lcom/autonavi/navigation/api/map/model/LatLng;

    iput p3, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->g:I

    iput p4, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->h:I

    iput p5, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->k:I

    iput p6, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->c:I

    iput-object p7, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->d:Ljava/lang/String;

    iput-object p8, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->e:Ljava/lang/String;

    iput-object p9, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->f:Ljava/lang/String;

    iput p10, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->i:I

    iput p11, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->j:I

    iput p12, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->l:I

    iput p13, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->m:I

    iput p14, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->n:I

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/navigation/api/map/model/LatLng;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->b:Lcom/autonavi/navigation/api/map/model/LatLng;

    new-instance v0, Lcom/autonavi/navigation/api/internal/ObjectId;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/internal/ObjectId;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->a:Lcom/autonavi/navigation/api/internal/ObjectId;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/autonavi/navigation/api/map/model/LatLng;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/autonavi/navigation/api/internal/ObjectId;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/internal/ObjectId;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->a:Lcom/autonavi/navigation/api/internal/ObjectId;

    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->b:Lcom/autonavi/navigation/api/map/model/LatLng;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/autonavi/navigation/api/map/model/LatLng;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/autonavi/navigation/api/internal/ObjectId;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/internal/ObjectId;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->a:Lcom/autonavi/navigation/api/internal/ObjectId;

    iput-object p2, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->b:Lcom/autonavi/navigation/api/map/model/LatLng;

    iput p3, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->h:I

    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->f:Ljava/lang/String;

    iput p6, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->c:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/autonavi/navigation/api/poi/model/Poi;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v0, p1, Lcom/autonavi/navigation/api/poi/model/Poi;->b:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget-object v1, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->b:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/autonavi/navigation/api/poi/model/Poi;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getAdminCode()I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->c:I

    return v0
.end method

.method public getCategory()I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->g:I

    return v0
.end method

.method public getDistance()I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->h:I

    return v0
.end method

.method public getId()Lcom/autonavi/navigation/api/internal/ObjectId;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->a:Lcom/autonavi/navigation/api/internal/ObjectId;

    return-object v0
.end method

.method public getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->b:Lcom/autonavi/navigation/api/map/model/LatLng;

    return-object v0
.end method

.method public getMatchedLevel()I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->k:I

    return v0
.end method

.method public getMatchedMask()I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->m:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeId()I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->l:I

    return v0
.end method

.method public getOffsetLat()I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->j:I

    return v0
.end method

.method public getOffsetLng()I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->i:I

    return v0
.end method

.method public getTel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeMask()I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->n:I

    return v0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setAdminCode(I)Lcom/autonavi/navigation/api/poi/model/Poi;
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->c:I

    return-object p0
.end method

.method public setCategory(I)Lcom/autonavi/navigation/api/poi/model/Poi;
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->g:I

    return-object p0
.end method

.method public setDistance(I)Lcom/autonavi/navigation/api/poi/model/Poi;
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->h:I

    return-object p0
.end method

.method public setId(Lcom/autonavi/navigation/api/internal/ObjectId;)Lcom/autonavi/navigation/api/poi/model/Poi;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->a:Lcom/autonavi/navigation/api/internal/ObjectId;

    return-object p0
.end method

.method public setLatLng(Lcom/autonavi/navigation/api/map/model/LatLng;)Lcom/autonavi/navigation/api/poi/model/Poi;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->b:Lcom/autonavi/navigation/api/map/model/LatLng;

    return-object p0
.end method

.method public setMatchedLevel(I)Lcom/autonavi/navigation/api/poi/model/Poi;
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->k:I

    return-object p0
.end method

.method public setMatchedMask(I)Lcom/autonavi/navigation/api/poi/model/Poi;
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->m:I

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setNodeId(I)Lcom/autonavi/navigation/api/poi/model/Poi;
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->l:I

    return-object p0
.end method

.method public setOffsetLat(I)Lcom/autonavi/navigation/api/poi/model/Poi;
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->j:I

    return-object p0
.end method

.method public setOffsetLng(I)Lcom/autonavi/navigation/api/poi/model/Poi;
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->i:I

    return-object p0
.end method

.method public setTel(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->f:Ljava/lang/String;

    return-object p0
.end method

.method public setTypeMask(I)Lcom/autonavi/navigation/api/poi/model/Poi;
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->n:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", latLng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->b:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->a:Lcom/autonavi/navigation/api/internal/ObjectId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->b:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->a:Lcom/autonavi/navigation/api/internal/ObjectId;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->b:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable;)V

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->g:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->h:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->k:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->c:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->f:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->f:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->i:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->j:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->l:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->m:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/Poi;->n:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    return-void
.end method
