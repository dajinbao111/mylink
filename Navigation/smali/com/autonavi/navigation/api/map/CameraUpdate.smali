.class public final Lcom/autonavi/navigation/api/map/CameraUpdate;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/os/Message;


# direct methods
.method constructor <init>(Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/CameraUpdate;->a:Landroid/os/Message;

    return-void
.end method


# virtual methods
.method public getMessage()Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/CameraUpdate;->a:Landroid/os/Message;

    return-object v0
.end method
