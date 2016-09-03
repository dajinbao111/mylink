.class public Lcom/autonavi/wh/navi/base/util/CommonUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMapCursorPoi(Lcom/autonavi/navigation/api/map/AnMap;)Lcom/autonavi/navigation/api/poi/model/Poi;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/AnMap;->getMapCursorInfo()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/AnApi;->getDataManager()Lcom/autonavi/navigation/api/data/DataManager;

    move-result-object v2

    iget-object v3, v1, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->position:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {v2, v3}, Lcom/autonavi/navigation/api/data/DataManager;->getAdminCode(Lcom/autonavi/navigation/api/map/model/LatLng;)I

    move-result v2

    :try_start_0
    iget-object v3, v1, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->position:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p0, v3}, Lcom/autonavi/navigation/api/map/AnMap;->getRoad(Lcom/autonavi/navigation/api/map/model/LatLng;)Lcom/autonavi/navigation/api/route/model/Road;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v3, v1, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->position:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-direct {v0, v3}, Lcom/autonavi/navigation/api/poi/model/Poi;-><init>(Lcom/autonavi/navigation/api/map/model/LatLng;)V

    invoke-virtual {v0, v2}, Lcom/autonavi/navigation/api/poi/model/Poi;->setAdminCode(I)Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v1, v1, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->roadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/poi/model/Poi;->setName(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/AnApi;->getDataManager()Lcom/autonavi/navigation/api/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/data/DataManager;->getAdminAreaDetail(I)Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->hasData:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->provinceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->cityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->townName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/poi/model/Poi;->setAddress(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "anMap.getRoad is null"

    invoke-static {v1}, Lcom/autonavi/wh/navi/base/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isBackground(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x190

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
