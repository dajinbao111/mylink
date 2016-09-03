.class public Lcom/autonavi/wh/ime/widget/InputMethodView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/autonavi/wh/ime/widget/CandidateListInterface$Callback;
.implements Lcom/autonavi/wh/ime/widget/InputMethodPicker$OnInputMethodPickedListener;
.implements Lcom/autonavi/wh/ime/widget/SoftKeyboard$OnOutputListener;


# static fields
.field private static INPUT_METHODS:[I = null

.field private static final INPUT_METHOD_LABELS:Landroid/util/SparseIntArray;

.field private static final PREF_KEY_LAST_INPUT_METHOD_ID:Ljava/lang/String; = "LAST_INPUT_METHOD_ID"

.field private static final SOFT_KEYBOARD_LAYOUTS:Landroid/util/SparseIntArray;


# instance fields
.field private mCandidateList:Lcom/autonavi/wh/ime/widget/CandidateListInterface;

.field private mCurrentInputAdapter:Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;

.field private mCurrentInputMethod:I

.field private mCurrentKeyboard:Lcom/autonavi/wh/ime/widget/SoftKeyboard;

.field private mEditText:Lcom/autonavi/wh/ime/widget/EditText;

.field private mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private mInputAdapters:Landroid/util/SparseArray;

.field private mInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mInputMethodPicker:Lcom/autonavi/wh/ime/widget/InputMethodPicker;

.field private mIsSymbolMode:Z

.field private mLayoutSoftKeyboards:Landroid/widget/FrameLayout;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mOnInputModeChangedListener:Lcom/autonavi/wh/ime/InputMethodManager$OnInputModeChangedListener;

.field private mOnPreferSizeChangedListener:Lcom/autonavi/wh/ime/widget/InputMethodView$OnPreferSizeChangedListener;

.field private mPredictionAdapter:Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;

.field private mPreferHeight:I

.field private mPreferWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->SOFT_KEYBOARD_LAYOUTS:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->INPUT_METHOD_LABELS:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->SOFT_KEYBOARD_LAYOUTS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_pinyin:I

    sget v2, Lcom/autonavi/wh/ime/R$layout;->soft_keyboard_simple:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->SOFT_KEYBOARD_LAYOUTS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_handwriting:I

    sget v2, Lcom/autonavi/wh/ime/R$layout;->soft_keyboard_handwriting:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->SOFT_KEYBOARD_LAYOUTS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_latin:I

    sget v2, Lcom/autonavi/wh/ime/R$layout;->soft_keyboard_simple:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->SOFT_KEYBOARD_LAYOUTS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_symbol:I

    sget v2, Lcom/autonavi/wh/ime/R$layout;->soft_keyboard_symbol:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->SOFT_KEYBOARD_LAYOUTS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_first_letter:I

    sget v2, Lcom/autonavi/wh/ime/R$layout;->soft_keyboard_first_letter:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->SOFT_KEYBOARD_LAYOUTS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_phone:I

    sget v2, Lcom/autonavi/wh/ime/R$layout;->soft_keyboard_phone:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->INPUT_METHOD_LABELS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_pinyin:I

    sget v2, Lcom/autonavi/wh/ime/R$string;->input_method_pinyin_label:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->INPUT_METHOD_LABELS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_handwriting:I

    sget v2, Lcom/autonavi/wh/ime/R$string;->input_method_handwriting_label:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->INPUT_METHOD_LABELS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_latin:I

    sget v2, Lcom/autonavi/wh/ime/R$string;->input_method_latin_label:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->INPUT_METHOD_LABELS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_symbol:I

    sget v2, Lcom/autonavi/wh/ime/R$string;->input_method_symbol_label:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->INPUT_METHOD_LABELS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_first_letter:I

    sget v2, Lcom/autonavi/wh/ime/R$string;->input_method_first_letter_label:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->INPUT_METHOD_LABELS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_phone:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputMethod:I

    iput-boolean v3, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mIsSymbolMode:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v3}, Lcom/autonavi/wh/ime/widget/InputMethodView;->onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->SOFT_KEYBOARD_LAYOUTS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_pinyin:I

    sget v2, Lcom/autonavi/wh/ime/R$layout;->soft_keyboard_simple:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->SOFT_KEYBOARD_LAYOUTS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_handwriting:I

    sget v2, Lcom/autonavi/wh/ime/R$layout;->soft_keyboard_handwriting:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->SOFT_KEYBOARD_LAYOUTS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_latin:I

    sget v2, Lcom/autonavi/wh/ime/R$layout;->soft_keyboard_simple:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->SOFT_KEYBOARD_LAYOUTS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_symbol:I

    sget v2, Lcom/autonavi/wh/ime/R$layout;->soft_keyboard_symbol:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->SOFT_KEYBOARD_LAYOUTS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_first_letter:I

    sget v2, Lcom/autonavi/wh/ime/R$layout;->soft_keyboard_first_letter:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->SOFT_KEYBOARD_LAYOUTS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_phone:I

    sget v2, Lcom/autonavi/wh/ime/R$layout;->soft_keyboard_phone:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->INPUT_METHOD_LABELS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_pinyin:I

    sget v2, Lcom/autonavi/wh/ime/R$string;->input_method_pinyin_label:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->INPUT_METHOD_LABELS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_handwriting:I

    sget v2, Lcom/autonavi/wh/ime/R$string;->input_method_handwriting_label:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->INPUT_METHOD_LABELS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_latin:I

    sget v2, Lcom/autonavi/wh/ime/R$string;->input_method_latin_label:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->INPUT_METHOD_LABELS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_symbol:I

    sget v2, Lcom/autonavi/wh/ime/R$string;->input_method_symbol_label:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->INPUT_METHOD_LABELS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_first_letter:I

    sget v2, Lcom/autonavi/wh/ime/R$string;->input_method_first_letter_label:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->INPUT_METHOD_LABELS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_phone:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputMethod:I

    iput-boolean v3, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mIsSymbolMode:Z

    invoke-direct {p0, p1, p2, v3}, Lcom/autonavi/wh/ime/widget/InputMethodView;->onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->SOFT_KEYBOARD_LAYOUTS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_pinyin:I

    sget v2, Lcom/autonavi/wh/ime/R$layout;->soft_keyboard_simple:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->SOFT_KEYBOARD_LAYOUTS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_handwriting:I

    sget v2, Lcom/autonavi/wh/ime/R$layout;->soft_keyboard_handwriting:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->SOFT_KEYBOARD_LAYOUTS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_latin:I

    sget v2, Lcom/autonavi/wh/ime/R$layout;->soft_keyboard_simple:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->SOFT_KEYBOARD_LAYOUTS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_symbol:I

    sget v2, Lcom/autonavi/wh/ime/R$layout;->soft_keyboard_symbol:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->SOFT_KEYBOARD_LAYOUTS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_first_letter:I

    sget v2, Lcom/autonavi/wh/ime/R$layout;->soft_keyboard_first_letter:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->SOFT_KEYBOARD_LAYOUTS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_phone:I

    sget v2, Lcom/autonavi/wh/ime/R$layout;->soft_keyboard_phone:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->INPUT_METHOD_LABELS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_pinyin:I

    sget v2, Lcom/autonavi/wh/ime/R$string;->input_method_pinyin_label:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->INPUT_METHOD_LABELS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_handwriting:I

    sget v2, Lcom/autonavi/wh/ime/R$string;->input_method_handwriting_label:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->INPUT_METHOD_LABELS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_latin:I

    sget v2, Lcom/autonavi/wh/ime/R$string;->input_method_latin_label:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->INPUT_METHOD_LABELS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_symbol:I

    sget v2, Lcom/autonavi/wh/ime/R$string;->input_method_symbol_label:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->INPUT_METHOD_LABELS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_first_letter:I

    sget v2, Lcom/autonavi/wh/ime/R$string;->input_method_first_letter_label:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->INPUT_METHOD_LABELS:Landroid/util/SparseIntArray;

    sget v1, Lcom/autonavi/wh/ime/R$id;->input_method_phone:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputMethod:I

    iput-boolean v3, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mIsSymbolMode:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/wh/ime/widget/InputMethodView;->onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/wh/ime/widget/InputMethodView;)Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mPredictionAdapter:Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/autonavi/wh/ime/widget/InputMethodView;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method private computePreferSize(I)V
    .locals 2

    iget v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mMaxWidth:I

    iput v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mPreferWidth:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mPreferWidth:I

    iget v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mPreferHeight:I

    invoke-direct {p0, v0, v1}, Lcom/autonavi/wh/ime/widget/InputMethodView;->notifyPreferSizeChanged(II)V

    return-void

    :pswitch_0
    iget v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mMaxHeight:I

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mPreferHeight:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mMaxHeight:I

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v0, v0, 0xb

    iput v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mPreferHeight:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mMaxHeight:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mPreferHeight:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private dimissInputMethodPicker()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputMethodPicker:Lcom/autonavi/wh/ime/widget/InputMethodPicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputMethodPicker:Lcom/autonavi/wh/ime/widget/InputMethodPicker;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/widget/InputMethodPicker;->dismiss()V

    :cond_0
    return-void
