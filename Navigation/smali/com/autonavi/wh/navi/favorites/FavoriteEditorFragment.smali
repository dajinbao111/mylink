.class public Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;
.super Lcom/autonavi/wh/navigation/app/NaviFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final COUNT_DOWN_INTERVAL:I = 0x3e8

.field private static final DIALOG_ID_DELETE_ITEM:I = 0x1

.field private static final DIALOG_ID_RESET_COMPANY:I = 0x3

.field private static final DIALOG_ID_RESET_HOME:I = 0x2

.field public static final EDIT_TYPE_FAVORITE_POI:I = 0x3

.field public static final EDIT_TYPE_MAP_CENTER_INFO:I = 0x2

.field public static final EDIT_TYPE_MY_LOCATION:I = 0x1

.field public static final EDIT_TYPE_POI:I = 0x4

.field public static final EXTRA_FAVORITE_POI:Ljava/lang/String; = "com.autonavi.xm.extra.FAVORITE_POI"

.field public static final EXTRA_FAV_EDITOR_TYPE:Ljava/lang/String; = "com.autonavi.xm.extra.FAV_EDITOR_TYPE"

.field public static final EXTRA_MAP_CENTER_INFO:Ljava/lang/String; = "com.autonavi.xm.extra.MAP_CENTER_INFO"

.field public static final EXTRA_MY_LOCATION:Ljava/lang/String; = "com.autonavi.xm.extra.MY_LOCATION"

.field public static final EXTRA_POI:Ljava/lang/String; = "com.autonavi.xm.extra.POI"

.field private static final HONGKONG_AREA_CODE:I = 0x354

.field private static final MACAO_AREA_CODE:I = 0x355

.field private static final MILLIS_IN_FUTURE:I = 0x2710

.field private static final REQUEST_CODE_EDIT_FIELD:I = 0x1

.field private static final WHAT_ON_FAVORITE_ADDED:I = 0x0

.field private static final WHAT_ON_FAVORITE_DELETED:I = 0x1

.field private static final WHAT_ON_FAVORITE_MODIFIED:I = 0x2


# instance fields
.field private mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

.field private mAreaTelCode:Ljava/lang/String;

.field private mBtnCatePicker:Landroid/widget/ImageButton;

.field private mCountDown:Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment$CountDown;

.field private mDlgDeleteItem:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

.field private mDlgResetCompany:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

.field private mDlgResetHome:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

.field private mEditType:I

.field private mEtAddress:Landroid/widget/EditText;

.field private mEtName:Landroid/widget/EditText;

.field private mEtTelephone:Landroid/widget/EditText;

.field private mFavoriteManager:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

.field private mFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

.field private mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

.field private mIcon:I

.field private mIsClickConfirm:Z

.field private mIsCountingDown:Z

.field private mIsHomeCompany:Z

.field private mIsSetCompany:Z

.field private mIsSetHome:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mMapCenterInfo:Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

.field private mMyLocation:Lcom/autonavi/navigation/api/map/model/MyLocation;

.field private mNewFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

.field private mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

.field private mPpCategoriesPanel:Landroid/widget/PopupWindow;

