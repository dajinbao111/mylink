.class Lcom/autonavi/xm/navi/favorites/FavoriteEditorFragment$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/favorites/FavoriteEditorFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/favorites/FavoriteEditorFragment;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/favorites/FavoriteEditorFragment$1;->this$0:Lcom/autonavi/xm/navi/favorites/FavoriteEditorFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/autonavi/xm/navi/favorites/FavoriteEditorFragment$1;->this$0:Lcom/autonavi/xm/navi/favorites/FavoriteEditorFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/navigation/api/AnException;

    # invokes: Lcom/autonavi/xm/navi/favorites/FavoriteEditorFragment;->handleFavoriteAdded(Lcom/autonavi/navigation/api/AnException;)V
    invoke-static {v1, v0}, Lcom/autonavi/xm/navi/favorites/FavoriteEditorFragment;->access$000(Lcom/autonavi/xm/navi/favorites/FavoriteEditorFragment;Lcom/autonavi/navigation/api/AnException;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/autonavi/xm/navi/favorites/FavoriteEditorFragment$1;->this$0:Lcom/autonavi/xm/navi/favorites/FavoriteEditorFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # invokes: Lcom/autonavi/xm/navi/favorites/FavoriteEditorFragment;->handleFavoriteDeleted(Z)V
    invoke-static {v1, v0}, Lcom/autonavi/xm/navi/favorites/FavoriteEditorFragment;->access$100(Lcom/autonavi/xm/navi/favorites/FavoriteEditorFragment;Z)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/autonavi/xm/navi/favorites/FavoriteEditorFragment$1;->this$0:Lcom/autonavi/xm/navi/favorites/FavoriteEditorFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # invokes: Lcom/autonavi/xm/navi/favorites/FavoriteEditorFragment;->handleFavoriteModified(Z)V
    invoke-static {v1, v0}, Lcom/autonavi/xm/navi/favorites/FavoriteEditorFragment;->access$200(Lcom/autonavi/xm/navi/favorites/FavoriteEditorFragment;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
