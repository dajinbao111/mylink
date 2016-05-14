.class public Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

.field public static final STATUS_BUSY:I = 0x2

.field public static final STATUS_CONGEST:I = 0x4

.field public static final STATUS_FREE:I = 0x1

.field public static final STATUS_NOFLOW:I = 0x7

.field public static final STATUS_SLOW:I = 0x3

.field public static final STATUS_STATIONARY:I = 0x5

.field public static final STATUS_UNKNOWN:I = 0x6


# instance fields
.field public delayTime:I

.field public distanceFromStart:I

.field public endIndex:I

.field public length:I

.field public roadNames:Ljava/lang/String;

.field public startIndex:I

.field public status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem$2;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem$2;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->startIndex:I

    iput p2, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->endIndex:I

    iput p3, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->distanceFromStart:I

    iput p4, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->length:I

    iput-object p5, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->roadNames:Ljava/lang/String;

    iput p6, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->status:I

    iput p7, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->delayTime:I

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

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->startIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->endIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->distanceFromStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->roadNames:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->delayTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->startIndex:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->endIndex:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->distanceFromStart:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->length:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->roadNames:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->status:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficFlowItem;->delayTime:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    return-void
.end method
