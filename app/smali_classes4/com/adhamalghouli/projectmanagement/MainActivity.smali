.class public Lcom/adhamalghouli/projectmanagement/MainActivity;
.super Lcom/getcapacitor/BridgeActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge;,
        Lcom/adhamalghouli/projectmanagement/MainActivity$DownloadBridge;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/getcapacitor/BridgeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 32
    invoke-super {p0, p1}, Lcom/getcapacitor/BridgeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/adhamalghouli/projectmanagement/MainActivity;->getBridge()Lcom/getcapacitor/Bridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 34
    .local v0, "webView":Landroid/webkit/WebView;
    new-instance v1, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge;

    invoke-direct {v1, v0, p0}, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge;-><init>(Landroid/webkit/WebView;Landroid/content/Context;)V

    const-string v2, "AndroidPrint"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v1, Lcom/adhamalghouli/projectmanagement/MainActivity$DownloadBridge;

    invoke-direct {v1, p0}, Lcom/adhamalghouli/projectmanagement/MainActivity$DownloadBridge;-><init>(Landroid/content/Context;)V

    const-string v2, "AndroidDownload"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    return-void
.end method
