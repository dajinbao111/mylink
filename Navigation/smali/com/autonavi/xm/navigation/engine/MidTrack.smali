.class public Lcom/autonavi/xm/navigation/engine/MidTrack;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidTrack;->native_GDMID_TrackReplaying()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/MidTrack;->native_GDMID_LoadTrack(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;[Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/MidTrack;->native_GDMID_TrackIsLoaded(Ljava/lang/String;[Z)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a([Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/MidTrack;->native_GDMID_GetTrackPath([Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static b()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidTrack;->native_GDMID_StopTrackReplay()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/MidTrack;->native_GDMID_UnloadTrack(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static c(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/MidTrack;->native_GDMID_StartTrackReplay(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method private static native native_GDMID_GetTrackPath([Ljava/lang/String;)I
.end method

.method private static native native_GDMID_LoadTrack(Ljava/lang/String;)I
.end method

.method private static native native_GDMID_StartTrackReplay(Ljava/lang/String;)I
.end method

.method private static native native_GDMID_StopTrackReplay()I
.end method

.method private static native native_GDMID_TrackIsLoaded(Ljava/lang/String;[Z)I
.end method

.method private static native native_GDMID_TrackReplaying()I
.end method

.method private static native native_GDMID_UnloadTrack(Ljava/lang/String;)I
.end method
