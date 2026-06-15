.class public Landroidx/webkit/WebViewCompat;
.super Ljava/lang/Object;
.source "WebViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/WebViewCompat$VisualStateCallback;,
        Landroidx/webkit/WebViewCompat$WebMessageListener;
    }
.end annotation


# static fields
.field private static final EMPTY_URI:Landroid/net/Uri;

.field private static final WILDCARD_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    const-string v0, "*"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroidx/webkit/WebViewCompat;->WILDCARD_URI:Landroid/net/Uri;

    .line 66
    const-string v0, ""

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroidx/webkit/WebViewCompat;->EMPTY_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDocumentStartJavaScript(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Set;)Landroidx/webkit/ScriptHandler;
    .registers 6
    .param p0, "webview"    # Landroid/webkit/WebView;
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/webkit/ScriptHandler;"
        }
    .end annotation

    .line 820
    .local p2, "allowedOriginRules":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->DOCUMENT_START_SCRIPT:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 821
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 822
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->getProvider(Landroid/webkit/WebView;)Landroidx/webkit/internal/WebViewProviderAdapter;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 823
    invoke-interface {p2, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Landroidx/webkit/internal/WebViewProviderAdapter;->addDocumentStartJavaScript(Ljava/lang/String;[Ljava/lang/String;)Landroidx/webkit/internal/ScriptHandlerImpl;

    move-result-object v1

    .line 822
    return-object v1

    .line 825
    :cond_1a
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static addWebMessageListener(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Set;Landroidx/webkit/WebViewCompat$WebMessageListener;)V
    .registers 7
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "jsObjectName"    # Ljava/lang/String;
    .param p3, "listener"    # Landroidx/webkit/WebViewCompat$WebMessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/webkit/WebViewCompat$WebMessageListener;",
            ")V"
        }
    .end annotation

    .line 741
    .local p2, "allowedOriginRules":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_LISTENER:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 742
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 743
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->getProvider(Landroid/webkit/WebView;)Landroidx/webkit/internal/WebViewProviderAdapter;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 744
    invoke-interface {p2, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 743
    invoke-virtual {v1, p1, v2, p3}, Landroidx/webkit/internal/WebViewProviderAdapter;->addWebMessageListener(Ljava/lang/String;[Ljava/lang/String;Landroidx/webkit/WebViewCompat$WebMessageListener;)V

    .line 748
    return-void

    .line 746
    :cond_19
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method private static checkThread(Landroid/webkit/WebView;)V
    .registers 5
    .param p0, "webview"    # Landroid/webkit/WebView;

    .line 1143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_5e

    .line 1144
    invoke-static {p0}, Landroidx/webkit/internal/ApiHelperForP;->getWebViewLooper(Landroid/webkit/WebView;)Landroid/os/Looper;

    move-result-object v0

    .line 1145
    .local v0, "webViewLooper":Landroid/os/Looper;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_11

    .line 1153
    .end local v0    # "webViewLooper":Landroid/os/Looper;
    goto :goto_73

    .line 1146
    .restart local v0    # "webViewLooper":Landroid/os/Looper;
    :cond_11
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A WebView method was called on thread \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1147
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. All WebView methods must be called on the same thread. (Expected Looper "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " called on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1150
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", FYI main Looper is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1155
    .end local v0    # "webViewLooper":Landroid/os/Looper;
    :cond_5e
    :try_start_5e
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "checkThread"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1156
    .local v0, "checkThreadMethod":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1159
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_72
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5e .. :try_end_72} :catch_82
    .catch Ljava/lang/IllegalAccessException; {:try_start_5e .. :try_end_72} :catch_7b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5e .. :try_end_72} :catch_74

    .line 1166
    nop

    .line 1168
    .end local v0    # "checkThreadMethod":Ljava/lang/reflect/Method;
    :goto_73
    return-void

    .line 1164
    :catch_74
    move-exception v0

    .line 1165
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1162
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_7b
    move-exception v0

    .line 1163
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1160
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_82
    move-exception v0

    .line 1161
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static createProvider(Landroid/webkit/WebView;)Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;
    .registers 2
    .param p0, "webview"    # Landroid/webkit/WebView;

    .line 1138
    invoke-static {}, Landroidx/webkit/WebViewCompat;->getFactory()Landroidx/webkit/internal/WebViewProviderFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/webkit/internal/WebViewProviderFactory;->createWebView(Landroid/webkit/WebView;)Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    move-result-object v0

    return-object v0
.end method

.method public static createWebMessageChannel(Landroid/webkit/WebView;)[Landroidx/webkit/WebMessagePortCompat;
    .registers 3
    .param p0, "webview"    # Landroid/webkit/WebView;

    .line 463
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->CREATE_WEB_MESSAGE_CHANNEL:Landroidx/webkit/internal/ApiFeature$M;

    .line 464
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$M;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$M;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 465
    invoke-static {p0}, Landroidx/webkit/internal/ApiHelperForM;->createWebMessageChannel(Landroid/webkit/WebView;)[Landroid/webkit/WebMessagePort;

    move-result-object v1

    invoke-static {v1}, Landroidx/webkit/internal/WebMessagePortImpl;->portsToCompat([Landroid/webkit/WebMessagePort;)[Landroidx/webkit/WebMessagePortCompat;

    move-result-object v1

    return-object v1

    .line 466
    :cond_11
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$M;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 467
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->getProvider(Landroid/webkit/WebView;)Landroidx/webkit/internal/WebViewProviderAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/webkit/internal/WebViewProviderAdapter;->createWebMessageChannel()[Landroidx/webkit/WebMessagePortCompat;

    move-result-object v1

    return-object v1

    .line 469
    :cond_20
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static getCurrentLoadedWebViewPackage()Landroid/content/pm/PackageInfo;
    .registers 2

    .line 371
    nop

    .line 375
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_c

    .line 376
    invoke-static {}, Landroidx/webkit/internal/ApiHelperForO;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0

    .line 379
    :cond_c
    :try_start_c
    invoke-static {}, Landroidx/webkit/WebViewCompat;->getLoadedWebViewPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_10} :catch_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_10} :catch_15
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_10} :catch_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_10} :catch_11

    return-object v0

    .line 380
    :catch_11
    move-exception v0

    goto :goto_18

    :catch_13
    move-exception v0

    goto :goto_18

    :catch_15
    move-exception v0

    goto :goto_18

    :catch_17
    move-exception v0

    .line 384
    :goto_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCurrentWebViewPackage(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 349
    nop

    .line 353
    invoke-static {}, Landroidx/webkit/WebViewCompat;->getCurrentLoadedWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 354
    .local v0, "info":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_8

    return-object v0

    .line 359
    :cond_8
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->getNotYetLoadedWebViewPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    return-object v1
.end method

.method private static getFactory()Landroidx/webkit/internal/WebViewProviderFactory;
    .registers 1

    .line 1134
    invoke-static {}, Landroidx/webkit/internal/WebViewGlueCommunicator;->getFactory()Landroidx/webkit/internal/WebViewProviderFactory;

    move-result-object v0

    return-object v0
.end method

.method private static getLoadedWebViewPackageInfo()Landroid/content/pm/PackageInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 395
    const-string v0, "android.webkit.WebViewFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 396
    .local v0, "webViewFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getLoadedPackageInfo"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 397
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 396
    return-object v1
.end method

.method private static getNotYetLoadedWebViewPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 409
    const/4 v0, 0x0

    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x0

    if-gt v1, v2, :cond_20

    .line 411
    const-string v1, "android.webkit.WebViewFactory"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 413
    .local v1, "webViewFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "getWebViewPackageName"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    .line 414
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 415
    .local v1, "webviewPackageName":Ljava/lang/String;
    goto :goto_37

    .line 416
    .end local v1    # "webviewPackageName":Ljava/lang/String;
    :cond_20
    const-string v1, "android.webkit.WebViewUpdateService"

    .line 417
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 418
    .local v1, "webviewUpdateServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "getCurrentWebViewPackageName"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    .line 419
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_36} :catch_4c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_36} :catch_4a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_36} :catch_48
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_36} :catch_46

    move-object v1, v2

    .line 429
    .local v1, "webviewPackageName":Ljava/lang/String;
    :goto_37
    nop

    .line 430
    if-nez v1, :cond_3b

    return-object v0

    .line 431
    :cond_3b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 433
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_3f
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_43
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3f .. :try_end_43} :catch_44

    return-object v0

    .line 434
    :catch_44
    move-exception v3

    .line 435
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v0

    .line 427
    .end local v1    # "webviewPackageName":Ljava/lang/String;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_46
    move-exception v1

    goto :goto_4e

    .line 425
    :catch_48
    move-exception v1

    goto :goto_4f

    .line 423
    :catch_4a
    move-exception v1

    goto :goto_50

    .line 421
    :catch_4c
    move-exception v1

    goto :goto_51

    .line 428
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    :goto_4e
    return-object v0

    .line 426
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_4f
    return-object v0

    .line 424
    .local v1, "e":Ljava/lang/IllegalAccessException;
    :goto_50
    return-object v0

    .line 422
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :goto_51
    return-object v0
