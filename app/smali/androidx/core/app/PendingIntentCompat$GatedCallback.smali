.class Landroidx/core/app/PendingIntentCompat$GatedCallback;
.super Ljava/lang/Object;
.source "PendingIntentCompat.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/PendingIntentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GatedCallback"
.end annotation


# instance fields
.field private mCallback:Landroid/app/PendingIntent$OnFinished;

.field private final mComplete:Ljava/util/concurrent/CountDownLatch;

.field private mSuccess:Z


# direct methods
.method public static synthetic $r8$lambda$dARjk2pGHL_3_vnErsOjaRzR5JA(Landroidx/core/app/PendingIntentCompat$GatedCallback;Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroidx/core/app/PendingIntentCompat$GatedCallback;->onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method constructor <init>(Landroid/app/PendingIntent$OnFinished;)V
    .registers 4
    .param p1, "callback"    # Landroid/app/PendingIntent$OnFinished;

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroidx/core/app/PendingIntentCompat$GatedCallback;->mComplete:Ljava/util/concurrent/CountDownLatch;

    .line 373
    iput-object p1, p0, Landroidx/core/app/PendingIntentCompat$GatedCallback;->mCallback:Landroid/app/PendingIntent$OnFinished;

    .line 374
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/app/PendingIntentCompat$GatedCallback;->mSuccess:Z

    .line 375
    return-void
.end method

.method private onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 14
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .line 404
    const/4 v0, 0x0

    .line 408
    .local v0, "interrupted":Z
    :goto_1
    :try_start_1
    iget-object v1, p0, Landroidx/core/app/PendingIntentCompat$GatedCallback;->mComplete:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_6} :catch_2b
    .catchall {:try_start_1 .. :try_end_6} :catchall_20

    .line 409
    nop

    .line 415
    if-eqz v0, :cond_10

    .line 416
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 420
    :cond_10
    iget-object v2, p0, Landroidx/core/app/PendingIntentCompat$GatedCallback;->mCallback:Landroid/app/PendingIntent$OnFinished;

    if-eqz v2, :cond_1f

    .line 421
    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Landroid/app/PendingIntent$OnFinished;->onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 427
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/core/app/PendingIntentCompat$GatedCallback;->mCallback:Landroid/app/PendingIntent$OnFinished;

    .line 429
    :cond_1f
    return-void

    .line 415
    :catchall_20
    move-exception v1

    if-eqz v0, :cond_2a

    .line 416
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 418
    :cond_2a
    throw v1

    .line 410
    :catch_2b
    move-exception v1

    .line 411
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 412
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 392
    iget-boolean v0, p0, Landroidx/core/app/PendingIntentCompat$GatedCallback;->mSuccess:Z

    if-nez v0, :cond_7

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/app/PendingIntentCompat$GatedCallback;->mCallback:Landroid/app/PendingIntent$OnFinished;

    .line 395
    :cond_7
    iget-object v0, p0, Landroidx/core/app/PendingIntentCompat$GatedCallback;->mComplete:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 396
    return-void
.end method

.method public complete()V
    .registers 2

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/PendingIntentCompat$GatedCallback;->mSuccess:Z

    .line 388
    return-void
.end method

.method public getCallback()Landroid/app/PendingIntent$OnFinished;
    .registers 2

    .line 379
    iget-object v0, p0, Landroidx/core/app/PendingIntentCompat$GatedCallback;->mCallback:Landroid/app/PendingIntent$OnFinished;

    if-nez v0, :cond_6

    .line 380
    const/4 v0, 0x0

    return-object v0

    .line 382
    :cond_6
    new-instance v0, Landroidx/core/app/PendingIntentCompat$GatedCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/core/app/PendingIntentCompat$GatedCallback$$ExternalSyntheticLambda0;-><init>(Landroidx/core/app/PendingIntentCompat$GatedCallback;)V

    return-object v0
.end method