.end method

.method private doBtnTextBackClicked()V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mEditText:Lcom/autonavi/wh/ime/widget/EditText;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x43

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/ime/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method private getLastInputMethodId()I
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "LAST_INPUT_METHOD_ID"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/autonavi/wh/ime/widget/InputMethodView;->SOFT_KEYBOARD_LAYOUTS:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget v0, Lcom/autonavi/wh/ime/R$id;->input_method_handwriting:I

    :cond_1
    return v0
.end method

.method private notifyInputModeChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mOnInputModeChangedListener:Lcom/autonavi/wh/ime/InputMethodManager$OnInputModeChangedListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mOnInputModeChangedListener:Lcom/autonavi/wh/ime/InputMethodManager$OnInputModeChangedListener;

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->getCurrentInputMode()Lcom/autonavi/wh/ime/InputMethodManager$InputMode;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/wh/ime/InputMethodManager$OnInputModeChangedListener;->onInputModeChanged(Lcom/autonavi/wh/ime/InputMethodManager$InputMode;)V

    goto :goto_0
.end method

.method private notifyPreferSizeChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mOnPreferSizeChangedListener:Lcom/autonavi/wh/ime/widget/InputMethodView$OnPreferSizeChangedListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mOnPreferSizeChangedListener:Lcom/autonavi/wh/ime/widget/InputMethodView$OnPreferSizeChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/wh/ime/widget/InputMethodView$OnPreferSizeChangedListener;->onPreferSizeChanged(II)V

    goto :goto_0
