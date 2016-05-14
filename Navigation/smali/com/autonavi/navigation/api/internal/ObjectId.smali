.class public Lcom/autonavi/navigation/api/internal/ObjectId;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;


# instance fields
.field public adminAreaId:S

.field public layerId:Ljava/lang/Byte;

.field public meshId:I

.field public objectId:I

.field public reserve:Ljava/lang/Byte;

.field public taReserve:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/internal/ObjectId$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/internal/ObjectId$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/internal/ObjectId;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/autonavi/navigation/api/internal/ObjectId$2;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/internal/ObjectId$2;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/internal/ObjectId;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/ObjectId;->layerId:Ljava/lang/Byte;

    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/ObjectId;->reserve:Ljava/lang/Byte;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Byte;Ljava/lang/Byte;SIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/navigation/api/internal/ObjectId;->layerId:Ljava/lang/Byte;

    iput-object p2, p0, Lcom/autonavi/navigation/api/internal/ObjectId;->reserve:Ljava/lang/Byte;

    iput-short p3, p0, Lcom/autonavi/navigation/api/internal/ObjectId;->adminAreaId:S

    iput p4, p0, Lcom/autonavi/navigation/api/internal/ObjectId;->meshId:I

    iput p5, p0, Lcom/autonavi/navigation/api/internal/ObjectId;->objectId:I

    iput p6, p0, Lcom/autonavi/navigation/api/internal/ObjectId;->taReserve:I

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

    instance-of v0, p1, Lcom/autonavi/navigation/api/internal/ObjectId;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/autonavi/navigation/api/internal/ObjectId;

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/ObjectId;->layerId:Ljava/lang/Byte;

    iget-object v1, p1, Lcom/autonavi/navigation/api/internal/ObjectId;->layerId:Ljava/lang/Byte;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/ObjectId;->reserve:Ljava/lang/Byte;

    iget-object v1, p1, Lcom/autonavi/navigation/api/internal/ObjectId;->reserve:Ljava/lang/Byte;

    if-ne v0, v1, :cond_0

    iget-short v0, p0, Lcom/autonavi/navigation/api/internal/ObjectId;->adminAreaId:S

    iget-short v1, p1, Lcom/autonavi/navigation/api/internal/ObjectId;->adminAreaId:S

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/autonavi/navigation/api/internal/ObjectId;->meshId:I

    iget v1, p1, Lcom/autonavi/navigation/api/internal/ObjectId;->meshId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/autonavi/navigation/api/internal/ObjectId;->objectId:I

    iget v1, p1, Lcom/autonavi/navigation/api/internal/ObjectId;->objectId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/autonavi/navigation/api/internal/ObjectId;->taReserve:I

    iget v1, p1, Lcom/autonavi/navigation/api/internal/ObjectId;->taReserve:I

    if-ne v0, v1, :cond_0

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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/ObjectId;->layerId:Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/ObjectId;->reserve:Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-short v0, p0, Lcom/autonavi/navigation/api/internal/ObjectId;->adminAreaId:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/internal/ObjectId;->meshId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/internal/ObjectId;->objectId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/internal/ObjectId;->taReserve:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/ObjectId;->layerId:Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeByte(B)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/ObjectId;->reserve:Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeByte(B)V

    iget-short v0, p0, Lcom/autonavi/navigation/api/internal/ObjectId;->adminAreaId:S

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/internal/ObjectId;->meshId:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/internal/ObjectId;->objectId:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/internal/ObjectId;->taReserve:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    return-void
.end method
