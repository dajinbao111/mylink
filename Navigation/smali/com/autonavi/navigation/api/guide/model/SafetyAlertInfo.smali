.class public Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;


# instance fields
.field public alertSafeties:[Lcom/autonavi/navigation/api/guide/model/SafetyData;

.field public displaySafeties:[Lcom/autonavi/navigation/api/guide/model/SafetyData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo$2;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo$2;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method public constructor <init>([Lcom/autonavi/navigation/api/guide/model/SafetyData;[Lcom/autonavi/navigation/api/guide/model/SafetyData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo;->alertSafeties:[Lcom/autonavi/navigation/api/guide/model/SafetyData;

    iput-object p2, p0, Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo;->displaySafeties:[Lcom/autonavi/navigation/api/guide/model/SafetyData;

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

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo;->alertSafeties:[Lcom/autonavi/navigation/api/guide/model/SafetyData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo;->displaySafeties:[Lcom/autonavi/navigation/api/guide/model/SafetyData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo;->alertSafeties:[Lcom/autonavi/navigation/api/guide/model/SafetyData;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelableArray([Lcom/autonavi/navigation/api/internal/NativeParcelable;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo;->displaySafeties:[Lcom/autonavi/navigation/api/guide/model/SafetyData;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelableArray([Lcom/autonavi/navigation/api/internal/NativeParcelable;)V

    return-void
.end method
