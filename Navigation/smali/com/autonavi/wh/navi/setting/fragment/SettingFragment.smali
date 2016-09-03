.class public Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;
.super Lcom/autonavi/wh/navigation/app/NaviFragment;

# interfaces
.implements Lcom/autonavi/wh/navi/base/widget/ActionListView$OnActionListener;
.implements Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$onMultipleCheckedListener;
.implements Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$onSingleCheckedListener;


# static fields
.field public static final ACTION_TYPE:Ljava/lang/String; = "action_type"

.field private static final DIALOG_ID_AUTO_ZOOM:I = 0x2

.field private static final DIALOG_ID_DAY_NIGHT_MODEL:I = 0x3

.field private static final DIALOG_ID_ELECTIC_POLICE:I = 0x7

.field private static final DIALOG_ID_ELEC_COMPASS:I = 0x4

.field private static final DIALOG_ID_LANGUAGE:I = 0x1

.field private static final DIALOG_ID_POI_PRIORITIES:I = 0x5

.field private static final DIALOG_ID_TMC_ENABLE:I = 0x8

.field private static final DIALOG_ID_TTS_ROLE:I = 0x9

.field private static final DIALog_ID_VOICE_FREQUENCY:I = 0x6


# instance fields
.field private mAcitonListView:Lcom/autonavi/wh/navi/base/widget/ActionListView;

.field private mActionType:I

.field private final mActions:Ljava/util/ArrayList;

.field protected mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

.field private mAutoZoomId:I

.field private mAutoZoomName:Ljava/lang/String;

.field private mCompoundListView:Lcom/autonavi/wh/navi/base/widget/CompoundListView;

.field private mDayNightId:I

.field private mDayNightName:Ljava/lang/String;

.field private mElecCommpassId:I

.field private mElecCommpassName:Ljava/lang/String;

.field private mElecticPoliceId:I

.field private mElecticPoliceName:Ljava/lang/String;

.field private mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

.field private final mId2SettingVoiceFreq:Landroid/util/SparseArray;

.field private final mId2SettingsDayNightMode:Landroid/util/SparseArray;

.field private final mId2SettingsLanguage:Landroid/util/SparseArray;

.field private mLanguageId:I

.field private mLanguageName:Ljava/lang/String;

