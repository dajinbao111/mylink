.class public final Lcom/autonavi/navigation/api/route/model/Route;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;


# instance fields
.field public final end:Lcom/autonavi/navigation/api/route/model/RoutePoint;

.field public final existDetourable:Z

.field public final id:J

.field public final rule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

.field public final start:Lcom/autonavi/navigation/api/route/model/RoutePoint;

.field public final totalArrivalTime:I

.field public final totalCharge:I

.field public final totalChargeDistance:I

.field public final totalCircleDistance:I

.field public final totalDistance:I

.field public final totalHighDistance:I

.field public final totalHighwayDistance:I

.field public final totalLowDistance:I

.field public final totalMidDistance:I

.field public final totalTollGate:I

.field public final totalTrafficLight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/route/model/Route$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/route/model/Route$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/Route;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/autonavi/navigation/api/route/model/Route$2;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/route/model/Route$2;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/Route;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method public constructor <init>(JIIIIIIIIIIILcom/autonavi/navigation/api/route/model/CalculationRule;ZLcom/autonavi/navigation/api/route/model/RoutePoint;Lcom/autonavi/navigation/api/route/model/RoutePoint;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/autonavi/navigation/api/route/model/Route;->id:J

    iput p3, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalDistance:I

    iput p4, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalChargeDistance:I

    iput p5, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalHighwayDistance:I

    iput p6, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalCircleDistance:I

    iput p7, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalHighDistance:I

    iput p8, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalMidDistance:I

    iput p9, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalLowDistance:I

    iput p10, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalCharge:I

    iput p11, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalTollGate:I

    iput p12, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalTrafficLight:I

    iput p13, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalArrivalTime:I

    iput-object p14, p0, Lcom/autonavi/navigation/api/route/model/Route;->rule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->existDetourable:Z

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->start:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->end:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/autonavi/navigation/api/route/model/Route;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/autonavi/navigation/api/route/model/Route;

    iget-wide v0, p1, Lcom/autonavi/navigation/api/route/model/Route;->id:J

    iget-wide v2, p0, Lcom/autonavi/navigation/api/route/model/Route;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRouteSteps()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getRouteManagerDelegate()Lcom/autonavi/navigation/api/route/a/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/autonavi/navigation/api/route/a/d;->a(Lcom/autonavi/navigation/api/route/model/Route;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWaypoints()Ljava/util/List;
    .locals 2

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getRouteManagerDelegate()Lcom/autonavi/navigation/api/route/a/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/autonavi/navigation/api/route/a/d;->d(Lcom/autonavi/navigation/api/route/model/Route;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public remove()V
    .locals 1

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getRouteManagerDelegate()Lcom/autonavi/navigation/api/route/a/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/autonavi/navigation/api/route/a/d;->c(Lcom/autonavi/navigation/api/route/model/Route;)Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalDistance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalChargeDistance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalHighwayDistance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalCircleDistance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalHighDistance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalMidDistance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalLowDistance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalCharge:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalTollGate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalTrafficLight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalArrivalTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->rule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->start:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->end:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->id:J

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeLong(J)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalDistance:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalChargeDistance:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalHighwayDistance:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalCircleDistance:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalHighDistance:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalMidDistance:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalLowDistance:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalCharge:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalTollGate:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalTrafficLight:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->totalArrivalTime:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->rule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->start:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/Route;->end:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable;)V

    return-void
.end method
