.class Lcom/autonavi/wh/tts/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/autonavi/wh/tts/b;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/tts/b;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/tts/b$2;->a:Lcom/autonavi/wh/tts/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/wh/tts/b$2;->a:Lcom/autonavi/wh/tts/b;

    invoke-virtual {v0}, Lcom/autonavi/wh/tts/b;->a()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
