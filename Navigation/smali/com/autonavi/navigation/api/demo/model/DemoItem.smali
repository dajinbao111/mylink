.class public Lcom/autonavi/navigation/api/demo/model/DemoItem;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final CREATOR:Lcom/autonavi/navigation/api/demo/model/DemoItem$a;

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;


# instance fields
.field public final bearing:I

.field public final name:Ljava/lang/String;

.field public final spCode:Ljava/lang/String;

.field public final tilt:I

.field public final zoomLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/autonavi/navigation/api/demo/model/DemoItem$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/demo/model/DemoItem$a;-><init>(Lcom/autonavi/navigation/api/demo/model/DemoItem$1;)V

    sput-object v0, Lcom/autonavi/navigation/api/demo/model/DemoItem;->CREATOR:Lcom/autonavi/navigation/api/demo/model/DemoItem$a;

    new-instance v0, Lcom/autonavi/navigation/api/demo/model/DemoItem$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/demo/model/DemoItem$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/demo/model/DemoItem;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/navigation/api/demo/model/DemoItem;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/autonavi/navigation/api/demo/model/DemoItem;->spCode:Ljava/lang/String;

    iput p3, p0, Lcom/autonavi/navigation/api/demo/model/DemoItem;->zoomLevel:I

    iput p4, p0, Lcom/autonavi/navigation/api/demo/model/DemoItem;->tilt:I

    iput p5, p0, Lcom/autonavi/navigation/api/demo/model/DemoItem;->bearing:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/demo/model/DemoItem;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/demo/model/DemoItem;->spCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/autonavi/navigation/api/demo/model/DemoItem;->zoomLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/demo/model/DemoItem;->tilt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/demo/model/DemoItem;->bearing:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/demo/model/DemoItem;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/demo/model/DemoItem;->spCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/autonavi/navigation/api/demo/model/DemoItem;->zoomLevel:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/demo/model/DemoItem;->tilt:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/demo/model/DemoItem;->bearing:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    return-void
.end method
