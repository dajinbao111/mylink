.class public abstract Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub;
.super Landroid/os/Binder;
.source "IYFOsdSrv.java"

# interfaces
.implements Lcom/yftech/YFOsdSrv/IYFOsdSrv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/YFOsdSrv/IYFOsdSrv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yftech.YFOsdSrv.IYFOsdSrv"

.field static final TRANSACTION_GetCarType:I = 0x1

.field static final TRANSACTION_GetMcuVersion:I = 0x3

.field static final TRANSACTION_ShowVolume:I = 0x2

.field static final TRANSACTION_SwitchSrc:I = 0x4

.field static final TRANSACTION_doRecCtrl:I = 0x16

.field static final TRANSACTION_doRecInfo:I = 0x17

.field static final TRANSACTION_doSimCarKey:I = 0x5

.field static final TRANSACTION_doSimCarKeyEx:I = 0x6

.field static final TRANSACTION_doSwitchRec:I = 0x18

.field static final TRANSACTION_getBacksightDelay:I = 0x14

.field static final TRANSACTION_getCarInMenu:I = 0x7

.field static final TRANSACTION_getFootbrake:I = 0x12

.field static final TRANSACTION_getMileage:I = 0xf

.field static final TRANSACTION_getRpm:I = 0xe

.field static final TRANSACTION_getSpeed:I = 0x11

.field static final TRANSACTION_getVimCode:I = 0xd

.field static final TRANSACTION_getVoltage:I = 0x10

.field static final TRANSACTION_notifyAux:I = 0xc

.field static final TRANSACTION_registerCallback:I = 0x8

.field static final TRANSACTION_registerRadioCallback:I = 0xa

.field static final TRANSACTION_sendToMcuData:I = 0x19

.field static final TRANSACTION_setBacksightDelay:I = 0x15

.field static final TRANSACTION_studyOriCar:I = 0x13

.field static final TRANSACTION_unregisterCallback:I = 0x9

