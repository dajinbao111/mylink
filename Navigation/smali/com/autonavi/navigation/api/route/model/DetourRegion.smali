.class public Lcom/autonavi/navigation/api/route/model/DetourRegion;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;
.implements Lcom/autonavi/navigation/api/route/Detourable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;


# instance fields
.field public detourOption:Lcom/autonavi/navigation/api/route/model/DetourOption;

.field public endTime:J

.field public halfWidth:I

.field public id:I

.field public location:Lcom/autonavi/navigation/api/map/model/LatLng;

.field public name:Ljava/lang/String;

.field public startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/route/model/DetourRegion$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/route/model/DetourRegion$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/autonavi/navigation/api/route/model/DetourRegion$2;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/route/model/DetourRegion$2;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/route/model/DetourOption;JJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->id:I

    iput p2, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->halfWidth:I

    iput-object p3, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->location:Lcom/autonavi/navigation/api/map/model/LatLng;

    iput-object p4, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->detourOption:Lcom/autonavi/navigation/api/route/model/DetourOption;

    iput-wide p5, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->startTime:J

    iput-wide p7, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->endTime:J

    iput-object p9, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/route/model/DetourOption;JJLjava/lang/String;)V
    .locals 10

    const/4 v1, -0x1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/autonavi/navigation/api/route/model/DetourRegion;-><init>(IILcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/route/model/DetourOption;JJLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/navigation/api/route/model/DetourRegion;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/autonavi/navigation/api/route/model/DetourRegion;->id:I

    iput v0, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->id:I

    iget v0, p1, Lcom/autonavi/navigation/api/route/model/DetourRegion;->halfWidth:I

    iput v0, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->halfWidth:I

    iget-object v0, p1, Lcom/autonavi/navigation/api/route/model/DetourRegion;->location:Lcom/autonavi/navigation/api/map/model/LatLng;

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->location:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget-object v0, p1, Lcom/autonavi/navigation/api/route/model/DetourRegion;->detourOption:Lcom/autonavi/navigation/api/route/model/DetourOption;

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->detourOption:Lcom/autonavi/navigation/api/route/model/DetourOption;

    iget-wide v0, p1, Lcom/autonavi/navigation/api/route/model/DetourRegion;->startTime:J

    iput-wide v0, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->startTime:J

    iget-wide v0, p1, Lcom/autonavi/navigation/api/route/model/DetourRegion;->endTime:J

    iput-wide v0, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->endTime:J

    iget-object v0, p1, Lcom/autonavi/navigation/api/route/model/DetourRegion;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->halfWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->location:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->detourOption:Lcom/autonavi/navigation/api/route/model/DetourOption;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/DetourOption;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 2

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->id:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->halfWidth:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->location:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->detourOption:Lcom/autonavi/navigation/api/route/model/DetourOption;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/DetourOption;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->startTime:J

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->endTime:J

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeLong(J)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/DetourRegion;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