.end method

.method private offsetCursor(I)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const v2, 0x7fffffff

    invoke-interface {v1, v2, v0}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    if-gez p1, :cond_2

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr v0, p1

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1, v0, v0}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    goto :goto_0

    :cond_2
    if-lez p1, :cond_0

    iget-object v2, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v2, p1, v0}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt p1, v2, :cond_0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :cond_3
    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1, v0, v0}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    goto :goto_0
.end method

.method private onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/autonavi/wh/ime/R$array;->input_method_ids:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    new-array v0, v3, [I

    sput-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->INPUT_METHODS:[I

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    sget-object v4, Lcom/autonavi/wh/ime/widget/InputMethodView;->INPUT_METHODS:[I

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->setOrientation(I)V

    sget v0, Lcom/autonavi/wh/ime/R$layout;->input_method_view:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/autonavi/wh/ime/R$id;->candidates:I

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/ime/widget/CandidateListInterface;

    iput-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCandidateList:Lcom/autonavi/wh/ime/widget/CandidateListInterface;

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCandidateList:Lcom/autonavi/wh/ime/widget/CandidateListInterface;

    invoke-interface {v0, p0}, Lcom/autonavi/wh/ime/widget/CandidateListInterface;->setCallback(Lcom/autonavi/wh/ime/widget/CandidateListInterface$Callback;)V

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCandidateList:Lcom/autonavi/wh/ime/widget/CandidateListInterface;

    sget v1, Lcom/autonavi/wh/ime/R$id;->previousPage:I

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/ime/widget/InputMethodView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/autonavi/wh/ime/R$id;->nextPage:I

    invoke-virtual {p0, v2}, Lcom/autonavi/wh/ime/widget/InputMethodView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/autonavi/wh/ime/widget/CandidateListInterface;->setPageTurningView(Landroid/view/View;Landroid/view/View;)V

    sget v0, Lcom/autonavi/wh/ime/R$id;->soft_keyboards:I

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mLayoutSoftKeyboards:Landroid/widget/FrameLayout;

    return-void
.end method

.method private performEditorAction()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto :goto_0
.end method

.method private reset()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputAdapter:Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputAdapter:Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentKeyboard:Lcom/autonavi/wh/ime/widget/SoftKeyboard;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentKeyboard:Lcom/autonavi/wh/ime/widget/SoftKeyboard;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->reset()V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCandidateList:Lcom/autonavi/wh/ime/widget/CandidateListInterface;

    invoke-interface {v0}, Lcom/autonavi/wh/ime/widget/CandidateListInterface;->reset()V

    return-void
.end method

.method private saveLastInputMethodId()V
    .locals 3

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LAST_INPUT_METHOD_ID"

    iget v2, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputMethod:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setSoftKeyboard(I)V
    .locals 8

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->reset()V

    sget-object v0, Lcom/autonavi/wh/ime/widget/InputMethodView;->SOFT_KEYBOARD_LAYOUTS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    iget-object v6, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mLayoutSoftKeyboards:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/ime/widget/SoftKeyboard;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/ime/widget/SoftKeyboard;

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->setId(I)V

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->setOnOutputListener(Lcom/autonavi/wh/ime/widget/SoftKeyboard$OnOutputListener;)V

    :cond_0
    move-object v1, v0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputAdapters:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;

    :cond_1
    if-nez v0, :cond_4

    sget v2, Lcom/autonavi/wh/ime/R$id;->input_method_pinyin:I

    if-ne p1, v2, :cond_5

    new-instance v0, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;

    iget-object v2, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCandidateList:Lcom/autonavi/wh/ime/widget/CandidateListInterface;

    invoke-direct {v0, p0, v2}, Lcom/autonavi/wh/ime/widget/InputMethodView$PinyinAdapter;-><init>(Lcom/autonavi/wh/ime/widget/InputMethodView;Lcom/autonavi/wh/ime/widget/CandidateListInterface;)V

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputAdapters:Landroid/util/SparseArray;

    if-nez v2, :cond_3

    new-instance v2, Landroid/util/SparseArray;

    const/4 v5, 0x6

    invoke-direct {v2, v5}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputAdapters:Landroid/util/SparseArray;

    :cond_3
    iget-object v2, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputAdapters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/autonavi/wh/ime/R$integer;->keycode_pick_input_method:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sget-object v7, Lcom/autonavi/wh/ime/widget/InputMethodView;->INPUT_METHOD_LABELS:Landroid/util/SparseIntArray;

    sget v2, Lcom/autonavi/wh/ime/R$id;->input_method_symbol:I

    if-eq p1, v2, :cond_c

    move v2, p1

    :goto_1
    invoke-virtual {v7, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v1, v5, v2}, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->setKeyText(II)V

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v5, v2

    :goto_2
    if-ltz v5, :cond_e

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-ne v7, v1, :cond_d

    move v2, v3

    :goto_3
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v5, -0x1

    move v5, v2

    goto :goto_2

    :cond_5
    sget v2, Lcom/autonavi/wh/ime/R$id;->input_method_handwriting:I

    if-ne p1, v2, :cond_8

    sget v0, Lcom/autonavi/wh/ime/R$id;->candidates:I

    invoke-virtual {v1, v0}, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/ime/widget/CandidateListInterface;

    if-eqz v0, :cond_6

    invoke-interface {v0, p0}, Lcom/autonavi/wh/ime/widget/CandidateListInterface;->setCallback(Lcom/autonavi/wh/ime/widget/CandidateListInterface$Callback;)V

    sget v2, Lcom/autonavi/wh/ime/R$id;->previousPage:I

    invoke-virtual {v1, v2}, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v5, Lcom/autonavi/wh/ime/R$id;->nextPage:I

    invoke-virtual {v1, v5}, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Lcom/autonavi/wh/ime/widget/CandidateListInterface;->setPageTurningView(Landroid/view/View;Landroid/view/View;)V

    :cond_6
    new-instance v2, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;

    if-eqz v0, :cond_7

    :goto_4
    invoke-direct {v2, p0, v0}, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;-><init>(Lcom/autonavi/wh/ime/widget/InputMethodView;Lcom/autonavi/wh/ime/widget/CandidateListInterface;)V

    move-object v0, v2

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCandidateList:Lcom/autonavi/wh/ime/widget/CandidateListInterface;

    goto :goto_4

    :cond_8
    sget v2, Lcom/autonavi/wh/ime/R$id;->input_method_latin:I

    if-ne p1, v2, :cond_9

    new-instance v0, Lcom/autonavi/wh/ime/widget/InputMethodView$LatinAdapter;

    iget-object v2, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCandidateList:Lcom/autonavi/wh/ime/widget/CandidateListInterface;

    invoke-direct {v0, p0, v2}, Lcom/autonavi/wh/ime/widget/InputMethodView$LatinAdapter;-><init>(Lcom/autonavi/wh/ime/widget/InputMethodView;Lcom/autonavi/wh/ime/widget/CandidateListInterface;)V

    goto :goto_0

    :cond_9
    sget v2, Lcom/autonavi/wh/ime/R$id;->input_method_symbol:I

    if-ne p1, v2, :cond_a

    new-instance v0, Lcom/autonavi/wh/ime/widget/InputMethodView$SymbolAdapter;

    iget-object v2, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCandidateList:Lcom/autonavi/wh/ime/widget/CandidateListInterface;

    invoke-direct {v0, p0, v2}, Lcom/autonavi/wh/ime/widget/InputMethodView$SymbolAdapter;-><init>(Lcom/autonavi/wh/ime/widget/InputMethodView;Lcom/autonavi/wh/ime/widget/CandidateListInterface;)V

    goto/16 :goto_0

    :cond_a
    sget v2, Lcom/autonavi/wh/ime/R$id;->input_method_first_letter:I

    if-ne p1, v2, :cond_b

    new-instance v0, Lcom/autonavi/wh/ime/widget/InputMethodView$FirstLetterAdapter;

    iget-object v2, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCandidateList:Lcom/autonavi/wh/ime/widget/CandidateListInterface;

    invoke-direct {v0, p0, v2}, Lcom/autonavi/wh/ime/widget/InputMethodView$FirstLetterAdapter;-><init>(Lcom/autonavi/wh/ime/widget/InputMethodView;Lcom/autonavi/wh/ime/widget/CandidateListInterface;)V

    goto/16 :goto_0

    :cond_b
    sget v2, Lcom/autonavi/wh/ime/R$id;->input_method_phone:I

    if-ne p1, v2, :cond_2

    new-instance v0, Lcom/autonavi/wh/ime/widget/InputMethodView$SymbolAdapter;

    iget-object v2, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCandidateList:Lcom/autonavi/wh/ime/widget/CandidateListInterface;

    invoke-direct {v0, p0, v2}, Lcom/autonavi/wh/ime/widget/InputMethodView$SymbolAdapter;-><init>(Lcom/autonavi/wh/ime/widget/InputMethodView;Lcom/autonavi/wh/ime/widget/CandidateListInterface;)V

    goto/16 :goto_0

    :cond_c
    iget v2, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputMethod:I

    goto :goto_1

    :cond_d
    move v2, v4

    goto :goto_3

    :cond_e
    iput-object v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentKeyboard:Lcom/autonavi/wh/ime/widget/SoftKeyboard;

    iput-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputAdapter:Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputAdapter:Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;->getCandidateListType()I

    move-result v0

    sget v1, Lcom/autonavi/wh/ime/R$id;->candidates_bar:I

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/ime/widget/InputMethodView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    :goto_5
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->computePreferSize(I)V

    sget v0, Lcom/autonavi/wh/ime/R$id;->input_method_phone:I

    if-eq p1, v0, :cond_f

    sget v0, Lcom/autonavi/wh/ime/R$id;->input_method_symbol:I

    if-eq p1, v0, :cond_f

    iput p1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputMethod:I

    invoke-direct {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->saveLastInputMethodId()V

    invoke-direct {p0, p1}, Lcom/autonavi/wh/ime/widget/InputMethodView;->notifyInputModeChanged(I)V

    :cond_f
    return-void

    :cond_10
    move v3, v4

    goto :goto_5
.end method

.method private showInputMethodPicker()V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputMethodPicker:Lcom/autonavi/wh/ime/widget/InputMethodPicker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/ime/widget/InputMethodPicker;

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/wh/ime/widget/InputMethodPicker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputMethodPicker:Lcom/autonavi/wh/ime/widget/InputMethodPicker;

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputMethodPicker:Lcom/autonavi/wh/ime/widget/InputMethodPicker;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/ime/widget/InputMethodPicker;->setOnInputMethodPickedListener(Lcom/autonavi/wh/ime/widget/InputMethodPicker$OnInputMethodPickedListener;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputMethodPicker:Lcom/autonavi/wh/ime/widget/InputMethodPicker;

    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentKeyboard:Lcom/autonavi/wh/ime/widget/SoftKeyboard;

    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/autonavi/wh/ime/R$integer;->keycode_pick_input_method:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->findViewByKeyCode(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/ime/widget/InputMethodPicker;->show(Landroid/view/View;)V

    return-void
.end method

.method private switchInputMethod()V
    .locals 6

    const/4 v0, 0x0

    sget-object v2, Lcom/autonavi/wh/ime/widget/InputMethodView;->INPUT_METHODS:[I

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v2, v0

    iget v5, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputMethod:I

    if-ne v4, v5, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    sget-object v1, Lcom/autonavi/wh/ime/widget/InputMethodView;->INPUT_METHODS:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    sget-object v1, Lcom/autonavi/wh/ime/widget/InputMethodView;->INPUT_METHODS:[I

    aget v0, v1, v0

    invoke-direct {p0, v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->setSoftKeyboard(I)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputAdapter:Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputAdapter:Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;->afterTextChanged(Landroid/text/Editable;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputAdapter:Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputAdapter:Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    :cond_0
    return-void
.end method

.method commitSpaceCharacter()V
    .locals 1

    const-string v0, " "

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->commitText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method commitText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0
.end method

.method public connect(Lcom/autonavi/wh/ime/widget/EditText;)V
    .locals 2

    new-instance v0, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    iput-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iput-object p1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mEditText:Lcom/autonavi/wh/ime/widget/EditText;

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p1, v0}, Lcom/autonavi/wh/ime/widget/EditText;->createInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p1, p0}, Lcom/autonavi/wh/ime/widget/EditText;->setImeTextWatcher(Landroid/text/TextWatcher;)V

    iget v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputMethod:I

    if-gez v0, :cond_1

    invoke-direct {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->getLastInputMethodId()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputMethod:I

    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v1, v1, 0xff0

    if-eqz v1, :cond_0

    sget v0, Lcom/autonavi/wh/ime/R$id;->input_method_first_letter:I

    :cond_0
    :goto_1
    invoke-direct {p0, v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->setSoftKeyboard(I)V

    return-void

    :cond_1
    iget v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputMethod:I

    goto :goto_0

    :pswitch_0
    sget v0, Lcom/autonavi/wh/ime/R$id;->input_method_phone:I

    goto :goto_1

    :pswitch_1
    sget v0, Lcom/autonavi/wh/ime/R$id;->input_method_symbol:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method deleteSurroundingText(II)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0
.end method

.method public disconnect()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->reset()V

    invoke-direct {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->dimissInputMethodPicker()V

    iput-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mPredictionAdapter:Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;

    iput-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mOnInputModeChangedListener:Lcom/autonavi/wh/ime/InputMethodManager$OnInputModeChangedListener;

    iput-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iput-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-void
.end method

.method finishComposingText()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    goto :goto_0
.end method

.method public getCurrentInputMode()Lcom/autonavi/wh/ime/InputMethodManager$InputMode;
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputMethod:I

    sget v2, Lcom/autonavi/wh/ime/R$id;->input_method_handwriting:I

    if-ne v1, v2, :cond_1

    sget-object v0, Lcom/autonavi/wh/ime/InputMethodManager$InputMode;->HANDWRITING:Lcom/autonavi/wh/ime/InputMethodManager$InputMode;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputMethod:I

    sget v2, Lcom/autonavi/wh/ime/R$id;->input_method_first_letter:I

    if-ne v1, v2, :cond_2

    sget-object v0, Lcom/autonavi/wh/ime/InputMethodManager$InputMode;->FIRST_LETTER:Lcom/autonavi/wh/ime/InputMethodManager$InputMode;

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputMethod:I

    sget v2, Lcom/autonavi/wh/ime/R$id;->input_method_pinyin:I

    if-ne v1, v2, :cond_3

    sget-object v0, Lcom/autonavi/wh/ime/InputMethodManager$InputMode;->PINYIN:Lcom/autonavi/wh/ime/InputMethodManager$InputMode;

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputMethod:I

    sget v2, Lcom/autonavi/wh/ime/R$id;->input_method_latin:I

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/autonavi/wh/ime/InputMethodManager$InputMode;->LATIN:Lcom/autonavi/wh/ime/InputMethodManager$InputMode;

    goto :goto_0
.end method

.method public getPreferHeight()I
    .locals 1

    iget v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mPreferHeight:I

    return v0
.end method

.method public getPreferWidth()I
    .locals 1

    iget v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mPreferWidth:I

    return v0
.end method

.method public onCandidateSelected(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputAdapter:Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputAdapter:Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;->onCandidateSelected(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    return-void
.end method

.method public onInputMethodPicked(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/wh/ime/widget/InputMethodView;->setSoftKeyboard(I)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputAdapter:Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputAdapter:Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;

    invoke-virtual {v0, p3}, Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;->input(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOutput(Lcom/autonavi/wh/ime/widget/SoftKeyboard;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v0, p2, Landroid/view/KeyEvent;

    if-eqz v0, :cond_b

    move-object v0, p2

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_1

    invoke-direct {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->performEditorAction()V

    :goto_0
    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputAdapter:Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/autonavi/wh/ime/handwriting/WritingPath;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputAdapter:Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;

    instance-of v0, v0, Lcom/autonavi/wh/ime/widget/InputMethodView$HandwritingAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputAdapter:Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;

    invoke-virtual {v0, p2}, Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;->input(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/16 v4, 0x43

    if-ne v3, v4, :cond_2

    invoke-direct {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->doBtnTextBackClicked()V

    goto :goto_0

    :cond_2
    const/16 v4, 0x15

    if-ne v3, v4, :cond_3

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->offsetCursor(I)V

    goto :goto_0

    :cond_3
    const/16 v4, 0x16

    if-ne v3, v4, :cond_4

    invoke-direct {p0, v1}, Lcom/autonavi/wh/ime/widget/InputMethodView;->offsetCursor(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/autonavi/wh/ime/R$integer;->keycode_pick_input_method:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-ne v3, v4, :cond_6

    invoke-virtual {v0}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->showInputMethodPicker()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->switchInputMethod()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/autonavi/wh/ime/R$integer;->keycode_toggle_symbol:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne v3, v0, :cond_9

    iget-boolean v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mIsSymbolMode:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputMethod:I

    :goto_2
    invoke-direct {p0, v0}, Lcom/autonavi/wh/ime/widget/InputMethodView;->setSoftKeyboard(I)V

    iget-boolean v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mIsSymbolMode:Z

    if-nez v0, :cond_8

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mIsSymbolMode:Z

    goto :goto_0

    :cond_7
    sget v0, Lcom/autonavi/wh/ime/R$id;->input_method_symbol:I

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_3

    :cond_9
    move v1, v2

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputAdapter:Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;

    invoke-virtual {v0, p2}, Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;->input(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_b
    move v1, v2

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputAdapter:Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentInputAdapter:Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;->onTextChanged(Ljava/lang/CharSequence;III)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputAdapters:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/widget/InputMethodView$BaseInputAdapter;->release()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputAdapters:Landroid/util/SparseArray;

    :cond_1
    return-void
.end method

.method setComposingRegion(II)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    goto :goto_0
.end method

.method setComposingText(Ljava/lang/CharSequence;I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_0
.end method

.method public setMaxHeight(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mMaxHeight:I

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mMaxWidth:I

    return-void
.end method

.method public setOnInputModeChangedListener(Lcom/autonavi/wh/ime/InputMethodManager$OnInputModeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mOnInputModeChangedListener:Lcom/autonavi/wh/ime/InputMethodManager$OnInputModeChangedListener;

    return-void
.end method

.method public setOnPreferSizeChangedListener(Lcom/autonavi/wh/ime/widget/InputMethodView$OnPreferSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mOnPreferSizeChangedListener:Lcom/autonavi/wh/ime/widget/InputMethodView$OnPreferSizeChangedListener;

    return-void
.end method

.method public setPredictionAdapter(Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mPredictionAdapter:Lcom/autonavi/wh/ime/InputMethodManager$PredictionAdapter;

    return-void
.end method

.method public setSoftKeyEnabled(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentKeyboard:Lcom/autonavi/wh/ime/widget/SoftKeyboard;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/InputMethodView;->mCurrentKeyboard:Lcom/autonavi/wh/ime/widget/SoftKeyboard;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/wh/ime/widget/SoftKeyboard;->setSoftKeyEnabled(IZ)V

    goto :goto_0
.end method
