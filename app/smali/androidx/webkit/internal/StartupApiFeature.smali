.class public abstract Landroidx/webkit/internal/StartupApiFeature;
.super Ljava/lang/Object;
.source "StartupApiFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/internal/StartupApiFeature$NoFramework;,
        Landroidx/webkit/internal/StartupApiFeature$P;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final METADATA_HOLDER_SERVICE_NAME:Ljava/lang/String; = "org.chromium.android_webview.services.StartupFeatureMetadataHolder"

.field private static final sValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/webkit/internal/StartupApiFeature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mInternalFeatureValue:Ljava/lang/String;

.field private final mPublicFeatureValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    nop

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroidx/webkit/internal/StartupApiFeature;->sValues:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "publicFeatureValue"    # Ljava/lang/String;
    .param p2, "internalFeatureValue"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroidx/webkit/internal/StartupApiFeature;->mPublicFeatureValue:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Landroidx/webkit/internal/StartupApiFeature;->mInternalFeatureValue:Ljava/lang/String;

    .line 72
    sget-object v0, Landroidx/webkit/internal/StartupApiFeature;->sValues:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method private static getMetaDataFromWebViewManifestOrNull(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 127
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->getCurrentWebViewPackage(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 128
    .local v0, "systemWebViewPackage":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 129
    return-object v1

    .line 131
    :cond_8
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "org.chromium.android_webview.services.StartupFeatureMetadataHolder"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .local v2, "compName":Landroid/content/ComponentName;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-lt v3, v4, :cond_2b

    .line 134
    nop

    .line 135
    const-wide/16 v3, 0x280

    invoke-static {v3, v4}, Landroidx/webkit/internal/ApiHelperForTiramisu;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v3

    .line 138
    .local v3, "flags":Landroid/content/pm/PackageManager$ComponentInfoFlags;
    :try_start_1e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {v4, v2, v3}, Landroidx/webkit/internal/ApiHelperForTiramisu;->getServiceInfo(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v1, v4, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_28} :catch_29

    return-object v1

    .line 141
    :catch_29
    move-exception v4

    .line 142
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v1

    .line 145
    .end local v3    # "flags":Landroid/content/pm/PackageManager$ComponentInfoFlags;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2b
    const/16 v3, 0x80

    .line 146
    .local v3, "flags":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_35

    .line 147
    or-int/lit16 v3, v3, 0x200

    .line 151
    :cond_35
    :try_start_35
    invoke-static {p0, v2, v3}, Landroidx/webkit/internal/StartupApiFeature;->getServiceInfo(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v1, v4, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;
    :try_end_3b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_35 .. :try_end_3b} :catch_3c

    return-object v1

    .line 153
    :catch_3c
    move-exception v4

    .line 154
    .restart local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v1
.end method

.method private static getServiceInfo(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "compName"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 164
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_f

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 166
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 165
    return-object v0

    .line 164
    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static values()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/webkit/internal/StartupApiFeature;",
            ">;"
        }
    .end annotation

    .line 123
    sget-object v0, Landroidx/webkit/internal/StartupApiFeature;->sValues:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPublicFeatureName()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Landroidx/webkit/internal/StartupApiFeature;->mPublicFeatureValue:Ljava/lang/String;

    return-object v0
.end method

.method public isSupported(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    invoke-virtual {p0}, Landroidx/webkit/internal/StartupApiFeature;->isSupportedByFramework()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Landroidx/webkit/internal/StartupApiFeature;->isSupportedByWebView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public abstract isSupportedByFramework()Z
.end method

.method public isSupportedByWebView(Landroid/content/Context;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 111
    invoke-static {p1}, Landroidx/webkit/internal/StartupApiFeature;->getMetaDataFromWebViewManifestOrNull(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 112
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_8

    .line 113
    const/4 v1, 0x0

    return v1

    .line 115
    :cond_8
    iget-object v1, p0, Landroidx/webkit/internal/StartupApiFeature;->mInternalFeatureValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
