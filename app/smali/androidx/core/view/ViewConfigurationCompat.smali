.class public final Landroidx/core/view/ViewConfigurationCompat;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ViewConfigurationCompat$Api26Impl;,
        Landroidx/core/view/ViewConfigurationCompat$Api28Impl;,
        Landroidx/core/view/ViewConfigurationCompat$Api34Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewConfigCompat"

.field private static sGetScaledScrollFactorMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1c

    .line 48
    :try_start_6
    const-class v0, Landroid/view/ViewConfiguration;

    const-string v1, "getScaledScrollFactor"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/view/ViewConfigurationCompat;->sGetScaledScrollFactorMethod:Ljava/lang/reflect/Method;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_14

    .line 52
    goto :goto_1c

    .line 50
    :catch_14
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ViewConfigCompat"

    const-string v2, "Could not find method getScaledScrollFactor() on ViewConfiguration"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1c
    :goto_1c
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    return-void
.end method

.method private static getLegacyScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F
    .registers 6
    .param p0, "config"    # Landroid/view/ViewConfiguration;
    .param p1, "context"    # Landroid/content/Context;

    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_21

    sget-object v0, Landroidx/core/view/ViewConfigurationCompat;->sGetScaledScrollFactorMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_21

    .line 116
    const/4 v1, 0x0

    :try_start_b
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_19

    int-to-float v0, v0

    return v0

    .line 117
    :catch_19
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ViewConfigCompat"

    const-string v2, "Could not find method getScaledScrollFactor() on ViewConfiguration"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_21
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 123
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    return v1

    .line 127
    :cond_41
    const/4 v1, 0x0

    return v1
.end method

.method private static getPlatformResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;

    .line 359
    const-string v0, "android"

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getPreApi34MaximumFlingVelocityResId(Landroid/content/res/Resources;II)I
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "source"    # I
    .param p2, "axis"    # I

    .line 345
    const/high16 v0, 0x400000

    if-ne p1, v0, :cond_11

    const/16 v0, 0x1a

    if-ne p2, v0, :cond_11

    .line 346
    const-string v0, "config_viewMaxRotaryEncoderFlingVelocity"

    const-string v1, "dimen"

    invoke-static {p0, v0, v1}, Landroidx/core/view/ViewConfigurationCompat;->getPlatformResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 348
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method private static getPreApi34MinimumFlingVelocityResId(Landroid/content/res/Resources;II)I
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "source"    # I
    .param p2, "axis"    # I

    .line 352
    const/high16 v0, 0x400000

    if-ne p1, v0, :cond_11

    const/16 v0, 0x1a

    if-ne p2, v0, :cond_11

    .line 353
    const-string v0, "config_viewMinRotaryEncoderFlingVelocity"

    const-string v1, "dimen"

    invoke-static {p0, v0, v1}, Landroidx/core/view/ViewConfigurationCompat;->getPlatformResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 355
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public static getScaledHorizontalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F
    .registers 4
    .param p0, "config"    # Landroid/view/ViewConfiguration;
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 89
    invoke-static {p0}, Landroidx/core/view/ViewConfigurationCompat$Api26Impl;->getScaledHorizontalScrollFactor(Landroid/view/ViewConfiguration;)F

    move-result v0

    return v0

    .line 91
    :cond_b
    invoke-static {p0, p1}, Landroidx/core/view/ViewConfigurationCompat;->getLegacyScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public static getScaledHoverSlop(Landroid/view/ViewConfiguration;)I
    .registers 3
    .param p0, "config"    # Landroid/view/ViewConfiguration;

    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 137
    invoke-static {p0}, Landroidx/core/view/ViewConfigurationCompat$Api28Impl;->getScaledHoverSlop(Landroid/view/ViewConfiguration;)I

    move-result v0

    return v0

    .line 139
    :cond_b
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static getScaledMaximumFlingVelocity(Landroid/content/Context;Landroid/view/ViewConfiguration;III)I
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/view/ViewConfiguration;
    .param p2, "inputDeviceId"    # I
    .param p3, "axis"    # I
    .param p4, "source"    # I

    .line 263
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_b

    .line 264
    invoke-static {p1, p2, p3, p4}, Landroidx/core/view/ViewConfigurationCompat$Api34Impl;->getScaledMaximumFlingVelocity(Landroid/view/ViewConfiguration;III)I

    move-result v0

    return v0

    .line 267
    :cond_b
    invoke-static {p2, p3, p4}, Landroidx/core/view/ViewConfigurationCompat;->isInputDeviceInfoValid(III)Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_14

    .line 268
    return v1

    .line 271
    :cond_14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 272
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {v0, p4, p3}, Landroidx/core/view/ViewConfigurationCompat;->getPreApi34MaximumFlingVelocityResId(Landroid/content/res/Resources;II)I

    move-result v2

    .line 273
    .local v2, "platformResId":I
    if-eqz v2, :cond_27

    .line 274
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 275
    .local v3, "maxFlingVelocity":I
    if-gez v3, :cond_25

    goto :goto_26

    :cond_25
    move v1, v3

    :goto_26
    return v1

    .line 278
    .end local v3    # "maxFlingVelocity":I
    :cond_27
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    return v1
.end method

