.class public Lcom/autonavi/navigation/api/payment/a/c;
.super Lcom/autonavi/navigation/api/payment/a/a;

# interfaces
.implements Lcom/autonavi/wh/navigation/engine/h$a;


# instance fields
.field private final a:Lcom/autonavi/wh/navigation/engine/h;

.field private b:Lcom/autonavi/navigation/api/payment/a$b;

.field private c:Lcom/autonavi/navigation/api/payment/a$c;

.field private d:Lcom/autonavi/navigation/api/payment/a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/navigation/api/payment/a/a;-><init>()V

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/h;->a()Lcom/autonavi/wh/navigation/engine/h;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/payment/a/c;->a:Lcom/autonavi/wh/navigation/engine/h;

    iget-object v0, p0, Lcom/autonavi/navigation/api/payment/a/c;->a:Lcom/autonavi/wh/navigation/engine/h;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/navigation/engine/h;->a(Lcom/autonavi/wh/navigation/engine/h$a;)V

    return-void
.end method


# virtual methods
.method public a(ILandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/payment/a/c;->c:Lcom/autonavi/navigation/api/payment/a$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/payment/a/c;->c:Lcom/autonavi/navigation/api/payment/a$c;

    invoke-interface {v0, p1, p2, p3}, Lcom/autonavi/navigation/api/payment/a$c;->a(ILandroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(ILcom/autonavi/navigation/api/payment/model/HelpInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/payment/a/c;->d:Lcom/autonavi/navigation/api/payment/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/payment/a/c;->d:Lcom/autonavi/navigation/api/payment/a$a;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/payment/a$a;->a(ILcom/autonavi/navigation/api/payment/model/HelpInfo;)V

    :cond_0
    return-void
.end method

.method public a(ILcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/payment/a/c;->b:Lcom/autonavi/navigation/api/payment/a$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/payment/a/c;->b:Lcom/autonavi/navigation/api/payment/a$b;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/payment/a$b;->a(ILcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;)V

    :cond_0
    return-void
.end method
