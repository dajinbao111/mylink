.class public Lcom/autonavi/navigation/api/route/model/RouteCityArrivalTime;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final NAVI_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;


# instance fields
.field public adminCode:I

.field public arrivalTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/route/model/RouteCityArrivalTime$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/route/model/RouteCityArrivalTime$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/RouteCityArrivalTime;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/autonavi/navigation/api/route/model/RouteCityArrivalTime$2;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/route/model/RouteCityArrivalTime$2;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/RouteCityArrivalTime;->NAVI_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/navigation/api/route/model/RouteCityArrivalTime;->adminCode:I

    iput p2, p0, Lcom/autonavi/navigation/api/route/model/RouteCityArrivalTime;->arrivalTime:I

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

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/RouteCityArrivalTime;->adminCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/RouteCityArrivalTime;->arrivalTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/RouteCityArrivalTime;->adminCode:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/RouteCityArrivalTime;->arrivalTime:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    return-void
.end method
