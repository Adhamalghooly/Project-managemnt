.class Landroidx/activity/ComponentActivity$5;
.super Ljava/lang/Object;
.source "ComponentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/activity/ComponentActivity;


# direct methods
.method constructor <init>(Landroidx/activity/ComponentActivity;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/activity/ComponentActivity;

    .line 690
    iput-object p1, p0, Landroidx/activity/ComponentActivity$5;->this$0:Landroidx/activity/ComponentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 698
    :try_start_0
    iget-object v0, p0, Landroidx/activity/ComponentActivity$5;->this$0:Landroidx/activity/ComponentActivity;

    invoke-static {v0}, Landroidx/activity/ComponentActivity;->access$001(Landroidx/activity/ComponentActivity;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_5} :catch_6

    .line 711
    :goto_5
    goto :goto_23

    .line 704
    :catch_6
    move-exception v0

    .line 705
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Attempt to invoke virtual method \'android.os.Handler android.app.FragmentHostCallback.getHandler()\' on a null object reference"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_23

    .line 709
    :cond_14
    throw v0

    .line 699
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_15
    move-exception v0

    .line 700
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can not perform this action after onSaveInstanceState"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    goto :goto_5

    .line 712
    :goto_23
    return-void

    .line 702
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_24
    throw v0
.end method
