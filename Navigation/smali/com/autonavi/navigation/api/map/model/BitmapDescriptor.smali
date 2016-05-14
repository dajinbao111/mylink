.class public final Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/autonavi/navigation/api/map/model/BitmapDescriptor$a;


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor$a;-><init>(Lcom/autonavi/navigation/api/map/model/BitmapDescriptor$1;)V

    sput-object v0, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;->CREATOR:Lcom/autonavi/navigation/api/map/model/BitmapDescriptor$a;

    return-void
.end method

.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;->a:I

    iput v0, p0, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;->b:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;->a:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;->b:I

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;->c:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;->a:I

    return p1
.end method

.method static synthetic a(Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;->c:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic b(Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;->b:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;->b:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;->a:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
