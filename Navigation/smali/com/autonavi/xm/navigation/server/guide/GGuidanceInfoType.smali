.class public final enum Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum G_GUIDE_FOLLOWCUR_STREET:Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;

.field public static final enum G_GUIDE_NORMAL_GUIDANCE:Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;

.field public static final enum G_GUIDE_PREFOLLOWING_GUIDANCE:Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;

.field public static final enum G_GUIDE_PRENORMAL_GUIDANCE:Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;

.field public static final enum G_GUIDE_SIMPLE_GUIDANCE:Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;

.field private static final synthetic a:[Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;

    const-string v1, "G_GUIDE_NORMAL_GUIDANCE"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;->G_GUIDE_NORMAL_GUIDANCE:Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;

    const-string v1, "G_GUIDE_SIMPLE_GUIDANCE"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;->G_GUIDE_SIMPLE_GUIDANCE:Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;

    const-string v1, "G_GUIDE_FOLLOWCUR_STREET"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;->G_GUIDE_FOLLOWCUR_STREET:Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;

    const-string v1, "G_GUIDE_PRENORMAL_GUIDANCE"

    invoke-direct {v0, v1, v5}, Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;->G_GUIDE_PRENORMAL_GUIDANCE:Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;

    const-string v1, "G_GUIDE_PREFOLLOWING_GUIDANCE"

    invoke-direct {v0, v1, v6}, Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;->G_GUIDE_PREFOLLOWING_GUIDANCE:Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;->G_GUIDE_NORMAL_GUIDANCE:Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;->G_GUIDE_SIMPLE_GUIDANCE:Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;->G_GUIDE_FOLLOWCUR_STREET:Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;->G_GUIDE_PRENORMAL_GUIDANCE:Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;->G_GUIDE_PREFOLLOWING_GUIDANCE:Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;->a:[Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;->values()[Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;->a:[Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/guide/GGuidanceInfoType;

    return-object v0
.end method
