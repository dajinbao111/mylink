.class public Lcom/autonavi/navigation/api/poi/model/DealerInfo;
.super Lcom/autonavi/navigation/api/poi/model/Poi;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/autonavi/navigation/api/poi/model/DealerInfo$a;

.field public static final DEALER_TYPE_SALE:I = 0x1

.field public static final DEALER_TYPE_SERVICE:I = 0x4

.field public static final DEALER_TYPE_SPAREPART:I = 0x2

.field public static final DEALER_TYPE_SURVEY:I = 0x8

.field public static final MOTOR_CATEGORY_ACURA:I = 0x100

.field public static final MOTOR_CATEGORY_BUICK:I = 0x1

.field public static final MOTOR_CATEGORY_CADILLAC:I = 0x2

.field public static final MOTOR_CATEGORY_CHEVROLET:I = 0x8

.field public static final MOTOR_CATEGORY_DEFAULT:I = 0x0

.field public static final MOTOR_CATEGORY_DFAC_HONDA:I = 0x800

.field public static final MOTOR_CATEGORY_GAC_HONDA:I = 0x400

.field public static final MOTOR_CATEGORY_HONDA:I = 0x200

.field public static final MOTOR_CATEGORY_JAGUAR:I = 0x80

.field public static final MOTOR_CATEGORY_KIA:I = 0x20

.field public static final MOTOR_CATEGORY_LANDROVER:I = 0x40

.field public static final MOTOR_CATEGORY_SAAB:I = 0x4

.field public static final MOTOR_CATEGORY_VOLOV:I = 0x10


# instance fields
.field public final category:I

.field public final fax:Ljava/lang/String;

.field public final motorCategory:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/autonavi/navigation/api/poi/model/DealerInfo$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/poi/model/DealerInfo$a;-><init>(Lcom/autonavi/navigation/api/poi/model/DealerInfo$1;)V

    sput-object v0, Lcom/autonavi/navigation/api/poi/model/DealerInfo;->CREATOR:Lcom/autonavi/navigation/api/poi/model/DealerInfo$a;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/navigation/api/internal/ObjectId;IILcom/autonavi/navigation/api/map/model/LatLng;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 8

    move-object v1, p0

    move-object v2, p6

    move-object v3, p4

    move/from16 v4, p10

    move-object v5, p7

    move-object/from16 v6, p8

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/autonavi/navigation/api/poi/model/Poi;-><init>(Ljava/lang/String;Lcom/autonavi/navigation/api/map/model/LatLng;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/poi/model/DealerInfo;->setId(Lcom/autonavi/navigation/api/internal/ObjectId;)Lcom/autonavi/navigation/api/poi/model/Poi;

    iput p2, p0, Lcom/autonavi/navigation/api/poi/model/DealerInfo;->category:I

    iput p3, p0, Lcom/autonavi/navigation/api/poi/model/DealerInfo;->motorCategory:I

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/autonavi/navigation/api/poi/model/DealerInfo;->fax:Ljava/lang/String;

    move/from16 v0, p11

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/poi/model/DealerInfo;->setOffsetLng(I)Lcom/autonavi/navigation/api/poi/model/Poi;

    move/from16 v0, p12

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/poi/model/DealerInfo;->setOffsetLat(I)Lcom/autonavi/navigation/api/poi/model/Poi;

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

    invoke-super {p0, p1, p2}, Lcom/autonavi/navigation/api/poi/model/Poi;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/DealerInfo;->category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/poi/model/DealerInfo;->motorCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/model/DealerInfo;->fax:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
