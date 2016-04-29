.class public interface abstract Lcom/yftech/YFOsdSrv/IYFRadioCallBack;
.super Ljava/lang/Object;
.source "IYFRadioCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/YFOsdSrv/IYFRadioCallBack$Stub;
    }
.end annotation


# virtual methods
.method public abstract onRadioInfo(IIIIIIIIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
