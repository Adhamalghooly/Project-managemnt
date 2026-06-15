.class public final Landroidx/core/os/ConfigurationCompat;
.super Ljava/lang/Object;
.source "ConfigurationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/ConfigurationCompat$Api24Impl;,
        Landroidx/core/os/ConfigurationCompat$Api17Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;
    .registers 4
    .param p0, "configuration"    # Landroid/content/res/Configuration;

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_f

    .line 47
    invoke-static {p0}, Landroidx/core/os/ConfigurationCompat$Api24Impl;->getLocales(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/LocaleListCompat;->wrap(Landroid/os/LocaleList;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    return-object v0

    .line 49
    :cond_f
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Locale;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    aput-object v2, v0, v1

    invoke-static {v0}, Landroidx/core/os/LocaleListCompat;->create([Ljava/util/Locale;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    return-object v0
.end method

.method public static setLocales(Landroid/content/res/Configuration;Landroidx/core/os/LocaleListCompat;)V
    .registers 4
    .param p0, "configuration"    # Landroid/content/res/Configuration;
    .param p1, "locales"    # Landroidx/core/os/LocaleListCompat;

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_a

    .line 59
    invoke-static {p0, p1}, Landroidx/core/os/ConfigurationCompat$Api24Impl;->setLocales(Landroid/content/res/Configuration;Landroidx/core/os/LocaleListCompat;)V

    goto :goto_e

    .line 60
    :cond_a
    nop

    .line 61
    invoke-static {p0, p1}, Landroidx/core/os/ConfigurationCompat$Api17Impl;->setLocale(Landroid/content/res/Configuration;Landroidx/core/os/LocaleListCompat;)V

    .line 63
    :goto_e
    return-void
.end method
