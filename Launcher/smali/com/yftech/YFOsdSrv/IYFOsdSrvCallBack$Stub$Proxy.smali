.class Lcom/yftech/YFOsdSrv/IYFOsdSrvCallBack$Stub$Proxy;
.super Ljava/lang/Object;
.source "IYFOsdSrvCallBack.java"

# interfaces
.implements Lcom/yftech/YFOsdSrv/IYFOsdSrvCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/YFOsdSrv/IYFOsdSrvCallBack$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/yftech/YFOsdSrv/IYFOsdSrvCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 70
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yftech/YFOsdSrv/IYFOsdSrvCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "com.yftech.YFOsdSrv.IYFOsdSrvCallBack"

    return-object v0
.end method

.method public onCarInMenu(Z)V
    .locals 5
    .param p1, "bInMen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 81
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 83
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.yftech.YFOsdSrv.IYFOsdSrvCallBack"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 84
    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-object v1, p0, Lcom/yftech/YFOsdSrv/IYFOsdSrvCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 90
    return-void

    .line 84
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v1

    .line 88
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 89
    throw v1
.end method

.method public onShowNumKeyPad(Z)V
    .locals 5
    .param p1, "bShow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 93
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 95
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.yftech.YFOsdSrv.IYFOsdSrvCallBack"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 96
    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object v1, p0, Lcom/yftech/YFOsdSrv/IYFOsdSrvCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 102
    return-void

    .line 96
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v1

    .line 100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 101
    throw v1
.end method
