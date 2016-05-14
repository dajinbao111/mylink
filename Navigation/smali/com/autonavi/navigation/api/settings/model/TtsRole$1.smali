.class final Lcom/autonavi/navigation/api/settings/model/TtsRole$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/settings/model/TtsRole;
    .locals 5

    new-instance v0, Lcom/autonavi/navigation/api/settings/model/TtsRole;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/settings/model/TtsRole;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/autonavi/navigation/api/settings/model/TtsRole;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/navigation/api/settings/model/TtsRole;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-gez v2, :cond_1

    :cond_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v1}, Lcom/autonavi/navigation/api/settings/model/TtsRole;->a(Lcom/autonavi/navigation/api/settings/model/TtsRole;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-static {v0}, Lcom/autonavi/navigation/api/settings/model/TtsRole;->a(Lcom/autonavi/navigation/api/settings/model/TtsRole;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public a(I)[Lcom/autonavi/navigation/api/settings/model/TtsRole;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/settings/model/TtsRole;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/settings/model/TtsRole$1;->a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/settings/model/TtsRole;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/settings/model/TtsRole$1;->a(I)[Lcom/autonavi/navigation/api/settings/model/TtsRole;

    move-result-object v0

    return-object v0
.end method
