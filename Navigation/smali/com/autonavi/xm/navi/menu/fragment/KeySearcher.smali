.class public Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;
.super Lcom/autonavi/xm/navi/search/Searcher;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/autonavi/xm/ime/InputMethodManager$OnInputModeChangedListener;
.implements Lcom/autonavi/xm/ime/InputMethodManager$PredictionAdapter;
.implements Lcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;


# static fields
.field public static final BASE_POINT_ALONG_ROUTE:I = 0x3

.field public static final BASE_POINT_DEST:I = 0x2

.field public static final BASE_POINT_MAP_CENTER:I = 0x1

.field public static final BASE_POINT_MY_LOC:I = 0x0

.field public static final EXTRA_BASE_POINT:Ljava/lang/String; = "extra_base_point"

.field public static final EXTRA_SEARCH_TYPE:Ljava/lang/String; = "extra_search_type"

.field public static final MAX_PREDICTION_POI_NUMBER:I = 0xa

.field public static final REQUEST_CODE_PICK_AREA:I = 0x0

.field public static final SEARCH_TYPE_ADDRESS:I = 0x2

.field public static final SEARCH_TYPE_AROUND:I = 0x6

.field public static final SEARCH_TYPE_CATEGORY:I = 0x5

.field public static final SEARCH_TYPE_INTERSECTION:I = 0x3

.field public static final SEARCH_TYPE_NAME:I = 0x1

.field public static final SEARCH_TYPE_PHONE:I = 0x4


# instance fields
.field private final CITYKEYSIZE:I

.field private final SEARCHKEYSIZE:I

.field private handler:Landroid/os/Handler;

.field private isSaveKeyWord:Z

.field private isShowInputMethodView:Z

.field private mAdapter:Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;

.field private mAdminAreaSelected:Lcom/autonavi/navigation/api/data/model/AdminArea;

.field private mAdminCode:I

.field private mBasePoint:Lcom/autonavi/navigation/api/poi/model/Poi;

.field private mBtnBack:Landroid/widget/ImageButton;

.field private mBtnCityPicker:Landroid/widget/Button;

.field private mBtnPageDown:Landroid/view/View;

.field private mBtnPageUp:Landroid/view/View;

.field private mBtnTestSearch:Landroid/widget/Button;

.field private mBundle:Landroid/os/Bundle;

.field private final mCityCodeKeyList:Ljava/util/List;

.field private mCityCodePreKeyList:Ljava/util/List;

.field private final mCityCodeSpName:Ljava/lang/String;

.field private mCityKeyListAdapter:Lcom/autonavi/xm/navi/base/widget/CityKeyListAdapter;

.field private mCityNameKeyList:Ljava/util/List;

.field private final mCityNameSpName:Ljava/lang/String;

.field private final mCityRecordDatas:Ljava/util/ArrayList;

.field private mCityRecordListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

.field private final mCitySpName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCtiySp:Landroid/content/SharedPreferences;

.field private mCurrentInputMode:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

.field private mDistanceComparator:Ljava/util/Comparator;

.field private mEtKey:Lcom/autonavi/xm/ime/widget/EditText;

.field mFooterBt:Landroid/widget/Button;

.field mFooterView:Landroid/view/View;

.field private mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

.field private mImgClear:Landroid/widget/ImageView;

.field private mInputMethodView:Lcom/autonavi/xm/ime/widget/InputMethodView;

.field private mIsProvince:Z

.field private final mIsSearchAround:Z

.field private final mIsSearchByAddress:Z

.field private mIsSearchByPhone:Z

.field private mMarginLayout:Landroid/widget/LinearLayout;

.field mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mPagedList:Lcom/autonavi/xm/navi/base/widget/PagedListView;

.field private mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

.field private mPredictionPanel:Landroid/widget/RelativeLayout;

.field private final mSearchRecordDatas:Ljava/util/ArrayList;

.field private mSearchRecordListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

.field private mSearchSync:Z

.field private mSearchText:Ljava/lang/String;

.field private mSearchType:I

.field private mSearcherKeyList:Ljava/util/List;

.field private mSp:Landroid/content/SharedPreferences;

.field private mSyncCount:I

.field private mlistViewLL:Landroid/widget/RelativeLayout;

