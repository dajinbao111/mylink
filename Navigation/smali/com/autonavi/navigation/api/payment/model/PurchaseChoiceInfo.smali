.class public Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final d:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:[Lcom/autonavi/navigation/api/payment/model/PlanInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo$2;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo$2;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;->d:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lcom/autonavi/navigation/api/payment/model/PlanInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;->c:[Lcom/autonavi/navigation/api/payment/model/PlanInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QRcodePurchaseChoice [state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;->c:[Lcom/autonavi/navigation/api/payment/model/PlanInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;->c:[Lcom/autonavi/navigation/api/payment/model/PlanInfo;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "]"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;->c:[Lcom/autonavi/navigation/api/payment/model/PlanInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;->c:[Lcom/autonavi/navigation/api/payment/model/PlanInfo;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelableArray([Lcom/autonavi/navigation/api/internal/NativeParcelable;)V

    return-void
.end method
