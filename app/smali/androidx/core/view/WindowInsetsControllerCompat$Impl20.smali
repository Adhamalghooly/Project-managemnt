.class Landroidx/core/view/WindowInsetsControllerCompat$Impl20;
.super Landroidx/core/view/WindowInsetsControllerCompat$Impl;
.source "WindowInsetsControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl20"
.end annotation


# instance fields
.field private final mSoftwareKeyboardControllerCompat:Landroidx/core/view/SoftwareKeyboardControllerCompat;

.field protected final mWindow:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;Landroidx/core/view/SoftwareKeyboardControllerCompat;)V
    .registers 3
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "softwareKeyboardControllerCompat"    # Landroidx/core/view/SoftwareKeyboardControllerCompat;

    .line 425
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl;-><init>()V

    .line 426
    iput-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    .line 427
    iput-object p2, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mSoftwareKeyboardControllerCompat:Landroidx/core/view/SoftwareKeyboardControllerCompat;

    .line 428
    return-void
.end method

.method private hideForType(I)V
    .registers 3
    .param p1, "type"    # I

    .line 467
    sparse-switch p1, :sswitch_data_16

    goto :goto_14

    .line 475
    :sswitch_4
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mSoftwareKeyboardControllerCompat:Landroidx/core/view/SoftwareKeyboardControllerCompat;

    invoke-virtual {v0}, Landroidx/core/view/SoftwareKeyboardControllerCompat;->hide()V

    goto :goto_14

    .line 472
    :sswitch_a
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->setSystemUiFlag(I)V

    .line 473
    return-void

    .line 469
    :sswitch_f
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->setSystemUiFlag(I)V

    .line 470
    return-void

    .line 477
    :goto_14
    return-void

    nop

    :sswitch_data_16
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_a
        0x8 -> :sswitch_4
    .end sparse-switch
.end method

.method private showForType(I)V
    .registers 3
    .param p1, "type"    # I

    .line 442
    sparse-switch p1, :sswitch_data_1a

    goto :goto_19

    .line 451
    :sswitch_4
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mSoftwareKeyboardControllerCompat:Landroidx/core/view/SoftwareKeyboardControllerCompat;

    invoke-virtual {v0}, Landroidx/core/view/SoftwareKeyboardControllerCompat;->show()V

    goto :goto_19

    .line 448
    :sswitch_a
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetSystemUiFlag(I)V

    .line 449
    return-void

    .line 444
    :sswitch_f
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetSystemUiFlag(I)V

    .line 445
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetWindowFlag(I)V

    .line 446
    return-void

    .line 453
    :goto_19
    return-void

    :sswitch_data_1a
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_a
        0x8 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method addOnControllableInsetsChangedListener(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;

    .line 533
    return-void
.end method

.method controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;)V
    .registers 7
    .param p1, "types"    # I
    .param p2, "durationMillis"    # J
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p5, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p6, "listener"    # Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;

    .line 505
    return-void
.end method

.method getSystemBarsBehavior()I
    .registers 2

    .line 527
    const/4 v0, 0x0

    return v0
.end method

.method hide(I)V
    .registers 4
    .param p1, "typeMask"    # I

    .line 457
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x100

    if-gt v0, v1, :cond_10

    .line 459
    and-int v1, p1, v0

    if-nez v1, :cond_a

    .line 460
    goto :goto_d

    .line 462
    :cond_a
    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->hideForType(I)V

    .line 458
    :goto_d
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 464
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method removeOnControllableInsetsChangedListener(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;

    .line 539
    return-void
.end method

.method setSystemBarsBehavior(I)V
    .registers 4
    .param p1, "behavior"    # I

    .line 509
    const/16 v0, 0x800

    const/16 v1, 0x1000

    packed-switch p1, :pswitch_data_1c

    goto :goto_1b

    .line 515
    :pswitch_8
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetSystemUiFlag(I)V

    .line 516
    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->setSystemUiFlag(I)V

    .line 517
    goto :goto_1b

    .line 511
    :pswitch_f
    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetSystemUiFlag(I)V

    .line 512
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->setSystemUiFlag(I)V

    .line 513
    goto :goto_1b

    .line 519
    :pswitch_16
    const/16 v0, 0x1800

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetSystemUiFlag(I)V

    .line 523
    :goto_1b
    return-void

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_16
        :pswitch_f
        :pswitch_8
    .end packed-switch
.end method

.method protected setSystemUiFlag(I)V
    .registers 4
    .param p1, "systemUiFlag"    # I

    .line 480
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 481
    .local v0, "decorView":Landroid/view/View;
    nop

    .line 482
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/2addr v1, p1

    .line 481
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 484
    return-void
.end method

.method protected setWindowFlag(I)V
    .registers 3
    .param p1, "windowFlag"    # I

    .line 494
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->addFlags(I)V

    .line 495
    return-void
.end method

.method show(I)V
    .registers 4
    .param p1, "typeMask"    # I

    .line 432
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x100

    if-gt v0, v1, :cond_10

    .line 434
    and-int v1, p1, v0

    if-nez v1, :cond_a

    .line 435
    goto :goto_d

    .line 437
    :cond_a
    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->showForType(I)V

    .line 433
    :goto_d
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 439
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method protected unsetSystemUiFlag(I)V
    .registers 5
    .param p1, "systemUiFlag"    # I

    .line 487
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 488
    .local v0, "decorView":Landroid/view/View;
    nop

    .line 489
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    not-int v2, p1

    and-int/2addr v1, v2

    .line 488
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 491
    return-void
.end method

.method protected unsetWindowFlag(I)V
    .registers 3
    .param p1, "windowFlag"    # I

    .line 498
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->clearFlags(I)V

    .line 499
    return-void
.end method
