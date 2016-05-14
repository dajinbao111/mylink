.class public final enum Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;
.super Ljava/lang/Enum;


# static fields
.field public static final enum DEFAULT:Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;

.field public static final enum DISTANCE:Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;

.field private static final synthetic a:[Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2, v2}, Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;->DEFAULT:Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;

    new-instance v0, Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;

    const-string v1, "DISTANCE"

    invoke-direct {v0, v1, v3, v3}, Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;->DISTANCE:Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;

    sget-object v1, Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;->DEFAULT:Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;->DISTANCE:Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;

    aput-object v1, v0, v3

    sput-object v0, Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;->a:[Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;
    .locals 1

    const-class v0, Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;
    .locals 1

    sget-object v0, Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;->a:[Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;

    invoke-virtual {v0}, [Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/navigation/api/poi/PoiManager$OrderBy;

    return-object v0
.end method
