.class public final enum Lcom/autonavi/wh/navigation/server/GStatus;
.super Ljava/lang/Enum;


# static fields
.field public static final enum GD_ERR_BUS_BOTH_WALK_TOO_FAR:Lcom/autonavi/wh/navigation/server/GStatus;

.field public static final enum GD_ERR_BUS_END_WALK_TOO_FAR:Lcom/autonavi/wh/navigation/server/GStatus;

.field public static final enum GD_ERR_BUS_START_WALK_TOO_FAR:Lcom/autonavi/wh/navigation/server/GStatus;

.field public static final enum GD_ERR_DUPLICATE_DATA:Lcom/autonavi/wh/navigation/server/GStatus;

.field public static final enum GD_ERR_FAILED:Lcom/autonavi/wh/navigation/server/GStatus;

.field public static final enum GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

.field public static final enum GD_ERR_INVALID_USER:Lcom/autonavi/wh/navigation/server/GStatus;

.field public static final enum GD_ERR_IN_PROCESS:Lcom/autonavi/wh/navigation/server/GStatus;

.field public static final enum GD_ERR_NETPOI_DECODEFAILED:Lcom/autonavi/wh/navigation/server/GStatus;

.field public static final enum GD_ERR_NETPOI_GETDATAFAILED:Lcom/autonavi/wh/navigation/server/GStatus;

.field public static final enum GD_ERR_NETPOI_IMPORTFAILED:Lcom/autonavi/wh/navigation/server/GStatus;

.field public static final enum GD_ERR_NET_FAILED:Lcom/autonavi/wh/navigation/server/GStatus;

.field public static final enum GD_ERR_NET_REQUESTFAILED:Lcom/autonavi/wh/navigation/server/GStatus;

.field public static final enum GD_ERR_NET_SUGGESTION:Lcom/autonavi/wh/navigation/server/GStatus;

.field public static final enum GD_ERR_NET_TIMEOUT:Lcom/autonavi/wh/navigation/server/GStatus;

.field public static final enum GD_ERR_NOT_START:Lcom/autonavi/wh/navigation/server/GStatus;

.field public static final enum GD_ERR_NOT_SUPPORT:Lcom/autonavi/wh/navigation/server/GStatus;

.field public static final enum GD_ERR_NO_DATA:Lcom/autonavi/wh/navigation/server/GStatus;

.field public static final enum GD_ERR_NO_GPS:Lcom/autonavi/wh/navigation/server/GStatus;

.field public static final enum GD_ERR_NO_MEMORY:Lcom/autonavi/wh/navigation/server/GStatus;

.field public static final enum GD_ERR_NO_ROUTE:Lcom/autonavi/wh/navigation/server/GStatus;

.field public static final enum GD_ERR_NO_SPACE:Lcom/autonavi/wh/navigation/server/GStatus;

.field public static final enum GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

.field public static final enum GD_ERR_OP_CANCELED:Lcom/autonavi/wh/navigation/server/GStatus;

.field public static final enum GD_ERR_OP_END:Lcom/autonavi/wh/navigation/server/GStatus;

.field public static final enum GD_ERR_OUT_OF_RANGE:Lcom/autonavi/wh/navigation/server/GStatus;

.field public static final enum GD_ERR_RUNNING:Lcom/autonavi/wh/navigation/server/GStatus;

.field public static final enum GD_ERR_TOO_FAR:Lcom/autonavi/wh/navigation/server/GStatus;

.field public static final enum GD_ERR_TOO_NEAR:Lcom/autonavi/wh/navigation/server/GStatus;

.field public static final enum GD_ERR_VER_INCOMPATIBLE:Lcom/autonavi/wh/navigation/server/GStatus;

