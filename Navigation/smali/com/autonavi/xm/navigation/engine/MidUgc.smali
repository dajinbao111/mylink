.class public Lcom/autonavi/xm/navigation/engine/MidUgc;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native NUS_LoginCombStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method static native NUS_LoginParse([BI[Ljava/lang/String;)Z
.end method

.method static native NUS_MapLayerPoiUpdateCombStr(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method static native NUS_MapLayerPoiUpdateParse([BI)I
.end method

.method private static native native_GDBL_DelUPOI([II)I
.end method

.method private static native native_GDMID_AddUPOI(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native native_GDMID_ClearUPOI()I
.end method

.method private static native native_GDMID_EditUPOI(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native native_GDMID_GetUPOIAdareaList([Lcom/autonavi/xm/navigation/server/poi/GAdareaList;)I
.end method

.method private static native native_GDMID_SearchUPOI(IIIIIILjava/lang/String;[Lcom/autonavi/xm/navigation/server/upoi/GUPoiList;)I
.end method
