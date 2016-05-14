.class Lcom/autonavi/navigation/api/map/internal/g;
.super Landroid/os/Handler;


# instance fields
.field private a:Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;

.field private final b:Lcom/autonavi/navigation/api/map/internal/l;


# direct methods
.method public constructor <init>(Lcom/autonavi/navigation/api/map/internal/l;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/g;->b:Lcom/autonavi/navigation/api/map/internal/l;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/autonavi/navigation/api/map/internal/g;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/autonavi/navigation/api/map/internal/g;->removeMessages(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/map/internal/g;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public a(IILcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;)V
    .locals 3

    const/4 v2, 0x1

    iput-object p3, p0, Lcom/autonavi/navigation/api/map/internal/g;->a:Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    aput p2, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/autonavi/navigation/api/map/internal/g;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/model/ZoomLevel;)V
    .locals 1

    const/16 v0, 0x44

    invoke-virtual {p0, v0, p1}, Lcom/autonavi/navigation/api/map/internal/g;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x0

    aget v5, v0, v1

    const/4 v1, 0x1

    aget v4, v0, v1

    if-nez v5, :cond_1

    if-eqz v4, :cond_0

    :cond_1
    const/4 v3, 0x0

    const/4 v1, 0x0

    array-length v2, v0

    const/4 v6, 0x2

    if-gt v2, v6, :cond_4

    const/4 v2, 0x1

    move v6, v2

    :goto_1
    if-eqz v6, :cond_7

    if-eqz v5, :cond_2

    if-lez v5, :cond_5

    const/4 v0, 0x1

    :goto_2
    move v3, v0

    :cond_2
    if-eqz v4, :cond_11

    if-lez v4, :cond_6

    const/4 v0, 0x1

    :goto_3
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const-wide v1, 0x406f400000000000L    # 250.0

    mul-int v7, v5, v5

    mul-int v8, v4, v4

    add-int/2addr v7, v8

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    div-double v7, v1, v7

    int-to-double v1, v5

    mul-double/2addr v1, v7

    double-to-int v2, v1

    int-to-double v9, v4

    mul-double/2addr v7, v9

    double-to-int v1, v7

    move v11, v1

    move v1, v5

    move v5, v3

    move v3, v2

    move v2, v11

    move v12, v4

    move v4, v0

    move v0, v12

    :goto_4
    if-eqz v6, :cond_3

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/autonavi/navigation/api/map/internal/g;->removeMessages(I)V

    iget-object v6, p0, Lcom/autonavi/navigation/api/map/internal/g;->a:Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/autonavi/navigation/api/map/internal/g;->a:Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;

    invoke-interface {v6}, Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;->onFlingStart()V

    :cond_3
    mul-int v6, v5, v1

    div-int/lit8 v6, v6, 0x64

    mul-int v7, v4, v0

    div-int/lit8 v7, v7, 0x64

    iget-object v8, p0, Lcom/autonavi/navigation/api/map/internal/g;->b:Lcom/autonavi/navigation/api/map/internal/l;

    neg-int v6, v6

    neg-int v7, v7

    invoke-interface {v8, v6, v7}, Lcom/autonavi/navigation/api/map/internal/l;->a(II)Z

    const/4 v6, 0x0

    sub-int/2addr v1, v3

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v1, 0x0

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-gtz v6, :cond_8

    const/4 v0, 0x1

    move v1, v0

    :goto_5
    if-gtz v3, :cond_9

    const/4 v0, 0x1

    :goto_6
    or-int/2addr v0, v1

    if-eqz v0, :cond_c

    if-gtz v7, :cond_a

    const/4 v0, 0x1

    move v1, v0

    :goto_7
    if-gtz v2, :cond_b

    const/4 v0, 0x1

    :goto_8
    or-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/g;->a:Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/g;->a:Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;->onFlingEnd()V

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    move v6, v2

    goto :goto_1

    :cond_5
    const/4 v0, -0x1

    goto :goto_2

    :cond_6
    const/4 v0, -0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x2

    aget v3, v0, v1

    const/4 v1, 0x3

    aget v2, v0, v1

    const/4 v1, 0x4

    aget v1, v0, v1

    const/4 v7, 0x5

    aget v0, v0, v7

    move v11, v0

    move v0, v4

    move v4, v2

    move v2, v11

    move v12, v3

    move v3, v1

    move v1, v5

    move v5, v12

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    move v1, v0

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    move v1, v0

    goto :goto_7

    :cond_b
    const/4 v0, 0x0

    goto :goto_8

    :cond_c
    const/4 v0, 0x1

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v8, 0x0

    aput v6, v1, v8

    const/4 v6, 0x1

    aput v7, v1, v6

    const/4 v6, 0x2

    aput v5, v1, v6

    const/4 v5, 0x3

    aput v4, v1, v5

    const/4 v4, 0x4

    aput v3, v1, v4

    const/4 v3, 0x5

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/navigation/api/map/internal/g;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Lcom/autonavi/navigation/api/map/internal/g;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :sswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/map/internal/g;->removeMessages(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/g;->a:Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/g;->a:Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/AnMap$OnMapFlingListener;->onFlingEnd()V

    goto/16 :goto_0

    :sswitch_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/map/internal/g;->removeMessages(I)V

    goto/16 :goto_0

    :sswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/g;->b:Lcom/autonavi/navigation/api/map/internal/l;

    if-lez v1, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-interface {v2, v0}, Lcom/autonavi/navigation/api/map/internal/l;->d(I)Z

    if-lez v1, :cond_e

    const/4 v0, -0x1

    :goto_a
    add-int/2addr v0, v1

    iget v1, p1, Landroid/os/Message;->arg1:I

    mul-int/2addr v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/autonavi/navigation/api/map/internal/g;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Lcom/autonavi/navigation/api/map/internal/g;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_d
    const/4 v0, -0x1

    goto :goto_9

    :cond_e
    const/4 v0, 0x1

    goto :goto_a

    :sswitch_5
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/map/internal/g;->removeMessages(I)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/g;->b:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v1}, Lcom/autonavi/navigation/api/map/internal/l;->k()Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v1

    iget-object v1, v1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->zoom:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ordinal()I

    move-result v1

    sub-int v1, v0, v1

    if-eqz v1, :cond_0

    if-lez v1, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v2, :cond_0

    if-eqz v0, :cond_10

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/g;->b:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v3}, Lcom/autonavi/navigation/api/map/internal/l;->n()Z

    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_f
    const/4 v0, 0x0

    goto :goto_b

    :cond_10
    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/g;->b:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v3}, Lcom/autonavi/navigation/api/map/internal/l;->l()Z

    goto :goto_d

    :cond_11
    move v0, v1

    goto/16 :goto_3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x44 -> :sswitch_6
    .end sparse-switch
.end method
