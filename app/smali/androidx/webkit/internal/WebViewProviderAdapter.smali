.class public Landroidx/webkit/internal/WebViewProviderAdapter;
.super Ljava/lang/Object;
.source "WebViewProviderAdapter.java"


# instance fields
.field mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;


# direct methods
.method public constructor <init>(Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;)V
    .registers 2
    .param p1, "impl"    # Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    .line 54
    return-void
.end method


# virtual methods
.method public addDocumentStartJavaScript(Ljava/lang/String;[Ljava/lang/String;)Landroidx/webkit/internal/ScriptHandlerImpl;
    .registers 4
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "allowedOriginRules"    # [Ljava/lang/String;

    .line 109
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    .line 110
    invoke-interface {v0, p1, p2}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->addDocumentStartJavaScript(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    .line 109
    invoke-static {v0}, Landroidx/webkit/internal/ScriptHandlerImpl;->toScriptHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/internal/ScriptHandlerImpl;

    move-result-object v0

    return-object v0
.end method

.method public addWebMessageListener(Ljava/lang/String;[Ljava/lang/String;Landroidx/webkit/WebViewCompat$WebMessageListener;)V
    .registers 6
    .param p1, "jsObjectName"    # Ljava/lang/String;
    .param p2, "allowedOriginRules"    # [Ljava/lang/String;
    .param p3, "listener"    # Landroidx/webkit/WebViewCompat$WebMessageListener;

    .line 98
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    new-instance v1, Landroidx/webkit/internal/WebMessageListenerAdapter;

    invoke-direct {v1, p3}, Landroidx/webkit/internal/WebMessageListenerAdapter;-><init>(Landroidx/webkit/WebViewCompat$WebMessageListener;)V

    .line 99
    invoke-static {v1}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->createInvocationHandlerFor(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    .line 98
    invoke-interface {v0, p1, p2, v1}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->addWebMessageListener(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/reflect/InvocationHandler;)V

    .line 101
    return-void
.end method

.method public createWebMessageChannel()[Landroidx/webkit/WebMessagePortCompat;
    .registers 6

    .line 72
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->createWebMessageChannel()[Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    .line 73
    .local v0, "invocationHandlers":[Ljava/lang/reflect/InvocationHandler;
    array-length v1, v0

    new-array v1, v1, [Landroidx/webkit/WebMessagePortCompat;

    .line 74
    .local v1, "messagePorts":[Landroidx/webkit/WebMessagePortCompat;
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_a
    array-length v3, v0

    if-ge v2, v3, :cond_19

    .line 75
    new-instance v3, Landroidx/webkit/internal/WebMessagePortImpl;

    aget-object v4, v0, v2

    invoke-direct {v3, v4}, Landroidx/webkit/internal/WebMessagePortImpl;-><init>(Ljava/lang/reflect/InvocationHandler;)V

    aput-object v3, v1, v2

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 77
    .end local v2    # "n":I
    :cond_19
    return-object v1
.end method

.method public getProfile()Landroidx/webkit/Profile;
    .registers 3

    .line 185
    const-class v0, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    iget-object v1, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    .line 186
    invoke-interface {v1}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->getProfile()Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    .line 185
    invoke-static {v0, v1}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    .line 188
    .local v0, "profile":Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;
    new-instance v1, Landroidx/webkit/internal/ProfileImpl;

    invoke-direct {v1, v0}, Landroidx/webkit/internal/ProfileImpl;-><init>(Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;)V

    return-object v1
.end method

.method public getWebChromeClient()Landroid/webkit/WebChromeClient;
    .registers 2

    .line 133
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .registers 2

    .line 125
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewRenderProcess()Landroidx/webkit/WebViewRenderProcess;
    .registers 2

    .line 141
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->getWebViewRenderer()Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    invoke-static {v0}, Landroidx/webkit/internal/WebViewRenderProcessImpl;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/internal/WebViewRenderProcessImpl;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewRenderProcessClient()Landroidx/webkit/WebViewRenderProcessClient;
    .registers 3

    .line 150
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->getWebViewRendererClient()Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    .line 151
    .local v0, "handler":Ljava/lang/reflect/InvocationHandler;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    return-object v1

    .line 152
    :cond_a
    nop

    .line 153
    invoke-static {v0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->getDelegateFromInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;

    .line 154
    invoke-virtual {v1}, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;->getWebViewRenderProcessClient()Landroidx/webkit/WebViewRenderProcessClient;

    move-result-object v1

    .line 152
    return-object v1
.end method

.method public insertVisualStateCallback(JLandroidx/webkit/WebViewCompat$VisualStateCallback;)V
    .registers 6
    .param p1, "requestId"    # J
    .param p3, "callback"    # Landroidx/webkit/WebViewCompat$VisualStateCallback;

    .line 62
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    new-instance v1, Landroidx/webkit/internal/VisualStateCallbackAdapter;

    invoke-direct {v1, p3}, Landroidx/webkit/internal/VisualStateCallbackAdapter;-><init>(Landroidx/webkit/WebViewCompat$VisualStateCallback;)V

    .line 63
    invoke-static {v1}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->createInvocationHandlerFor(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    .line 62
    invoke-interface {v0, p1, p2, v1}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->insertVisualStateCallback(JLjava/lang/reflect/InvocationHandler;)V

    .line 65
    return-void
.end method

.method public postWebMessage(Landroidx/webkit/WebMessageCompat;Landroid/net/Uri;)V
    .registers 5
    .param p1, "message"    # Landroidx/webkit/WebMessageCompat;
    .param p2, "targetOrigin"    # Landroid/net/Uri;

    .line 85
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    new-instance v1, Landroidx/webkit/internal/WebMessageAdapter;

    invoke-direct {v1, p1}, Landroidx/webkit/internal/WebMessageAdapter;-><init>(Landroidx/webkit/WebMessageCompat;)V

    .line 86
    invoke-static {v1}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->createInvocationHandlerFor(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    .line 85
    invoke-interface {v0, v1, p2}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->postMessageToMainFrame(Ljava/lang/reflect/InvocationHandler;Landroid/net/Uri;)V

    .line 88
    return-void
.end method

.method public removeWebMessageListener(Ljava/lang/String;)V
    .registers 3
    .param p1, "jsObjectName"    # Ljava/lang/String;

    .line 117
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->removeWebMessageListener(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public setProfileWithName(Ljava/lang/String;)V
    .registers 3
    .param p1, "profileName"    # Ljava/lang/String;

    .line 177
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->setProfile(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public setWebViewRenderProcessClient(Ljava/util/concurrent/Executor;Landroidx/webkit/WebViewRenderProcessClient;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "webViewRenderProcessClient"    # Landroidx/webkit/WebViewRenderProcessClient;

    .line 166
    if-eqz p2, :cond_c

    .line 167
    new-instance v0, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;

    invoke-direct {v0, p1, p2}, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;-><init>(Ljava/util/concurrent/Executor;Landroidx/webkit/WebViewRenderProcessClient;)V

    invoke-static {v0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->createInvocationHandlerFor(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    goto :goto_d

    .line 169
    :cond_c
    const/4 v0, 0x0

    :goto_d
    nop

    .line 170
    .local v0, "handler":Ljava/lang/reflect/InvocationHandler;
    iget-object v1, p0, Landroidx/webkit/internal/WebViewProviderAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {v1, v0}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->setWebViewRendererClient(Ljava/lang/reflect/InvocationHandler;)V

    .line 171
    return-void
.end method