.end method

.method public static getProfile(Landroid/webkit/WebView;)Landroidx/webkit/Profile;
    .registers 3
    .param p0, "webView"    # Landroid/webkit/WebView;

    .line 1125
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->MULTI_PROFILE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 1126
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1127
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->getProvider(Landroid/webkit/WebView;)Landroidx/webkit/internal/WebViewProviderAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/webkit/internal/WebViewProviderAdapter;->getProfile()Landroidx/webkit/Profile;

    move-result-object v1

    return-object v1

    .line 1129
    :cond_11
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method private static getProvider(Landroid/webkit/WebView;)Landroidx/webkit/internal/WebViewProviderAdapter;
    .registers 3
    .param p0, "webview"    # Landroid/webkit/WebView;

    .line 440
    new-instance v0, Landroidx/webkit/internal/WebViewProviderAdapter;

    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->createProvider(Landroid/webkit/WebView;)Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/webkit/internal/WebViewProviderAdapter;-><init>(Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;)V

    return-object v0
.end method

.method public static getSafeBrowsingPrivacyPolicyUrl()Landroid/net/Uri;
    .registers 2

    .line 321
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_PRIVACY_POLICY_URL:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 323
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$O_MR1;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$O_MR1;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 324
    invoke-static {}, Landroidx/webkit/internal/ApiHelperForOMR1;->getSafeBrowsingPrivacyPolicyUrl()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 325
    :cond_d
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$O_MR1;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 326
    invoke-static {}, Landroidx/webkit/WebViewCompat;->getFactory()Landroidx/webkit/internal/WebViewProviderFactory;

    move-result-object v1

    invoke-interface {v1}, Landroidx/webkit/internal/WebViewProviderFactory;->getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;->getSafeBrowsingPrivacyPolicyUrl()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 328
    :cond_20
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static getVariationsHeader()Ljava/lang/String;
    .registers 2

    .line 1067
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_VARIATIONS_HEADER:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 1068
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1069
    invoke-static {}, Landroidx/webkit/WebViewCompat;->getFactory()Landroidx/webkit/internal/WebViewProviderFactory;

    move-result-object v1

    invoke-interface {v1}, Landroidx/webkit/internal/WebViewProviderFactory;->getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;->getVariationsHeader()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1071
    :cond_15
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static getWebChromeClient(Landroid/webkit/WebView;)Landroid/webkit/WebChromeClient;
    .registers 3
    .param p0, "webview"    # Landroid/webkit/WebView;

    .line 865
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_WEB_CHROME_CLIENT:Landroidx/webkit/internal/ApiFeature$O;

    .line 866
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$O;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$O;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 867
    invoke-static {p0}, Landroidx/webkit/internal/ApiHelperForO;->getWebChromeClient(Landroid/webkit/WebView;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    return-object v1

    .line 868
    :cond_d
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$O;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 869
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->getProvider(Landroid/webkit/WebView;)Landroidx/webkit/internal/WebViewProviderAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/webkit/internal/WebViewProviderAdapter;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v1

    return-object v1

    .line 871
    :cond_1c
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static getWebViewClient(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;
    .registers 3
    .param p0, "webview"    # Landroid/webkit/WebView;

    .line 842
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_WEB_VIEW_CLIENT:Landroidx/webkit/internal/ApiFeature$O;

    .line 843
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$O;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$O;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 844
    invoke-static {p0}, Landroidx/webkit/internal/ApiHelperForO;->getWebViewClient(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;

    move-result-object v1

    return-object v1

    .line 845
    :cond_d
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$O;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 846
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->getProvider(Landroid/webkit/WebView;)Landroidx/webkit/internal/WebViewProviderAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/webkit/internal/WebViewProviderAdapter;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v1

    return-object v1

    .line 848
    :cond_1c
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static getWebViewRenderProcess(Landroid/webkit/WebView;)Landroidx/webkit/WebViewRenderProcess;
    .registers 4
    .param p0, "webview"    # Landroid/webkit/WebView;

    .line 899
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_WEB_VIEW_RENDERER:Landroidx/webkit/internal/ApiFeature$Q;

    .line 900
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$Q;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$Q;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 901
    invoke-static {p0}, Landroidx/webkit/internal/ApiHelperForQ;->getWebViewRenderProcess(Landroid/webkit/WebView;)Landroid/webkit/WebViewRenderProcess;

    move-result-object v1

    .line 903
    .local v1, "renderer":Landroid/webkit/WebViewRenderProcess;
    if-eqz v1, :cond_13

    invoke-static {v1}, Landroidx/webkit/internal/WebViewRenderProcessImpl;->forFrameworkObject(Landroid/webkit/WebViewRenderProcess;)Landroidx/webkit/internal/WebViewRenderProcessImpl;

    move-result-object v2

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    return-object v2

    .line 904
    .end local v1    # "renderer":Landroid/webkit/WebViewRenderProcess;
    :cond_15
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$Q;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 905
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->getProvider(Landroid/webkit/WebView;)Landroidx/webkit/internal/WebViewProviderAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/webkit/internal/WebViewProviderAdapter;->getWebViewRenderProcess()Landroidx/webkit/WebViewRenderProcess;

    move-result-object v1

    return-object v1

    .line 907
    :cond_24
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static getWebViewRenderProcessClient(Landroid/webkit/WebView;)Landroidx/webkit/WebViewRenderProcessClient;
    .registers 4
    .param p0, "webview"    # Landroid/webkit/WebView;

    .line 1014
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE:Landroidx/webkit/internal/ApiFeature$Q;

    .line 1016
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$Q;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$Q;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1017
    nop

    .line 1018
    invoke-static {p0}, Landroidx/webkit/internal/ApiHelperForQ;->getWebViewRenderProcessClient(Landroid/webkit/WebView;)Landroid/webkit/WebViewRenderProcessClient;

    move-result-object v1

    .line 1019
    .local v1, "renderer":Landroid/webkit/WebViewRenderProcessClient;
    if-eqz v1, :cond_1c

    instance-of v2, v1, Landroidx/webkit/internal/WebViewRenderProcessClientFrameworkAdapter;

    if-nez v2, :cond_14

    goto :goto_1c

    .line 1023
    :cond_14
    move-object v2, v1

    check-cast v2, Landroidx/webkit/internal/WebViewRenderProcessClientFrameworkAdapter;

    .line 1024
    invoke-virtual {v2}, Landroidx/webkit/internal/WebViewRenderProcessClientFrameworkAdapter;->getFrameworkRenderProcessClient()Landroidx/webkit/WebViewRenderProcessClient;

    move-result-object v2

    .line 1023
    return-object v2

    .line 1021
    :cond_1c
    :goto_1c
    const/4 v2, 0x0

    return-object v2

    .line 1025
    .end local v1    # "renderer":Landroid/webkit/WebViewRenderProcessClient;
    :cond_1e
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$Q;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1026
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->getProvider(Landroid/webkit/WebView;)Landroidx/webkit/internal/WebViewProviderAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/webkit/internal/WebViewProviderAdapter;->getWebViewRenderProcessClient()Landroidx/webkit/WebViewRenderProcessClient;

    move-result-object v1

    return-object v1

    .line 1028
    :cond_2d
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static isMultiProcessEnabled()Z
    .registers 2

    .line 1044
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->MULTI_PROCESS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 1045
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1046
    invoke-static {}, Landroidx/webkit/WebViewCompat;->getFactory()Landroidx/webkit/internal/WebViewProviderFactory;

    move-result-object v1

    invoke-interface {v1}, Landroidx/webkit/internal/WebViewProviderFactory;->getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;->isMultiProcessEnabled()Z

    move-result v1

    return v1

    .line 1048
    :cond_15
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static postVisualStateCallback(Landroid/webkit/WebView;JLandroidx/webkit/WebViewCompat$VisualStateCallback;)V
    .registers 6
    .param p0, "webview"    # Landroid/webkit/WebView;
    .param p1, "requestId"    # J
    .param p3, "callback"    # Landroidx/webkit/WebViewCompat$VisualStateCallback;

    .line 171
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->VISUAL_STATE_CALLBACK:Landroidx/webkit/internal/ApiFeature$M;

    .line 172
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$M;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$M;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 173
    invoke-static {p0, p1, p2, p3}, Landroidx/webkit/internal/ApiHelperForM;->postVisualStateCallback(Landroid/webkit/WebView;JLandroidx/webkit/WebViewCompat$VisualStateCallback;)V

    goto :goto_1c

    .line 174
    :cond_c
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$M;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 175
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->checkThread(Landroid/webkit/WebView;)V

    .line 176
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->getProvider(Landroid/webkit/WebView;)Landroidx/webkit/internal/WebViewProviderAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroidx/webkit/internal/WebViewProviderAdapter;->insertVisualStateCallback(JLandroidx/webkit/WebViewCompat$VisualStateCallback;)V

    .line 180
    :goto_1c
    return-void

    .line 178
    :cond_1d
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static postWebMessage(Landroid/webkit/WebView;Landroidx/webkit/WebMessageCompat;Landroid/net/Uri;)V
    .registers 5
    .param p0, "webview"    # Landroid/webkit/WebView;
    .param p1, "message"    # Landroidx/webkit/WebMessageCompat;
    .param p2, "targetOrigin"    # Landroid/net/Uri;

    .line 511
    sget-object v0, Landroidx/webkit/WebViewCompat;->WILDCARD_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 512
    sget-object p2, Landroidx/webkit/WebViewCompat;->EMPTY_URI:Landroid/net/Uri;

    .line 515
    :cond_a
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->POST_WEB_MESSAGE:Landroidx/webkit/internal/ApiFeature$M;

    .line 517
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$M;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$M;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p1}, Landroidx/webkit/WebMessageCompat;->getType()I

    move-result v1

    if-nez v1, :cond_21

    .line 518
    nop

    .line 519
    invoke-static {p1}, Landroidx/webkit/internal/WebMessagePortImpl;->compatToFrameworkMessage(Landroidx/webkit/WebMessageCompat;)Landroid/webkit/WebMessage;

    move-result-object v1

    .line 518
    invoke-static {p0, v1, p2}, Landroidx/webkit/internal/ApiHelperForM;->postWebMessage(Landroid/webkit/WebView;Landroid/webkit/WebMessage;Landroid/net/Uri;)V

    goto :goto_38

    .line 520
    :cond_21
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$M;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 521
    invoke-virtual {p1}, Landroidx/webkit/WebMessageCompat;->getType()I

    move-result v1

    invoke-static {v1}, Landroidx/webkit/internal/WebMessageAdapter;->isMessagePayloadTypeSupportedByWebView(I)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 522
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->getProvider(Landroid/webkit/WebView;)Landroidx/webkit/internal/WebViewProviderAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroidx/webkit/internal/WebViewProviderAdapter;->postWebMessage(Landroidx/webkit/WebMessageCompat;Landroid/net/Uri;)V

    .line 526
    :goto_38
    return-void

    .line 524
    :cond_39
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static removeWebMessageListener(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .param p0, "webview"    # Landroid/webkit/WebView;
    .param p1, "jsObjectName"    # Ljava/lang/String;

    .line 772
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_LISTENER:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 773
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 774
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->getProvider(Landroid/webkit/WebView;)Landroidx/webkit/internal/WebViewProviderAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/webkit/internal/WebViewProviderAdapter;->removeWebMessageListener(Ljava/lang/String;)V

    .line 778
    return-void

    .line 776
    :cond_10
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static setProfile(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "profileName"    # Ljava/lang/String;

    .line 1100
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->MULTI_PROFILE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 1101
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1102
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->getProvider(Landroid/webkit/WebView;)Landroidx/webkit/internal/WebViewProviderAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/webkit/internal/WebViewProviderAdapter;->setProfileWithName(Ljava/lang/String;)V

    .line 1106
    return-void

    .line 1104
    :cond_10
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static setSafeBrowsingAllowlist(Ljava/util/Set;Landroid/webkit/ValueCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 251
    .local p0, "hosts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_PREFERRED:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 253
    .local v0, "preferredFeature":Landroidx/webkit/internal/ApiFeature$O_MR1;
    sget-object v1, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_DEPRECATED:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 255
    .local v1, "deprecatedFeature":Landroidx/webkit/internal/ApiFeature$O_MR1;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$O_MR1;->isSupportedByWebView()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 256
    invoke-static {}, Landroidx/webkit/WebViewCompat;->getFactory()Landroidx/webkit/internal/WebViewProviderFactory;

    move-result-object v2

    invoke-interface {v2}, Landroidx/webkit/internal/WebViewProviderFactory;->getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;->setSafeBrowsingAllowlist(Ljava/util/Set;Landroid/webkit/ValueCallback;)V

    .line 257
    return-void

    .line 259
    :cond_16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 260
    .local v2, "hostsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroidx/webkit/internal/ApiFeature$O_MR1;->isSupportedByFramework()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 261
    invoke-static {v2, p1}, Landroidx/webkit/internal/ApiHelperForOMR1;->setSafeBrowsingWhitelist(Ljava/util/List;Landroid/webkit/ValueCallback;)V

    goto :goto_36

    .line 262
    :cond_25
    invoke-virtual {v1}, Landroidx/webkit/internal/ApiFeature$O_MR1;->isSupportedByWebView()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 263
    invoke-static {}, Landroidx/webkit/WebViewCompat;->getFactory()Landroidx/webkit/internal/WebViewProviderFactory;

    move-result-object v3

    invoke-interface {v3}, Landroidx/webkit/internal/WebViewProviderFactory;->getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    move-result-object v3

    invoke-interface {v3, v2, p1}, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;->setSafeBrowsingWhitelist(Ljava/util/List;Landroid/webkit/ValueCallback;)V

    .line 267
    :goto_36
    return-void

    .line 265
    :cond_37
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v3

    throw v3
.end method

.method public static setSafeBrowsingWhitelist(Ljava/util/List;Landroid/webkit/ValueCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 304
    .local p0, "hosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, p1}, Landroidx/webkit/WebViewCompat;->setSafeBrowsingAllowlist(Ljava/util/Set;Landroid/webkit/ValueCallback;)V

    .line 305
    return-void
.end method

.method public static setWebViewRenderProcessClient(Landroid/webkit/WebView;Landroidx/webkit/WebViewRenderProcessClient;)V
    .registers 5
    .param p0, "webview"    # Landroid/webkit/WebView;
    .param p1, "webViewRenderProcessClient"    # Landroidx/webkit/WebViewRenderProcessClient;

    .line 987
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE:Landroidx/webkit/internal/ApiFeature$Q;

    .line 989
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$Q;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$Q;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 990
    invoke-static {p0, p1}, Landroidx/webkit/internal/ApiHelperForQ;->setWebViewRenderProcessClient(Landroid/webkit/WebView;Landroidx/webkit/WebViewRenderProcessClient;)V

    goto :goto_1a

    .line 991
    :cond_c
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$Q;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 992
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->getProvider(Landroid/webkit/WebView;)Landroidx/webkit/internal/WebViewProviderAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroidx/webkit/internal/WebViewProviderAdapter;->setWebViewRenderProcessClient(Ljava/util/concurrent/Executor;Landroidx/webkit/WebViewRenderProcessClient;)V

    .line 996
    :goto_1a
    return-void

    .line 994
    :cond_1b
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static setWebViewRenderProcessClient(Landroid/webkit/WebView;Ljava/util/concurrent/Executor;Landroidx/webkit/WebViewRenderProcessClient;)V
    .registers 5
    .param p0, "webview"    # Landroid/webkit/WebView;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "webViewRenderProcessClient"    # Landroidx/webkit/WebViewRenderProcessClient;

    .line 950
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE:Landroidx/webkit/internal/ApiFeature$Q;

    .line 952
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$Q;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$Q;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 953
    invoke-static {p0, p1, p2}, Landroidx/webkit/internal/ApiHelperForQ;->setWebViewRenderProcessClient(Landroid/webkit/WebView;Ljava/util/concurrent/Executor;Landroidx/webkit/WebViewRenderProcessClient;)V

    goto :goto_19

    .line 955
    :cond_c
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$Q;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 956
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->getProvider(Landroid/webkit/WebView;)Landroidx/webkit/internal/WebViewProviderAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroidx/webkit/internal/WebViewProviderAdapter;->setWebViewRenderProcessClient(Ljava/util/concurrent/Executor;Landroidx/webkit/WebViewRenderProcessClient;)V

    .line 961
    :goto_19
    return-void

    .line 959
    :cond_1a
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public static startSafeBrowsing(Landroid/content/Context;Landroid/webkit/ValueCallback;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 209
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->START_SAFE_BROWSING:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 210
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$O_MR1;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$O_MR1;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 211
    invoke-static {p0, p1}, Landroidx/webkit/internal/ApiHelperForOMR1;->startSafeBrowsing(Landroid/content/Context;Landroid/webkit/ValueCallback;)V

    goto :goto_1d

    .line 212
    :cond_c
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$O_MR1;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 213
    invoke-static {}, Landroidx/webkit/WebViewCompat;->getFactory()Landroidx/webkit/internal/WebViewProviderFactory;

    move-result-object v1

    invoke-interface {v1}, Landroidx/webkit/internal/WebViewProviderFactory;->getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;->initSafeBrowsing(Landroid/content/Context;Landroid/webkit/ValueCallback;)V

    .line 217
    :goto_1d
    return-void

    .line 215
    :cond_1e
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method
