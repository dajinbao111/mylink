.class public Lcom/autonavi/navigation/api/poi/model/PoiCategory;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final CREATOR:Lcom/autonavi/navigation/api/poi/model/PoiCategory$a;

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;


# instance fields
.field private a:Ljava/util/List;

.field public final categoryIds:[I

.field public final id:I

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/autonavi/navigation/api/poi/model/PoiCategory$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/poi/model/PoiCategory$a;-><init>(Lcom/autonavi/navigation/api/poi/model/PoiCategory$1;)V

    sput-object v0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->CREATOR:Lcom/autonavi/navigation/api/poi/model/PoiCategory$a;

    new-instance v0, Lcom/autonavi/navigation/api/poi/model/PoiCategory$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/poi/model/PoiCategory$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method public constructor <init>([IILjava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->categoryIds:[I

    iput p2, p0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->id:I

    iput-object p3, p0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 2

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getPoiManagerDelegate()Lcom/autonavi/navigation/api/poi/a/c;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->id:I

    invoke-interface {v0, v1}, Lcom/autonavi/navigation/api/poi/a/c;->a(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->a:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->categoryIds:[I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->categoryIds:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->categoryIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    :cond_0
    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->categoryIds:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->categoryIds:[I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeIntArray([I)V

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->id:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelableList(Ljava/util/List;)V

    return-void
.end method
