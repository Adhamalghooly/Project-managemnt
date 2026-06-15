.class Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi1;
.super Ljava/lang/Object;
.source "ComponentActivity.java"

# interfaces
.implements Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/ComponentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReportFullyDrawnExecutorApi1"
.end annotation


# instance fields
.field final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1174
    invoke-direct {p0}, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi1;->createHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi1;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private createHandler()Landroid/os/Handler;
    .registers 4

    .line 1196
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1197
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Landroid/os/Handler;

    if-nez v0, :cond_d

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_e

    :cond_d
    move-object v2, v0

    :goto_e
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1
.end method


# virtual methods
.method public activityDestroyed()V
    .registers 1

    .line 1182
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 1191
    iget-object v0, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi1;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1192
    return-void
.end method

.method public viewCreated(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 1178
    return-void
.end method