.field private mTextConfirm:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mAreaTelCode:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIsCountingDown:Z

    iput-boolean v1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIsSetHome:Z

    iput-boolean v1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIsSetCompany:Z

    iput-boolean v1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIsHomeCompany:Z

    iput-boolean v1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIsClickConfirm:Z

    new-instance v0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment$1;-><init>(Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;Lcom/autonavi/navigation/api/AnException;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->handleFavoriteAdded(Lcom/autonavi/navigation/api/AnException;)V

    return-void
.end method

.method static synthetic access$100(Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->handleFavoriteDeleted(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->handleFavoriteModified(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIsCountingDown:Z

    return p1
.end method

.method static synthetic access$400(Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mTextConfirm:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->doConfirmClicked()V

    return-void
.end method

.method private cancelCountDown()V
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIsCountingDown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mCountDown:Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment$CountDown;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mCountDown:Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment$CountDown;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment$CountDown;->cancel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIsCountingDown:Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mTextConfirm:Landroid/widget/TextView;

    const v1, 0x7f0b00cc

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private doConfirmClicked()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEtName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b00df

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEtName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->generateNewFavoritePoi()V

    goto :goto_0
.end method

.method private editField(IIZII)V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/favorites/FieldEditor;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "extra_id"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "extra_text"

    invoke-virtual {p0, p1}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_max_len"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "extra_allow_empty"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "extra_tips_empty_string_not_allow"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "extra_title"

    invoke-virtual {v1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v0, 0x7f0800c9

    if-ne p1, v0, :cond_0

    const-string v0, "extra_input_type"

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->startFragmentForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private generateNewFavoritePoi()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEtName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEtAddress:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEtTelephone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_0

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v7, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->DEFAULT:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    iget v4, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEditType:I

    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    new-instance v4, Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v8, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mMyLocation:Lcom/autonavi/navigation/api/map/model/MyLocation;

    iget-object v8, v8, Lcom/autonavi/navigation/api/map/model/MyLocation;->position:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-direct {v4, v5, v8}, Lcom/autonavi/navigation/api/poi/model/Poi;-><init>(Ljava/lang/String;Lcom/autonavi/navigation/api/map/model/LatLng;)V

    invoke-virtual {v4, v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->setTel(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v4, v6}, Lcom/autonavi/navigation/api/poi/model/Poi;->setAddress(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoriteManager:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    new-instance v5, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget v6, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIcon:I

    invoke-direct {v5, v7, v4, v6}, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;-><init>(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;Lcom/autonavi/navigation/api/poi/model/Poi;I)V

    invoke-virtual {v0, v5}, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->save(Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;)Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v4, 0x7f0b00db

    invoke-virtual {v0, v4}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V
    :try_end_0
    .catch Lcom/autonavi/navigation/api/AnException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->isOnTop()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->popBack()V

    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iput-boolean v2, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIsClickConfirm:Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->showErrorString(Lcom/autonavi/navigation/api/AnException;)V

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-static {v4}, Lcom/autonavi/wh/navi/base/util/CommonUtil;->getMapCursorPoi(Lcom/autonavi/navigation/api/map/AnMap;)Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/autonavi/navigation/api/poi/model/Poi;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b00c7

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->popBack()V

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v5}, Lcom/autonavi/navigation/api/poi/model/Poi;->setName(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v4, v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->setTel(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v4, v6}, Lcom/autonavi/navigation/api/poi/model/Poi;->setAddress(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mMapCenterInfo:Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    iget-object v0, v0, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->position:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {v4, v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->setLatLng(Lcom/autonavi/navigation/api/map/model/LatLng;)Lcom/autonavi/navigation/api/poi/model/Poi;

    move-object v0, v4

    :goto_2
    :try_start_1
    iget-object v4, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoriteManager:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    new-instance v5, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget v6, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIcon:I

    invoke-direct {v5, v7, v0, v6}, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;-><init>(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;Lcom/autonavi/navigation/api/poi/model/Poi;I)V

    invoke-virtual {v4, v5}, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->save(Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;)Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v4, 0x7f0b00db

    invoke-virtual {v0, v4}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V
    :try_end_1
    .catch Lcom/autonavi/navigation/api/AnException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->isOnTop()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->popBack()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iput-boolean v2, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIsClickConfirm:Z

    goto/16 :goto_0

    :cond_3
    new-instance v4, Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v8, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mMapCenterInfo:Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    iget-object v8, v8, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->position:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-direct {v4, v8}, Lcom/autonavi/navigation/api/poi/model/Poi;-><init>(Lcom/autonavi/navigation/api/map/model/LatLng;)V

    invoke-virtual {v4, v5}, Lcom/autonavi/navigation/api/poi/model/Poi;->setName(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v4, v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->setTel(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v4, v6}, Lcom/autonavi/navigation/api/poi/model/Poi;->setAddress(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;

    move-object v0, v4

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-direct {p0, v1}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->showErrorString(Lcom/autonavi/navigation/api/AnException;)V

    goto :goto_3

    :pswitch_2
    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget v4, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIcon:I

    iput v4, v1, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->iconId:I

    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v1, v1, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v1, v5}, Lcom/autonavi/navigation/api/poi/model/Poi;->setName(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v1, v1, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->setTel(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0, v6}, Lcom/autonavi/navigation/api/poi/model/Poi;->setAddress(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;

    :try_start_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoriteManager:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->save(Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;)Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b00d3

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V
    :try_end_2
    .catch Lcom/autonavi/navigation/api/AnException; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v2

    :goto_4
    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->isOnTop()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b00d4

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    move v0, v3

    goto :goto_4

    :pswitch_3
    iget-object v4, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v4, v5}, Lcom/autonavi/navigation/api/poi/model/Poi;->setName(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v4, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v4, v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->setTel(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0, v6}, Lcom/autonavi/navigation/api/poi/model/Poi;->setAddress(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;

    :try_start_3
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoriteManager:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    new-instance v4, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v5, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    iget v6, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIcon:I

    invoke-direct {v4, v7, v5, v6}, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;-><init>(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;Lcom/autonavi/navigation/api/poi/model/Poi;I)V

    invoke-virtual {v0, v4}, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->save(Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;)Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v4, 0x7f0b00db

    invoke-virtual {v0, v4}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V
    :try_end_3
    .catch Lcom/autonavi/navigation/api/AnException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_5
    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->popBack()V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->isOnTop()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iput-boolean v2, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIsClickConfirm:Z

    goto/16 :goto_0

    :catch_3
    move-exception v1

    invoke-direct {p0, v1}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->showErrorString(Lcom/autonavi/navigation/api/AnException;)V

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private generateNewPoi()Lcom/autonavi/navigation/api/poi/model/Poi;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEtName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEtTelephone:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEtAddress:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEditType:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/poi/model/Poi;->setName(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0, v2}, Lcom/autonavi/navigation/api/poi/model/Poi;->setTel(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0, v3}, Lcom/autonavi/navigation/api/poi/model/Poi;->setAddress(Ljava/lang/String;)Lcom/autonavi/navigation/api/poi/model/Poi;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-static {v0}, Lcom/autonavi/wh/navi/base/util/CommonUtil;->getMapCursorPoi(Lcom/autonavi/navigation/api/map/AnMap;)Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-static {v0}, Lcom/autonavi/wh/navi/base/util/CommonUtil;->getMapCursorPoi(Lcom/autonavi/navigation/api/map/AnMap;)Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v4, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mMapCenterInfo:Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    iget-object v4, v4, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->position:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-direct {v0, v4}, Lcom/autonavi/navigation/api/poi/model/Poi;-><init>(Lcom/autonavi/navigation/api/map/model/LatLng;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v4, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mMyLocation:Lcom/autonavi/navigation/api/map/model/MyLocation;

    iget-object v4, v4, Lcom/autonavi/navigation/api/map/model/MyLocation;->position:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-direct {v0, v1, v4}, Lcom/autonavi/navigation/api/poi/model/Poi;-><init>(Ljava/lang/String;Lcom/autonavi/navigation/api/map/model/LatLng;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getTelCode(Lcom/autonavi/navigation/api/poi/model/Poi;)V
    .locals 3

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getAdminCode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getDataManager()Lcom/autonavi/navigation/api/data/DataManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/data/DataManager;->getAdminCode(Lcom/autonavi/navigation/api/map/model/LatLng;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->setAdminCode(I)Lcom/autonavi/navigation/api/poi/model/Poi;

    :cond_0
    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/AnApi;->getDataManager()Lcom/autonavi/navigation/api/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/data/DataManager;->getAdminAreaDetail(I)Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    iget v0, v1, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->areaCode:I

    :cond_1
    const/16 v1, 0x354

    if-eq v0, v1, :cond_2

    const/16 v1, 0x355

    if-ne v0, v1, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mAreaTelCode:Ljava/lang/String;

    :goto_0
    return-void

    :cond_3
    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mAreaTelCode:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mAreaTelCode:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleFavoriteAdded(Lcom/autonavi/navigation/api/AnException;)V
    .locals 7

    const v5, 0x7f0b01a6

    const v4, 0x7f0b01a5

    const v3, 0x7f0b01a4

    const v2, 0x7f0b01a3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v6, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEditType:I

    packed-switch v6, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_0
    iget-boolean v1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIsHomeCompany:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    if-eqz v0, :cond_1

    move v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    if-eqz v0, :cond_3

    move v0, v4

    :goto_3
    invoke-virtual {v1, v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_1

    :cond_3
    move v0, v5

    goto :goto_3

    :pswitch_1
    iget-boolean v6, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIsClickConfirm:Z

    if-eqz v6, :cond_5

    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->showErrorString(Lcom/autonavi/navigation/api/AnException;)V

    :goto_4
    iput-boolean v1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIsClickConfirm:Z

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-direct {p0, v2, v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->showToastPoiResult(Lcom/autonavi/navigation/api/poi/model/Poi;Z)V

    goto :goto_4

    :cond_5
    iget-boolean v1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIsHomeCompany:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    if-eqz v0, :cond_6

    :goto_5
    invoke-virtual {v1, v2}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_1

    :cond_6
    move v2, v3

    goto :goto_5

    :cond_7
    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    if-eqz v0, :cond_8

    :goto_6
    invoke-virtual {v1, v4}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_1

    :cond_8
    move v4, v5

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleFavoriteDeleted(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b00d1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.autonavi.xm.extra.FAVORITE_POI"

    const/4 v0, 0x0

    check-cast v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->popBack()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b00d2

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0
.end method

.method private handleFavoriteModified(Z)V
    .locals 3

    iget v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEditType:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->popBack()V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    if-eqz p1, :cond_1

    const v0, 0x7f0b00d3

    :goto_1
    invoke-virtual {v1, v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.autonavi.xm.extra.FAVORITE_POI"

    iget-object v2, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mNewFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0b00d4

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mNewFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-direct {p0, v0, p1}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->showToastPoiResult(Lcom/autonavi/navigation/api/poi/model/Poi;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setHomeOrCompany()V
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEditType:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->isOnTop()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    return-void

    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoriteManager:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    new-instance v4, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-boolean v1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIsHomeCompany:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->HOME:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    move-object v2, v1

    :goto_2
    invoke-direct {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->generateNewPoi()Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v5

    iget-boolean v1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIsHomeCompany:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    :goto_3
    invoke-direct {v4, v2, v5, v1}, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;-><init>(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;Lcom/autonavi/navigation/api/poi/model/Poi;I)V

    invoke-virtual {v3, v4}, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->save(Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;)Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;
    :try_end_0
    .catch Lcom/autonavi/navigation/api/AnException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->showErrorString(Lcom/autonavi/navigation/api/AnException;)V

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v1, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->COMPANY:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;
    :try_end_1
    .catch Lcom/autonavi/navigation/api/AnException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v1

    goto :goto_2

    :cond_1
    const/4 v1, 0x3

    goto :goto_3

    :pswitch_1
    :try_start_2
    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoriteManager:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    iget-object v2, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->save(Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;)Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;
    :try_end_2
    .catch Lcom/autonavi/navigation/api/AnException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->showErrorString(Lcom/autonavi/navigation/api/AnException;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setIcon(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mBtnCatePicker:Landroid/widget/ImageButton;

    const v1, 0x7f0201c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    iput p1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIcon:I

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mBtnCatePicker:Landroid/widget/ImageButton;

    const v1, 0x7f0201c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mBtnCatePicker:Landroid/widget/ImageButton;

    const v1, 0x7f0201c5

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mBtnCatePicker:Landroid/widget/ImageButton;

    const v1, 0x7f0201c6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mBtnCatePicker:Landroid/widget/ImageButton;

    const v1, 0x7f0201c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mBtnCatePicker:Landroid/widget/ImageButton;

    const v1, 0x7f0201ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private setViewStates(Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method private showCategoriesPanel()V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, -0x2

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPpCategoriesPanel:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f03001d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0800bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0800ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0800bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0800bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0800bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0800be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPpCategoriesPanel:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPpCategoriesPanel:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPpCategoriesPanel:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3, v3}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPpCategoriesPanel:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPpCategoriesPanel:Landroid/widget/PopupWindow;

    const v1, 0x1030002

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPpCategoriesPanel:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020107

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPpCategoriesPanel:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->getView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private showDlgDeleteItem()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mDlgDeleteItem:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    invoke-direct {v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;-><init>()V

    const v1, 0x7f0b0076

    const v2, 0x7f020385

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setNegativeButton(II)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00c8

    const v2, 0x7f020391

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setPositiveButton(II)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->create()Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mDlgDeleteItem:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mDlgDeleteItem:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->showDialog(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    return-void
.end method

.method private showDlgResetCompany()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mDlgResetCompany:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    invoke-direct {v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;-><init>()V

    const v1, 0x7f0b0076

    const v2, 0x7f020385

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setNegativeButton(II)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b010e

    const v2, 0x7f02038c

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setPositiveButton(II)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->create()Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mDlgResetCompany:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mDlgResetCompany:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->showDialog(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    return-void
.end method

.method private showDlgResetHome()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mDlgResetHome:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    invoke-direct {v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;-><init>()V

    const v1, 0x7f0b0076

    const v2, 0x7f020385

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setNegativeButton(II)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b010d

    const v2, 0x7f02039f

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->setPositiveButton(II)Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog$Builder;->create()Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mDlgResetHome:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mDlgResetHome:Lcom/autonavi/wh/navi/base/widget/NaviAlertDialog;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->showDialog(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    return-void
.end method

.method private showErrorString(Lcom/autonavi/navigation/api/AnException;)V
    .locals 2

    iget v0, p1, Lcom/autonavi/navigation/api/AnException;->errorCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b00de

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/autonavi/navigation/api/AnException;->errorCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b00dc

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b00dd

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0
.end method

.method private showToastPoiResult(Lcom/autonavi/navigation/api/poi/model/Poi;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b00db

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b00dd

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b00de

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0
.end method

.method private startCountDown()V
    .locals 6

    new-instance v0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment$CountDown;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment$CountDown;-><init>(Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;JJ)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mCountDown:Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment$CountDown;

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mCountDown:Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment$CountDown;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment$CountDown;->start()Landroid/os/CountDownTimer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIsCountingDown:Z

    return-void
.end method


# virtual methods
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
    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "extra_id"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "extra_text"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const v7, 0x7f0800c9

    const v1, 0x7f0800b8

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0800c6

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->showCategoriesPanel()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v2, 0x7f0800c1

    if-ne v0, v2, :cond_2

    invoke-direct {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->showDlgDeleteItem()V

    goto :goto_0

    :cond_2
    const v2, 0x7f0800c3

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoriteManager:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    sget-object v1, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->COMPANY:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->getAll(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoriteManager:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    sget-object v1, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->COMPANY:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->getAll(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iput-boolean v3, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIsSetCompany:Z

    :goto_1
    iput-boolean v3, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIsHomeCompany:Z

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIsSetCompany:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->setHomeOrCompany()V

    goto :goto_0

    :cond_4
    iput-boolean v6, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIsSetCompany:Z

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->showDlgResetCompany()V

    goto :goto_0

    :cond_6
    const v2, 0x7f0800c2

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoriteManager:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    sget-object v1, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->HOME:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->getAll(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoriteManager:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    sget-object v1, Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;->HOME:Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->getAll(Lcom/autonavi/navigation/api/favorite/model/FavoriteCategory;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iput-boolean v3, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIsSetHome:Z

    :goto_2
    iput-boolean v6, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIsHomeCompany:Z

    iget-boolean v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIsSetHome:Z

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->setHomeOrCompany()V

    goto :goto_0

    :cond_8
    iput-boolean v6, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIsSetHome:Z

    goto :goto_2

    :cond_9
    invoke-direct {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->showDlgResetHome()V

    goto :goto_0

    :cond_a
    const v2, 0x7f0800c4

    if-ne v0, v2, :cond_b

    invoke-direct {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->doConfirmClicked()V

    goto :goto_0

    :cond_b
    const v2, 0x7f0800bc

    if-ne v0, v2, :cond_c

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->setIcon(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPpCategoriesPanel:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    :cond_c
    const v2, 0x7f0800ba

    if-ne v0, v2, :cond_d

    invoke-direct {p0, v6}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->setIcon(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPpCategoriesPanel:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    :cond_d
    const v2, 0x7f0800bb

    if-ne v0, v2, :cond_e

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->setIcon(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPpCategoriesPanel:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    :cond_e
    const v2, 0x7f0800bd

    if-ne v0, v2, :cond_f

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->setIcon(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPpCategoriesPanel:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    :cond_f
    const v2, 0x7f0800be

    if-ne v0, v2, :cond_10

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->setIcon(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPpCategoriesPanel:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    :cond_10
    const v2, 0x7f0800bf

    if-ne v0, v2, :cond_11

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->setIcon(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPpCategoriesPanel:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    :cond_11
    if-ne v0, v1, :cond_12

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v4, 0x7f0b00df

    const v5, 0x7f0b00e0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->editField(IIZII)V

    goto/16 :goto_0

    :cond_12
    if-ne v0, v7, :cond_13

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v5, 0x7f0b00e1

    move-object v0, p0

    move v1, v7

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->editField(IIZII)V

    goto/16 :goto_0

    :cond_13
    const v1, 0x7f0800cb

    if-ne v0, v1, :cond_0

    const v1, 0x7f0800cb

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v5, 0x7f0b00e2

    move-object v0, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->editField(IIZII)V

    goto/16 :goto_0
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onCreateView(Landroid/os/Bundle;)V

    const v0, 0x7f0b00d0

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->setTitle(I)V

    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->setContentView(I)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getAnMap()Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getFavoriteManager()Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoriteManager:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.autonavi.xm.extra.FAV_EDITOR_TYPE"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEditType:I

    iget v1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEditType:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mMyLocation:Lcom/autonavi/navigation/api/map/model/MyLocation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mMapCenterInfo:Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->popBack()V

    :goto_1
    return-void

    :pswitch_0
    const-string v1, "com.autonavi.xm.extra.MY_LOCATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/model/MyLocation;

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mMyLocation:Lcom/autonavi/navigation/api/map/model/MyLocation;

    goto :goto_0

    :pswitch_1
    const-string v1, "com.autonavi.xm.extra.MAP_CENTER_INFO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mMapCenterInfo:Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    goto :goto_0

    :pswitch_2
    const-string v1, "com.autonavi.xm.extra.FAVORITE_POI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    goto :goto_0

    :pswitch_3
    const-string v1, "com.autonavi.xm.extra.POI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/poi/model/Poi;

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    goto :goto_0

    :cond_0
    const v0, 0x7f0800b8

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEtName:Landroid/widget/EditText;

    const v0, 0x7f0800c9

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEtTelephone:Landroid/widget/EditText;

    const v0, 0x7f0800cb

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEtAddress:Landroid/widget/EditText;

    const v0, 0x7f0800c6

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mBtnCatePicker:Landroid/widget/ImageButton;

    const v0, 0x7f0800c5

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mTextConfirm:Landroid/widget/TextView;

    const v0, 0x7f0800c1

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEditType:I

    packed-switch v0, :pswitch_data_1

    :goto_2
    iget v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIcon:I

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->setIcon(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEtName:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEtTelephone:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mBtnCatePicker:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEtAddress:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800c3

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800c2

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800c4

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :pswitch_4
    iput v3, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIcon:I

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEtName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mMyLocation:Lcom/autonavi/navigation/api/map/model/MyLocation;

    iget-object v2, v2, Lcom/autonavi/navigation/api/map/model/MyLocation;->roadName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    new-instance v2, Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v3, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mMyLocation:Lcom/autonavi/navigation/api/map/model/MyLocation;

    iget-object v3, v3, Lcom/autonavi/navigation/api/map/model/MyLocation;->position:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-direct {v2, v3}, Lcom/autonavi/navigation/api/poi/model/Poi;-><init>(Lcom/autonavi/navigation/api/map/model/LatLng;)V

    invoke-static {v0, v2}, Lcom/autonavi/wh/navi/base/util/Formatter;->formatBriefAddress(Landroid/content/Context;Lcom/autonavi/navigation/api/poi/model/Poi;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEtAddress:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-direct {p0, v1, v4}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->setViewStates(Landroid/view/View;Z)V

    goto :goto_2

    :pswitch_5
    iput v3, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIcon:I

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEtName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mMapCenterInfo:Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    iget-object v2, v2, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->roadName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    new-instance v2, Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v3, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mMapCenterInfo:Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    iget-object v3, v3, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;->position:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-direct {v2, v3}, Lcom/autonavi/navigation/api/poi/model/Poi;-><init>(Lcom/autonavi/navigation/api/map/model/LatLng;)V

    invoke-static {v0, v2}, Lcom/autonavi/wh/navi/base/util/Formatter;->formatBriefAddress(Landroid/content/Context;Lcom/autonavi/navigation/api/poi/model/Poi;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEtAddress:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-direct {p0, v1, v4}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->setViewStates(Landroid/view/View;Z)V

    goto/16 :goto_2

    :pswitch_6
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget v0, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->iconId:I

    iput v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIcon:I

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEtName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v2, v2, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/poi/model/Poi;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getAddress()Ljava/lang/String;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEtAddress:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->getTelCode(Lcom/autonavi/navigation/api/poi/model/Poi;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getTel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getTel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEtTelephone:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mAreaTelCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v3, v3, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v3}, Lcom/autonavi/navigation/api/poi/model/Poi;->getTel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v2, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v2, v2, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-static {v0, v2}, Lcom/autonavi/wh/navi/base/util/Formatter;->formatBriefAddress(Landroid/content/Context;Lcom/autonavi/navigation/api/poi/model/Poi;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEtTelephone:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v2, v2, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/poi/model/Poi;->getTel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :pswitch_7
    iput v3, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mIcon:I

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEtName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/poi/model/Poi;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getAddress()Ljava/lang/String;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEtAddress:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->getTelCode(Lcom/autonavi/navigation/api/poi/model/Poi;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getTel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getTel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEtTelephone:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mAreaTelCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v3}, Lcom/autonavi/navigation/api/poi/model/Poi;->getTel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    invoke-direct {p0, v1, v4}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->setViewStates(Landroid/view/View;Z)V

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v2, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-static {v0, v2}, Lcom/autonavi/wh/navi/base/util/Formatter;->formatBriefAddress(Landroid/content/Context;Lcom/autonavi/navigation/api/poi/model/Poi;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mEtTelephone:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mPoi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/poi/model/Poi;->getTel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onDialogClick(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    invoke-virtual {p1}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, v3, :cond_2

    if-ne p2, v2, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoriteManager:Lcom/autonavi/navigation/api/favorite/FavoriteManager;

    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mFavoritePoi:Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-wide v1, v1, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/navigation/api/favorite/FavoriteManager;->remove(J)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->isOnTop()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->mMainHandler:Landroid/os/Handler;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    if-ne p2, v2, :cond_0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->setHomeOrCompany()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    if-ne p2, v2, :cond_0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/favorites/FavoriteEditorFragment;->setHomeOrCompany()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onPause()V

    return-void
.end method

.method public onPauseView()V
    .locals 0

    invoke-super {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onPauseView()V

    return-void
.end method
