.class public Lcom/autonavi/navigation/api/route/model/RouteFile;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final endName:Ljava/lang/String;

.field public final fullFileName:Ljava/lang/String;

.field public final startName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/route/model/RouteFile$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/route/model/RouteFile$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/RouteFile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/navigation/api/route/model/RouteFile;->fullFileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/autonavi/navigation/api/route/model/RouteFile;->startName:Ljava/lang/String;

    iput-object p3, p0, Lcom/autonavi/navigation/api/route/model/RouteFile;->endName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public rename(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/autonavi/navigation/api/route/model/RouteFile;->fullFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/RouteFile;->fullFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/RouteFile;->startName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/RouteFile;->endName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
