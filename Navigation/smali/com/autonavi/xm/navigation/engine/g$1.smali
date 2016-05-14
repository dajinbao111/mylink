.class Lcom/autonavi/xm/navigation/engine/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xm/navigation/server/map/OnGetElementsCallback;


# instance fields
.field final synthetic a:Lcom/autonavi/xm/navigation/engine/g;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navigation/engine/g;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/g$1;->a:Lcom/autonavi/xm/navigation/engine/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetElements()Ljava/nio/ByteBuffer;
    .locals 9

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/g$1;->a:Lcom/autonavi/xm/navigation/engine/g;

    iget-object v1, v1, Lcom/autonavi/xm/navigation/engine/g;->a:Lcom/autonavi/xm/navigation/server/map/GGetElement;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-array v3, v4, [[Lcom/autonavi/xm/navigation/server/map/GCustomElement;

    new-array v1, v4, [I

    iget-object v4, p0, Lcom/autonavi/xm/navigation/engine/g$1;->a:Lcom/autonavi/xm/navigation/engine/g;

    iget-object v4, v4, Lcom/autonavi/xm/navigation/engine/g;->a:Lcom/autonavi/xm/navigation/server/map/GGetElement;

    invoke-interface {v4, v3, v1}, Lcom/autonavi/xm/navigation/server/map/GGetElement;->GDBL_OnGetElement([[Lcom/autonavi/xm/navigation/server/map/GCustomElement;[I)V

    aget v4, v1, v2

    if-lez v4, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    move v0, v2

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v6, v3, v2

    aget-object v6, v6, v1

    add-int/lit8 v0, v0, 0x8

    iget-object v7, v6, Lcom/autonavi/xm/navigation/server/map/GCustomElement;->pImage:Lcom/autonavi/xm/navigation/server/map/GBitmap;

    iget v7, v7, Lcom/autonavi/xm/navigation/server/map/GBitmap;->nID:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v0, v0, 0x4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v6, Lcom/autonavi/xm/navigation/server/map/GCustomElement;->pImage:Lcom/autonavi/xm/navigation/server/map/GBitmap;

    invoke-virtual {v6}, Lcom/autonavi/xm/navigation/server/map/GBitmap;->getBufferSize()I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move v1, v2

    :goto_3
    if-ge v1, v4, :cond_5

    aget-object v6, v3, v2

    aget-object v6, v6, v1

    iget v7, v6, Lcom/autonavi/xm/navigation/server/map/GCustomElement;->x:I

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v7, v6, Lcom/autonavi/xm/navigation/server/map/GCustomElement;->y:I

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v7, v6, Lcom/autonavi/xm/navigation/server/map/GCustomElement;->pImage:Lcom/autonavi/xm/navigation/server/map/GBitmap;

    iget v7, v7, Lcom/autonavi/xm/navigation/server/map/GBitmap;->nID:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v6, Lcom/autonavi/xm/navigation/server/map/GCustomElement;->pImage:Lcom/autonavi/xm/navigation/server/map/GBitmap;

    invoke-virtual {v6, v0}, Lcom/autonavi/xm/navigation/server/map/GBitmap;->writeToBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0
.end method
