.class public Lcom/autonavi/navigation/api/settings/Settings;
.super Ljava/lang/Object;


# static fields
.field public static final AUTO_ZOOM_ENABLED:Ljava/lang/String; = "auto_zoom_enabled"

.field public static final CALCULATION_RULE:Ljava/lang/String; = "calculation_rule"

.field public static final CURRENT_DAY_NIGHT_MODE:Ljava/lang/String; = "current_day_night_mode"

.field public static final DAY_NIGHT_MODE:Ljava/lang/String; = "day_night_mode"

.field public static final DETOUR_REGION_VISIBILITY:Ljava/lang/String; = "detour_region_visibility"

.field public static final DISABLE_LOCATION_PROVIDERS:Ljava/lang/String; = "disable_location_providers"

.field public static final DRIVING_SAFETY_ENABLED:Ljava/lang/String; = "driving_safety_enabled"

.field public static final ERROR_NOT_EXIST:I = -0x2

.field public static final ERROR_SAVE_FAILED:I = 0x3

.field public static final ERROR_UNKNOWN:I = -0x1

.field public static final FAVORITE_DISPLAY_OPTION:Ljava/lang/String; = "favorite_display_option"

.field public static final LANGUAGE:Ljava/lang/String; = "language"

.field public static final MAP_BACKGROUND_ENABLED:Ljava/lang/String; = "map_background_enabled"

.field public static final MAP_ICON_SIZE:Ljava/lang/String; = "map_icon_size"

.field public static final MAP_PERSPECTIVE_TYPE:Ljava/lang/String; = "map_perspective_type"

.field public static final MAP_THEME:Ljava/lang/String; = "map_theme"

.field public static final MAP_THEME_DAY:Ljava/lang/String; = "map_theme_day"

.field public static final MAP_THEME_NIGHT:Ljava/lang/String; = "map_theme_night"

.field public static final MUTE:Ljava/lang/String; = "mute"

.field public static final MY_POSITION_ICON:Ljava/lang/String; = "my_position_icon"

.field public static final PCD_BROADCAST_ENABLED:Ljava/lang/String; = "pcd_broadcast"

.field public static final POI_DENSITY:Ljava/lang/String; = "poi_density"

.field public static final POI_PRIORITIES:Ljava/lang/String; = "poi_priorities"

.field public static final RECT_OF_GUIDEBOARD:Ljava/lang/String; = "rect_of_guideboard"

.field public static final RECT_OF_HIGHWAY_SIGNS:Ljava/lang/String; = "rect_of_highway_signs"

.field public static final RECT_OF_ZOOM_INTERSECTION:Ljava/lang/String; = "rect_of_zoom_intersection"

.field public static final SAFE_CAMERA_SPEAK:Ljava/lang/String; = "saft_camera_speak"

.field public static final SAFE_DANGER_WARN_SPEAK:Ljava/lang/String; = "saft_danger_warn_speak"

.field public static final SAFE_SPEED_LIMIT_SPEAK:Ljava/lang/String; = "saft_speed_limit_speak"

.field public static final SHOW_ECOMPASS_ENABLED:Ljava/lang/String; = "show_ecompass"

.field public static final SHOW_TRAFFIC_BOARD_ENABLED:Ljava/lang/String; = "show_traffic_board"

.field public static final SPEAK_GUIDANCE_ENABLED:Ljava/lang/String; = "speak_guidance"

.field public static final SPEED_LIMIT_HIGHWAY:Ljava/lang/String; = "speed_limit_highway"

.field public static final SPEED_LIMIT_ROAD:Ljava/lang/String; = "speed_limit_road"

.field public static final SPEED_WARNING_ENABLED:Ljava/lang/String; = "speed_warning_enabled"

.field public static final SUPPORTED_MAP_THEMES:Ljava/lang/String; = "supported_map_themes"

.field public static final SUPPORTED_MAP_THEMES_DAY:Ljava/lang/String; = "supported_map_themes_day"

.field public static final SUPPORTED_MAP_THEMES_NIGHT:Ljava/lang/String; = "supported_map_themes_night"

