.class public final Lcom/autonavi/navigation/api/register/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/register/a/b;


# instance fields
.field private final a:Lcom/autonavi/wh/navigation/engine/j;

.field private final b:Lcom/autonavi/wh/navigation/engine/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/j;->a()Lcom/autonavi/wh/navigation/engine/j;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/register/a/c;->a:Lcom/autonavi/wh/navigation/engine/j;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/a;->a()Lcom/autonavi/wh/navigation/engine/a;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/register/a/c;->b:Lcom/autonavi/wh/navigation/engine/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/register/a/c;->a()Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/navigation/api/register/a/c;->a:Lcom/autonavi/wh/navigation/engine/j;

    const/16 v2, 0x28

    invoke-virtual {v1, p1, v0, v2}, Lcom/autonavi/wh/navigation/engine/j;->a(Ljava/lang/String;[Ljava/lang/String;I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/register/a/c;->a:Lcom/autonavi/wh/navigation/engine/j;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/j;->b()Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/register/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/navigation/api/register/a/c;->a:Lcom/autonavi/wh/navigation/engine/j;

    invoke-virtual {v0, p2}, Lcom/autonavi/wh/navigation/engine/j;->b(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/autonavi/navigation/api/register/model/RegisterInfo;
    .locals 5

    const/4 v0, 0x1

    const/4 v4, 0x0

    new-array v1, v0, [Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/navigation/api/register/a/c;->a:Lcom/autonavi/wh/navigation/engine/j;

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navigation/engine/j;->a([Ljava/lang/String;[Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v3, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v3, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/register/model/RegisterInfo;

    aget-object v1, v1, v4

    aget-object v2, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/autonavi/navigation/api/register/model/RegisterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/register/a/c;->a:Lcom/autonavi/wh/navigation/engine/j;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/engine/j;->a(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/autonavi/navigation/api/register/a/a;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/autonavi/wh/navigation/server/config/GRegConfig;

    iget-object v0, p0, Lcom/autonavi/navigation/api/register/a/c;->b:Lcom/autonavi/wh/navigation/engine/a;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/a;->a([Lcom/autonavi/wh/navigation/server/config/GRegConfig;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/register/a/a;

    aget-object v2, v1, v3

    iget v2, v2, Lcom/autonavi/wh/navigation/server/config/GRegConfig;->eRegMode:I

    aget-object v1, v1, v3

    iget v1, v1, Lcom/autonavi/wh/navigation/server/config/GRegConfig;->eDeviceIDType:I

    invoke-direct {v0, v2, v1}, Lcom/autonavi/navigation/api/register/a/a;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