.field static final TRANSACTION_unregisterRadioCallback:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.yftech.YFOsdSrv.IYFOsdSrv"

    invoke-virtual {p0, p0, v0}, Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yftech/YFOsdSrv/IYFOsdSrv;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.yftech.YFOsdSrv.IYFOsdSrv"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/yftech/YFOsdSrv/IYFOsdSrv;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/yftech/YFOsdSrv/IYFOsdSrv;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 277
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 42
    :sswitch_0
    const-string v0, "com.yftech.YFOsdSrv.IYFOsdSrv"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.yftech.YFOsdSrv.IYFOsdSrv"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub;->GetCarType()Ljava/lang/String;

    move-result-object v7

    .line 49
    .local v7, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    .end local v7    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string v0, "com.yftech.YFOsdSrv.IYFOsdSrv"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 58
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub;->ShowVolume(I)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 64
    .end local v1    # "_arg0":I
    :sswitch_3
    const-string v0, "com.yftech.YFOsdSrv.IYFOsdSrv"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub;->GetMcuVersion()Ljava/lang/String;

    move-result-object v7

    .line 66
    .restart local v7    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .end local v7    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string v0, "com.yftech.YFOsdSrv.IYFOsdSrv"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 75
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub;->SwitchSrc(I)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 81
    .end local v1    # "_arg0":I
    :sswitch_5
    const-string v0, "com.yftech.YFOsdSrv.IYFOsdSrv"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 84
    .local v1, "_arg0":B
    invoke-virtual {p0, v1}, Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub;->doSimCarKey(B)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 90
    .end local v1    # "_arg0":B
    :sswitch_6
    const-string v0, "com.yftech.YFOsdSrv.IYFOsdSrv"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 94
    .restart local v1    # "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v2, v8

    .line 95
    .local v2, "_arg1":Z
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub;->doSimCarKeyEx(BZ)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 101
    .end local v1    # "_arg0":B
    .end local v2    # "_arg1":Z
    :sswitch_7
    const-string v0, "com.yftech.YFOsdSrv.IYFOsdSrv"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub;->getCarInMenu()Z

    move-result v7

    .line 103
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v7, :cond_1

    move v2, v8

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 109
    .end local v7    # "_result":Z
    :sswitch_8
    const-string v0, "com.yftech.YFOsdSrv.IYFOsdSrv"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/YFOsdSrv/IYFOsdSrvCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yftech/YFOsdSrv/IYFOsdSrvCallBack;

    move-result-object v1

    .line 112
    .local v1, "_arg0":Lcom/yftech/YFOsdSrv/IYFOsdSrvCallBack;
    invoke-virtual {p0, v1}, Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub;->registerCallback(Lcom/yftech/YFOsdSrv/IYFOsdSrvCallBack;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 118
    .end local v1    # "_arg0":Lcom/yftech/YFOsdSrv/IYFOsdSrvCallBack;
    :sswitch_9
    const-string v0, "com.yftech.YFOsdSrv.IYFOsdSrv"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/YFOsdSrv/IYFOsdSrvCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yftech/YFOsdSrv/IYFOsdSrvCallBack;

    move-result-object v1

    .line 121
    .restart local v1    # "_arg0":Lcom/yftech/YFOsdSrv/IYFOsdSrvCallBack;
    invoke-virtual {p0, v1}, Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub;->unregisterCallback(Lcom/yftech/YFOsdSrv/IYFOsdSrvCallBack;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 127
    .end local v1    # "_arg0":Lcom/yftech/YFOsdSrv/IYFOsdSrvCallBack;
    :sswitch_a
    const-string v0, "com.yftech.YFOsdSrv.IYFOsdSrv"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/YFOsdSrv/IYFRadioCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yftech/YFOsdSrv/IYFRadioCallBack;

    move-result-object v1

    .line 130
    .local v1, "_arg0":Lcom/yftech/YFOsdSrv/IYFRadioCallBack;
    invoke-virtual {p0, v1}, Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub;->registerRadioCallback(Lcom/yftech/YFOsdSrv/IYFRadioCallBack;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 136
    .end local v1    # "_arg0":Lcom/yftech/YFOsdSrv/IYFRadioCallBack;
    :sswitch_b
    const-string v0, "com.yftech.YFOsdSrv.IYFOsdSrv"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/YFOsdSrv/IYFRadioCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yftech/YFOsdSrv/IYFRadioCallBack;

    move-result-object v1

    .line 139
    .restart local v1    # "_arg0":Lcom/yftech/YFOsdSrv/IYFRadioCallBack;
    invoke-virtual {p0, v1}, Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub;->unregisterRadioCallback(Lcom/yftech/YFOsdSrv/IYFRadioCallBack;)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 145
    .end local v1    # "_arg0":Lcom/yftech/YFOsdSrv/IYFRadioCallBack;
    :sswitch_c
    const-string v0, "com.yftech.YFOsdSrv.IYFOsdSrv"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub;->notifyAux()V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 152
    :sswitch_d
    const-string v0, "com.yftech.YFOsdSrv.IYFOsdSrv"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub;->getVimCode()Ljava/lang/String;

    move-result-object v7

    .line 154
    .local v7, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 160
    .end local v7    # "_result":Ljava/lang/String;
    :sswitch_e
    const-string v0, "com.yftech.YFOsdSrv.IYFOsdSrv"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub;->getRpm()I

    move-result v7

    .line 162
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 168
    .end local v7    # "_result":I
    :sswitch_f
    const-string v0, "com.yftech.YFOsdSrv.IYFOsdSrv"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub;->getMileage()I

    move-result v7

    .line 170
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 176
    .end local v7    # "_result":I
    :sswitch_10
    const-string v0, "com.yftech.YFOsdSrv.IYFOsdSrv"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub;->getVoltage()I

    move-result v7

    .line 178
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 184
    .end local v7    # "_result":I
    :sswitch_11
    const-string v0, "com.yftech.YFOsdSrv.IYFOsdSrv"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub;->getSpeed()I

    move-result v7

    .line 186
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 192
    .end local v7    # "_result":I
    :sswitch_12
    const-string v0, "com.yftech.YFOsdSrv.IYFOsdSrv"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub;->getFootbrake()I

    move-result v7

    .line 194
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 200
    .end local v7    # "_result":I
    :sswitch_13
    const-string v0, "com.yftech.YFOsdSrv.IYFOsdSrv"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 203
    .local v1, "_arg0":B
    invoke-virtual {p0, v1}, Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub;->studyOriCar(B)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 209
    .end local v1    # "_arg0":B
    :sswitch_14
    const-string v0, "com.yftech.YFOsdSrv.IYFOsdSrv"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub;->getBacksightDelay()I

    move-result v7

    .line 211
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 217
    .end local v7    # "_result":I
    :sswitch_15
    const-string v0, "com.yftech.YFOsdSrv.IYFOsdSrv"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 220
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub;->setBacksightDelay(I)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 226
    .end local v1    # "_arg0":I
    :sswitch_16
    const-string v0, "com.yftech.YFOsdSrv.IYFOsdSrv"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 229
    .local v1, "_arg0":B
    invoke-virtual {p0, v1}, Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub;->doRecCtrl(B)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 235
    .end local v1    # "_arg0":B
    :sswitch_17
    const-string v0, "com.yftech.YFOsdSrv.IYFOsdSrv"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 239
    .restart local v1    # "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 241
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 243
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 244
    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub;->doRecInfo(BIII)V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 250
    .end local v1    # "_arg0":B
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :sswitch_18
    const-string v0, "com.yftech.YFOsdSrv.IYFOsdSrv"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v8

    .line 253
    .local v1, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v1}, Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub;->doSwitchRec(Z)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_2
    move v1, v2

    .line 252
    goto :goto_1

    .line 259
    :sswitch_19
    const-string v0, "com.yftech.YFOsdSrv.IYFOsdSrv"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 263
    .local v1, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 265
    .local v2, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 267
    .local v3, "_arg2":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 269
    .local v4, "_arg3":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 271
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg5":I
    move-object v0, p0

    .line 272
    invoke-virtual/range {v0 .. v6}, Lcom/yftech/YFOsdSrv/IYFOsdSrv$Stub;->sendToMcuData(BBBBII)V

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
