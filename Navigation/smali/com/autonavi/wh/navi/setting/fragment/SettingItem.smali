.class public Lcom/autonavi/wh/navi/setting/fragment/SettingItem;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private content:Ljava/lang/String;

.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/wh/navi/setting/fragment/SettingItem$1;

    invoke-direct {v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingItem$1;-><init>()V

    sput-object v0, Lcom/autonavi/wh/navi/setting/fragment/SettingItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingItem;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingItem;->id:I

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingItem;->content:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingItem;->id:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/setting/fragment/SettingItem;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/setting/fragment/SettingItem;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