.field public static final SUPPORTED_MY_POSITION_ICONS:Ljava/lang/String; = "supported_my_position_icons"

.field public static final SUPPORTED_TTS_ROLES:Ljava/lang/String; = "supported_tts_roles"

.field public static final SUPPORT_HK_MC_TW_ENABLED:Ljava/lang/String; = "support_hk_mc_tw"

.field public static final SUPPORT_NETMAP_ENABLED:Ljava/lang/String; = "support_netmap"

.field public static final TBT_GUIDE_COMMONROAD_NORMALDIS:Ljava/lang/String; = "tbt_commonroad_normal"

.field public static final TBT_GUIDE_COMMONROAD_PRENORMADIS:Ljava/lang/String; = "tbt_commonroad_prenormal"

.field public static final TBT_GUIDE_COMMONROAD_SIMPLEDIS:Ljava/lang/String; = "tbt_commonroad_simple"

.field public static final TBT_GUIDE_EXPRESSWAY_NORMALDIS:Ljava/lang/String; = "tbt_expressway_normal"

.field public static final TBT_GUIDE_EXPRESSWAY_PRENORMADIS:Ljava/lang/String; = "tbt_expressway_prenormal"

.field public static final TBT_GUIDE_EXPRESSWAY_SIMPLEDIS:Ljava/lang/String; = "tbt_expressway_simple"

.field public static final TBT_GUIDE_HIGHWAY_NORMALDIS:Ljava/lang/String; = "tbt_highway_normal"

.field public static final TBT_GUIDE_HIGHWAY_PRENORMADIS:Ljava/lang/String; = "tbt_highway_prenormal"

.field public static final TBT_GUIDE_HIGHWAY_SIMPLEDIS:Ljava/lang/String; = "tbt_highway_simple"

.field public static final TEXT_SIZE:Ljava/lang/String; = "text_size"

.field public static final TTS_AUDIO_FOCUS:Ljava/lang/String; = "tts_audio_focus"

.field public static final TTS_AUDIO_STREAM_TYPE:Ljava/lang/String; = "tts_audio_stream_type"

.field public static final TTS_ROLE:Ljava/lang/String; = "tts_role"

.field public static final VOICE_FREQUENCY:Ljava/lang/String; = "voice_frequency"

.field public static final VOLUME:Ljava/lang/String; = "volume"

.field public static final WARNING_STATEMENT_ENABLED:Ljava/lang/String; = "warning_statement_enabled"


# instance fields
.field private final a:Lcom/autonavi/navigation/api/settings/a/b;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getSettingsDelegate()Lcom/autonavi/navigation/api/settings/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/settings/Settings;->a:Lcom/autonavi/navigation/api/settings/a/b;

    return-void
.end method

