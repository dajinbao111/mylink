.class public interface abstract Lcom/yftech/YFOsdSrv/IYFOsdSrvCallBack;
.super Ljava/lang/Object;
.source "IYFOsdSrvCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/YFOsdSrv/IYFOsdSrvCallBack$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCarInMenu(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onShowNumKeyPad(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
