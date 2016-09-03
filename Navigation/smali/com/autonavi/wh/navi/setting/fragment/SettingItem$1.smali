.class final Lcom/autonavi/wh/navi/setting/fragment/SettingItem$1;
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/autonavi/wh/navi/setting/fragment/SettingItem;
    .locals 2

    new-instance v0, Lcom/autonavi/wh/navi/setting/fragment/SettingItem;

    invoke-direct {v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingItem;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/setting/fragment/SettingItem;->setId(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/setting/fragment/SettingItem;->setContent(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/wh/navi/setting/fragment/SettingItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/autonavi/wh/navi/setting/fragment/SettingItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/autonavi/wh/navi/setting/fragment/SettingItem;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/wh/navi/setting/fragment/SettingItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/wh/navi/setting/fragment/SettingItem$1;->newArray(I)[Lcom/autonavi/wh/navi/setting/fragment/SettingItem;

    move-result-object v0

    return-object v0
.end method