.field private optionsAdapter:Lcom/autonavi/xm/navi/base/widget/EditTextSelecterAdapter;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/autonavi/xm/navi/search/Searcher;-><init>()V

    iput v3, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdminCode:I

    iput-boolean v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchSync:Z

    iput-boolean v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->isSaveKeyWord:Z

    iput v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSyncCount:I

    iput-boolean v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mIsProvince:Z

    iput-boolean v3, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mIsSearchByAddress:Z

    iput-boolean v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mIsSearchAround:Z

    iput-boolean v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mIsSearchByPhone:Z

    iput-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->optionsAdapter:Lcom/autonavi/xm/navi/base/widget/EditTextSelecterAdapter;

    iput-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityKeyListAdapter:Lcom/autonavi/xm/navi/base/widget/CityKeyListAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchRecordDatas:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityRecordDatas:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSp:Landroid/content/SharedPreferences;

    iput-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCtiySp:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearcherKeyList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityNameKeyList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityCodePreKeyList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityCodeKeyList:Ljava/util/List;

    const/4 v0, 0x5

    iput v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->SEARCHKEYSIZE:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->CITYKEYSIZE:I

    iput-boolean v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->isShowInputMethodView:Z

    iput-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdminAreaSelected:Lcom/autonavi/navigation/api/data/model/AdminArea;

    const-string v0, "CityKeyString"

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCitySpName:Ljava/lang/String;

    const-string v0, "CityNameKeyString"

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityNameSpName:Ljava/lang/String;

    const-string v0, "CityCodeKeyString"

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityCodeSpName:Ljava/lang/String;

    new-instance v0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher$4;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher$4;-><init>(Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->isShowInputMethodView:Z

    return v0
.end method

.method static synthetic access$100(Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->showInputMethodView()V

    return-void
.end method

.method static synthetic access$1000(Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->doSearch(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$200(Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->clearSearchKeyOnXml()V

    return-void
.end method

.method static synthetic access$300(Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->loadSearchKeyFromXml()V

    return-void
.end method

.method static synthetic access$400(Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->initDatas()V

    return-void
.end method

.method static synthetic access$500(Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->clearCityKeyOnXml()V

    return-void
.end method

.method static synthetic access$600(Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->loadCityKeyFromXml()V

    return-void
.end method

.method static synthetic access$700(Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->initCityDatas()V

    return-void
.end method

.method static synthetic access$800(Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->isUserInteractable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$902(Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchSync:Z

    return p1
.end method

.method private clearCityKeyOnXml()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityNameKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityCodePreKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityRecordDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCtiySp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private clearSearchKeyOnXml()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearcherKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchRecordDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private dissMissInputMethodView()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->isShowInputMethodView:Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mlistViewLL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mInputMethodView:Lcom/autonavi/xm/ime/widget/InputMethodView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/ime/widget/InputMethodView;->setVisibility(I)V

    return-void
.end method

.method private doBtnTextBackClicked()V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mEtKey:Lcom/autonavi/xm/ime/widget/EditText;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x43

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/ime/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method private doSearch(Ljava/lang/Boolean;)V
    .locals 7

    const v0, 0x7f0b00a4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mEtKey:Lcom/autonavi/xm/ime/widget/EditText;

    invoke-virtual {v3}, Lcom/autonavi/xm/ime/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "times"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keyword = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/autonavi/xm/navi/base/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v1, v0}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_3

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCurrentInputMode:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    sget-object v3, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->FIRST_LETTER:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    if-ne v2, v3, :cond_2

    const v0, 0x7f0b00a5

    :cond_2
    invoke-virtual {v1, v0}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mEtKey:Lcom/autonavi/xm/ime/widget/EditText;

    invoke-virtual {v0}, Lcom/autonavi/xm/ime/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->isSaveKeyWord:Z

    if-eqz v0, :cond_4

    invoke-direct {p0, v3}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->saveSearchKeyToXml(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->loadSearchKeyFromXml()V

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->initDatas()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdminAreaSelected:Lcom/autonavi/navigation/api/data/model/AdminArea;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdminAreaSelected:Lcom/autonavi/navigation/api/data/model/AdminArea;

    iget-object v0, v0, Lcom/autonavi/navigation/api/data/model/AdminArea;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdminAreaSelected:Lcom/autonavi/navigation/api/data/model/AdminArea;

    iget v4, v4, Lcom/autonavi/navigation/api/data/model/AdminArea;->adminCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->saveCityKeyToXml(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->loadCityKeyFromXml()V

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->initCityDatas()V

    :cond_4
    iget v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchSync:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    iget v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdminCode:I

    invoke-virtual {p0, v3, v0, v1}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->searchByKeyword(Ljava/lang/String;ZI)V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :pswitch_1
    iget-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchSync:Z

    if-nez v0, :cond_6

    :goto_2
    iget v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdminCode:I

    invoke-virtual {p0, v3, v1, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->searchByAddress(Ljava/lang/String;ZI)V

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_2

    :pswitch_2
    iget-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchSync:Z

    if-nez v0, :cond_7

    :goto_3
    iget v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdminCode:I

    invoke-virtual {p0, v3, v1, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->searchIntersection(Ljava/lang/String;ZI)V

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_3

    :pswitch_3
    iget-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchSync:Z

    if-nez v0, :cond_8

    :goto_4
    iget v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdminCode:I

    invoke-virtual {p0, v3, v1, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->searchByPhone(Ljava/lang/String;ZI)V

    goto :goto_0

    :cond_8
    move v1, v2

    goto :goto_4

    :pswitch_4
    iget-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchSync:Z

    if-nez v0, :cond_9

    :goto_5
    iget v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdminCode:I

    invoke-virtual {p0, v3, v1, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->searchIntersection(Ljava/lang/String;ZI)V

    goto/16 :goto_0

    :cond_9
    move v1, v2

    goto :goto_5

    :pswitch_5
    const/4 v0, 0x0

    iget-boolean v4, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchSync:Z

    if-nez v4, :cond_a

    :goto_6
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->searchByName(Lcom/autonavi/navigation/api/poi/model/Poi;ILjava/lang/String;Z)V

    goto/16 :goto_0

    :cond_a
    move v1, v2

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private doSearchSync(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCurrentInputMode:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->isNeedPrediction(Lcom/autonavi/xm/ime/InputMethodManager$InputMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCurrentInputMode:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    sget-object v1, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->FIRST_LETTER:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->updateSoftKeyboard(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->setPoiData([Lcom/autonavi/navigation/api/poi/model/Poi;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCurrentInputMode:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    sget-object v1, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->HANDWRITING:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchSync:Z

    iget v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSyncCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSyncCount:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->doSearch(Ljava/lang/Boolean;)V

    :cond_2
    return-void

    :cond_3
    iput-boolean v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchSync:Z

    iget v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSyncCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSyncCount:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->doSearch(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private getBasePointType()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v2, "extra_base_point"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getCityAdminCode(Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p1, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->adminCode:I

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdminCode:I

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->isMunicipality()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->provinceName:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mBtnCityPicker:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/autonavi/navigation/api/data/model/AdminArea;

    iget v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdminCode:I

    invoke-direct {v1, v2, v0, v3, v3}, Lcom/autonavi/navigation/api/data/model/AdminArea;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iput-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdminAreaSelected:Lcom/autonavi/navigation/api/data/model/AdminArea;

    return-void

    :cond_0
    iget-object v0, p1, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->cityName:Ljava/lang/String;

    goto :goto_0
.end method

.method private getDistanceComparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mDistanceComparator:Ljava/util/Comparator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher$3;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher$3;-><init>(Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mDistanceComparator:Ljava/util/Comparator;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mDistanceComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method private getSearchType()I
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mBundle:Landroid/os/Bundle;

    const-string v2, "extra_search_type"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method private getSearcherSpName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "SearcherKeyStringForName"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string v0, "SearcherKeyStringForAddress"

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const-string v0, "SearcherKeyStringForIntersection"

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const-string v0, "SearcherKeyStringForPhone"

    goto :goto_0

    :cond_3
    const/4 v0, 0x6

    if-ne p1, v0, :cond_4

    const-string v0, "SearcherKeyStringForAround"

    goto :goto_0

    :cond_4
    const-string v0, "SearcherKeyString"

    goto :goto_0
.end method

.method private initCityDatas()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityRecordDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityNameKeyList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityNameKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityNameKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityRecordDatas:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityNameKeyList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityCodePreKeyList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityCodePreKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityCodeKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityCodePreKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityCodeKeyList:Ljava/util/List;

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityCodePreKeyList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private initCityRecodeView()V
    .locals 4

    const v0, 0x7f0800f3

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mlistViewLL:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mlistViewLL:Landroid/widget/RelativeLayout;

    const v1, 0x7f0800f6

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navi/base/widget/CircularListView;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityRecordListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->loadCityKeyFromXml()V

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->initCityDatas()V

    new-instance v0, Lcom/autonavi/xm/navi/base/widget/CityKeyListAdapter;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityRecordDatas:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navi/base/widget/CityKeyListAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityKeyListAdapter:Lcom/autonavi/xm/navi/base/widget/CityKeyListAdapter;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityRecordListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityKeyListAdapter:Lcom/autonavi/xm/navi/base/widget/CityKeyListAdapter;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityRecordListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    invoke-virtual {v0, p0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private initDatas()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchRecordDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearcherKeyList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearcherKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearcherKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchRecordDatas:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearcherKeyList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initPredictionPanel()V
    .locals 3

    const v2, 0x7f0800f1

    const v1, 0x7f0800ef

    const v0, 0x7f0800f2

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navi/base/widget/PagedListView;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mPagedList:Lcom/autonavi/xm/navi/base/widget/PagedListView;

    invoke-virtual {p0, v2}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mBtnPageDown:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mBtnPageUp:Landroid/view/View;

    const v0, 0x7f0800f0

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mMarginLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mPagedList:Lcom/autonavi/xm/navi/base/widget/PagedListView;

    invoke-virtual {v0, v2}, Lcom/autonavi/xm/navi/base/widget/PagedListView;->setPageDownButton(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mPagedList:Lcom/autonavi/xm/navi/base/widget/PagedListView;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/base/widget/PagedListView;->setPageUpButton(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mPagedList:Lcom/autonavi/xm/navi/base/widget/PagedListView;

    invoke-virtual {v0, p0}, Lcom/autonavi/xm/navi/base/widget/PagedListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdapter:Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mPagedList:Lcom/autonavi/xm/navi/base/widget/PagedListView;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdapter:Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/base/widget/PagedListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->setPoiData([Lcom/autonavi/navigation/api/poi/model/Poi;)V

    return-void
.end method

.method private initSearchRecodeView()V
    .locals 4

    const v0, 0x7f0800f3

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mlistViewLL:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mlistViewLL:Landroid/widget/RelativeLayout;

    const v1, 0x7f0800f7

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mFooterBt:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mFooterBt:Landroid/widget/Button;

    new-instance v1, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher$2;

    invoke-direct {v1, p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher$2;-><init>(Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mlistViewLL:Landroid/widget/RelativeLayout;

    const v1, 0x7f0800f8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navi/base/widget/CircularListView;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchRecordListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->handler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->dissMissInputMethodView()V

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->loadSearchKeyFromXml()V

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->initDatas()V

    new-instance v0, Lcom/autonavi/xm/navi/base/widget/EditTextSelecterAdapter;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchRecordDatas:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navi/base/widget/EditTextSelecterAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->optionsAdapter:Lcom/autonavi/xm/navi/base/widget/EditTextSelecterAdapter;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchRecordListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->optionsAdapter:Lcom/autonavi/xm/navi/base/widget/EditTextSelecterAdapter;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private isNeedPrediction(Lcom/autonavi/xm/ime/InputMethodManager$InputMode;)Z
    .locals 1

    sget-object v0, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->FIRST_LETTER:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->LATIN:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->PINYIN:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mIsProvince:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTheSameCityCodeKey(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityCodePreKeyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityCodePreKeyList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private isTheSameCityKey(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityNameKeyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityNameKeyList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private isTheSameKey(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearcherKeyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearcherKeyList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private loadCityKeyFromXml()V
    .locals 7

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCtiySp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCtiySp:Landroid/content/SharedPreferences;

    const-string v4, "CityNameKeyString"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCtiySp:Landroid/content/SharedPreferences;

    const-string v4, "CityCodeKeyString"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityNameKeyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityNameKeyList:Ljava/util/List;

    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    iget-object v6, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityNameKeyList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mContext:Landroid/content/Context;

    const-string v4, "CityKeyString"

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCtiySp:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCtiySp:Landroid/content/SharedPreferences;

    const-string v4, "CityNameKeyString"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCtiySp:Landroid/content/SharedPreferences;

    const-string v4, "CityCodeKeyString"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mFooterBt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mFooterBt:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setClickable(Z)V

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityCodePreKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityCodePreKeyList:Ljava/util/List;

    array-length v3, v1

    move v0, v2

    :goto_3
    if-ge v0, v3, :cond_3

    aget-object v2, v1, v0

    iget-object v4, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityCodePreKeyList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityRecordDatas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/autonavi/xm/navi/base/widget/CityKeyListAdapter;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityRecordDatas:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navi/base/widget/CityKeyListAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityKeyListAdapter:Lcom/autonavi/xm/navi/base/widget/CityKeyListAdapter;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityRecordListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityKeyListAdapter:Lcom/autonavi/xm/navi/base/widget/CityKeyListAdapter;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityRecordListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    invoke-virtual {v0, p0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private loadSearchKeyFromXml()V
    .locals 5

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSp:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSp:Landroid/content/SharedPreferences;

    iget v3, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchType:I

    invoke-direct {p0, v3}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->getSearcherSpName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearcherKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearcherKeyList:Ljava/util/List;

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v1, v2, v0

    iget-object v4, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearcherKeyList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchType:I

    invoke-direct {p0, v3}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->getSearcherSpName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSp:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSp:Landroid/content/SharedPreferences;

    iget v3, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchType:I

    invoke-direct {p0, v3}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->getSearcherSpName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mFooterBt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mFooterBt:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    :goto_2
    new-instance v0, Lcom/autonavi/xm/navi/base/widget/EditTextSelecterAdapter;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchRecordDatas:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navi/base/widget/EditTextSelecterAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->optionsAdapter:Lcom/autonavi/xm/navi/base/widget/EditTextSelecterAdapter;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchRecordListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->optionsAdapter:Lcom/autonavi/xm/navi/base/widget/EditTextSelecterAdapter;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchRecordListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    invoke-virtual {v0, p0}, Lcom/autonavi/xm/navi/base/widget/CircularListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchRecordDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mFooterBt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mFooterBt:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_2
.end method

.method private requestAdminAreaDetail(Lcom/autonavi/navigation/api/map/model/LatLng;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mDataManager:Lcom/autonavi/navigation/api/data/DataManager;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/data/DataManager;->getAdminAreaDetail(Lcom/autonavi/navigation/api/map/model/LatLng;)Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;

    return-void
.end method

.method private saveCityKeyToXml(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCtiySp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->isTheSameCityKey(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_0

    invoke-direct {p0, p2}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->isTheSameCityCodeKey(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_2

    :cond_0
    iget-object v5, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityNameKeyList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v5, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityNameKeyList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityCodePreKeyList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityCodePreKeyList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    move-object v0, v3

    :goto_1
    iget-object v3, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityNameKeyList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityNameKeyList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_4

    if-eqz v1, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityNameKeyList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityCodePreKeyList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v3

    :cond_1
    const-string v1, "CityNameKeyString"

    invoke-interface {v4, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "CityCodeKeyString"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityNameKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x4

    if-lt v0, v5, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityNameKeyList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityCodePreKeyList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityNameKeyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityCodePreKeyList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityNameKeyList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityCodePreKeyList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto/16 :goto_1
.end method

.method private saveSearchKeyToXml(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->isTheSameKey(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    iget-object v4, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearcherKeyList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearcherKeyList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_1
    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearcherKeyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearcherKeyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_3

    if-eqz v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearcherKeyList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchType:I

    invoke-direct {p0, v1}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->getSearcherSpName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_1
    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearcherKeyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x5

    if-lt v2, v4, :cond_2

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearcherKeyList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearcherKeyList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearcherKeyList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_1
.end method

.method private setAdminArea(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mBtnCityPicker:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iput p1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdminCode:I

    if-nez p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mIsProvince:Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getDataManager()Lcom/autonavi/navigation/api/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/data/DataManager;->getAdminAreaDetail(I)Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->isMunicipality()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mIsProvince:Z

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mIsProvince:Z

    goto :goto_0
.end method

.method private setPoiData([Lcom/autonavi/navigation/api/poi/model/Poi;)V
    .locals 5

    const/16 v2, 0xa

    const/4 v3, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    array-length v0, p1

    if-le v0, v2, :cond_2

    new-array v2, v2, [Lcom/autonavi/navigation/api/poi/model/Poi;

    move v0, v1

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    aget-object v4, p1, v0

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_1
    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdapter:Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;

    invoke-virtual {v2, v0}, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->setData([Lcom/autonavi/navigation/api/poi/model/Poi;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdapter:Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;

    iget-boolean v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mIsSearchByPhone:Z

    invoke-virtual {v0, v2}, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->isShowPhone(Z)V

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdapter:Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;

    iget v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchType:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v2, v0}, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->toggleShowDetailAddress(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mBtnPageDown:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mBtnPageUp:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mBtnPageDown:Landroid/view/View;

    if-nez p1, :cond_4

    move v0, v3

    :goto_3
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mBtnPageUp:Landroid/view/View;

    if-nez p1, :cond_5

    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    move-object v0, p1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v3, v1

    goto :goto_4
.end method

.method private setPredictionPanel()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mPredictionPanel:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mEtKey:Lcom/autonavi/xm/ime/widget/EditText;

    invoke-virtual {v0}, Lcom/autonavi/xm/ime/widget/EditText;->requestFocus()Z

    return-void
.end method

.method private showInputMethodView()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->isShowInputMethodView:Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mlistViewLL:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mInputMethodView:Lcom/autonavi/xm/ime/widget/InputMethodView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/ime/widget/InputMethodView;->setVisibility(I)V

    return-void
.end method

.method private updateSoftKeyboard(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mDataManager:Lcom/autonavi/navigation/api/data/DataManager;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdminCode:I

    const v1, 0x7a120

    if-ne v0, v1, :cond_2

    const-string p1, ""

    :cond_2
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v0, 0x1

    iget v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchType:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    const/4 v0, 0x4

    :cond_4
    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    iget v4, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdminCode:I

    invoke-virtual {v2, p1, v4, v0}, Lcom/autonavi/navigation/api/poi/PoiManager;->queryAutoComplete(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    new-instance v2, Ljava/util/HashSet;

    const/16 v0, 0x1a

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_5

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_6
    move-object v0, v2

    :goto_2
    const/16 v1, 0x41

    move v2, v1

    :goto_3
    const/16 v1, 0x5a

    if-gt v2, v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mInputMethodView:Lcom/autonavi/xm/ime/widget/InputMethodView;

    if-eqz v1, :cond_7

    iget-object v4, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mInputMethodView:Lcom/autonavi/xm/ime/widget/InputMethodView;

    add-int/lit8 v1, v2, 0x1d

    add-int/lit8 v5, v1, -0x41

    if-nez v0, :cond_8

    move v1, v3

    :goto_4
    invoke-virtual {v4, v5, v1}, Lcom/autonavi/xm/ime/widget/InputMethodView;->setSoftKeyEnabled(IZ)V

    :cond_7
    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mEtKey:Lcom/autonavi/xm/ime/widget/EditText;

    iget-object v4, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mEtKey:Lcom/autonavi/xm/ime/widget/EditText;

    invoke-virtual {v4}, Lcom/autonavi/xm/ime/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/autonavi/xm/ime/widget/EditText;->setSelection(I)V

    add-int/lit8 v1, v2, 0x1

    int-to-char v1, v1

    move v2, v1

    goto :goto_3

    :cond_8
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4

    :cond_9
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchText:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mBtnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setPressed(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mBtnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mBtnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mImgClear:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchText:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->doSearchSync(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mBtnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mBtnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mImgClear:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/autonavi/xm/navi/search/Searcher;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getMode()I
    .locals 2

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPrediction(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mEtKey:Lcom/autonavi/xm/ime/widget/EditText;

    invoke-virtual {v0}, Lcom/autonavi/xm/ime/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCurrentInputMode:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    sget-object v3, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->FIRST_LETTER:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget v3, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchType:I

    packed-switch v3, :pswitch_data_0

    :goto_2
    :try_start_0
    iget-object v3, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    iget v4, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdminCode:I

    invoke-virtual {v3, p1, v4, v0}, Lcom/autonavi/navigation/api/poi/PoiManager;->queryAutoComplete(Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    :goto_3
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCurrentInputMode:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    sget-object v3, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->FIRST_LETTER:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    if-ne v0, v3, :cond_3

    const/4 v0, 0x4

    goto :goto_2

    :cond_3
    const/4 v0, 0x3

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v0, "times"

    const-string v3, "mPoiManager.queryAutoComplete error"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    goto :goto_3

    :cond_4
    move-object v0, v2

    :goto_5
    move-object v2, v0

    goto :goto_0

    :cond_5
    move-object v0, v2

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected handleAdminAreaDetailResult(Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/autonavi/xm/navi/search/Searcher;->handleAdminAreaDetailResult(Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;)V

    if-eqz p1, :cond_0

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    const-string v1, "selIndex"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mEtKey:Lcom/autonavi/xm/ime/widget/EditText;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchRecordDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Lcom/autonavi/xm/ime/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mEtKey:Lcom/autonavi/xm/ime/widget/EditText;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchRecordDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/autonavi/xm/ime/widget/EditText;->setSelection(I)V

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->showInputMethodView()V

    goto :goto_0

    :pswitch_1
    const-string v1, "selIndex"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityCodeKeyList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdminCode:I

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mBtnCityPicker:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityRecordDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected handleMyLocationResult(Lcom/autonavi/navigation/api/map/model/MyLocation;)V
    .locals 2

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->getBasePointType()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->getBasePointType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/autonavi/navigation/api/map/model/MyLocation;->position:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->requestAdminAreaDetail(Lcom/autonavi/navigation/api/map/model/LatLng;)V

    :cond_1
    return-void
.end method

.method protected handleRoutePointResult([Lcom/autonavi/navigation/api/poi/model/Poi;)V
    .locals 2

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->getBasePointType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b009a

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(I)V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->popBack()V

    goto :goto_0

    :cond_2
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->requestAdminAreaDetail(Lcom/autonavi/navigation/api/map/model/LatLng;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/autonavi/xm/navi/search/Searcher;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_0

    if-ne p2, v2, :cond_0

    const-string v0, "com.autonavi.xm.extra.ADMIN_AREA_INFO"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/data/model/AdminArea;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdminAreaSelected:Lcom/autonavi/navigation/api/data/model/AdminArea;

    iget v1, v0, Lcom/autonavi/navigation/api/data/model/AdminArea;->adminCode:I

    iget-object v0, v0, Lcom/autonavi/navigation/api/data/model/AdminArea;->name:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->setAdminArea(ILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-ne p2, v2, :cond_1

    const-string v0, "com.autonavi.xm.extra.POI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/poi/model/Poi;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2, p3}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->popBack()V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0800eb

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/autonavi/xm/navi/menu/fragment/AreaPicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->startFragmentForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f0800d3

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->doBtnTextBackClicked()V

    goto :goto_0

    :cond_2
    const v1, 0x7f0800d2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mEtKey:Lcom/autonavi/xm/ime/widget/EditText;

    invoke-virtual {v0}, Lcom/autonavi/xm/ime/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mEtKey:Lcom/autonavi/xm/ime/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/ime/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/autonavi/xm/navi/search/Searcher;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 6

    const v5, 0x7f0b009b

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/autonavi/xm/navi/search/Searcher;->onCreateView(Landroid/os/Bundle;)V

    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->setContentView(I)V

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getPoiManager()Lcom/autonavi/navigation/api/poi/PoiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v0, 0x7f0800d3

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mBtnBack:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mBtnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mBtnBack:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/autonavi/xm/view/ClickRepeater;->attach(Landroid/view/View;)Lcom/autonavi/xm/view/ClickRepeater;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/xm/view/ClickRepeater;->setOnRepeatListener(Lcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;)Lcom/autonavi/xm/view/ClickRepeater;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mBtnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mBtnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mBtnCityPicker:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mBtnCityPicker:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800ed

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/ime/widget/EditText;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mEtKey:Lcom/autonavi/xm/ime/widget/EditText;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mEtKey:Lcom/autonavi/xm/ime/widget/EditText;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/ime/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mEtKey:Lcom/autonavi/xm/ime/widget/EditText;

    invoke-virtual {v0, p0}, Lcom/autonavi/xm/ime/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mEtKey:Lcom/autonavi/xm/ime/widget/EditText;

    new-instance v1, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher$1;

    invoke-direct {v1, p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher$1;-><init>(Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/ime/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0800d2

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mImgClear:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mImgClear:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800ee

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mPredictionPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mBundle:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->getSearchType()I

    move-result v0

    iput v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchType:I

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->initPredictionPanel()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mBundle:Landroid/os/Bundle;

    const-string v1, "extra_is_request_poi"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mIsRequestPoi:Z

    :cond_0
    invoke-static {}, Lcom/autonavi/navigation/api/map/AnMapUtils;->getMyAdminCode()I

    move-result v0

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/AnApi;->getDataManager()Lcom/autonavi/navigation/api/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/data/DataManager;->getAdminAreaDetail(I)Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->getCityAdminCode(Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;)V

    :cond_1
    iget v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchType:I

    if-ne v0, v3, :cond_3

    invoke-virtual {p0, v5}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->setTitle(I)V

    :goto_0
    const v0, 0x7f0800d4

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/ime/widget/InputMethodView;

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mInputMethodView:Lcom/autonavi/xm/ime/widget/InputMethodView;

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->getInputMethodManager()Lcom/autonavi/xm/ime/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mEtKey:Lcom/autonavi/xm/ime/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/ime/InputMethodManager;->showSoftInput(Lcom/autonavi/xm/ime/widget/EditText;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mInputMethodView:Lcom/autonavi/xm/ime/widget/InputMethodView;

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mEtKey:Lcom/autonavi/xm/ime/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/ime/widget/InputMethodView;->connect(Lcom/autonavi/xm/ime/widget/EditText;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mInputMethodView:Lcom/autonavi/xm/ime/widget/InputMethodView;

    invoke-virtual {v0}, Lcom/autonavi/xm/ime/widget/InputMethodView;->getCurrentInputMode()Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCurrentInputMode:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mInputMethodView:Lcom/autonavi/xm/ime/widget/InputMethodView;

    invoke-virtual {v0, p0}, Lcom/autonavi/xm/ime/widget/InputMethodView;->setOnInputModeChangedListener(Lcom/autonavi/xm/ime/InputMethodManager$OnInputModeChangedListener;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mInputMethodView:Lcom/autonavi/xm/ime/widget/InputMethodView;

    invoke-virtual {v0, p0}, Lcom/autonavi/xm/ime/widget/InputMethodView;->setPredictionAdapter(Lcom/autonavi/xm/ime/InputMethodManager$PredictionAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCurrentInputMode:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCurrentInputMode:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    sget-object v1, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->FIRST_LETTER:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mInputMethodView:Lcom/autonavi/xm/ime/widget/InputMethodView;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/ime/widget/InputMethodView;->setSoftKeyEnabled(IZ)V

    :cond_2
    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->initSearchRecodeView()V

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->initCityRecodeView()V

    return-void

    :cond_3
    iget v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const v0, 0x7f0b009e

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->setTitle(I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchType:I

    if-ne v0, v4, :cond_5

    const v0, 0x7f0b009d

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->setTitle(I)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    const v0, 0x7f0b016b

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->setTitle(I)V

    iput-boolean v3, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mIsSearchByPhone:Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mEtKey:Lcom/autonavi/xm/ime/widget/EditText;

    invoke-virtual {v0, v4}, Lcom/autonavi/xm/ime/widget/EditText;->setRawInputType(I)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const v0, 0x7f0b00a1

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->setTitle(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mBtnCityPicker:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mBtnCityPicker:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v5}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->setTitle(I)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mInputMethodView:Lcom/autonavi/xm/ime/widget/InputMethodView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mInputMethodView:Lcom/autonavi/xm/ime/widget/InputMethodView;

    invoke-virtual {v0}, Lcom/autonavi/xm/ime/widget/InputMethodView;->disconnect()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mInputMethodView:Lcom/autonavi/xm/ime/widget/InputMethodView;

    invoke-virtual {v0}, Lcom/autonavi/xm/ime/widget/InputMethodView;->release()V

    :cond_0
    invoke-super {p0}, Lcom/autonavi/xm/navi/search/Searcher;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    invoke-super {p0}, Lcom/autonavi/xm/navi/search/Searcher;->onDetach()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdapter:Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdapter:Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->setData([Lcom/autonavi/navigation/api/poi/model/Poi;)V

    :cond_0
    return-void
.end method

.method public onInputModeChanged(Lcom/autonavi/xm/ime/InputMethodManager$InputMode;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    sget-object v0, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->FIRST_LETTER:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    invoke-virtual {p1, v0}, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCurrentInputMode:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    sget-object v1, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->FIRST_LETTER:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mEtKey:Lcom/autonavi/xm/ime/widget/EditText;

    invoke-virtual {v0}, Lcom/autonavi/xm/ime/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mEtKey:Lcom/autonavi/xm/ime/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/ime/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->setPoiData([Lcom/autonavi/navigation/api/poi/model/Poi;)V

    :cond_2
    sget-object v0, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->FIRST_LETTER:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    invoke-virtual {p1, v0}, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mInputMethodView:Lcom/autonavi/xm/ime/widget/InputMethodView;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/ime/widget/InputMethodView;->setSoftKeyEnabled(IZ)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->isNeedPrediction(Lcom/autonavi/xm/ime/InputMethodManager$InputMode;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->setPredictionPanel()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mEtKey:Lcom/autonavi/xm/ime/widget/EditText;

    invoke-virtual {v0}, Lcom/autonavi/xm/ime/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->doSearchSync(Ljava/lang/String;)V

    :goto_1
    iput-object p1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCurrentInputMode:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCurrentInputMode:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    sget-object v1, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->PINYIN:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mMarginLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v0, 0x41

    :goto_2
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mInputMethodView:Lcom/autonavi/xm/ime/widget/InputMethodView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mInputMethodView:Lcom/autonavi/xm/ime/widget/InputMethodView;

    add-int/lit8 v2, v0, 0x1d

    add-int/lit8 v2, v2, -0x41

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/xm/ime/widget/InputMethodView;->setSoftKeyEnabled(IZ)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->HANDWRITING:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    invoke-virtual {p1, v0}, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mPredictionPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mPredictionPanel:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mMarginLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityRecordListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityCodeKeyList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdminCode:I

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mBtnCityPicker:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityRecordDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/autonavi/navigation/api/data/model/AdminArea;

    iget v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdminCode:I

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCityRecordDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3, v3}, Lcom/autonavi/navigation/api/data/model/AdminArea;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iput-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdminAreaSelected:Lcom/autonavi/navigation/api/data/model/AdminArea;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchRecordListView:Lcom/autonavi/xm/navi/base/widget/CircularListView;

    if-ne p1, v0, :cond_2

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mEtKey:Lcom/autonavi/xm/ime/widget/EditText;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchRecordDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/autonavi/xm/ime/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mEtKey:Lcom/autonavi/xm/ime/widget/EditText;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchRecordDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/autonavi/xm/ime/widget/EditText;->setSelection(I)V

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->showInputMethodView()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mPagedList:Lcom/autonavi/xm/navi/base/widget/PagedListView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mEtKey:Lcom/autonavi/xm/ime/widget/EditText;

    invoke-virtual {v0}, Lcom/autonavi/xm/ime/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_4

    iget-object v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCurrentInputMode:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    sget-object v2, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->FIRST_LETTER:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    if-ne v0, v2, :cond_3

    const v0, 0x7f0b00a5

    :goto_1
    invoke-virtual {v1, v0}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mEtKey:Lcom/autonavi/xm/ime/widget/EditText;

    invoke-virtual {v0}, Lcom/autonavi/xm/ime/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_3
    const v0, 0x7f0b00a4

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->saveSearchKeyToXml(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->loadSearchKeyFromXml()V

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->initDatas()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdminAreaSelected:Lcom/autonavi/navigation/api/data/model/AdminArea;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdminAreaSelected:Lcom/autonavi/navigation/api/data/model/AdminArea;

    iget-object v0, v0, Lcom/autonavi/navigation/api/data/model/AdminArea;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdminAreaSelected:Lcom/autonavi/navigation/api/data/model/AdminArea;

    iget v2, v2, Lcom/autonavi/navigation/api/data/model/AdminArea;->adminCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->saveCityKeyToXml(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->loadCityKeyFromXml()V

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->initCityDatas()V

    :cond_5
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const-class v3, Lcom/autonavi/xm/navi/poi/fragment/PoiBrowser;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.autonavi.xm.extra.POI"

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "extra_enable_around_search"

    iget v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchType:I

    const/4 v4, 0x6

    if-eq v0, v4, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "extra_is_request_poi"

    iget-boolean v3, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mIsRequestPoi:Z

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mIsRequestPoi:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0, v2, v1}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->startFragmentForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v2}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->startFragment(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mEtKey:Lcom/autonavi/xm/ime/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/ime/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdapter:Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdapter:Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->setData([Lcom/autonavi/navigation/api/poi/model/Poi;)V

    :cond_0
    iget-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->isShowInputMethodView:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->dissMissInputMethodView()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/autonavi/xm/navi/search/Searcher;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRepeat(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->doBtnTextBackClicked()V

    return-void
.end method

.method public onRepeatEnd(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onRepeatStart(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onResumeView()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/autonavi/xm/navi/search/Searcher;->onResumeView()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCurrentInputMode:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    sget-object v1, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->PINYIN:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mMarginLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iput-boolean v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->isSaveKeyWord:Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCurrentInputMode:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->isNeedPrediction(Lcom/autonavi/xm/ime/InputMethodManager$InputMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->setPredictionPanel()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchText:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->doSearchSync(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mMarginLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mCurrentInputMode:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    sget-object v1, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->HANDWRITING:Lcom/autonavi/xm/ime/InputMethodManager$InputMode;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/ime/InputMethodManager$InputMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchType:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mPredictionPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mAdapter:Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->setData([Lcom/autonavi/navigation/api/poi/model/Poi;)V

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->updateSoftKeyboard(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mPredictionPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected preproccessSearchResult([Lcom/autonavi/navigation/api/poi/model/Poi;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    iput-boolean v1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->isSaveKeyWord:Z

    :goto_0
    iget-boolean v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchSync:Z

    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->isSaveKeyWord:Z

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->getDistanceComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_2
    iget-object v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mEtKey:Lcom/autonavi/xm/ime/widget/EditText;

    invoke-virtual {v2}, Lcom/autonavi/xm/ime/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_3

    const/4 p1, 0x0

    :cond_3
    invoke-direct {p0, p1}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->setPoiData([Lcom/autonavi/navigation/api/poi/model/Poi;)V

    iget v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSyncCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSyncCount:I

    iget v2, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSyncCount:I

    if-nez v2, :cond_4

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->mSearchSync:Z

    :cond_4
    move v0, v1

    goto :goto_1
.end method
