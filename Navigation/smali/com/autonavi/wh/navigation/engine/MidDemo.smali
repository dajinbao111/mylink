.class public Lcom/autonavi/wh/navigation/engine/MidDemo;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/MidDemo;->native_GDMID_ModelDemoing()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/wh/navigation/engine/MidDemo;->native_GDMID_LoadDemoJourney(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/autonavi/wh/navigation/server/demo/GDemoModelInfo;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 5

    if-nez p0, :cond_0

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navigation/server/demo/GDemoModelInfo;->szModelName:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/wh/navigation/server/demo/GDemoModelInfo;->szSPCode:Ljava/lang/String;

    iget v2, p0, Lcom/autonavi/wh/navigation/server/demo/GDemoModelInfo;->nScaleLevel:I

    iget v3, p0, Lcom/autonavi/wh/navigation/server/demo/GDemoModelInfo;->nElevation:I

    iget v4, p0, Lcom/autonavi/wh/navigation/server/demo/GDemoModelInfo;->nRadius:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/autonavi/wh/navigation/engine/MidDemo;->native_GDMID_StartModelDemo(Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static a([Lcom/autonavi/wh/navigation/server/demo/GDemoJourneyList;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/wh/navigation/engine/MidDemo;->native_GDMID_GetDemoJourneyList([Lcom/autonavi/wh/navigation/server/demo/GDemoJourneyList;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static a([[Lcom/autonavi/wh/navigation/server/demo/GDemoModelList;[I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_2

    array-length v0, p1

    if-gtz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Lcom/autonavi/wh/navigation/engine/MidDemo;->native_GDMID_GetDemoModelList([[Lcom/autonavi/wh/navigation/server/demo/GDemoModelList;[I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static b()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/MidDemo;->native_GDMID_StopModelDemo()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static c()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/MidDemo;->native_GDMID_StopRouteDemo()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method private static native native_GDMID_GetDemoJourneyList([Lcom/autonavi/wh/navigation/server/demo/GDemoJourneyList;)I
.end method

.method private static native native_GDMID_GetDemoModelList([[Lcom/autonavi/wh/navigation/server/demo/GDemoModelList;[I)I
.end method

.method private static native native_GDMID_LoadDemoJourney(I)I
.end method

.method private static native native_GDMID_ModelDemoing()I
.end method

.method private static native native_GDMID_StartModelDemo(Ljava/lang/String;Ljava/lang/String;III)I
.end method

.method private static native native_GDMID_StopModelDemo()I
.end method

.method private static native native_GDMID_StopRouteDemo()I
.end method
