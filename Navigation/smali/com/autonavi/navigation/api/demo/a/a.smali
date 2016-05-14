.class public abstract Lcom/autonavi/navigation/api/demo/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/demo/a/b;


# instance fields
.field public a:Lcom/autonavi/navigation/api/demo/model/DemoItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/navigation/api/demo/a/a;->a:Lcom/autonavi/navigation/api/demo/model/DemoItem;

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/autonavi/navigation/api/demo/model/DemoItem;)Z
    .locals 1

    iput-object p1, p0, Lcom/autonavi/navigation/api/demo/a/a;->a:Lcom/autonavi/navigation/api/demo/model/DemoItem;

    const/4 v0, 0x1

    return v0
.end method
