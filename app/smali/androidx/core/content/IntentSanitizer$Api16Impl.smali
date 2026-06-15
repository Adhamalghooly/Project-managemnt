.class Landroidx/core/content/IntentSanitizer$Api16Impl;
.super Ljava/lang/Object;
.source "IntentSanitizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/IntentSanitizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api16Impl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/IntentSanitizer$Api16Impl$Api31Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 898
    return-void
.end method

.method private static checkOtherMembers(ILandroid/content/ClipData$Item;Landroidx/core/util/Consumer;)V
    .registers 5
    .param p0, "i"    # I
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/ClipData$Item;",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 965
    .local p2, "penalty":Landroidx/core/util/Consumer;, "Landroidx/core/util/Consumer<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 966
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClipData item at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contains htmlText, textLinks or intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 969
    :cond_2c
    return-void
.end method

.method static sanitizeClipData(Landroid/content/Intent;Landroid/content/Intent;Landroidx/core/util/Predicate;ZLandroidx/core/util/Predicate;Landroidx/core/util/Consumer;)V
    .registers 16
    .param p0, "in"    # Landroid/content/Intent;
    .param p1, "out"    # Landroid/content/Intent;
    .param p3, "mAllowClipDataText"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Landroidx/core/util/Predicate<",
            "Landroid/content/ClipData;",
            ">;Z",
            "Landroidx/core/util/Predicate<",
            "Landroid/net/Uri;",
            ">;",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 905
    .local p2, "mAllowedClipData":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<Landroid/content/ClipData;>;"
    .local p4, "mAllowedClipDataUri":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<Landroid/net/Uri;>;"
    .local p5, "penalty":Landroidx/core/util/Consumer;, "Landroidx/core/util/Consumer<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 907
    .local v0, "clipData":Landroid/content/ClipData;
    if-nez v0, :cond_7

    return-void

    .line 909
    :cond_7
    const/4 v1, 0x0

    .line 910
    .local v1, "newClipData":Landroid/content/ClipData;
    if-eqz p2, :cond_15

    invoke-interface {p2, v0}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 911
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    goto/16 :goto_eb

    .line 913
    :cond_15
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_e6

    .line 914
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 915
    .local v3, "item":Landroid/content/ClipData$Item;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-lt v4, v5, :cond_2a

    .line 916
    invoke-static {v2, v3, p5}, Landroidx/core/content/IntentSanitizer$Api16Impl$Api31Impl;->checkOtherMembers(ILandroid/content/ClipData$Item;Landroidx/core/util/Consumer;)V

    goto :goto_2d

    .line 918
    :cond_2a
    invoke-static {v2, v3, p5}, Landroidx/core/content/IntentSanitizer$Api16Impl;->checkOtherMembers(ILandroid/content/ClipData$Item;Landroidx/core/util/Consumer;)V

    .line 921
    :goto_2d
    const/4 v4, 0x0

    .line 922
    .local v4, "itemText":Ljava/lang/CharSequence;
    if-eqz p3, :cond_35

    .line 923
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_5f

    .line 925
    :cond_35
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_5f

    .line 926
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Item text cannot contain value. Item position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Text: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 928
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 926
    invoke-interface {p5, v5}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 932
    :cond_5f
    :goto_5f
    const/4 v5, 0x0

    .line 933
    .local v5, "itemUri":Landroid/net/Uri;
    const-string v6, ". URI: "

    const-string v7, "Item URI is not allowed. Item position: "

    if-nez p4, :cond_8d

    .line 934
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_c3

    .line 935
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 937
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 935
    invoke-interface {p5, v6}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_c3

    .line 940
    :cond_8d
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_bf

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-interface {p4, v8}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9e

    goto :goto_bf

    .line 943
    :cond_9e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 945
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 943
    invoke-interface {p5, v6}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_c3

    .line 941
    :cond_bf
    :goto_bf
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 949
    :cond_c3
    :goto_c3
    if-nez v4, :cond_c7

    if-eqz v5, :cond_e2

    .line 950
    :cond_c7
    const/4 v6, 0x0

    if-nez v1, :cond_da

    .line 951
    new-instance v7, Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v8

    new-instance v9, Landroid/content/ClipData$Item;

    invoke-direct {v9, v4, v6, v5}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V

    invoke-direct {v7, v8, v9}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    move-object v1, v7

    goto :goto_e2

    .line 954
    :cond_da
    new-instance v7, Landroid/content/ClipData$Item;

    invoke-direct {v7, v4, v6, v5}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V

    invoke-virtual {v1, v7}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 913
    .end local v3    # "item":Landroid/content/ClipData$Item;
    .end local v4    # "itemText":Ljava/lang/CharSequence;
    .end local v5    # "itemUri":Landroid/net/Uri;
    :cond_e2
    :goto_e2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_16

    .line 958
    .end local v2    # "i":I
    :cond_e6
    if-eqz v1, :cond_eb

    .line 959
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 962
    :cond_eb
    :goto_eb
    return-void
.end method
