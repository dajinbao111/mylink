.class public Lcom/autonavi/navigation/api/internal/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/internal/a/f;


# instance fields
.field private final a:Lcom/autonavi/wh/navigation/engine/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/l;->a()Lcom/autonavi/wh/navigation/engine/l;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/a/g;->a:Lcom/autonavi/wh/navigation/engine/l;

    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/navigation/api/map/AnMap$TrafficDataSource;)V
    .locals 3

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/wh/navigation/server/GStatus;

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/autonavi/navigation/api/map/AnMap$TrafficDataSource;->resultCode:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NO_DATA:Lcom/autonavi/wh/navigation/server/GStatus;

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/autonavi/navigation/api/map/AnMap$TrafficDataSource;->data:[B

    if-nez v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/g;->a:Lcom/autonavi/wh/navigation/engine/l;

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NO_DATA:Lcom/autonavi/wh/navigation/server/GStatus;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navigation/engine/l;->a(Lcom/autonavi/wh/navigation/server/GStatus;[B)V

    :goto_1
    return-void

    :pswitch_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NET_FAILED:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NET_TIMEOUT:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NO_DATA:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NET_REQUESTFAILED:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/autonavi/navigation/api/internal/a/g;->a:Lcom/autonavi/wh/navigation/engine/l;

    iget-object v2, p1, Lcom/autonavi/navigation/api/map/AnMap$TrafficDataSource;->data:[B

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/wh/navigation/engine/l;->a(Lcom/autonavi/wh/navigation/server/GStatus;[B)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/g;->a:Lcom/autonavi/wh/navigation/engine/l;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/engine/l;->a(Z)V

    return-void
.end method
