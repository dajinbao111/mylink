.class public Lcom/autonavi/navigation/api/guide/model/SafetyData;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;


# instance fields
.field public distance:I

.field public point:Lcom/autonavi/navigation/api/map/model/LatLng;

.field public speed:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/guide/model/SafetyData$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/guide/model/SafetyData$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/guide/model/SafetyData;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/autonavi/navigation/api/guide/model/SafetyData$2;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/guide/model/SafetyData$2;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/guide/model/SafetyData;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILcom/autonavi/navigation/api/map/model/LatLng;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/navigation/api/guide/model/SafetyData;->type:I

    iput p2, p0, Lcom/autonavi/navigation/api/guide/model/SafetyData;->speed:I

    iput-object p3, p0, Lcom/autonavi/navigation/api/guide/model/SafetyData;->point:Lcom/autonavi/navigation/api/map/model/LatLng;

    iput p4, p0, Lcom/autonavi/navigation/api/guide/model/SafetyData;->distance:I

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

    iget v0, p0, Lcom/autonavi/navigation/api/guide/model/SafetyData;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/guide/model/SafetyData;->speed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/model/SafetyData;->point:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/autonavi/navigation/api/guide/model/SafetyData;->distance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/guide/model/SafetyData;->type:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/guide/model/SafetyData;->speed:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/model/SafetyData;->point:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable;)V

    iget v0, p0, Lcom/autonavi/navigation/api/guide/model/SafetyData;->distance:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    return-void
.end method
