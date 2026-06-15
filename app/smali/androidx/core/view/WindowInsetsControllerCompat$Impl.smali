.class Landroidx/core/view/WindowInsetsControllerCompat$Impl;
.super Ljava/lang/Object;
.source "WindowInsetsControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    return-void
.end method


# virtual methods
.method addOnControllableInsetsChangedListener(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;

    .line 407
    return-void
.end method

.method controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;)V
    .registers 7
    .param p1, "types"    # I
    .param p2, "durationMillis"    # J
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p5, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p6, "listener"    # Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;

    .line 382
    return-void
.end method

.method getSystemBarsBehavior()I
    .registers 2

    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method hide(I)V
    .registers 2
    .param p1, "types"    # I

    .line 377
    return-void
.end method

.method public isAppearanceLightNavigationBars()Z
    .registers 2

    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method public isAppearanceLightStatusBars()Z
    .registers 2

    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method removeOnControllableInsetsChangedListener(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;

    .line 412
    return-void
.end method

.method public setAppearanceLightNavigationBars(Z)V
    .registers 2
    .param p1, "isLight"    # Z

    .line 403
    return-void
.end method

.method public setAppearanceLightStatusBars(Z)V
    .registers 2
    .param p1, "isLight"    # Z

    .line 396
    return-void
.end method

.method setSystemBarsBehavior(I)V
    .registers 2
    .param p1, "behavior"    # I

    .line 385
    return-void
.end method

.method show(I)V
    .registers 2
    .param p1, "types"    # I

    .line 374
    return-void
.end method
