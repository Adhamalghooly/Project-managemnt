.class Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge$1;
.super Landroid/webkit/WebViewClient;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge;->printHTML(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$printView:Landroid/webkit/WebView;

.field final synthetic val$rootView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge;Ljava/lang/String;Landroid/view/ViewGroup;Landroid/webkit/WebView;)V
    .registers 5
    .param p1, "this$0"    # Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge;

    .line 94
    iput-object p1, p0, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge$1;->this$0:Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge;

    iput-object p2, p0, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge$1;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge$1;->val$rootView:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge$1;->val$printView:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic lambda$onPageFinished$0(Landroid/view/ViewGroup;Landroid/webkit/WebView;)V
    .registers 3
    .param p0, "rootView"    # Landroid/view/ViewGroup;
    .param p1, "printView"    # Landroid/webkit/WebView;

    .line 107
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 108
    :goto_3
    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_3

    .line 109
    :goto_6
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge$1;->this$0:Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge;

    invoke-static {v0}, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge;->-$$Nest$fgetcontext(Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "print"

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    .line 100
    .local v0, "pm":Landroid/print/PrintManager;
    iget-object v1, p0, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge$1;->val$name:Ljava/lang/String;

    .line 101
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;

    move-result-object v1

    .line 102
    .local v1, "adapter":Landroid/print/PrintDocumentAdapter;
    iget-object v2, p0, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge$1;->val$name:Ljava/lang/String;

    new-instance v3, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v3}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 103
    invoke-virtual {v3}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v3

    .line 102
    invoke-virtual {v0, v2, v1, v3}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 106
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v3, p0, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge$1;->val$rootView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge$1;->val$printView:Landroid/webkit/WebView;

    new-instance v5, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, v4}, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge$1$$ExternalSyntheticLambda0;-><init>(Landroid/view/ViewGroup;Landroid/webkit/WebView;)V

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3c

    .line 115
    nop

    .end local v0    # "pm":Landroid/print/PrintManager;
    .end local v1    # "adapter":Landroid/print/PrintDocumentAdapter;
    goto :goto_4a

    .line 111
    :catch_3c
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    :try_start_40
    iget-object v1, p0, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge$1;->val$rootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge$1;->val$printView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_47} :catch_48

    goto :goto_49

    .line 114
    :catch_48
    move-exception v1

    :goto_49
    nop

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4a
    return-void
.end method
