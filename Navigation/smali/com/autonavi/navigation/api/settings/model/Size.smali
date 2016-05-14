.class public Lcom/autonavi/navigation/api/settings/model/Size;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public height:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/settings/model/Size$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/settings/model/Size$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/settings/model/Size;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/navigation/api/settings/model/Size;->width:I

    iput p2, p0, Lcom/autonavi/navigation/api/settings/model/Size;->height:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(II)Z
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/settings/model/Size;->width:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/autonavi/navigation/api/settings/model/Size;->height:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/autonavi/navigation/api/settings/model/Size;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/autonavi/navigation/api/settings/model/Size;

    iget v1, p0, Lcom/autonavi/navigation/api/settings/model/Size;->width:I

    iget v2, p1, Lcom/autonavi/navigation/api/settings/model/Size;->width:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/autonavi/navigation/api/settings/model/Size;->height:I

    iget v2, p1, Lcom/autonavi/navigation/api/settings/model/Size;->height:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Size("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autonavi/navigation/api/settings/model/Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autonavi/navigation/api/settings/model/Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/settings/model/Size;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/settings/model/Size;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
