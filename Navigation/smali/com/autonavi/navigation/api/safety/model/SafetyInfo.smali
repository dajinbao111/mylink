.class public Lcom/autonavi/navigation/api/safety/model/SafetyInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final CREATOR:Lcom/autonavi/navigation/api/safety/model/SafetyInfo$a;

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Lcom/autonavi/navigation/api/map/model/LatLng;

.field private d:I

.field private e:Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/safety/model/SafetyInfo$a;-><init>(Lcom/autonavi/navigation/api/safety/model/SafetyInfo$1;)V

    sput-object v0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->CREATOR:Lcom/autonavi/navigation/api/safety/model/SafetyInfo$a;

    new-instance v0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/safety/model/SafetyInfo$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/autonavi/navigation/api/map/model/LatLng;ILcom/autonavi/navigation/api/safety/model/SafetyCategory;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->a:J

    iput-object p3, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->c:Lcom/autonavi/navigation/api/map/model/LatLng;

    iput p5, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->d:I

    iput-object p6, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->e:Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    iput p7, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->f:I

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/navigation/api/safety/model/SafetyInfo;)V
    .locals 8

    iget-wide v1, p1, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->a:J

    iget-object v3, p1, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->b:Ljava/lang/String;

    iget-object v4, p1, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->c:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget v5, p1, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->d:I

    iget-object v6, p1, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->e:Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    iget v7, p1, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->f:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;-><init>(JLjava/lang/String;Lcom/autonavi/navigation/api/map/model/LatLng;ILcom/autonavi/navigation/api/safety/model/SafetyCategory;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/autonavi/navigation/api/map/model/LatLng;ILcom/autonavi/navigation/api/safety/model/SafetyCategory;I)V
    .locals 8

    const-wide/16 v1, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;-><init>(JLjava/lang/String;Lcom/autonavi/navigation/api/map/model/LatLng;ILcom/autonavi/navigation/api/safety/model/SafetyCategory;I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdminCode()I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->d:I

    return v0
.end method

.method public getCategory()Lcom/autonavi/navigation/api/safety/model/SafetyCategory;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->e:Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->a:J

    return-wide v0
.end method

.method public getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->c:Lcom/autonavi/navigation/api/map/model/LatLng;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()S
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->f:I

    int-to-short v0, v0

    return v0
.end method

.method public setAdminCode(I)Lcom/autonavi/navigation/api/safety/model/SafetyInfo;
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->d:I

    return-object p0
.end method

.method public setCategory(Lcom/autonavi/navigation/api/safety/model/SafetyCategory;)Lcom/autonavi/navigation/api/safety/model/SafetyInfo;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->e:Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    return-object p0
.end method

.method public setId(J)Lcom/autonavi/navigation/api/safety/model/SafetyInfo;
    .locals 0

    iput-wide p1, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->a:J

    return-object p0
.end method

.method public setLatLng(Lcom/autonavi/navigation/api/map/model/LatLng;)Lcom/autonavi/navigation/api/safety/model/SafetyInfo;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->c:Lcom/autonavi/navigation/api/map/model/LatLng;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/autonavi/navigation/api/safety/model/SafetyInfo;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setSpeed(I)Lcom/autonavi/navigation/api/safety/model/SafetyInfo;
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->f:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "latLng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->c:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "adminCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->e:Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->c:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->e:Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    iget v0, v0, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeLong(J)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->c:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable;)V

    iget v0, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->d:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->e:Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    iget v0, v0, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->value:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->f:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
