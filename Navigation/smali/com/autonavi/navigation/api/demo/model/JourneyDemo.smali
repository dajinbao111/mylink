.class public Lcom/autonavi/navigation/api/demo/model/JourneyDemo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final CREATOR:Lcom/autonavi/navigation/api/demo/model/JourneyDemo$a;

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;


# instance fields
.field public final id:I

.field public final name:Ljava/lang/String;

.field public final start:Lcom/autonavi/navigation/api/map/model/LatLng;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/autonavi/navigation/api/demo/model/JourneyDemo$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/demo/model/JourneyDemo$a;-><init>(Lcom/autonavi/navigation/api/demo/model/JourneyDemo$1;)V

    sput-object v0, Lcom/autonavi/navigation/api/demo/model/JourneyDemo;->CREATOR:Lcom/autonavi/navigation/api/demo/model/JourneyDemo$a;

    new-instance v0, Lcom/autonavi/navigation/api/demo/model/JourneyDemo$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/demo/model/JourneyDemo$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/demo/model/JourneyDemo;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/autonavi/navigation/api/map/model/LatLng;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/navigation/api/demo/model/JourneyDemo;->id:I

    iput-object p2, p0, Lcom/autonavi/navigation/api/demo/model/JourneyDemo;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/autonavi/navigation/api/demo/model/JourneyDemo;->start:Lcom/autonavi/navigation/api/map/model/LatLng;

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

    iget v0, p0, Lcom/autonavi/navigation/api/demo/model/JourneyDemo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/demo/model/JourneyDemo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/demo/model/JourneyDemo;->start:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/demo/model/JourneyDemo;->id:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/demo/model/JourneyDemo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/demo/model/JourneyDemo;->start:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable;)V

    return-void
.end method
