.class public final synthetic Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewGroup;

.field public final synthetic f$1:Landroid/webkit/WebView;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/webkit/WebView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge$1$$ExternalSyntheticLambda0;->f$0:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge$1$$ExternalSyntheticLambda0;->f$1:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge$1$$ExternalSyntheticLambda0;->f$0:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge$1$$ExternalSyntheticLambda0;->f$1:Landroid/webkit/WebView;

    invoke-static {v0, v1}, Lcom/adhamalghouli/projectmanagement/MainActivity$PrintBridge$1;->lambda$onPageFinished$0(Landroid/view/ViewGroup;Landroid/webkit/WebView;)V

    return-void
.end method
