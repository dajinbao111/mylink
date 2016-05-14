.class public Lcom/autonavi/navigation/api/data/a/c;
.super Lcom/autonavi/navigation/api/data/a/a;


# instance fields
.field private final a:Lcom/autonavi/xm/navigation/engine/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/navigation/api/data/a/a;-><init>()V

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/i;->a()Lcom/autonavi/xm/navigation/engine/i;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/data/a/c;->a:Lcom/autonavi/xm/navigation/engine/i;

    return-void
.end method

.method private a(Lcom/autonavi/xm/navigation/server/poi/GAdarea;)Lcom/autonavi/navigation/api/data/model/AdminArea;
    .locals 5

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/autonavi/navigation/api/data/model/AdminArea;

    iget v1, p1, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->lAdminCode:I

    iget-object v2, p1, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->szAdminName:Ljava/lang/String;

    iget-object v3, p1, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->szAdminSpell:Ljava/lang/String;

    iget-object v4, p1, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->pSubAdarea:[Lcom/autonavi/xm/navigation/server/poi/GAdarea;

    invoke-direct {p0, v4}, Lcom/autonavi/navigation/api/data/a/c;->a([Lcom/autonavi/xm/navigation/server/poi/GAdarea;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/autonavi/navigation/api/data/model/AdminArea;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method private a(Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;)Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;
    .locals 9

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;

    iget v1, p1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->lAdminCode:I

    iget-object v2, p1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szProvName:Ljava/lang/String;

    iget-object v3, p1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szCityName:Ljava/lang/String;

    iget-object v4, p1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szTownName:Ljava/lang/String;

    iget v5, p1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->nTel:I

    new-instance v6, Lcom/autonavi/navigation/api/map/model/LatLng;

    iget-object v7, p1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->coorCenter:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v7, v7, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    iget-object v8, p1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->coorCenter:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v8, v8, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    invoke-direct {v6, v7, v8}, Lcom/autonavi/navigation/api/map/model/LatLng;-><init>(II)V

    iget-boolean v7, p1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->bHasData:Z

    invoke-direct/range {v0 .. v7}, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/autonavi/navigation/api/map/model/LatLng;Z)V

    goto :goto_0
.end method

.method private a(ILcom/autonavi/xm/navigation/server/poi/GAdareaType;)Ljava/util/List;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/poi/GAdareaList;

    iget-object v1, p0, Lcom/autonavi/navigation/api/data/a/c;->a:Lcom/autonavi/xm/navigation/engine/i;

    invoke-virtual {v1, p1, v0, p2}, Lcom/autonavi/xm/navigation/engine/i;->a(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaList;Lcom/autonavi/xm/navigation/server/poi/GAdareaType;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaList;->pAdarea:[Lcom/autonavi/xm/navigation/server/poi/GAdarea;

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/data/a/c;->a([Lcom/autonavi/xm/navigation/server/poi/GAdarea;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private a([Lcom/autonavi/xm/navigation/server/poi/GAdarea;)Ljava/util/List;
    .locals 4

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    array-length v2, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    invoke-direct {p0, v3}, Lcom/autonavi/navigation/api/data/a/c;->a(Lcom/autonavi/xm/navigation/server/poi/GAdarea;)Lcom/autonavi/navigation/api/data/model/AdminArea;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private g(I)Lcom/autonavi/xm/navigation/server/poi/GAdareaType;
    .locals 2

    sget-object v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;->ADAREA_TYPE_CHINA:Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

    const/16 v1, 0x2710

    if-ge p1, v1, :cond_1

    sget-object v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;->ADAREA_TYPE_CHINA:Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    rem-int/lit16 v1, p1, 0x2710

    if-nez v1, :cond_2

    sget-object v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;->ADAREA_TYPE_PROVINCE:Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

    goto :goto_0

    :cond_2
    rem-int/lit16 v1, p1, 0x2710

    if-eqz v1, :cond_3

    rem-int/lit8 v1, p1, 0x64

    if-nez v1, :cond_3

    sget-object v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;->ADAREA_TYPE_CITY:Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

    goto :goto_0

    :cond_3
    rem-int/lit8 v1, p1, 0x64

    if-eqz v1, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;->ADAREA_TYPE_TOWN:Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

    goto :goto_0
.end method


# virtual methods
.method public a(IZ)Z
    .locals 2

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/f;->a()Lcom/autonavi/xm/navigation/engine/f;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/autonavi/xm/navigation/engine/f;->a(IZ)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Ljava/util/List;
    .locals 3

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/data/a/c;->g(I)Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

    move-result-object v0

    sget-object v1, Lcom/autonavi/navigation/api/data/a/c$1;->a:[I

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/autonavi/navigation/api/data/a/c;->a(ILcom/autonavi/xm/navigation/server/poi/GAdareaType;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;->ADAREA_TYPE_PROVINCE:Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;->ADAREA_TYPE_CITY:Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;->ADAREA_TYPE_TOWN:Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public c(Lcom/autonavi/navigation/api/map/model/LatLng;)I
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GCoordTel;

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GCoordTelType;->COORDTEL_TYPE_COORD:Lcom/autonavi/xm/navigation/server/poi/GCoordTelType;

    new-instance v2, Lcom/autonavi/xm/navigation/server/GCoord;

    iget v3, p1, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    iget v4, p1, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    invoke-direct {v2, v3, v4}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    invoke-direct {v0, v1, v2, v5}, Lcom/autonavi/xm/navigation/server/poi/GCoordTel;-><init>(Lcom/autonavi/xm/navigation/server/poi/GCoordTelType;Lcom/autonavi/xm/navigation/server/GCoord;I)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/autonavi/navigation/api/data/a/c;->a:Lcom/autonavi/xm/navigation/engine/i;

    invoke-virtual {v2, v0, v1}, Lcom/autonavi/xm/navigation/engine/i;->a(Lcom/autonavi/xm/navigation/server/poi/GCoordTel;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v2, :cond_0

    aget v0, v1, v5

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public c(I)Ljava/util/List;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/poi/GAdareaList;

    iget-object v1, p0, Lcom/autonavi/navigation/api/data/a/c;->a:Lcom/autonavi/xm/navigation/engine/i;

    invoke-virtual {v1, p1, v0}, Lcom/autonavi/xm/navigation/engine/i;->a(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaList;->pAdarea:[Lcom/autonavi/xm/navigation/server/poi/GAdarea;

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/data/a/c;->a([Lcom/autonavi/xm/navigation/server/poi/GAdarea;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public d(I)I
    .locals 3

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GCoordTel;

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GCoordTelType;->COORDTEL_TYPE_TEL:Lcom/autonavi/xm/navigation/server/poi/GCoordTelType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/autonavi/xm/navigation/server/poi/GCoordTel;-><init>(Lcom/autonavi/xm/navigation/server/poi/GCoordTelType;Lcom/autonavi/xm/navigation/server/GCoord;I)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/autonavi/navigation/api/data/a/c;->a:Lcom/autonavi/xm/navigation/engine/i;

    invoke-virtual {v2, v0, v1}, Lcom/autonavi/xm/navigation/engine/i;->a(Lcom/autonavi/xm/navigation/server/poi/GCoordTel;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    aget v0, v1, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public e(I)Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;

    iget-object v1, p0, Lcom/autonavi/navigation/api/data/a/c;->a:Lcom/autonavi/xm/navigation/engine/i;

    invoke-virtual {v1, p1, v0}, Lcom/autonavi/xm/navigation/engine/i;->a(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/data/a/c;->a(Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;)Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(I)Z
    .locals 2

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/l;->a()Lcom/autonavi/xm/navigation/engine/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/navigation/engine/l;->a(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NO_DATA:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
