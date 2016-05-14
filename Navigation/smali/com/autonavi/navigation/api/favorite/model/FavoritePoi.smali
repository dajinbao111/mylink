.class public Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final ICON_COMPANY:I = 0x3

.field public static final ICON_CUSTOMER:I = 0xa

.field public static final ICON_DEFAULT:I = 0x1

.field public static final ICON_DIET:I = 0x5

.field public static final ICON_ENTERTAINMENT:I = 0xb

.field public static final ICON_FRIEND:I = 0x4

.field public static final ICON_HISTORY:I = 0xc

.field public static final ICON_HOME:I = 0x2

.field public static final ICON_LEISURE:I = 0x6

.field public static final ICON_SHOPPING:I = 0x7

.field public static final ICON_SIGHT:I = 0x9

.field public static final ICON_WORK:I = 0x8

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;


# instance fields
.field public category:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

.field public iconId:I

.field public id:J

.field public final poi:Lcom/autonavi/navigation/api/poi/model/Poi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi$2;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi$2;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method private constructor <init>(JLcom/autonavi/navigation/api/favorite/model/FavoriteCategory;Lcom/autonavi/navigation/api/poi/model/Poi;I)V
    .locals 4

    const/16 v0, 0xc

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->id:J

    iput-object p3, p0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->category:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    iput-object p4, p0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    if-lt p5, v1, :cond_0

    if-le p5, v0, :cond_1

    :cond_0
    sget-object v2, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi$3;->a:[I

    invoke-virtual {p3}, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move p5, v1

    :cond_1
    :goto_0
    iput p5, p0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->iconId:I

    return-void

    :pswitch_0
    move p5, v0

    goto :goto_0

    :pswitch_1
    const/16 p5, 0xb

    goto :goto_0

    :pswitch_2
    const/16 p5, 0xa

    goto :goto_0

    :pswitch_3
    const/16 p5, 0x9

    goto :goto_0

    :pswitch_4
    const/4 p5, 0x4

    goto :goto_0

    :pswitch_5
    const/4 p5, 0x3

    goto :goto_0

    :pswitch_6
    const/4 p5, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method synthetic constructor <init>(JLcom/autonavi/navigation/api/favorite/model/FavoriteCategory;Lcom/autonavi/navigation/api/poi/model/Poi;ILcom/autonavi/navigation/api/favorite/model/FavoritePoi$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;-><init>(JLcom/autonavi/navigation/api/favorite/model/FavoriteCategory;Lcom/autonavi/navigation/api/poi/model/Poi;I)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;Lcom/autonavi/navigation/api/poi/model/Poi;)V
    .locals 6

    const-wide/16 v1, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;-><init>(JLcom/autonavi/navigation/api/favorite/model/FavoriteCategory;Lcom/autonavi/navigation/api/poi/model/Poi;I)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;Lcom/autonavi/navigation/api/poi/model/Poi;I)V
    .locals 6

    const-wide/16 v1, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;-><init>(JLcom/autonavi/navigation/api/favorite/model/FavoriteCategory;Lcom/autonavi/navigation/api/poi/model/Poi;I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->category:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->iconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->category:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable;)V

    iget v0, p0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->iconId:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    return-void
.end method
