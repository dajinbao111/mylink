.class public final Lcom/autonavi/xm/ime/R$styleable;
.super Ljava/lang/Object;


# static fields
.field public static final CandidateListView:[I

.field public static final CandidateListView_divider:I = 0x0

.field public static final HandwritingBoard:[I

.field public static final HandwritingBoard_strokeColor:I = 0x1

.field public static final HandwritingBoard_strokeWidth:I

.field public static final SoftKey:[I

.field public static final SoftKey_keyCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [I

    const/high16 v1, 0x7f010000

    aput v1, v0, v2

    sput-object v0, Lcom/autonavi/xm/ime/R$styleable;->CandidateListView:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/autonavi/xm/ime/R$styleable;->HandwritingBoard:[I

    new-array v0, v3, [I

    const v1, 0x7f010001

    aput v1, v0, v2

    sput-object v0, Lcom/autonavi/xm/ime/R$styleable;->SoftKey:[I

    return-void

    :array_0
    .array-data 4
        0x7f010002
        0x7f010003
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
