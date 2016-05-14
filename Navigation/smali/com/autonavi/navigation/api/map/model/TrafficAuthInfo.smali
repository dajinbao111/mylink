.class public Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

.field public static final RESULT_EXCEPTION:I = 0x7d1

.field public static final RESULT_INVALID_PARAMETERS:I = 0x3eb

.field public static final RESULT_MAP_HAS_NOT_BEEN_ACTIVED:I = 0x3ec

.field public static final RESULT_PAYED_EXPIRED:I = 0x3ea

.field public static final RESULT_PAYED_FIRST_USE:I = 0x0

.field public static final RESULT_PAYED_LEFT_ONE_MONTH:I = 0x5

.field public static final RESULT_PAYED_NOT_FIRST_USE:I = 0x1

.field public static final RESULT_TMC_NOT_SUPPORT:I = 0x3ed

.field public static final RESULT_TRY_EXPIRED:I = 0x3e9

.field public static final RESULT_TRY_FOR_FIRST_TIME:I = 0x2

.field public static final RESULT_TRY_LEFT_ONE_MONTH:I = 0x4

.field public static final RESULT_TRY_NTO_FOR_FIRST_TIME:I = 0x3


# instance fields
.field public beginDate:Ljava/lang/String;

.field public endDate:Ljava/lang/String;

.field public remain:I

.field public result:I

.field public resultDesc:Ljava/lang/String;

.field public total:I

.field public used:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo$2;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo$2;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;->result:I

    iput-object p2, p0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;->resultDesc:Ljava/lang/String;

    iput p3, p0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;->total:I

    iput p4, p0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;->used:I

    iput p5, p0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;->remain:I

    iput-object p6, p0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;->beginDate:Ljava/lang/String;

    iput-object p7, p0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;->endDate:Ljava/lang/String;

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

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;->result:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;->resultDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;->total:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;->used:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;->remain:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;->beginDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;->endDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;->result:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;->resultDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;->total:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;->used:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;->remain:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;->beginDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;->endDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
