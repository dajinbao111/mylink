.class public interface abstract Lcom/autonavi/navigation/api/map/AnMap$OnTrafficAuthListener;
.super Ljava/lang/Object;


# static fields
.field public static final NET_FAILED:I = 0x2

.field public static final NET_REQUESTFAILED:I = 0x4

.field public static final NET_TIMEOUT:I = 0x3

.field public static final NO_DATA:I = 0x1

.field public static final UNKOWN:I = -0x1


# virtual methods
.method public abstract onTrafficAuthError(I)V
.end method

.method public abstract onTrafficAuthResult(Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;)V
.end method
