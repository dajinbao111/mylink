.class public Lcom/autonavi/navigation/api/payment/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/autonavi/navigation/api/payment/a/b;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getPaymentManagerDelegate()Lcom/autonavi/navigation/api/payment/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/payment/a;->a:Lcom/autonavi/navigation/api/payment/a/b;

    return-void
.end method
