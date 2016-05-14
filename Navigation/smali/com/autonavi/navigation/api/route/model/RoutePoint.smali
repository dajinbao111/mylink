.class public Lcom/autonavi/navigation/api/route/model/RoutePoint;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final AVAILABLE:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final FAR_AWAY_FROM_ROAD:I = -0x3

.field public static final IS_PASSED:I = 0x1

.field public static final MULTIPLE_BINDING_ROADS:I = -0x5

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

.field public static final OUT_OF_RANGE:I = -0x2

.field public static final TOO_CLOSE:I = -0x4

.field public static final UNAVAILABLE:I = -0x1


# instance fields
.field private final a:Lcom/autonavi/navigation/api/poi/model/Poi;

.field private final b:Ljava/util/List;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/route/model/RoutePoint$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/route/model/RoutePoint$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/RoutePoint;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/autonavi/navigation/api/route/model/RoutePoint$2;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/route/model/RoutePoint$2;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/RoutePoint;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/navigation/api/poi/model/Poi;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/autonavi/navigation/api/route/model/RoutePoint;-><init>(Lcom/autonavi/navigation/api/poi/model/Poi;Ljava/util/List;I)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/navigation/api/poi/model/Poi;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/navigation/api/route/model/RoutePoint;->a:Lcom/autonavi/navigation/api/poi/model/Poi;

    iput p3, p0, Lcom/autonavi/navigation/api/route/model/RoutePoint;->c:I

    iput-object p2, p0, Lcom/autonavi/navigation/api/route/model/RoutePoint;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    iget-object v1, p0, Lcom/autonavi/navigation/api/route/model/RoutePoint;->a:Lcom/autonavi/navigation/api/poi/model/Poi;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/navigation/api/route/model/RoutePoint;->a:Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v2, p1, Lcom/autonavi/navigation/api/route/model/RoutePoint;->a:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/poi/model/Poi;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/navigation/api/route/model/RoutePoint;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/navigation/api/route/model/RoutePoint;->b:Ljava/util/List;

    iget-object v2, p1, Lcom/autonavi/navigation/api/route/model/RoutePoint;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/autonavi/navigation/api/route/model/RoutePoint;->c:I

    iget v2, p1, Lcom/autonavi/navigation/api/route/model/RoutePoint;->c:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBindingRoads()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/RoutePoint;->b:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/autonavi/navigation/api/route/model/RoutePoint;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getPoi()Lcom/autonavi/navigation/api/poi/model/Poi;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/RoutePoint;->a:Lcom/autonavi/navigation/api/poi/model/Poi;

    return-object v0
.end method

.method public getValidity()I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/RoutePoint;->c:I

    return v0
.end method

.method public selectBindingRoad(I)V
    .locals 2

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/RoutePoint;->c:I

    const/4 v1, -0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "No multiple roads!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/RoutePoint;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Road;

    iget-object v1, p0, Lcom/autonavi/navigation/api/route/model/RoutePoint;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/autonavi/navigation/api/route/model/RoutePoint;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/navigation/api/route/model/RoutePoint;->c:I

    return-void
.end method

.method public selectBindingRoad(Lcom/autonavi/navigation/api/route/model/Road;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/RoutePoint;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The road is not in the list!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->selectBindingRoad(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/route/model/RoutePoint;->a:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/poi/model/Poi;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", validity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/navigation/api/route/model/RoutePoint;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/RoutePoint;->a:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/RoutePoint;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/RoutePoint;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/RoutePoint;->a:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/RoutePoint;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelableList(Ljava/util/List;)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/RoutePoint;->c:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    return-void
.end method
