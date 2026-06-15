.class Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adhamalghouli/projectmanagement/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrintBridge"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method public static synthetic $r8$lambda$IH5cpfm1pHbCXoZBJRDAGqAXa2w(Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge;->lambda$print$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rx9l6fLlt92GXuTLjs-is16fPEI(Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge;->lambda$printHTML$1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge;->context:Landroid/content/Context;

    return-object p0
.end method

.method constructor <init>(Landroid/webkit/WebView;Landroid/content/Context;)V
    .registers 3
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge;->webView:Landroid/webkit/WebView;

    .line 45
    iput-object p2, p0, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge;->context:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private synthetic lambda$print$0(Ljava/lang/String;)V
    .registers 6
    .param p1, "jobName"    # Ljava/lang/String;

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge;->context:Landroid/content/Context;

    const-string v1, "print"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    .line 58
    .local v0, "pm":Landroid/print/PrintManager;
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    move-object v1, p1

    goto :goto_16

    :cond_14
    const-string v1, "\u062a\u0642\u0631\u064a\u0631 \u0627\u0644\u0645\u0634\u0627\u0631\u064a\u0639"

    .line 59
    .local v1, "name":Ljava/lang/String;
    :goto_16
    iget-object v2, p0, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;

    move-result-object v2

    .line 60
    .local v2, "adapter":Landroid/print/PrintDocumentAdapter;
    new-instance v3, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v3}, Landroid/print/PrintAttributes$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_2a

    .line 63
    nop

    .end local v0    # "pm":Landroid/print/PrintManager;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "adapter":Landroid/print/PrintDocumentAdapter;
    goto :goto_2e

    .line 61
    :catch_2a
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2e
    return-void
.end method

.method private synthetic lambda$printHTML$1(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "html"    # Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    if-eqz p1, :cond_b

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 73
    move-object v1, p1

    goto :goto_d

    :cond_b
    const-string v1, "\u062a\u0642\u0631\u064a\u0631 \u0627\u0644\u0645\u0634\u0627\u0631\u064a\u0639"

    .line 76
    .local v1, "name":Ljava/lang/String;
    :goto_d
    new-instance v2, Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 77
    .local v2, "printView":Landroid/webkit/WebView;
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 78
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 79
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 83
    iget-object v3, p0, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge;->context:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    .line 84
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 85
    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 86
    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 88
    .local v3, "rootView":Landroid/view/ViewGroup;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v10, v4

    .line 92
    .local v10, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3, v2, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    new-instance v4, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge$1;

    invoke-direct {v4, p0, v1, v3, v2}, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge$1;-><init>(Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge;Ljava/lang/String;Landroid/view/ViewGroup;Landroid/webkit/WebView;)V

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 120
    const-string v5, "file:///android_asset/public/"

    const-string v7, "text/html"

    const-string v8, "UTF-8"

    const/4 v9, 0x0

    move-object v4, v2

    move-object v6, p2

    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5f} :catch_60

    .line 133
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "printView":Landroid/webkit/WebView;
    .end local v3    # "rootView":Landroid/view/ViewGroup;
    .end local v10    # "lp":Landroid/view/ViewGroup$LayoutParams;
    goto :goto_84

    .line 128
    :catch_60
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    iget-object v2, p0, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u062e\u0637\u0623 \u0641\u064a \u0627\u0644\u0637\u0628\u0627\u0639\u0629: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 131
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 134
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_84
    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public print(Ljava/lang/String;)V
    .registers 4
    .param p1, "jobName"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge$$ExternalSyntheticLambda1;-><init>(Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    return-void
.end method

.method public printHTML(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "jobName"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge$$ExternalSyntheticLambda0;-><init>(Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    return-void
.end method
