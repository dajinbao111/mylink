.class public Lcom/autonavi/wh/navigation/engine/MidLocation;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([BI)I
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/wh/navigation/engine/MidLocation;->native_GDMID_GetLocLogString([BI)I

    move-result v0

    return v0
.end method

.method static a()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/MidLocation;->native_GDMID_LocResetGpsInfo()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(ILjava/nio/ByteBuffer;I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/autonavi/wh/navigation/engine/MidLocation;->native_GDMID_SetLocData(ILjava/nio/ByteBuffer;I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/autonavi/wh/navigation/server/location/GECompassData;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 3

    if-nez p0, :cond_0

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/autonavi/wh/navigation/server/location/GECompassData;->nDeviceAttitude:I

    iget v1, p0, Lcom/autonavi/wh/navigation/server/location/GECompassData;->nAzimuth:I

    iget v2, p0, Lcom/autonavi/wh/navigation/server/location/GECompassData;->nTimestamp:I

    invoke-static {v0, v1, v2}, Lcom/autonavi/wh/navigation/engine/MidLocation;->native_GDMID_SetECompassData(III)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static b()Z
    .locals 1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/MidLocation;->native_GDMID_LOC_IsNeedUpdateMap()Z

    move-result v0

    return v0
.end method

.method private static native native_GDMID_DispatchGps(J)I
.end method

.method private static native native_GDMID_GetGpsInfo([Lcom/autonavi/wh/navigation/server/location/GGpsInfo;)I
.end method

.method private static native native_GDMID_GetLocLogString([BI)I
.end method

.method private static native native_GDMID_LOC_IsNeedUpdateMap()Z
.end method

.method private static native native_GDMID_LocResetGpsInfo()I
.end method

.method private static native native_GDMID_SetECompassData(III)I
.end method

.method private static native native_GDMID_SetGpsInfo(IIBBBBBBBBBBDDDD)I
.end method

.method private static native native_GDMID_SetGyroData(II[IJ)I
.end method

.method private static native native_GDMID_SetLocData(ILjava/nio/ByteBuffer;I)I
.end method

.method private static native native_GDMID_SetPulseData(IIJ)I
.end method
