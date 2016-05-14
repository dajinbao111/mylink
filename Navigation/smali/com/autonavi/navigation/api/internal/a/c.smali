.class public final Lcom/autonavi/navigation/api/internal/a/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/autonavi/navigation/api/internal/a/b;


# direct methods
.method public static a()Lcom/autonavi/navigation/api/internal/a/b;
    .locals 1

    sget-object v0, Lcom/autonavi/navigation/api/internal/a/c;->a:Lcom/autonavi/navigation/api/internal/a/b;

    if-nez v0, :cond_0

    const-string v0, "com.autonavi.navigation.api.internal.DelegateFacadeImpl"

    invoke-static {v0}, Lcom/autonavi/navigation/api/internal/a/a/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/internal/a/b;

    sput-object v0, Lcom/autonavi/navigation/api/internal/a/c;->a:Lcom/autonavi/navigation/api/internal/a/b;

    :cond_0
    sget-object v0, Lcom/autonavi/navigation/api/internal/a/c;->a:Lcom/autonavi/navigation/api/internal/a/b;

    return-object v0
.end method