.method public static getPoiPriorities(Landroid/os/Bundle;)[Lcom/autonavi/navigation/api/settings/model/PoiPriority;
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "poi_priorities"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    new-array v0, v2, [Lcom/autonavi/navigation/api/settings/model/PoiPriority;

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static getSupportedMapThemes(Landroid/os/Bundle;Ljava/lang/String;)[Lcom/autonavi/navigation/api/settings/model/MapTheme;
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    new-array v0, v2, [Lcom/autonavi/navigation/api/settings/model/MapTheme;

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static getSupportedMyLocationIcons(Landroid/os/Bundle;)[Lcom/autonavi/navigation/api/settings/model/MyLocationIcon;
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "supported_my_position_icons"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    new-array v0, v2, [Lcom/autonavi/navigation/api/settings/model/MyLocationIcon;

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static getSupportedTtsRoles(Landroid/os/Bundle;)[Lcom/autonavi/navigation/api/settings/model/TtsRole;
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "supported_tts_roles"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    new-array v0, v2, [Lcom/autonavi/navigation/api/settings/model/TtsRole;

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/Settings;->a:Lcom/autonavi/navigation/api/settings/a/b;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/Settings;->a:Lcom/autonavi/navigation/api/settings/a/b;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/settings/a/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBundle(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "supported_tts_roles"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v0, Lcom/autonavi/navigation/api/R$xml;->tts_roles:I

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    if-eq v0, v1, :cond_3

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TtsRole"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const-string v3, "id"

    const/4 v7, 0x0

    invoke-interface {v6, v0, v3, v7}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    const/4 v0, 0x0

    const-string v3, "name"

    const/4 v8, 0x0

    invoke-interface {v6, v0, v3, v8}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x0

    const-string v3, "languages"

    invoke-interface {v6, v0, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v0, v9

    new-array v10, v0, [I

    array-length v0, v10

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_1
    if-ltz v3, :cond_1

    const-string v0, "en"

    aget-object v11, v9, v3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_2
    aput v0, v10, v3

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/autonavi/navigation/api/settings/model/TtsRole;

    invoke-direct {v0, v7, v8, v10}, Lcom/autonavi/navigation/api/settings/model/TtsRole;-><init>(ILjava/lang/String;[I)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_3
    return-object p2

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/autonavi/navigation/api/settings/model/TtsRole;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/navigation/api/settings/model/TtsRole;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "supported_tts_roles"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object p2, v1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/Settings;->a:Lcom/autonavi/navigation/api/settings/a/b;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/settings/a/b;->b(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/Settings;->a:Lcom/autonavi/navigation/api/settings/a/b;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/settings/a/b;->b(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/Settings;->a:Lcom/autonavi/navigation/api/settings/a/b;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/settings/a/b;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/Settings;->a:Lcom/autonavi/navigation/api/settings/a/b;

    invoke-interface {v0, p1, p2, p3}, Lcom/autonavi/navigation/api/settings/a/b;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPoint(Ljava/lang/String;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/Settings;->a:Lcom/autonavi/navigation/api/settings/a/b;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/settings/a/b;->b(Ljava/lang/String;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getRect(Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/Settings;->a:Lcom/autonavi/navigation/api/settings/a/b;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/settings/a/b;->b(Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getSize(Ljava/lang/String;Lcom/autonavi/navigation/api/settings/model/Size;)Lcom/autonavi/navigation/api/settings/model/Size;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/Settings;->a:Lcom/autonavi/navigation/api/settings/a/b;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/settings/a/b;->b(Ljava/lang/String;Lcom/autonavi/navigation/api/settings/model/Size;)Lcom/autonavi/navigation/api/settings/model/Size;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/Settings;->a:Lcom/autonavi/navigation/api/settings/a/b;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/settings/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/Settings;->a:Lcom/autonavi/navigation/api/settings/a/b;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public putBundle(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/Settings;->a:Lcom/autonavi/navigation/api/settings/a/b;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public putFloat(Ljava/lang/String;F)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/Settings;->a:Lcom/autonavi/navigation/api/settings/a/b;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;F)Z

    move-result v0

    return v0
.end method

.method public putInt(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/Settings;->a:Lcom/autonavi/navigation/api/settings/a/b;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public putLong(Ljava/lang/String;J)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/Settings;->a:Lcom/autonavi/navigation/api/settings/a/b;

    invoke-interface {v0, p1, p2, p3}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public putPoint(Ljava/lang/String;Landroid/graphics/Point;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/Settings;->a:Lcom/autonavi/navigation/api/settings/a/b;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method public putRect(Ljava/lang/String;Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/Settings;->a:Lcom/autonavi/navigation/api/settings/a/b;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public putSize(Ljava/lang/String;Lcom/autonavi/navigation/api/settings/model/Size;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/Settings;->a:Lcom/autonavi/navigation/api/settings/a/b;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;Lcom/autonavi/navigation/api/settings/model/Size;)Z

    move-result v0

    return v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/Settings;->a:Lcom/autonavi/navigation/api/settings/a/b;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public reset()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/Settings;->a:Lcom/autonavi/navigation/api/settings/a/b;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/settings/a/b;->d()Z

    move-result v0

    return v0
.end method

.method public save()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/Settings;->a:Lcom/autonavi/navigation/api/settings/a/b;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/settings/a/b;->e()Z

    move-result v0

    return v0
.end method