.field private static final a:[Lcom/autonavi/wh/navigation/server/GStatus;

.field private static final synthetic b:[Lcom/autonavi/wh/navigation/server/GStatus;


# instance fields
.field public final nativeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/autonavi/wh/navigation/server/GStatus;

    const-string v1, "GD_ERR_OK"

    invoke-direct {v0, v1, v4, v4}, Lcom/autonavi/wh/navigation/server/GStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/wh/navigation/server/GStatus;

    const-string v1, "GD_ERR_INVALID_PARAM"

    invoke-direct {v0, v1, v5, v5}, Lcom/autonavi/wh/navigation/server/GStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/wh/navigation/server/GStatus;

    const-string v1, "GD_ERR_NO_MEMORY"

    invoke-direct {v0, v1, v6, v6}, Lcom/autonavi/wh/navigation/server/GStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NO_MEMORY:Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/wh/navigation/server/GStatus;

    const-string v1, "GD_ERR_NO_DATA"

    invoke-direct {v0, v1, v7, v7}, Lcom/autonavi/wh/navigation/server/GStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NO_DATA:Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/wh/navigation/server/GStatus;

    const-string v1, "GD_ERR_VER_INCOMPATIBLE"

    invoke-direct {v0, v1, v8, v8}, Lcom/autonavi/wh/navigation/server/GStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_VER_INCOMPATIBLE:Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/wh/navigation/server/GStatus;

    const-string v1, "GD_ERR_IN_PROCESS"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_IN_PROCESS:Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/wh/navigation/server/GStatus;

    const-string v1, "GD_ERR_NO_ROUTE"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NO_ROUTE:Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/wh/navigation/server/GStatus;

    const-string v1, "GD_ERR_RUNNING"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_RUNNING:Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/wh/navigation/server/GStatus;

    const-string v1, "GD_ERR_DUPLICATE_DATA"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_DUPLICATE_DATA:Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/wh/navigation/server/GStatus;

    const-string v1, "GD_ERR_NOT_SUPPORT"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NOT_SUPPORT:Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/wh/navigation/server/GStatus;

    const-string v1, "GD_ERR_NOT_START"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NOT_START:Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/wh/navigation/server/GStatus;

    const-string v1, "GD_ERR_NO_GPS"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NO_GPS:Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/wh/navigation/server/GStatus;

    const-string v1, "GD_ERR_NO_SPACE"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NO_SPACE:Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/wh/navigation/server/GStatus;

    const-string v1, "GD_ERR_OUT_OF_RANGE"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OUT_OF_RANGE:Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/wh/navigation/server/GStatus;

    const-string v1, "GD_ERR_INVALID_USER"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_USER:Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/wh/navigation/server/GStatus;

    const-string v1, "GD_ERR_OP_CANCELED"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OP_CANCELED:Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/wh/navigation/server/GStatus;

    const-string v1, "GD_ERR_OP_END"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OP_END:Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/wh/navigation/server/GStatus;

    const-string v1, "GD_ERR_TOO_NEAR"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_TOO_NEAR:Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/wh/navigation/server/GStatus;

    const-string v1, "GD_ERR_TOO_FAR"

    const/16 v2, 0x12

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_TOO_FAR:Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/wh/navigation/server/GStatus;

    const-string v1, "GD_ERR_BUS_BOTH_WALK_TOO_FAR"

    const/16 v2, 0x13

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_BUS_BOTH_WALK_TOO_FAR:Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/wh/navigation/server/GStatus;

    const-string v1, "GD_ERR_BUS_START_WALK_TOO_FAR"

    const/16 v2, 0x14

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_BUS_START_WALK_TOO_FAR:Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/wh/navigation/server/GStatus;

    const-string v1, "GD_ERR_BUS_END_WALK_TOO_FAR"

    const/16 v2, 0x15

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_BUS_END_WALK_TOO_FAR:Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/wh/navigation/server/GStatus;

    const-string v1, "GD_ERR_NETPOI_DECODEFAILED"

    const/16 v2, 0x16

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NETPOI_DECODEFAILED:Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/wh/navigation/server/GStatus;

    const-string v1, "GD_ERR_NETPOI_IMPORTFAILED"

    const/16 v2, 0x17

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NETPOI_IMPORTFAILED:Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/wh/navigation/server/GStatus;

    const-string v1, "GD_ERR_NETPOI_GETDATAFAILED"

    const/16 v2, 0x18

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NETPOI_GETDATAFAILED:Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/wh/navigation/server/GStatus;

    const-string v1, "GD_ERR_NET_REQUESTFAILED"

    const/16 v2, 0x19

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NET_REQUESTFAILED:Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/wh/navigation/server/GStatus;

    const-string v1, "GD_ERR_NET_TIMEOUT"

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NET_TIMEOUT:Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/wh/navigation/server/GStatus;

    const-string v1, "GD_ERR_NET_FAILED"

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NET_FAILED:Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/wh/navigation/server/GStatus;

    const-string v1, "GD_ERR_NET_SUGGESTION"

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NET_SUGGESTION:Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/wh/navigation/server/GStatus;

    const-string v1, "GD_ERR_FAILED"

    const/16 v2, 0x1d

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/wh/navigation/server/GStatus;

    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/autonavi/wh/navigation/server/GStatus;

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NO_MEMORY:Lcom/autonavi/wh/navigation/server/GStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NO_DATA:Lcom/autonavi/wh/navigation/server/GStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_VER_INCOMPATIBLE:Lcom/autonavi/wh/navigation/server/GStatus;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_IN_PROCESS:Lcom/autonavi/wh/navigation/server/GStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NO_ROUTE:Lcom/autonavi/wh/navigation/server/GStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_RUNNING:Lcom/autonavi/wh/navigation/server/GStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_DUPLICATE_DATA:Lcom/autonavi/wh/navigation/server/GStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NOT_SUPPORT:Lcom/autonavi/wh/navigation/server/GStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NOT_START:Lcom/autonavi/wh/navigation/server/GStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NO_GPS:Lcom/autonavi/wh/navigation/server/GStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NO_SPACE:Lcom/autonavi/wh/navigation/server/GStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OUT_OF_RANGE:Lcom/autonavi/wh/navigation/server/GStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_USER:Lcom/autonavi/wh/navigation/server/GStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OP_CANCELED:Lcom/autonavi/wh/navigation/server/GStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OP_END:Lcom/autonavi/wh/navigation/server/GStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_TOO_NEAR:Lcom/autonavi/wh/navigation/server/GStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_TOO_FAR:Lcom/autonavi/wh/navigation/server/GStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_BUS_BOTH_WALK_TOO_FAR:Lcom/autonavi/wh/navigation/server/GStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_BUS_START_WALK_TOO_FAR:Lcom/autonavi/wh/navigation/server/GStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_BUS_END_WALK_TOO_FAR:Lcom/autonavi/wh/navigation/server/GStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NETPOI_DECODEFAILED:Lcom/autonavi/wh/navigation/server/GStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NETPOI_IMPORTFAILED:Lcom/autonavi/wh/navigation/server/GStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NETPOI_GETDATAFAILED:Lcom/autonavi/wh/navigation/server/GStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NET_REQUESTFAILED:Lcom/autonavi/wh/navigation/server/GStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NET_TIMEOUT:Lcom/autonavi/wh/navigation/server/GStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NET_FAILED:Lcom/autonavi/wh/navigation/server/GStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NET_SUGGESTION:Lcom/autonavi/wh/navigation/server/GStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/wh/navigation/server/GStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->b:[Lcom/autonavi/wh/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/wh/navigation/server/GStatus;->values()[Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sput-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->a:[Lcom/autonavi/wh/navigation/server/GStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/autonavi/wh/navigation/server/GStatus;->nativeValue:I

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 5

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->a:[Lcom/autonavi/wh/navigation/server/GStatus;

    const/4 v1, 0x0

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v3, v1, v0

    ushr-int/lit8 v3, v3, 0x1

    aget-object v4, v2, v3

    iget v4, v4, Lcom/autonavi/wh/navigation/server/GStatus;->nativeValue:I

    sub-int/2addr v4, p0

    if-gez v4, :cond_0

    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    :cond_0
    if-lez v4, :cond_1

    add-int/lit8 v0, v3, -0x1

    goto :goto_0

    :cond_1
    aget-object v0, v2, v3

    :goto_1
    return-object v0

    :cond_2
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    const-class v0, Lcom/autonavi/wh/navigation/server/GStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navigation/server/GStatus;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->b:[Lcom/autonavi/wh/navigation/server/GStatus;

    invoke-virtual {v0}, [Lcom/autonavi/wh/navigation/server/GStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/wh/navigation/server/GStatus;

    return-object v0
.end method