.method public static getScaledMinimumFlingVelocity(Landroid/content/Context;Landroid/view/ViewConfiguration;III)I
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/view/ViewConfiguration;
    .param p2, "inputDeviceId"    # I
    .param p3, "axis"    # I
    .param p4, "source"    # I

    .line 228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_b

    .line 229
    invoke-static {p1, p2, p3, p4}, Landroidx/core/view/ViewConfigurationCompat$Api34Impl;->getScaledMinimumFlingVelocity(Landroid/view/ViewConfiguration;III)I

    move-result v0

    return v0

    .line 232
    :cond_b
    invoke-static {p2, p3, p4}, Landroidx/core/view/ViewConfigurationCompat;->isInputDeviceInfoValid(III)Z

    move-result v0

    const v1, 0x7fffffff

    if-nez v0, :cond_15

    .line 233
    return v1

    .line 236
    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 237
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {v0, p4, p3}, Landroidx/core/view/ViewConfigurationCompat;->getPreApi34MinimumFlingVelocityResId(Landroid/content/res/Resources;II)I

    move-result v2

    .line 238
    .local v2, "platformResId":I
    if-eqz v2, :cond_28

    .line 239
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 240
    .local v3, "minFlingVelocity":I
    if-gez v3, :cond_26

    goto :goto_27

    :cond_26
    move v1, v3

    :goto_27
    return v1

    .line 243
    .end local v3    # "minFlingVelocity":I
    :cond_28
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    return v1
.end method

.method public static getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
    .registers 2
    .param p0, "config"    # Landroid/view/ViewConfiguration;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    return v0
.end method

.method public static getScaledVerticalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F
    .registers 4
    .param p0, "config"    # Landroid/view/ViewConfiguration;
    .param p1, "context"    # Landroid/content/Context;

    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 106
    invoke-static {p0}, Landroidx/core/view/ViewConfigurationCompat$Api26Impl;->getScaledVerticalScrollFactor(Landroid/view/ViewConfiguration;)F

    move-result v0

    return v0

    .line 108
    :cond_b
    invoke-static {p0, p1}, Landroidx/core/view/ViewConfigurationCompat;->getLegacyScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public static hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z
    .registers 2
    .param p0, "config"    # Landroid/view/ViewConfiguration;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    return v0
.end method

.method private static isInputDeviceInfoValid(III)Z
    .registers 5
    .param p0, "id"    # I
    .param p1, "axis"    # I
    .param p2, "source"    # I

    .line 363
    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 364
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_e

    invoke-virtual {v0, p1, p2}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public static shouldShowMenuShortcutsWhenKeyboardPresent(Landroid/view/ViewConfiguration;Landroid/content/Context;)Z
    .registers 5
    .param p0, "config"    # Landroid/view/ViewConfiguration;
    .param p1, "context"    # Landroid/content/Context;

    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 151
    invoke-static {p0}, Landroidx/core/view/ViewConfigurationCompat$Api28Impl;->shouldShowMenuShortcutsWhenKeyboardPresent(Landroid/view/ViewConfiguration;)Z

    move-result v0

    return v0

    .line 153
    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 154
    .local v0, "res":Landroid/content/res/Resources;
    nop

    .line 155
    const-string v1, "config_showMenuShortcutsWhenKeyboardPresent"

    const-string v2, "bool"

    invoke-static {v0, v1, v2}, Landroidx/core/view/ViewConfigurationCompat;->getPlatformResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 156
    .local v1, "platformResId":I
    if-eqz v1, :cond_22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v2, 0x1

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    return v2
.end method
