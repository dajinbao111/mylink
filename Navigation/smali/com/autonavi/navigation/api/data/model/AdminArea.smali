.class public Lcom/autonavi/navigation/api/data/model/AdminArea;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final CITY_LEVEL:I = 0x3

.field public static final COUNTRY_LEVEL:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

.field public static final PROVICE_LEVEL:I = 0x1

.field public static final TOWN_LEVEL:I = 0x4


# instance fields
.field private a:Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;

.field public final adminCode:I

.field public final children:Ljava/util/List;

.field public final name:Ljava/lang/String;

.field public final spell:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/data/model/AdminArea$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/data/model/AdminArea$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/data/model/AdminArea;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/autonavi/navigation/api/data/model/AdminArea$2;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/data/model/AdminArea$2;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/data/model/AdminArea;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/autonavi/navigation/api/data/model/AdminArea;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/autonavi/navigation/api/data/model/AdminArea;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/navigation/api/data/model/AdminArea;->adminCode:I

    iput-object p2, p0, Lcom/autonavi/navigation/api/data/model/AdminArea;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/autonavi/navigation/api/data/model/AdminArea;->spell:Ljava/lang/String;

    iput-object p4, p0, Lcom/autonavi/navigation/api/data/model/AdminArea;->children:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdminAreaDetail()Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/data/model/AdminArea;->a:Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getDataManagerDelegate()Lcom/autonavi/navigation/api/data/a/b;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/navigation/api/data/model/AdminArea;->adminCode:I

    invoke-interface {v0, v1}, Lcom/autonavi/navigation/api/data/a/b;->e(I)Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/data/model/AdminArea;->a:Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/data/model/AdminArea;->a:Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;

    return-object v0
.end method

.method public setEnabled(Z)Z
    .locals 2

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getDataManagerDelegate()Lcom/autonavi/navigation/api/data/a/b;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/navigation/api/data/model/AdminArea;->adminCode:I

    invoke-interface {v0, v1, p1}, Lcom/autonavi/navigation/api/data/a/b;->a(IZ)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adminCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/autonavi/navigation/api/data/model/AdminArea;->adminCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/data/model/AdminArea;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "spell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/data/model/AdminArea;->spell:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/data/model/AdminArea;->adminCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/data/model/AdminArea;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/data/model/AdminArea;->spell:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/data/model/AdminArea;->children:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/data/model/AdminArea;->adminCode:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/data/model/AdminArea;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/data/model/AdminArea;->spell:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/data/model/AdminArea;->children:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelableList(Ljava/util/List;)V

    return-void
.end method
