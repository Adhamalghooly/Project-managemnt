.class public Lcom/getcapacitor/WebViewLocalServer;
.super Ljava/lang/Object;
.source "WebViewLocalServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getcapacitor/WebViewLocalServer$PathHandler;,
        Lcom/getcapacitor/WebViewLocalServer$LollipopLazyInputStream;,
        Lcom/getcapacitor/WebViewLocalServer$LazyInputStream;
    }
.end annotation


# static fields
.field private static final capacitorContentStart:Ljava/lang/String; = "/_capacitor_content_"

.field private static final capacitorFileStart:Ljava/lang/String; = "/_capacitor_file_"


# instance fields
.field private final authorities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private basePath:Ljava/lang/String;

.field private final bridge:Lcom/getcapacitor/Bridge;

.field private final html5mode:Z

.field private isAsset:Z

.field private final jsInjector:Lcom/getcapacitor/JSInjector;

.field private final protocolHandler:Lcom/getcapacitor/AndroidProtocolHandler;

.field private final uriMatcher:Lcom/getcapacitor/UriMatcher;


# direct methods
.method static bridge synthetic -$$Nest$fgetbasePath(Lcom/getcapacitor/WebViewLocalServer;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/getcapacitor/WebViewLocalServer;->basePath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbridge(Lcom/getcapacitor/WebViewLocalServer;)Lcom/getcapacitor/Bridge;
    .registers 1

    iget-object p0, p0, Lcom/getcapacitor/WebViewLocalServer;->bridge:Lcom/getcapacitor/Bridge;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisAsset(Lcom/getcapacitor/WebViewLocalServer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/getcapacitor/WebViewLocalServer;->isAsset:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetprotocolHandler(Lcom/getcapacitor/WebViewLocalServer;)Lcom/getcapacitor/AndroidProtocolHandler;
    .registers 1

    iget-object p0, p0, Lcom/getcapacitor/WebViewLocalServer;->protocolHandler:Lcom/getcapacitor/AndroidProtocolHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisAsset(Lcom/getcapacitor/WebViewLocalServer;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/getcapacitor/WebViewLocalServer;->isAsset:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/getcapacitor/Bridge;Lcom/getcapacitor/JSInjector;Ljava/util/ArrayList;Z)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bridge"    # Lcom/getcapacitor/Bridge;
    .param p3, "jsInjector"    # Lcom/getcapacitor/JSInjector;
    .param p5, "html5mode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/getcapacitor/Bridge;",
            "Lcom/getcapacitor/JSInjector;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 136
    .local p4, "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Lcom/getcapacitor/UriMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/getcapacitor/UriMatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/getcapacitor/WebViewLocalServer;->uriMatcher:Lcom/getcapacitor/UriMatcher;

    .line 138
    iput-boolean p5, p0, Lcom/getcapacitor/WebViewLocalServer;->html5mode:Z

    .line 139
    new-instance v0, Lcom/getcapacitor/AndroidProtocolHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/getcapacitor/AndroidProtocolHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/getcapacitor/WebViewLocalServer;->protocolHandler:Lcom/getcapacitor/AndroidProtocolHandler;

    .line 140
    iput-object p4, p0, Lcom/getcapacitor/WebViewLocalServer;->authorities:Ljava/util/ArrayList;

    .line 141
    iput-object p2, p0, Lcom/getcapacitor/WebViewLocalServer;->bridge:Lcom/getcapacitor/Bridge;

    .line 142
    iput-object p3, p0, Lcom/getcapacitor/WebViewLocalServer;->jsInjector:Lcom/getcapacitor/JSInjector;

    .line 143
    return-void
.end method

.method private createHostingDetails()V
    .registers 8

    .line 607
    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer;->basePath:Ljava/lang/String;

    .line 609
    .local v0, "assetPath":Ljava/lang/String;
    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_43

    .line 613
    new-instance v1, Lcom/getcapacitor/WebViewLocalServer$1;

    invoke-direct {v1, p0, v0}, Lcom/getcapacitor/WebViewLocalServer$1;-><init>(Lcom/getcapacitor/WebViewLocalServer;Ljava/lang/String;)V

    .line 654
    .local v1, "handler":Lcom/getcapacitor/WebViewLocalServer$PathHandler;
    iget-object v2, p0, Lcom/getcapacitor/WebViewLocalServer;->authorities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 655
    .local v3, "authority":Ljava/lang/String;
    const-string v4, "http"

    invoke-direct {p0, v4, v1, v3}, Lcom/getcapacitor/WebViewLocalServer;->registerUriForScheme(Ljava/lang/String;Lcom/getcapacitor/WebViewLocalServer$PathHandler;Ljava/lang/String;)V

    .line 656
    const-string v5, "https"

    invoke-direct {p0, v5, v1, v3}, Lcom/getcapacitor/WebViewLocalServer;->registerUriForScheme(Ljava/lang/String;Lcom/getcapacitor/WebViewLocalServer$PathHandler;Ljava/lang/String;)V

    .line 658
    iget-object v6, p0, Lcom/getcapacitor/WebViewLocalServer;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v6}, Lcom/getcapacitor/Bridge;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 659
    .local v6, "customScheme":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    .line 660
    invoke-direct {p0, v6, v1, v3}, Lcom/getcapacitor/WebViewLocalServer;->registerUriForScheme(Ljava/lang/String;Lcom/getcapacitor/WebViewLocalServer$PathHandler;Ljava/lang/String;)V

    .line 662
    .end local v3    # "authority":Ljava/lang/String;
    .end local v6    # "customScheme":Ljava/lang/String;
    :cond_41
    goto :goto_16

    .line 663
    :cond_42
    return-void

    .line 610
    .end local v1    # "handler":Lcom/getcapacitor/WebViewLocalServer$PathHandler;
    :cond_43
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "assetPath cannot contain the \'*\' character."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getMimeType(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/InputStream;

    .line 524
    const/4 v0, 0x0

    .line 526
    .local v0, "mimeType":Ljava/lang/String;
    :try_start_1
    invoke-static {p1}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_44

    move-object v0, v1

    .line 527
    const-string v1, ".js"

    if-eqz v0, :cond_1d

    :try_start_a
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "image/x-icon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 528
    const-string v2, "We shouldn\'t be here"

    invoke-static {v2}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 530
    :cond_1d
    if-nez v0, :cond_43

    .line 531
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, ".mjs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_40

    .line 534
    :cond_2e
    const-string v1, ".wasm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 535
    const-string v1, "application/wasm"

    move-object v0, v1

    goto :goto_43

    .line 537
    :cond_3a
    invoke-static {p2}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_43

    .line 533
    :cond_40
    :goto_40
    const-string v1, "application/javascript"
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_42} :catch_44

    move-object v0, v1

    .line 542
    :cond_43
    :goto_43
    goto :goto_5b

    .line 540
    :catch_44
    move-exception v1

    .line 541
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get mime type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 543
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_5b
    return-object v0
.end method

.method private getReasonPhraseFromResponseCode(I)Ljava/lang/String;
    .registers 3
    .param p1, "code"    # I

    .line 219
    sparse-switch p1, :sswitch_data_66

    .line 250
    const-string v0, "Unknown"

    goto/16 :goto_64

    .line 249
    :sswitch_7
    const-string v0, "HTTP Version Not Supported"

    goto/16 :goto_64

    .line 248
    :sswitch_b
    const-string v0, "Gateway Timeout"

    goto/16 :goto_64

    .line 247
    :sswitch_f
    const-string v0, "Service Unavailable"

    goto/16 :goto_64

    .line 246
    :sswitch_13
    const-string v0, "Bad Gateway"

    goto/16 :goto_64

    .line 245
    :sswitch_17
    const-string v0, "Not Implemented"

    goto :goto_64

    .line 244
    :sswitch_1a
    const-string v0, "Internal Server Error"

    goto :goto_64

    .line 243
    :sswitch_1d
    const-string v0, "Gone"

    goto :goto_64

    .line 242
    :sswitch_20
    const-string v0, "Conflict"

    goto :goto_64

    .line 241
    :sswitch_23
    const-string v0, "Request Timeout"

    goto :goto_64

    .line 240
    :sswitch_26
    const-string v0, "Proxy Authentication Required"

    goto :goto_64

    .line 239
    :sswitch_29
    const-string v0, "Not Acceptable"

    goto :goto_64

    .line 238
    :sswitch_2c
    const-string v0, "Method Not Allowed"

    goto :goto_64

    .line 237
    :sswitch_2f
    const-string v0, "Not Found"

    goto :goto_64

    .line 236
    :sswitch_32
    const-string v0, "Forbidden"

    goto :goto_64

    .line 235
    :sswitch_35
    const-string v0, "Unauthorized"

    goto :goto_64

    .line 234
    :sswitch_38
    const-string v0, "Bad Request"

    goto :goto_64

    .line 233
    :sswitch_3b
    const-string v0, "Not Modified"

    goto :goto_64

    .line 232
    :sswitch_3e
    const-string v0, "See Other"

    goto :goto_64

    .line 231
    :sswitch_41
    const-string v0, "Found"

    goto :goto_64

    .line 230
    :sswitch_44
    const-string v0, "Moved Permanently"

    goto :goto_64

    .line 229
    :sswitch_47
    const-string v0, "Multiple Choices"

    goto :goto_64

    .line 228
    :sswitch_4a
    const-string v0, "Partial Content"

    goto :goto_64

    .line 227
    :sswitch_4d
    const-string v0, "Reset Content"

    goto :goto_64

    .line 226
    :sswitch_50
    const-string v0, "No Content"

    goto :goto_64

    .line 225
    :sswitch_53
    const-string v0, "Non-Authoritative Information"

    goto :goto_64

    .line 224
    :sswitch_56
    const-string v0, "Accepted"

    goto :goto_64

    .line 223
    :sswitch_59
    const-string v0, "Created"

    goto :goto_64

    .line 222
    :sswitch_5c
    const-string v0, "OK"

    goto :goto_64

    .line 221
    :sswitch_5f
    const-string v0, "Switching Protocols"

    goto :goto_64

    .line 220
    :sswitch_62
    const-string v0, "Continue"

    .line 219
    :goto_64
    return-object v0

    nop

    :sswitch_data_66
    .sparse-switch
        0x64 -> :sswitch_62
        0x65 -> :sswitch_5f
        0xc8 -> :sswitch_5c
        0xc9 -> :sswitch_59
        0xca -> :sswitch_56
        0xcb -> :sswitch_53
        0xcc -> :sswitch_50
        0xcd -> :sswitch_4d
        0xce -> :sswitch_4a
        0x12c -> :sswitch_47
        0x12d -> :sswitch_44
        0x12e -> :sswitch_41
        0x12f -> :sswitch_3e
        0x130 -> :sswitch_3b
        0x190 -> :sswitch_38
        0x191 -> :sswitch_35
        0x193 -> :sswitch_32
        0x194 -> :sswitch_2f
        0x195 -> :sswitch_2c
        0x196 -> :sswitch_29
        0x197 -> :sswitch_26
        0x198 -> :sswitch_23
        0x199 -> :sswitch_20
        0x19a -> :sswitch_1d
        0x1f4 -> :sswitch_1a
        0x1f5 -> :sswitch_17
        0x1f6 -> :sswitch_13
        0x1f7 -> :sswitch_f
        0x1f8 -> :sswitch_b
        0x1f9 -> :sswitch_7
    .end sparse-switch
.end method

.method private getStatusCode(Ljava/io/InputStream;I)I
    .registers 6
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "defaultCode"    # I

    .line 547
    move v0, p2

    .line 549
    .local v0, "finalStatusCode":I
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_b

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    .line 550
    const/16 v0, 0x194

    .line 554
    :cond_a
    goto :goto_e

    .line 552
    :catch_b
    move-exception v1

    .line 553
    .local v1, "e":Ljava/io/IOException;
    const/16 v0, 0x1f4

    .line 555
    .end local v1    # "e":Ljava/io/IOException;
    :goto_e
    return v0
.end method

.method private handleCapacitorHttpRequest(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 22
    .param p1, "request"    # Landroid/webkit/WebResourceRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "u"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "urlString":Ljava/lang/String;
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 257
    .local v2, "url":Ljava/net/URL;
    new-instance v3, Lcom/getcapacitor/JSObject;

    invoke-direct {v3}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 259
    .local v3, "headers":Lcom/getcapacitor/JSObject;
    invoke-interface/range {p1 .. p1}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 260
    .local v5, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 261
    .end local v5    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_22

    .line 263
    :cond_3e
    new-instance v4, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    invoke-direct {v4}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;-><init>()V

    .line 264
    invoke-virtual {v4, v2}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->setUrl(Ljava/net/URL;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    move-result-object v4

    .line 265
    invoke-interface/range {p1 .. p1}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->setMethod(Ljava/lang/String;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    move-result-object v4

    .line 266
    invoke-virtual {v4, v3}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->setHeaders(Lcom/getcapacitor/JSObject;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    move-result-object v4

    .line 267
    invoke-virtual {v4}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->openConnection()Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    move-result-object v4

    .line 269
    .local v4, "connectionBuilder":Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
    invoke-virtual {v4}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->build()Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;

    move-result-object v5

    .line 271
    .local v5, "connection":Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;
    iget-object v6, v0, Lcom/getcapacitor/WebViewLocalServer;->bridge:Lcom/getcapacitor/Bridge;

    invoke-static {v6, v2}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->isDomainExcludedFromSSL(Lcom/getcapacitor/Bridge;Ljava/net/URL;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_6c

    .line 272
    iget-object v6, v0, Lcom/getcapacitor/WebViewLocalServer;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v5, v6}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->setSSLSocketFactory(Lcom/getcapacitor/Bridge;)V

    .line 275
    :cond_6c
    invoke-virtual {v5}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->connect()V

    .line 277
    const/4 v6, 0x0

    .line 278
    .local v6, "mimeType":Ljava/lang/String;
    const/4 v7, 0x0

    .line 279
    .local v7, "encoding":Ljava/lang/String;
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 280
    .local v8, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v5}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_82
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_fe

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 281
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v11, "builder":Ljava/lang/StringBuilder;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_9d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 283
    .local v13, "value":Ljava/lang/String;
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const-string v14, ", "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .end local v13    # "value":Ljava/lang/String;
    goto :goto_9d

    .line 286
    :cond_b2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 288
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "Content-Type"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f0

    .line 289
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 290
    .local v12, "contentTypeParts":[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v13, v12, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 291
    array-length v13, v12

    const/4 v14, 0x1

    if-le v13, v14, :cond_ef

    .line 292
    aget-object v13, v12, v14

    const-string v15, "="

    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 293
    .local v13, "encodingParts":[Ljava/lang/String;
    array-length v15, v13

    if-le v15, v14, :cond_ef

    .line 294
    aget-object v14, v13, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 297
    .end local v12    # "contentTypeParts":[Ljava/lang/String;
    .end local v13    # "encodingParts":[Ljava/lang/String;
    :cond_ef
    goto :goto_fd

    .line 298
    :cond_f0
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v11    # "builder":Ljava/lang/StringBuilder;
    :goto_fd
    goto :goto_82

    .line 302
    :cond_fe
    invoke-virtual {v5}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    .line 303
    .local v9, "inputStream":Ljava/io/InputStream;
    if-nez v9, :cond_10a

    .line 304
    invoke-virtual {v5}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    move-object v15, v9

    goto :goto_10b

    .line 303
    :cond_10a
    move-object v15, v9

    .line 307
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .local v15, "inputStream":Ljava/io/InputStream;
    :goto_10b
    if-nez v6, :cond_119

    .line 308
    invoke-interface/range {p1 .. p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9, v15}, Lcom/getcapacitor/WebViewLocalServer;->getMimeType(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 311
    :cond_119
    invoke-virtual {v5}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->getResponseCode()I

    move-result v14

    .line 312
    .local v14, "responseCode":I
    invoke-direct {v0, v14}, Lcom/getcapacitor/WebViewLocalServer;->getReasonPhraseFromResponseCode(I)Ljava/lang/String;

    move-result-object v16

    .line 314
    .local v16, "reasonPhrase":Ljava/lang/String;
    new-instance v17, Landroid/webkit/WebResourceResponse;

    move-object/from16 v9, v17

    move-object v10, v6

    move-object v11, v7

    move v12, v14

    move-object/from16 v13, v16

    move/from16 v18, v14

    .end local v14    # "responseCode":I
    .local v18, "responseCode":I
    move-object v14, v8

    move-object/from16 v19, v15

    .end local v15    # "inputStream":Ljava/io/InputStream;
    .local v19, "inputStream":Ljava/io/InputStream;
    invoke-direct/range {v9 .. v15}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v17
.end method

.method private handleLocalRequest(Landroid/webkit/WebResourceRequest;Lcom/getcapacitor/WebViewLocalServer$PathHandler;)Landroid/webkit/WebResourceResponse;
    .registers 22
    .param p1, "request"    # Landroid/webkit/WebResourceRequest;
    .param p2, "handler"    # Lcom/getcapacitor/WebViewLocalServer$PathHandler;

    .line 318
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "-"

    const-string v4, "/index.html"

    invoke-interface/range {p1 .. p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 320
    .local v5, "path":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v6

    const-string v7, "Range"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v8, "/"

    if-eqz v6, :cond_b7

    .line 321
    new-instance v4, Lcom/getcapacitor/WebViewLocalServer$LollipopLazyInputStream;

    invoke-direct {v4, v3, v2}, Lcom/getcapacitor/WebViewLocalServer$LollipopLazyInputStream;-><init>(Lcom/getcapacitor/WebViewLocalServer$PathHandler;Landroid/webkit/WebResourceRequest;)V

    .line 322
    .local v4, "responseStream":Ljava/io/InputStream;
    invoke-direct {v1, v5, v4}, Lcom/getcapacitor/WebViewLocalServer;->getMimeType(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 323
    .local v6, "mimeType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getResponseHeaders()Ljava/util/Map;

    move-result-object v15

    .line 324
    .local v15, "tempResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v9, 0xce

    .line 326
    .local v9, "statusCode":I
    :try_start_2f
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v10

    .line 327
    .local v10, "totalRange":I
    invoke-interface/range {p1 .. p1}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 328
    .local v7, "rangeString":Ljava/lang/String;
    const-string v11, "="

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 329
    .local v11, "parts":[Ljava/lang/String;
    const/4 v12, 0x1

    aget-object v13, v11, v12

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 330
    .local v13, "streamParts":[Ljava/lang/String;
    const/4 v14, 0x0

    aget-object v14, v13, v14

    .line 331
    .local v14, "fromRange":Ljava/lang/String;
    add-int/lit8 v16, v10, -0x1

    .line 332
    .local v16, "range":I
    array-length v12, v13
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_50} :catch_9b

    move-object/from16 v18, v7

    const/4 v7, 0x1

    .end local v7    # "rangeString":Ljava/lang/String;
    .local v18, "rangeString":Ljava/lang/String;
    if-le v12, v7, :cond_62

    .line 333
    :try_start_55
    aget-object v7, v13, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5b} :catch_5e

    move/from16 v16, v7

    goto :goto_64

    .line 337
    .end local v10    # "totalRange":I
    .end local v11    # "parts":[Ljava/lang/String;
    .end local v13    # "streamParts":[Ljava/lang/String;
    .end local v14    # "fromRange":Ljava/lang/String;
    .end local v16    # "range":I
    .end local v18    # "rangeString":Ljava/lang/String;
    :catch_5e
    move-exception v0

    move/from16 v16, v9

    goto :goto_9e

    .line 332
    .restart local v10    # "totalRange":I
    .restart local v11    # "parts":[Ljava/lang/String;
    .restart local v13    # "streamParts":[Ljava/lang/String;
    .restart local v14    # "fromRange":Ljava/lang/String;
    .restart local v16    # "range":I
    .restart local v18    # "rangeString":Ljava/lang/String;
    :cond_62
    move/from16 v7, v16

    .line 335
    .end local v16    # "range":I
    .local v7, "range":I
    :goto_64
    :try_start_64
    const-string v12, "Accept-Ranges"
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_66} :catch_9b

    move/from16 v16, v9

    .end local v9    # "statusCode":I
    .local v16, "statusCode":I
    :try_start_68
    const-string v9, "bytes"

    invoke-interface {v15, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v9, "Content-Range"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v11

    .end local v11    # "parts":[Ljava/lang/String;
    .local v17, "parts":[Ljava/lang/String;
    const-string v11, "bytes "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v15, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_97} :catch_99

    .line 339
    nop

    .end local v7    # "range":I
    .end local v10    # "totalRange":I
    .end local v13    # "streamParts":[Ljava/lang/String;
    .end local v14    # "fromRange":Ljava/lang/String;
    .end local v17    # "parts":[Ljava/lang/String;
    .end local v18    # "rangeString":Ljava/lang/String;
    goto :goto_a2

    .line 337
    :catch_99
    move-exception v0

    goto :goto_9e

    .end local v16    # "statusCode":I
    .restart local v9    # "statusCode":I
    :catch_9b
    move-exception v0

    move/from16 v16, v9

    .line 338
    .end local v9    # "statusCode":I
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "statusCode":I
    :goto_9e
    const/16 v9, 0x194

    move/from16 v16, v9

    .line 340
    .end local v0    # "e":Ljava/io/IOException;
    :goto_a2
    new-instance v0, Landroid/webkit/WebResourceResponse;

    .line 342
    invoke-virtual/range {p2 .. p2}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getEncoding()Ljava/lang/String;

    move-result-object v11

    .line 344
    invoke-virtual/range {p2 .. p2}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getReasonPhrase()Ljava/lang/String;

    move-result-object v13

    move-object v9, v0

    move-object v10, v6

    move/from16 v12, v16

    move-object v14, v15

    move-object v7, v15

    .end local v15    # "tempResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v7, "tempResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v15, v4

    invoke-direct/range {v9 .. v15}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 340
    return-object v0

    .line 350
    .end local v4    # "responseStream":Ljava/io/InputStream;
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v7    # "tempResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "statusCode":I
    :cond_b7
    invoke-interface/range {p1 .. p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/getcapacitor/WebViewLocalServer;->isLocalFile(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1da

    invoke-interface/range {p1 .. p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/getcapacitor/WebViewLocalServer;->isErrorUrl(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_cd

    goto/16 :goto_1da

    .line 364
    :cond_cd
    const-string v0, "/cordova.js"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 365
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v10, "application/javascript"

    .line 367
    invoke-virtual/range {p2 .. p2}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getEncoding()Ljava/lang/String;

    move-result-object v11

    .line 368
    invoke-virtual/range {p2 .. p2}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getStatusCode()I

    move-result v12

    .line 369
    invoke-virtual/range {p2 .. p2}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getReasonPhrase()Ljava/lang/String;

    move-result-object v13

    .line 370
    invoke-virtual/range {p2 .. p2}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getResponseHeaders()Ljava/util/Map;

    move-result-object v14

    const/4 v15, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 365
    return-object v0

    .line 375
    :cond_ef
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_168

    invoke-interface/range {p1 .. p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v7, "."

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10b

    iget-boolean v0, v1, Lcom/getcapacitor/WebViewLocalServer;->html5mode:Z

    if-eqz v0, :cond_10b

    goto :goto_168

    .line 410
    :cond_10b
    const-string v0, "/favicon.ico"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_121

    .line 412
    :try_start_113
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v4, "image/png"

    invoke-direct {v0, v4, v6, v6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_11a} :catch_11b

    return-object v0

    .line 413
    :catch_11b
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "favicon handling failed"

    invoke-static {v4, v0}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 418
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_121
    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 419
    .local v0, "periodIndex":I
    if-ltz v0, :cond_167

    .line 420
    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 422
    .local v4, "ext":Ljava/lang/String;
    new-instance v6, Lcom/getcapacitor/WebViewLocalServer$LollipopLazyInputStream;

    invoke-direct {v6, v3, v2}, Lcom/getcapacitor/WebViewLocalServer$LollipopLazyInputStream;-><init>(Lcom/getcapacitor/WebViewLocalServer$PathHandler;Landroid/webkit/WebResourceRequest;)V

    .line 425
    .local v6, "responseStream":Ljava/io/InputStream;
    const-string v7, ".html"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_144

    iget-object v7, v1, Lcom/getcapacitor/WebViewLocalServer;->jsInjector:Lcom/getcapacitor/JSInjector;

    if-eqz v7, :cond_144

    .line 426
    invoke-virtual {v7, v6}, Lcom/getcapacitor/JSInjector;->getInjectedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v6

    .line 429
    :cond_144
    invoke-direct {v1, v5, v6}, Lcom/getcapacitor/WebViewLocalServer;->getMimeType(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v14

    .line 430
    .local v14, "mimeType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getStatusCode()I

    move-result v7

    invoke-direct {v1, v6, v7}, Lcom/getcapacitor/WebViewLocalServer;->getStatusCode(Ljava/io/InputStream;I)I

    move-result v15

    .line 431
    .local v15, "statusCode":I
    new-instance v16, Landroid/webkit/WebResourceResponse;

    .line 433
    invoke-virtual/range {p2 .. p2}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getEncoding()Ljava/lang/String;

    move-result-object v9

    .line 435
    invoke-virtual/range {p2 .. p2}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getReasonPhrase()Ljava/lang/String;

    move-result-object v11

    .line 436
    invoke-virtual/range {p2 .. p2}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getResponseHeaders()Ljava/util/Map;

    move-result-object v12

    move-object/from16 v7, v16

    move-object v8, v14

    move v10, v15

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 431
    return-object v16

    .line 441
    .end local v4    # "ext":Ljava/lang/String;
    .end local v6    # "responseStream":Ljava/io/InputStream;
    .end local v14    # "mimeType":Ljava/lang/String;
    .end local v15    # "statusCode":I
    :cond_167
    return-object v6

    .line 378
    .end local v0    # "periodIndex":I
    :cond_168
    :goto_168
    :try_start_168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/getcapacitor/WebViewLocalServer;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "startPath":Ljava/lang/String;
    iget-object v7, v1, Lcom/getcapacitor/WebViewLocalServer;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v7}, Lcom/getcapacitor/Bridge;->getRouteProcessor()Lcom/getcapacitor/RouteProcessor;

    move-result-object v7

    if-eqz v7, :cond_19a

    .line 380
    iget-object v7, v1, Lcom/getcapacitor/WebViewLocalServer;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v7}, Lcom/getcapacitor/Bridge;->getRouteProcessor()Lcom/getcapacitor/RouteProcessor;

    move-result-object v7

    iget-object v8, v1, Lcom/getcapacitor/WebViewLocalServer;->basePath:Ljava/lang/String;

    invoke-interface {v7, v8, v4}, Lcom/getcapacitor/RouteProcessor;->process(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/ProcessedRoute;

    move-result-object v4

    .line 381
    .local v4, "processedRoute":Lcom/getcapacitor/ProcessedRoute;
    invoke-virtual {v4}, Lcom/getcapacitor/ProcessedRoute;->getPath()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 382
    invoke-virtual {v4}, Lcom/getcapacitor/ProcessedRoute;->isAsset()Z

    move-result v7

    iput-boolean v7, v1, Lcom/getcapacitor/WebViewLocalServer;->isAsset:Z

    .line 385
    .end local v4    # "processedRoute":Lcom/getcapacitor/ProcessedRoute;
    :cond_19a
    iget-boolean v4, v1, Lcom/getcapacitor/WebViewLocalServer;->isAsset:Z

    if-eqz v4, :cond_1a5

    .line 386
    iget-object v4, v1, Lcom/getcapacitor/WebViewLocalServer;->protocolHandler:Lcom/getcapacitor/AndroidProtocolHandler;

    invoke-virtual {v4, v0}, Lcom/getcapacitor/AndroidProtocolHandler;->openAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .local v4, "responseStream":Ljava/io/InputStream;
    goto :goto_1ab

    .line 388
    .end local v4    # "responseStream":Ljava/io/InputStream;
    :cond_1a5
    iget-object v4, v1, Lcom/getcapacitor/WebViewLocalServer;->protocolHandler:Lcom/getcapacitor/AndroidProtocolHandler;

    invoke-virtual {v4, v0}, Lcom/getcapacitor/AndroidProtocolHandler;->openFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_1ab
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_1ab} :catch_1d3

    .line 393
    .end local v0    # "startPath":Ljava/lang/String;
    .restart local v4    # "responseStream":Ljava/io/InputStream;
    :goto_1ab
    nop

    .line 395
    iget-object v0, v1, Lcom/getcapacitor/WebViewLocalServer;->jsInjector:Lcom/getcapacitor/JSInjector;

    if-eqz v0, :cond_1b4

    .line 396
    invoke-virtual {v0, v4}, Lcom/getcapacitor/JSInjector;->getInjectedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v4

    .line 399
    :cond_1b4
    invoke-virtual/range {p2 .. p2}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getStatusCode()I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/getcapacitor/WebViewLocalServer;->getStatusCode(Ljava/io/InputStream;I)I

    move-result v0

    .line 400
    .local v0, "statusCode":I
    new-instance v13, Landroid/webkit/WebResourceResponse;

    const-string v7, "text/html"

    .line 402
    invoke-virtual/range {p2 .. p2}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getEncoding()Ljava/lang/String;

    move-result-object v8

    .line 404
    invoke-virtual/range {p2 .. p2}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getReasonPhrase()Ljava/lang/String;

    move-result-object v10

    .line 405
    invoke-virtual/range {p2 .. p2}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getResponseHeaders()Ljava/util/Map;

    move-result-object v11

    move-object v6, v13

    move v9, v0

    move-object v12, v4

    invoke-direct/range {v6 .. v12}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 400
    return-object v13

    .line 390
    .end local v0    # "statusCode":I
    .end local v4    # "responseStream":Ljava/io/InputStream;
    :catch_1d3
    move-exception v0

    .line 391
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "Unable to open index.html"

    invoke-static {v4, v0}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 392
    return-object v6

    .line 351
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1da
    :goto_1da
    new-instance v0, Lcom/getcapacitor/WebViewLocalServer$LollipopLazyInputStream;

    invoke-direct {v0, v3, v2}, Lcom/getcapacitor/WebViewLocalServer$LollipopLazyInputStream;-><init>(Lcom/getcapacitor/WebViewLocalServer$PathHandler;Landroid/webkit/WebResourceRequest;)V

    .line 352
    .local v0, "responseStream":Ljava/io/InputStream;
    invoke-interface/range {p1 .. p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/getcapacitor/WebViewLocalServer;->getMimeType(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 353
    .local v4, "mimeType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getStatusCode()I

    move-result v6

    invoke-direct {v1, v0, v6}, Lcom/getcapacitor/WebViewLocalServer;->getStatusCode(Ljava/io/InputStream;I)I

    move-result v13

    .line 354
    .local v13, "statusCode":I
    new-instance v14, Landroid/webkit/WebResourceResponse;

    .line 356
    invoke-virtual/range {p2 .. p2}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getEncoding()Ljava/lang/String;

    move-result-object v8

    .line 358
    invoke-virtual/range {p2 .. p2}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getReasonPhrase()Ljava/lang/String;

    move-result-object v10

    .line 359
    invoke-virtual/range {p2 .. p2}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getResponseHeaders()Ljava/util/Map;

    move-result-object v11

    move-object v6, v14

    move-object v7, v4

    move v9, v13

    move-object v12, v0

    invoke-direct/range {v6 .. v12}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 354
    return-object v14
.end method

.method private handleProxyRequest(Landroid/webkit/WebResourceRequest;Lcom/getcapacitor/WebViewLocalServer$PathHandler;)Landroid/webkit/WebResourceResponse;
    .registers 20
    .param p1, "request"    # Landroid/webkit/WebResourceRequest;
    .param p2, "handler"    # Lcom/getcapacitor/WebViewLocalServer$PathHandler;

    .line 466
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/getcapacitor/WebViewLocalServer;->jsInjector:Lcom/getcapacitor/JSInjector;

    if-eqz v0, :cond_126

    .line 467
    invoke-interface/range {p1 .. p1}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    .line 468
    .local v2, "method":Ljava/lang/String;
    const-string v0, "GET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_126

    .line 470
    :try_start_12
    invoke-interface/range {p1 .. p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "url":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v3

    .line 472
    .local v3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 473
    .local v4, "isHtmlText":Z
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_56

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 474
    .local v6, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "Accept"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_55

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/html"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 475
    const/4 v4, 0x1

    .line 476
    goto :goto_56

    .line 478
    .end local v6    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_55
    goto :goto_27

    .line 479
    :cond_56
    :goto_56
    if-eqz v4, :cond_11f

    .line 480
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 481
    .local v5, "conn":Ljava/net/HttpURLConnection;
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_87

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 482
    .local v7, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    .end local v7    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_6b

    .line 484
    :cond_87
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 485
    .local v6, "getCookie":Ljava/lang/String;
    if-eqz v6, :cond_96

    .line 486
    const-string v7, "Cookie"

    invoke-virtual {v5, v7, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :cond_96
    invoke-virtual {v5, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 489
    const/16 v7, 0x7530

    invoke-virtual {v5, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 490
    invoke-virtual {v5, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 491
    invoke-interface/range {p1 .. p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d6

    .line 492
    invoke-interface/range {p1 .. p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    .line 493
    .local v7, "userInfoBytes":[B
    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    .line 494
    .local v8, "base64":Ljava/lang/String;
    const-string v9, "Authorization"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Basic "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    .end local v7    # "userInfoBytes":[B
    .end local v8    # "base64":Ljava/lang/String;
    :cond_d6
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    const-string v8, "Set-Cookie"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 498
    .local v7, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_fc

    .line 499
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_e8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_fc

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 500
    .local v9, "cookie":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v10

    invoke-virtual {v10, v0, v9}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .end local v9    # "cookie":Ljava/lang/String;
    goto :goto_e8

    .line 503
    :cond_fc
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 504
    .local v8, "responseStream":Ljava/io/InputStream;
    iget-object v9, v1, Lcom/getcapacitor/WebViewLocalServer;->jsInjector:Lcom/getcapacitor/JSInjector;

    invoke-virtual {v9, v8}, Lcom/getcapacitor/JSInjector;->getInjectedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v16

    .line 506
    .end local v8    # "responseStream":Ljava/io/InputStream;
    .local v16, "responseStream":Ljava/io/InputStream;
    new-instance v8, Landroid/webkit/WebResourceResponse;

    const-string v11, "text/html"

    .line 508
    invoke-virtual/range {p2 .. p2}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getEncoding()Ljava/lang/String;

    move-result-object v12

    .line 509
    invoke-virtual/range {p2 .. p2}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getStatusCode()I

    move-result v13

    .line 510
    invoke-virtual/range {p2 .. p2}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getReasonPhrase()Ljava/lang/String;

    move-result-object v14

    .line 511
    invoke-virtual/range {p2 .. p2}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getResponseHeaders()Ljava/util/Map;

    move-result-object v15

    move-object v10, v8

    invoke-direct/range {v10 .. v16}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_11e} :catch_120

    .line 506
    return-object v8

    .line 517
    .end local v0    # "url":Ljava/lang/String;
    .end local v3    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "isHtmlText":Z
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "getCookie":Ljava/lang/String;
    .end local v7    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "responseStream":Ljava/io/InputStream;
    :cond_11f
    goto :goto_126

    .line 515
    :catch_120
    move-exception v0

    .line 516
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v3, v1, Lcom/getcapacitor/WebViewLocalServer;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v3, v0}, Lcom/getcapacitor/Bridge;->handleAppUrlLoadError(Ljava/lang/Exception;)V

    .line 520
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "method":Ljava/lang/String;
    :cond_126
    :goto_126
    const/4 v0, 0x0

    return-object v0
.end method

.method private isAllowedUrl(Landroid/net/Uri;)Z
    .registers 4
    .param p1, "loadingUrl"    # Landroid/net/Uri;

    .line 215
    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getServerUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getAppAllowNavigationMask()Lcom/getcapacitor/util/HostMask;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/getcapacitor/util/HostMask;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method private isErrorUrl(Landroid/net/Uri;)Z
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 206
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/getcapacitor/WebViewLocalServer;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v1}, Lcom/getcapacitor/Bridge;->getErrorUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isLocalFile(Landroid/net/Uri;)Z
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 201
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "path":Ljava/lang/String;
    const-string v1, "/_capacitor_content_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "/_capacitor_file_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v1, 0x1

    :goto_18
    return v1
.end method

.method private isMainUrl(Landroid/net/Uri;)Z
    .registers 4
    .param p1, "loadingUrl"    # Landroid/net/Uri;

    .line 211
    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getServerUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/getcapacitor/WebViewLocalServer;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v1}, Lcom/getcapacitor/Bridge;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method private static parseAndVerifyUrl(Ljava/lang/String;)Landroid/net/Uri;
    .registers 6
    .param p0, "url"    # Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 147
    return-object v0

    .line 149
    :cond_4
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 150
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_21

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    .line 152
    return-object v0

    .line 154
    :cond_21
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "path":Ljava/lang/String;
    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_2f

    .line 159
    :cond_2e
    return-object v1

    .line 156
    :cond_2f
    :goto_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URL does not have a path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    .line 157
    return-object v0
.end method

.method private registerUriForScheme(Ljava/lang/String;Lcom/getcapacitor/WebViewLocalServer$PathHandler;Ljava/lang/String;)V
    .registers 7
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/getcapacitor/WebViewLocalServer$PathHandler;
    .param p3, "authority"    # Ljava/lang/String;

    .line 666
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 667
    .local v0, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 668
    invoke-virtual {v0, p3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 669
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 670
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 672
    .local v1, "uriPrefix":Landroid/net/Uri;
    const-string v2, "/"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/getcapacitor/WebViewLocalServer;->register(Landroid/net/Uri;Lcom/getcapacitor/WebViewLocalServer$PathHandler;)V

    .line 673
    const-string v2, "**"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/getcapacitor/WebViewLocalServer;->register(Landroid/net/Uri;Lcom/getcapacitor/WebViewLocalServer$PathHandler;)V

    .line 674
    return-void
.end method


# virtual methods
.method public getBasePath()Ljava/lang/String;
    .registers 2

    .line 747
    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer;->basePath:Ljava/lang/String;

    return-object v0
.end method

.method public getJavaScriptInjectedStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 3
    .param p1, "original"    # Ljava/io/InputStream;

    .line 452
    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer;->jsInjector:Lcom/getcapacitor/JSInjector;

    if-eqz v0, :cond_9

    .line 453
    invoke-virtual {v0, p1}, Lcom/getcapacitor/JSInjector;->getInjectedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 455
    :cond_9
    return-object p1
.end method

.method public hostAssets(Ljava/lang/String;)V
    .registers 3
    .param p1, "assetPath"    # Ljava/lang/String;

    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/getcapacitor/WebViewLocalServer;->isAsset:Z

    .line 587
    iput-object p1, p0, Lcom/getcapacitor/WebViewLocalServer;->basePath:Ljava/lang/String;

    .line 588
    invoke-direct {p0}, Lcom/getcapacitor/WebViewLocalServer;->createHostingDetails()V

    .line 589
    return-void
.end method

.method public hostFiles(Ljava/lang/String;)V
    .registers 3
    .param p1, "basePath"    # Ljava/lang/String;

    .line 601
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/getcapacitor/WebViewLocalServer;->isAsset:Z

    .line 602
    iput-object p1, p0, Lcom/getcapacitor/WebViewLocalServer;->basePath:Ljava/lang/String;

    .line 603
    invoke-direct {p0}, Lcom/getcapacitor/WebViewLocalServer;->createHostingDetails()V

    .line 604
    return-void
.end method

.method register(Landroid/net/Uri;Lcom/getcapacitor/WebViewLocalServer$PathHandler;)V
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "handler"    # Lcom/getcapacitor/WebViewLocalServer$PathHandler;

    .line 571
    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer;->uriMatcher:Lcom/getcapacitor/UriMatcher;

    monitor-enter v0

    .line 572
    :try_start_3
    iget-object v1, p0, Lcom/getcapacitor/WebViewLocalServer;->uriMatcher:Lcom/getcapacitor/UriMatcher;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/getcapacitor/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 573
    monitor-exit v0

    .line 574
    return-void

    .line 573
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 7
    .param p1, "request"    # Landroid/webkit/WebResourceRequest;

    .line 172
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    .line 174
    .local v0, "loadingUrl":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/_capacitor_http_interceptor_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling CapacitorHttp request: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 177
    :try_start_2d
    invoke-direct {p0, p1}, Lcom/getcapacitor/WebViewLocalServer;->handleCapacitorHttpRequest(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_31} :catch_32

    return-object v1

    .line 178
    :catch_32
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    .line 180
    return-object v2

    .line 185
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3b
    iget-object v1, p0, Lcom/getcapacitor/WebViewLocalServer;->uriMatcher:Lcom/getcapacitor/UriMatcher;

    monitor-enter v1

    .line 186
    :try_start_3e
    iget-object v3, p0, Lcom/getcapacitor/WebViewLocalServer;->uriMatcher:Lcom/getcapacitor/UriMatcher;

    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/getcapacitor/UriMatcher;->match(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/getcapacitor/WebViewLocalServer$PathHandler;

    .line 187
    .local v3, "handler":Lcom/getcapacitor/WebViewLocalServer$PathHandler;
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_8f

    .line 188
    if-nez v3, :cond_4e

    .line 189
    return-object v2

    .line 192
    :cond_4e
    invoke-direct {p0, v0}, Lcom/getcapacitor/WebViewLocalServer;->isLocalFile(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_6c

    invoke-direct {p0, v0}, Lcom/getcapacitor/WebViewLocalServer;->isMainUrl(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_6c

    invoke-direct {p0, v0}, Lcom/getcapacitor/WebViewLocalServer;->isAllowedUrl(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-direct {p0, v0}, Lcom/getcapacitor/WebViewLocalServer;->isErrorUrl(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_67

    goto :goto_6c

    .line 196
    :cond_67
    invoke-direct {p0, p1, v3}, Lcom/getcapacitor/WebViewLocalServer;->handleProxyRequest(Landroid/webkit/WebResourceRequest;Lcom/getcapacitor/WebViewLocalServer$PathHandler;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    return-object v1

    .line 193
    :cond_6c
    :goto_6c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling local request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 194
    invoke-direct {p0, p1, v3}, Lcom/getcapacitor/WebViewLocalServer;->handleLocalRequest(Landroid/webkit/WebResourceRequest;Lcom/getcapacitor/WebViewLocalServer$PathHandler;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    return-object v1

    .line 187
    .end local v3    # "handler":Lcom/getcapacitor/WebViewLocalServer$PathHandler;
    :catchall_8f
    move-exception v2

    :try_start_90
    monitor-exit v1
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    throw v2
.end method
