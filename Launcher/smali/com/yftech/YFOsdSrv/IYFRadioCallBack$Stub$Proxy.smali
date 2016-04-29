.class Lcom/yftech/YFOsdSrv/IYFRadioCallBack$Stub$Proxy;
.super Ljava/lang/Object;
.source "IYFRadioCallBack.java"

# interfaces
.implements Lcom/yftech/YFOsdSrv/IYFRadioCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/YFOsdSrv/IYFRadioCallBack$Stub;
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
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/yftech/YFOsdSrv/IYFRadioCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 78
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yftech/YFOsdSrv/IYFRadioCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "com.yftech.YFOsdSrv.IYFRadioCallBack"

    return-object v0
.end method

.method public onRadioInfo(IIIIIIIIZ)V
    .locals 5
    .param p1, "page"    # I
    .param p2, "curPage"    # I
    .param p3, "curFreq"    # I
    .param p4, "freq1"    # I
    .param p5, "freq2"    # I
    .param p6, "freq3"    # I
    .param p7, "freq4"    # I
    .param p8, "freq5"    # I
    .param p9, "fm"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 89
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 91
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.yftech.YFOsdSrv.IYFRadioCallBack"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    if-eqz p9, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v1, p0, Lcom/yftech/YFOsdSrv/IYFRadioCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 106
    return-void

    .line 100
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v1

    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 105
    throw v1
.end method