.field private final mPoiBooleans:[Z

.field private mPoiPrioritys:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mSettings:Lcom/autonavi/navigation/api/settings/Settings;

.field private final mSettings2IdDayNightMode:Ljava/util/HashMap;

.field private final mSettings2IdVoiceFreq:Ljava/util/HashMap;

.field private mTmcEnableId:I

.field private mTmcEnableName:Ljava/lang/String;

.field private mTtsRoleId:I

.field private mTtsRoleName:Ljava/lang/String;

.field private mVoiceFrequencyId:I

.field private mVoiceFrequencyName:Ljava/lang/String;

.field private ttsRoles:[Lcom/autonavi/navigation/api/settings/model/TtsRole;


# direct methods
.method public constructor <init>()V
    .locals 8

    const v7, 0x7f08004e

    const v6, 0x7f08004d

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mActions:Ljava/util/ArrayList;

    const/16 v0, 0x8

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mPoiBooleans:[Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mSettings2IdVoiceFreq:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mSettings2IdVoiceFreq:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mSettings2IdVoiceFreq:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mId2SettingVoiceFreq:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mId2SettingVoiceFreq:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mId2SettingVoiceFreq:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mId2SettingsLanguage:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mId2SettingsLanguage:Landroid/util/SparseArray;

    const v1, 0x7f08004f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mId2SettingsLanguage:Landroid/util/SparseArray;

    const v1, 0x7f080050

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mSettings2IdDayNightMode:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mSettings2IdDayNightMode:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f080059

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mSettings2IdDayNightMode:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f08005a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mSettings2IdDayNightMode:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f08005b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mId2SettingsDayNightMode:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mId2SettingsDayNightMode:Landroid/util/SparseArray;

    const v1, 0x7f080059

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mId2SettingsDayNightMode:Landroid/util/SparseArray;

    const v1, 0x7f08005a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mId2SettingsDayNightMode:Landroid/util/SparseArray;

    const v1, 0x7f08005b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private handlePoiShowDialog([I[Ljava/lang/String;I[ZI)V
    .locals 5

    new-instance v1, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$Builder;

    invoke-direct {v1}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$Builder;-><init>()V

    invoke-virtual {v1, p3}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$Builder;->setTitle(I)Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$Builder;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$Builder;->setChoiceModel(I)Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$Builder;

    invoke-virtual {v1, p4}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$Builder;->setMultipleChecked([Z)Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$Builder;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    new-instance v3, Lcom/autonavi/wh/navi/setting/fragment/SettingItem;

    invoke-direct {v3}, Lcom/autonavi/wh/navi/setting/fragment/SettingItem;-><init>()V

    aget v4, p1, v0

    invoke-virtual {v3, v4}, Lcom/autonavi/wh/navi/setting/fragment/SettingItem;->setId(I)V

    aget-object v4, p2, v0

    invoke-virtual {v3, v4}, Lcom/autonavi/wh/navi/setting/fragment/SettingItem;->setContent(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$Builder;->setContent(Ljava/util/ArrayList;)Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$Builder;->create()Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0, p5}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->showDialog(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    return-void
.end method

.method private handleShowDialog([I[Ljava/lang/String;III)V
    .locals 5

    new-instance v1, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$Builder;

    invoke-direct {v1}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$Builder;-><init>()V

    invoke-virtual {v1, p3}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$Builder;->setTitle(I)Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$Builder;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$Builder;->setChoiceModel(I)Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$Builder;

    invoke-virtual {v1, p4}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$Builder;->setSingleCheckedId(I)Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$Builder;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    new-instance v3, Lcom/autonavi/wh/navi/setting/fragment/SettingItem;

    invoke-direct {v3}, Lcom/autonavi/wh/navi/setting/fragment/SettingItem;-><init>()V

    aget v4, p1, v0

    invoke-virtual {v3, v4}, Lcom/autonavi/wh/navi/setting/fragment/SettingItem;->setId(I)V

    aget-object v4, p2, v0

    invoke-virtual {v3, v4}, Lcom/autonavi/wh/navi/setting/fragment/SettingItem;->setContent(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$Builder;->setContent(Ljava/util/ArrayList;)Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog$Builder;->create()Lcom/autonavi/wh/navi/setting/fragment/SettingAlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0, p5}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->showDialog(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    return-void
.end method

.method private initSettings(I)V
    .locals 10

    const/4 v9, 0x2

    const v8, 0x7f0b0183

    const v7, 0x7f0b0182

    const/4 v6, 0x1

    const/4 v1, 0x0

    const v0, 0x7f080045

    iget v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mActionType:I

    if-ne v0, v2, :cond_f

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/navigation/api/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mLanguageId:I

    iget v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mLanguageId:I

    if-nez v0, :cond_3

    const v0, 0x7f0b0034

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mLanguageName:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v2, "auto_zoom_enabled"

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/navigation/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iput v1, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mAutoZoomId:I

    invoke-virtual {p0, v7}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mAutoZoomName:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v2, "poi_priorities"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/navigation/api/settings/Settings;->getBundle(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/navigation/api/settings/Settings;->getPoiPriorities(Landroid/os/Bundle;)[Lcom/autonavi/navigation/api/settings/model/PoiPriority;

    move-result-object v3

    if-eqz v3, :cond_a

    array-length v0, v3

    if-lez v0, :cond_a

    move v0, v1

    move v2, v1

    :goto_2
    array-length v4, v3

    if-ge v0, v4, :cond_6

    iget-object v4, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mPoiBooleans:[Z

    aget-object v5, v3, v0

    iget-boolean v5, v5, Lcom/autonavi/navigation/api/settings/model/PoiPriority;->isChecked:Z

    aput-boolean v5, v4, v0

    aget-object v4, v3, v0

    iget-boolean v4, v4, Lcom/autonavi/navigation/api/settings/model/PoiPriority;->isChecked:Z

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_2

    if-nez v2, :cond_5

    iget-object v4, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mPoiBooleans:[Z

    const/4 v5, 0x7

    aput-boolean v6, v4, v5

    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mLanguageId:I

    if-ne v0, v9, :cond_0

    const v0, 0x7f0b0035

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mLanguageName:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iput v6, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mAutoZoomId:I

    invoke-virtual {p0, v8}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mAutoZoomName:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mPoiBooleans:[Z

    const/4 v5, 0x7

    aput-boolean v1, v4, v5

    goto :goto_3

    :cond_6
    if-nez v2, :cond_9

    const v0, 0x7f0b0184

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mPoiPrioritys:Ljava/lang/String;

    :goto_4
    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "day_and_night"

    invoke-interface {v0, v2, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mDayNightId:I

    iget v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mDayNightId:I

    if-ne v0, v9, :cond_b

    const v0, 0x7f0b0184

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mDayNightName:Ljava/lang/String;

    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->isECompassEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    iput v1, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mElecCommpassId:I

    invoke-virtual {p0, v7}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mElecCommpassName:Ljava/lang/String;

    :goto_6
    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v2, "driving_safety_enabled"

    invoke-virtual {v0, v2, v6}, Lcom/autonavi/navigation/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    iput v1, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mElecticPoliceId:I

    invoke-virtual {p0, v7}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mElecticPoliceName:Ljava/lang/String;

    :cond_8
    :goto_7
    return-void

    :cond_9
    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mPoiPrioritys:Ljava/lang/String;

    goto :goto_4

    :cond_a
    const v0, 0x7f0b0184

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mPoiPrioritys:Ljava/lang/String;

    goto :goto_4

    :cond_b
    iget v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mDayNightId:I

    if-nez v0, :cond_c

    const v0, 0x7f0b0187

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mDayNightName:Ljava/lang/String;

    goto :goto_5

    :cond_c
    iget v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mDayNightId:I

    if-ne v0, v6, :cond_7

    const v0, 0x7f0b0188

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mDayNightName:Ljava/lang/String;

    goto :goto_5

    :cond_d
    iput v6, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mElecCommpassId:I

    invoke-virtual {p0, v8}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mElecCommpassName:Ljava/lang/String;

    goto :goto_6

    :cond_e
    iput v6, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mElecticPoliceId:I

    invoke-virtual {p0, v8}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mElecticPoliceName:Ljava/lang/String;

    goto :goto_7

    :cond_f
    const v0, 0x7f080046

    if-ne v0, p1, :cond_14

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v2, "voice_frequency"

    invoke-virtual {v0, v2, v6}, Lcom/autonavi/navigation/api/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mVoiceFrequencyId:I

    iget v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mVoiceFrequencyId:I

    if-ne v0, v6, :cond_13

    const v0, 0x7f0b018c

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mVoiceFrequencyName:Ljava/lang/String;

    :cond_10
    :goto_8
    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v2, "supported_tts_roles"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/navigation/api/settings/Settings;->getBundle(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {v0}, Lcom/autonavi/navigation/api/settings/Settings;->getSupportedTtsRoles(Landroid/os/Bundle;)[Lcom/autonavi/navigation/api/settings/model/TtsRole;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->ttsRoles:[Lcom/autonavi/navigation/api/settings/model/TtsRole;

    :cond_11
    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->ttsRoles:[Lcom/autonavi/navigation/api/settings/model/TtsRole;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v2, "tts_role"

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/navigation/api/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mTtsRoleId:I

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->ttsRoles:[Lcom/autonavi/navigation/api/settings/model/TtsRole;

    array-length v2, v0

    :goto_9
    if-ge v1, v2, :cond_8

    aget-object v3, v0, v1

    iget v4, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mTtsRoleId:I

    iget v5, v3, Lcom/autonavi/navigation/api/settings/model/TtsRole;->id:I

    if-ne v4, v5, :cond_12

    iget-object v3, v3, Lcom/autonavi/navigation/api/settings/model/TtsRole;->name:Ljava/lang/String;

    iput-object v3, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mTtsRoleName:Ljava/lang/String;

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_13
    iget v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mVoiceFrequencyId:I

    if-nez v0, :cond_10

    const v0, 0x7f0b018d

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mVoiceFrequencyName:Ljava/lang/String;

    goto :goto_8

    :cond_14
    const v0, 0x7f080047

    if-ne v0, p1, :cond_8

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getExternalTmc()Lcom/autonavi/wh/navi/tmc/TmcBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/tmc/TmcBase;->getTmcStatus()Z

    move-result v0

    if-eqz v0, :cond_15

    iput v1, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mTmcEnableId:I

    invoke-virtual {p0, v7}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mTmcEnableName:Ljava/lang/String;

    goto/16 :goto_7

    :cond_15
    iput v6, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mTmcEnableId:I

    invoke-virtual {p0, v8}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mTmcEnableName:Ljava/lang/String;

    goto/16 :goto_7
.end method

.method private setDataSource(ILcom/autonavi/wh/navi/base/widget/ActionListView;)V
    .locals 7

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const v0, 0x7f080045

    if-ne p1, v0, :cond_2

    const v0, 0x7f0b0173

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->setTitle(I)V

    iget-object v6, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mActions:Ljava/util/ArrayList;

    new-instance v0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment$SettingAction;

    iget-object v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f080037

    const v4, 0x7f0b017d

    iget-object v5, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mLanguageName:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment$SettingAction;-><init>(Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;Landroid/content/Context;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mActions:Ljava/util/ArrayList;

    new-instance v0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment$SettingAction;

    iget-object v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f080039

    const v4, 0x7f0b017f

    iget-object v5, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mPoiPrioritys:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment$SettingAction;-><init>(Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;Landroid/content/Context;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mActions:Ljava/util/ArrayList;

    new-instance v0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment$SettingAction;

    iget-object v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f08003a

    const v4, 0x7f0b0180

    iget-object v5, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mDayNightName:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment$SettingAction;-><init>(Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;Landroid/content/Context;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mActions:Ljava/util/ArrayList;

    new-instance v0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment$SettingAction;

    iget-object v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f08003e

    const v4, 0x7f0b018b

    iget-object v5, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mElecticPoliceName:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment$SettingAction;-><init>(Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;Landroid/content/Context;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mActions:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Lcom/autonavi/wh/navi/base/widget/ActionListView;->setActions(Ljava/util/ArrayList;)V

    return-void

    :cond_2
    const v0, 0x7f080046

    if-ne p1, v0, :cond_3

    const v0, 0x7f0b0174

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->setTitle(I)V

    iget-object v6, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mActions:Ljava/util/ArrayList;

    new-instance v0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment$SettingAction;

    iget-object v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f08003c

    const v4, 0x7f0b0189

    iget-object v5, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mVoiceFrequencyName:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment$SettingAction;-><init>(Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;Landroid/content/Context;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mActions:Ljava/util/ArrayList;

    new-instance v0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment$SettingAction;

    iget-object v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f08003d

    const v4, 0x7f0b018a

    iget-object v5, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mTtsRoleName:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment$SettingAction;-><init>(Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;Landroid/content/Context;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const v0, 0x7f080047

    if-ne p1, v0, :cond_1

    const v0, 0x7f0b0175

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->setTitle(I)V

    iget-object v6, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mActions:Ljava/util/ArrayList;

    new-instance v0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment$SettingAction;

    iget-object v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v3, 0x7f08003f

    const v4, 0x7f0b0193

    iget-object v5, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mTmcEnableName:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment$SettingAction;-><init>(Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;Landroid/content/Context;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
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

.method public isNetworkConnected(Landroid/content/Context;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAction(I)V
    .locals 8

    const/4 v7, 0x3

    const v2, 0x7f090002

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x2

    const v1, 0x7f080037

    if-ne p1, v1, :cond_3

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    iget-object v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f090001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget v4, v1, v0

    iget v3, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mLanguageId:I

    if-nez v3, :cond_2

    aget v4, v1, v0

    :cond_0
    :goto_0
    const v3, 0x7f0b017d

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->handleShowDialog([I[Ljava/lang/String;III)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mLanguageId:I

    if-ne v0, v6, :cond_0

    aget v4, v1, v5

    goto :goto_0

    :cond_3
    const v1, 0x7f080038

    if-ne p1, v1, :cond_4

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b017e

    iget v4, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mAutoZoomId:I

    move-object v0, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->handleShowDialog([I[Ljava/lang/String;III)V

    goto :goto_1

    :cond_4
    const v1, 0x7f080039

    if-ne p1, v1, :cond_5

    const/16 v0, 0x8

    new-array v1, v0, [I

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f090003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b017f

    iget-object v4, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mPoiBooleans:[Z

    const/4 v5, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->handlePoiShowDialog([I[Ljava/lang/String;I[ZI)V

    goto :goto_1

    :cond_5
    const v1, 0x7f08003a

    if-ne p1, v1, :cond_9

    new-array v1, v7, [I

    fill-array-data v1, :array_2

    iget-object v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f090004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget v4, v1, v0

    iget v3, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mDayNightId:I

    if-nez v3, :cond_7

    aget v4, v1, v0

    :cond_6
    :goto_2
    const v3, 0x7f0b0180

    move-object v0, p0

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->handleShowDialog([I[Ljava/lang/String;III)V

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mDayNightId:I

    if-ne v0, v5, :cond_8

    aget v4, v1, v5

    goto :goto_2

    :cond_8
    iget v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mDayNightId:I

    if-ne v0, v6, :cond_6

    aget v4, v1, v6

    goto :goto_2

    :cond_9
    const v1, 0x7f08003b

    if-ne p1, v1, :cond_a

    new-array v1, v6, [I

    fill-array-data v1, :array_3

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0181

    iget v4, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mElecCommpassId:I

    const/4 v5, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->handleShowDialog([I[Ljava/lang/String;III)V

    goto/16 :goto_1

    :cond_a
    const v1, 0x7f08003c

    if-ne p1, v1, :cond_d

    new-array v1, v6, [I

    fill-array-data v1, :array_4

    aget v4, v1, v0

    iget v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mVoiceFrequencyId:I

    if-ne v2, v5, :cond_c

    aget v4, v1, v0

    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f090005

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0189

    const/4 v5, 0x6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->handleShowDialog([I[Ljava/lang/String;III)V

    goto/16 :goto_1

    :cond_c
    iget v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mVoiceFrequencyId:I

    if-nez v0, :cond_b

    aget v4, v1, v5

    goto :goto_3

    :cond_d
    const v1, 0x7f08003e

    if-ne p1, v1, :cond_e

    new-array v1, v6, [I

    fill-array-data v1, :array_5

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b018b

    iget v4, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mElecticPoliceId:I

    const/4 v5, 0x7

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->handleShowDialog([I[Ljava/lang/String;III)V

    goto/16 :goto_1

    :cond_e
    const v1, 0x7f08003f

    if-ne p1, v1, :cond_f

    new-array v1, v6, [I

    fill-array-data v1, :array_6

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0193

    iget v4, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mTmcEnableId:I

    const/16 v5, 0x8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->handleShowDialog([I[Ljava/lang/String;III)V

    goto/16 :goto_1

    :cond_f
    const v1, 0x7f08003d

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->ttsRoles:[Lcom/autonavi/navigation/api/settings/model/TtsRole;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->ttsRoles:[Lcom/autonavi/navigation/api/settings/model/TtsRole;

    array-length v1, v1

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->ttsRoles:[Lcom/autonavi/navigation/api/settings/model/TtsRole;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    :goto_4
    iget-object v3, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->ttsRoles:[Lcom/autonavi/navigation/api/settings/model/TtsRole;

    array-length v3, v3

    if-ge v0, v3, :cond_11

    iget-object v3, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->ttsRoles:[Lcom/autonavi/navigation/api/settings/model/TtsRole;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/autonavi/navigation/api/settings/model/TtsRole;->id:I

    aput v3, v1, v0

    iget-object v3, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->ttsRoles:[Lcom/autonavi/navigation/api/settings/model/TtsRole;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/autonavi/navigation/api/settings/model/TtsRole;->name:Ljava/lang/String;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_10
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_7

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f090006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    :cond_11
    const v3, 0x7f0b018a

    iget v4, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mTtsRoleId:I

    const/16 v5, 0x9

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->handleShowDialog([I[Ljava/lang/String;III)V

    goto/16 :goto_1

    nop

    :array_0
    .array-data 4
        0x7f08004f
        0x7f080050
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x7f080059
        0x7f08005a
        0x7f08005b
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x7f08004d
        0x7f08004e
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x7f080052
        0x7f080053
        0x7f080054
        0x7f080055
    .end array-data
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onCreateView(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "action_type"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mActionType:I

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "action_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mActionType:I

    :cond_1
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->setContentView(I)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getAnMap()Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getSettings()Lcom/autonavi/navigation/api/settings/Settings;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v2, "supported_tts_roles"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/navigation/api/settings/Settings;->getBundle(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/autonavi/navigation/api/settings/Settings;->getSupportedTtsRoles(Landroid/os/Bundle;)[Lcom/autonavi/navigation/api/settings/model/TtsRole;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->ttsRoles:[Lcom/autonavi/navigation/api/settings/model/TtsRole;

    :cond_2
    iget v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mActionType:I

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->initSettings(I)V

    const v0, 0x7f080125

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/base/widget/CompoundListView;

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mCompoundListView:Lcom/autonavi/wh/navi/base/widget/CompoundListView;

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mCompoundListView:Lcom/autonavi/wh/navi/base/widget/CompoundListView;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/CompoundListView;->getListView()Lcom/autonavi/wh/navi/base/widget/ActionListView;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mAcitonListView:Lcom/autonavi/wh/navi/base/widget/ActionListView;

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mAcitonListView:Lcom/autonavi/wh/navi/base/widget/ActionListView;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/navi/base/widget/ActionListView;->setOnActionListener(Lcom/autonavi/wh/navi/base/widget/ActionListView$OnActionListener;)V

    iget v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mActionType:I

    iget-object v1, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mAcitonListView:Lcom/autonavi/wh/navi/base/widget/ActionListView;

    invoke-direct {p0, v0, v1}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->setDataSource(ILcom/autonavi/wh/navi/base/widget/ActionListView;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mAcitonListView:Lcom/autonavi/wh/navi/base/widget/ActionListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/base/widget/ActionListView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public onMultipleChecked([Z)V
    .locals 7

    const/4 v1, 0x0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    aget-boolean v3, p1, v0

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v1, "poi_priorities"

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/navigation/api/settings/Settings;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)Z

    :goto_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/settings/Settings;->save()Z

    iget v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mActionType:I

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->initSettings(I)V

    iget v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mActionType:I

    iget-object v1, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mAcitonListView:Lcom/autonavi/wh/navi/base/widget/ActionListView;

    invoke-direct {p0, v0, v1}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->setDataSource(ILcom/autonavi/wh/navi/base/widget/ActionListView;)V

    return-void

    :cond_0
    new-array v3, v0, [Lcom/autonavi/navigation/api/settings/model/PoiPriority;

    move v0, v1

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    new-instance v4, Lcom/autonavi/navigation/api/settings/model/PoiPriority;

    aget-boolean v5, p1, v0

    const/4 v6, 0x0

    invoke-direct {v4, v0, v1, v5, v6}, Lcom/autonavi/navigation/api/settings/model/PoiPriority;-><init>(IIZLjava/lang/String;)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "poi_priorities"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v1, "poi_priorities"

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/navigation/api/settings/Settings;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "action_type"

    iget v1, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mActionType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSingleChecked(II)V
    .locals 6

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v3, "language"

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mId2SettingsLanguage:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/autonavi/navigation/api/settings/Settings;->putInt(Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/settings/Settings;->save()Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->setReSetLanguage(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->onConfigLocaleChange()V

    :goto_0
    return-void

    :cond_0
    if-ne p1, v5, :cond_3

    iget-object v3, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v4, "auto_zoom_enabled"

    if-nez p2, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v4, v0}, Lcom/autonavi/navigation/api/settings/Settings;->putBoolean(Ljava/lang/String;Z)Z

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/settings/Settings;->save()Z

    iget v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mActionType:I

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->initSettings(I)V

    iget v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mActionType:I

    iget-object v1, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mAcitonListView:Lcom/autonavi/wh/navi/base/widget/ActionListView;

    invoke-direct {p0, v0, v1}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->setDataSource(ILcom/autonavi/wh/navi/base/widget/ActionListView;)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mId2SettingsDayNightMode:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "day_and_night"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-ne v0, v5, :cond_4

    iget-object v3, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v3}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getYFCompany()Lcom/autonavi/wh/navi/cooperation/YFCompany;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/wh/navi/cooperation/YFCompany;->isHeadLightOn()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v3, "day_night_mode"

    invoke-virtual {v2, v3, v1}, Lcom/autonavi/navigation/api/settings/Settings;->putInt(Ljava/lang/String;I)Z

    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v2, "day_night_mode"

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/navigation/api/settings/Settings;->putInt(Ljava/lang/String;I)Z

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v3, "day_night_mode"

    invoke-virtual {v1, v3, v2}, Lcom/autonavi/navigation/api/settings/Settings;->putInt(Ljava/lang/String;I)Z

    goto :goto_3

    :cond_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    if-nez p2, :cond_7

    :goto_4
    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->setECompassEnabled(Z)V

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_4

    :cond_8
    const/4 v0, 0x6

    if-ne p1, v0, :cond_9

    iget-object v1, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v2, "voice_frequency"

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mId2SettingVoiceFreq:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/navigation/api/settings/Settings;->putInt(Ljava/lang/String;I)Z

    goto :goto_2

    :cond_9
    const/4 v0, 0x7

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v3, "driving_safety_enabled"

    if-nez p2, :cond_a

    :goto_5
    invoke-virtual {v0, v3, v1}, Lcom/autonavi/navigation/api/settings/Settings;->putBoolean(Ljava/lang/String;Z)Z

    goto/16 :goto_2

    :cond_a
    move v1, v2

    goto :goto_5

    :cond_b
    const/16 v0, 0x8

    if-ne p1, v0, :cond_d

    if-nez p2, :cond_c

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getExternalTmc()Lcom/autonavi/wh/navi/tmc/TmcBase;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/tmc/TmcBase;->switchTmc(Z)V

    iput v1, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mTmcEnableId:I

    const v0, 0x7f0b0183

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mTmcEnableName:Ljava/lang/String;

    goto/16 :goto_2

    :cond_c
    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getExternalTmc()Lcom/autonavi/wh/navi/tmc/TmcBase;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/wh/navi/tmc/TmcBase;->switchTmc(Z)V

    iput v2, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mTmcEnableId:I

    const v0, 0x7f0b0182

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mTmcEnableName:Ljava/lang/String;

    goto/16 :goto_2

    :cond_d
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/SettingFragment;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v1, "tts_role"

    invoke-virtual {v0, v1, p2}, Lcom/autonavi/navigation/api/settings/Settings;->putInt(Ljava/lang/String;I)Z

    goto/16 :goto_2
.end method
