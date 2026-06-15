.class Landroidx/core/widget/TextViewCompat$OreoCallback;
.super Ljava/lang/Object;
.source "TextViewCompat.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OreoCallback"
.end annotation


# static fields
.field private static final MENU_ITEM_ORDER_PROCESS_TEXT_INTENT_ACTIONS_START:I = 0x64


# instance fields
.field private final mCallback:Landroid/view/ActionMode$Callback;

.field private mCanUseMenuBuilderReferences:Z

.field private mInitializedMenuBuilderReferences:Z

.field private mMenuBuilderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V
    .registers 4
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "textView"    # Landroid/widget/TextView;

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    iput-object p1, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    .line 569
    iput-object p2, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mTextView:Landroid/widget/TextView;

    .line 570
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mInitializedMenuBuilderReferences:Z

    .line 571
    return-void
.end method

.method private createProcessTextIntent()Landroid/content/Intent;
    .registers 3

    .line 695
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;)Landroid/content/Intent;
    .registers 6
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "textView11"    # Landroid/widget/TextView;

    .line 683
    invoke-direct {p0}, Landroidx/core/widget/TextViewCompat$OreoCallback;->createProcessTextIntent()Landroid/content/Intent;

    move-result-object v0

    .line 684
    invoke-direct {p0, p2}, Landroidx/core/widget/TextViewCompat$OreoCallback;->isEditable(Landroid/widget/TextView;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "android.intent.extra.PROCESS_TEXT_READONLY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 685
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 683
    return-object v0
.end method

.method private getSupportedActivities(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/List;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 654
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 655
    .local v0, "supportedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    instance-of v1, p1, Landroid/app/Activity;

    .line 656
    .local v1, "canStartActivityForResult":Z
    if-nez v1, :cond_a

    .line 657
    return-object v0

    .line 659
    :cond_a
    nop

    .line 660
    invoke-direct {p0}, Landroidx/core/widget/TextViewCompat$OreoCallback;->createProcessTextIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 661
    .local v2, "unfiltered":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 662
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v4, p1}, Landroidx/core/widget/TextViewCompat$OreoCallback;->isSupportedActivity(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 663
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    :cond_2d
    goto :goto_18

    .line 666
    :cond_2e
    return-object v0
.end method

.method private isEditable(Landroid/widget/TextView;)Z
    .registers 3
    .param p1, "textView11"    # Landroid/widget/TextView;

    .line 689
    instance-of v0, p1, Landroid/text/Editable;

    if-eqz v0, :cond_12

    .line 690
    invoke-virtual {p1}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 691
    invoke-virtual {p1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 689
    :goto_13
    return v0
.end method

.method private isSupportedActivity(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z
    .registers 6
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "context"    # Landroid/content/Context;

    .line 670
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    .line 671
    return v1

    .line 673
    :cond_10
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    const/4 v2, 0x0

    if-nez v0, :cond_18

    .line 674
    return v2

    .line 676
    :cond_18
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v0, :cond_2b

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 677
    invoke-virtual {p2, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v1, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    nop

    .line 676
    :goto_2c
    return v1
.end method

.method private recomputeProcessTextMenuItems(Landroid/view/Menu;)V
    .registers 11
    .param p1, "menu"    # Landroid/view/Menu;

    .line 600
    iget-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 601
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 603
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    iget-boolean v2, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mInitializedMenuBuilderReferences:Z

    const-string v3, "removeItemAt"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_35

    .line 604
    iput-boolean v5, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mInitializedMenuBuilderReferences:Z

    .line 606
    :try_start_14
    const-string v2, "com.android.internal.view.menu.MenuBuilder"

    .line 607
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderClass:Ljava/lang/Class;

    .line 608
    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    .line 609
    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

    .line 610
    iput-boolean v5, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCanUseMenuBuilderReferences:Z
    :try_end_2a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_2a} :catch_2d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_14 .. :try_end_2a} :catch_2b

    .line 615
    goto :goto_35

    .line 611
    :catch_2b
    move-exception v2

    goto :goto_2e

    :catch_2d
    move-exception v2

    .line 612
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    :goto_2e
    const/4 v6, 0x0

    iput-object v6, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderClass:Ljava/lang/Class;

    .line 613
    iput-object v6, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

    .line 614
    iput-boolean v4, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCanUseMenuBuilderReferences:Z

    .line 620
    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_35
    :goto_35
    :try_start_35
    iget-boolean v2, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCanUseMenuBuilderReferences:Z

    if-eqz v2, :cond_44

    iget-object v2, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderClass:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 621
    iget-object v2, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

    goto :goto_53

    .line 623
    :cond_44
    nop

    .line 622
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    .line 623
    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    :goto_53
    nop

    .line 624
    .local v2, "removeItemAtMethod":Ljava/lang/reflect/Method;
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    sub-int/2addr v3, v5

    .local v3, "i":I
    :goto_59
    if-ltz v3, :cond_83

    .line 625
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 626
    .local v6, "item":Landroid/view/MenuItem;
    invoke-interface {v6}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_80

    const-string v7, "android.intent.action.PROCESS_TEXT"

    .line 627
    invoke-interface {v6}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_80

    .line 628
    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v2, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_80
    .catch Ljava/lang/NoSuchMethodException; {:try_start_35 .. :try_end_80} :catch_b5
    .catch Ljava/lang/IllegalAccessException; {:try_start_35 .. :try_end_80} :catch_b3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_35 .. :try_end_80} :catch_b1

    .line 624
    .end local v6    # "item":Landroid/view/MenuItem;
    :cond_80
    add-int/lit8 v3, v3, -0x1

    goto :goto_59

    .line 636
    .end local v2    # "removeItemAtMethod":Ljava/lang/reflect/Method;
    .end local v3    # "i":I
    :cond_83
    nop

    .line 639
    nop

    .line 640
    invoke-direct {p0, v0, v1}, Landroidx/core/widget/TextViewCompat$OreoCallback;->getSupportedActivities(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v2

    .line 641
    .local v2, "supportedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_8a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_b0

    .line 642
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 643
    .local v6, "info":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v7, v3, 0x64

    .line 645
    invoke-virtual {v6, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 643
    invoke-interface {p1, v4, v4, v7, v8}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    iget-object v8, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mTextView:Landroid/widget/TextView;

    .line 646
    invoke-direct {p0, v6, v8}, Landroidx/core/widget/TextViewCompat$OreoCallback;->createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;)Landroid/content/Intent;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v7

    .line 647
    invoke-interface {v7, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 641
    .end local v6    # "info":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_8a

    .line 649
    .end local v3    # "i":I
    :cond_b0
    return-void

    .line 631
    .end local v2    # "supportedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_b1
    move-exception v2

    goto :goto_b6

    :catch_b3
    move-exception v2

    goto :goto_b6

    :catch_b5
    move-exception v2

    .line 635
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    :goto_b6
    return-void
.end method


# virtual methods
.method getWrappedCallback()Landroid/view/ActionMode$Callback;
    .registers 2

    .line 596
    iget-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    return-object v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 586
    iget-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 575
    iget-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 591
    iget-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 592
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 580
    invoke-direct {p0, p2}, Landroidx/core/widget/TextViewCompat$OreoCallback;->recomputeProcessTextMenuItems(Landroid/view/Menu;)V

    .line 581
    iget-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
