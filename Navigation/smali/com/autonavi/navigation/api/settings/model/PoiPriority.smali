.class public Lcom/autonavi/navigation/api/settings/model/PoiPriority;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public id:I

.field public index:I

.field public isChecked:Z

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/settings/model/PoiPriority$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/settings/model/PoiPriority$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/settings/model/PoiPriority;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/navigation/api/settings/model/PoiPriority;->index:I

    iput p2, p0, Lcom/autonavi/navigation/api/settings/model/PoiPriority;->id:I

    iput-boolean p3, p0, Lcom/autonavi/navigation/api/settings/model/PoiPriority;->isChecked:Z

    iput-object p4, p0, Lcom/autonavi/navigation/api/settings/model/PoiPriority;->name:Ljava/lang/String;

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

    iget v0, p0, Lcom/autonavi/navigation/api/settings/model/PoiPriority;->index:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/settings/model/PoiPriority;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/settings/model/PoiPriority;->isChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/model/PoiPriority;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method