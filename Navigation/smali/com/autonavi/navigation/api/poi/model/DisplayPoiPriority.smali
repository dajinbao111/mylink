.class public Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final CREATOR:Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority$a;

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority$b;

.field public static final POI_DISPLAYLEVEL_AUTO:I


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority$a;

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority$a;-><init>(Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority$1;)V

    sput-object v0, Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority;->CREATOR:Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority$a;

    new-instance v0, Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority$b;

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority$b;-><init>(Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority$1;)V

    sput-object v0, Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority$b;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority;->a:I

    iput p2, p0, Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority;->b:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCategory()I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority;->b:I

    return v0
.end method

.method public getPoiDisplayLevel()I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority;->a:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority;->a:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority;->b:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    return-void
.end method
