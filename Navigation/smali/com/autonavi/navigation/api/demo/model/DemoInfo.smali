.class public Lcom/autonavi/navigation/api/demo/model/DemoInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;


# instance fields
.field public final adminName:Ljava/lang/String;

.field public final demoItems:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/demo/model/DemoInfo$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/demo/model/DemoInfo$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/demo/model/DemoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/autonavi/navigation/api/demo/model/DemoInfo$2;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/demo/model/DemoInfo$2;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/demo/model/DemoInfo;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/navigation/api/demo/model/DemoInfo;->adminName:Ljava/lang/String;

    iput-object p2, p0, Lcom/autonavi/navigation/api/demo/model/DemoInfo;->demoItems:Ljava/util/List;

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

    iget-object v0, p0, Lcom/autonavi/navigation/api/demo/model/DemoInfo;->adminName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/demo/model/DemoInfo;->demoItems:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/demo/model/DemoInfo;->adminName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/demo/model/DemoInfo;->demoItems:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelableList(Ljava/util/List;)V

    return-void
.end method
