.class public final enum Lcom/autonavi/xm/ime/InputMethodManager$InputMode;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

.field public static final enum FIRST_LETTER:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

.field public static final enum HANDWRITING:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

.field public static final enum LATIN:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

.field public static final enum PINYIN:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    const-string v1, "HANDWRITING"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->HANDWRITING:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    new-instance v0, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    const-string v1, "FIRST_LETTER"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->FIRST_LETTER:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    new-instance v0, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    const-string v1, "LATIN"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->LATIN:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    new-instance v0, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    const-string v1, "PINYIN"

    invoke-direct {v0, v1, v5}, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->PINYIN:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    sget-object v1, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->HANDWRITING:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->FIRST_LETTER:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->LATIN:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->PINYIN:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->$VALUES:[Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/ime/InputMethodManager$InputMode;
    .locals 1

    const-class v0, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/ime/InputMethodManager$InputMode;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->$VALUES:[Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    invoke-virtual {v0}, [Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    return-object v0
.end method
