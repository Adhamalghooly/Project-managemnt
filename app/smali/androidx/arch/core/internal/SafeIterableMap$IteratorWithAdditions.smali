.class public Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;
.super Landroidx/arch/core/internal/SafeIterableMap$SupportRemove;
.source "SafeIterableMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/arch/core/internal/SafeIterableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IteratorWithAdditions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/arch/core/internal/SafeIterableMap$SupportRemove<",
        "TK;TV;>;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private mBeforeStart:Z

.field private mCurrent:Landroidx/arch/core/internal/SafeIterableMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/internal/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/arch/core/internal/SafeIterableMap;


# direct methods
.method constructor <init>(Landroidx/arch/core/internal/SafeIterableMap;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/arch/core/internal/SafeIterableMap;

    .line 329
    .local p0, "this":Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;, "Landroidx/arch/core/internal/SafeIterableMap<TK;TV;>.IteratorWithAdditions;"
    iput-object p1, p0, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->this$0:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-direct {p0}, Landroidx/arch/core/internal/SafeIterableMap$SupportRemove;-><init>()V

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mBeforeStart:Z

    .line 330
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 4

    .line 343
    .local p0, "this":Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;, "Landroidx/arch/core/internal/SafeIterableMap<TK;TV;>.IteratorWithAdditions;"
    iget-boolean v0, p0, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mBeforeStart:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 344
    iget-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->this$0:Landroidx/arch/core/internal/SafeIterableMap;

    iget-object v0, v0, Landroidx/arch/core/internal/SafeIterableMap;->mStart:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1

    .line 346
    :cond_f
    iget-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mCurrent:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    if-eqz v0, :cond_18

    iget-object v0, v0, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 323
    .local p0, "this":Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;, "Landroidx/arch/core/internal/SafeIterableMap<TK;TV;>.IteratorWithAdditions;"
    invoke-virtual {p0}, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 351
    .local p0, "this":Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;, "Landroidx/arch/core/internal/SafeIterableMap<TK;TV;>.IteratorWithAdditions;"
    iget-boolean v0, p0, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mBeforeStart:Z

    if-eqz v0, :cond_e

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mBeforeStart:Z

    .line 353
    iget-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->this$0:Landroidx/arch/core/internal/SafeIterableMap;

    iget-object v0, v0, Landroidx/arch/core/internal/SafeIterableMap;->mStart:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iput-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mCurrent:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    goto :goto_18

    .line 355
    :cond_e
    iget-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mCurrent:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    if-eqz v0, :cond_15

    iget-object v0, v0, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    iput-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mCurrent:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    .line 357
    :goto_18
    iget-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mCurrent:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    return-object v0
.end method

.method supportRemove(Landroidx/arch/core/internal/SafeIterableMap$Entry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/arch/core/internal/SafeIterableMap$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 335
    .local p0, "this":Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;, "Landroidx/arch/core/internal/SafeIterableMap<TK;TV;>.IteratorWithAdditions;"
    .local p1, "entry":Landroidx/arch/core/internal/SafeIterableMap$Entry;, "Landroidx/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;"
    iget-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mCurrent:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    if-ne p1, v0, :cond_f

    .line 336
    iget-object v0, v0, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iput-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mCurrent:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    .line 337
    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iput-boolean v0, p0, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mBeforeStart:Z

    .line 339
    :cond_f
    return-void
.end method
