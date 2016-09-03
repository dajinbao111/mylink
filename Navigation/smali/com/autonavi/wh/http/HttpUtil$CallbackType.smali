.class public final enum Lcom/autonavi/wh/http/HttpUtil$CallbackType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/wh/http/HttpUtil$CallbackType;

.field public static final enum MainThreadCalled:Lcom/autonavi/wh/http/HttpUtil$CallbackType;

.field public static final enum SubThreadCalled:Lcom/autonavi/wh/http/HttpUtil$CallbackType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/wh/http/HttpUtil$CallbackType;

    const-string v1, "MainThreadCalled"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/wh/http/HttpUtil$CallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/wh/http/HttpUtil$CallbackType;->MainThreadCalled:Lcom/autonavi/wh/http/HttpUtil$CallbackType;

    new-instance v0, Lcom/autonavi/wh/http/HttpUtil$CallbackType;

    const-string v1, "SubThreadCalled"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/wh/http/HttpUtil$CallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/wh/http/HttpUtil$CallbackType;->SubThreadCalled:Lcom/autonavi/wh/http/HttpUtil$CallbackType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/autonavi/wh/http/HttpUtil$CallbackType;

    sget-object v1, Lcom/autonavi/wh/http/HttpUtil$CallbackType;->MainThreadCalled:Lcom/autonavi/wh/http/HttpUtil$CallbackType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/wh/http/HttpUtil$CallbackType;->SubThreadCalled:Lcom/autonavi/wh/http/HttpUtil$CallbackType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/autonavi/wh/http/HttpUtil$CallbackType;->$VALUES:[Lcom/autonavi/wh/http/HttpUtil$CallbackType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/wh/http/HttpUtil$CallbackType;
    .locals 1

    const-class v0, Lcom/autonavi/wh/http/HttpUtil$CallbackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/http/HttpUtil$CallbackType;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/wh/http/HttpUtil$CallbackType;
    .locals 1

    sget-object v0, Lcom/autonavi/wh/http/HttpUtil$CallbackType;->$VALUES:[Lcom/autonavi/wh/http/HttpUtil$CallbackType;

    invoke-virtual {v0}, [Lcom/autonavi/wh/http/HttpUtil$CallbackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/wh/http/HttpUtil$CallbackType;

    return-object v0
.end method
