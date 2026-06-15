.class public final Lkotlin/collections/builders/MapBuilder;
.super Ljava/lang/Object;
.source "MapBuilder.kt"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;
.implements Lkotlin/jvm/internal/markers/KMutableMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/collections/builders/MapBuilder$Companion;,
        Lkotlin/collections/builders/MapBuilder$EntriesItr;,
        Lkotlin/collections/builders/MapBuilder$EntryRef;,
        Lkotlin/collections/builders/MapBuilder$Itr;,
        Lkotlin/collections/builders/MapBuilder$KeysItr;,
        Lkotlin/collections/builders/MapBuilder$ValuesItr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Lkotlin/jvm/internal/markers/KMutableMap;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMapBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapBuilder.kt\nkotlin/collections/builders/MapBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,697:1\n1#2:698\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a8\u0001\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0008\n\u0002\u0010#\n\u0002\u0010\'\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u001f\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u001e\n\u0002\u0008\u0003\n\u0002\u0010&\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u0000 }*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\u00060\u0004j\u0002`\u0005:\t}~\u007f\u0080\u0001\u0081\u0001\u0082\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0006B\u000f\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tBE\u0008\u0002\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000b\u0012\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u000b\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u0008\u0012\u0006\u0010\u0011\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\u0012J\u0017\u00102\u001a\u00020\u00082\u0006\u00103\u001a\u00028\u0000H\u0000\u00a2\u0006\u0004\u00084\u00105J\u0013\u00106\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u000bH\u0002\u00a2\u0006\u0002\u00107J\u0012\u00108\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000109J\r\u0010:\u001a\u00020;H\u0000\u00a2\u0006\u0002\u0008<J\u0008\u0010=\u001a\u00020;H\u0016J\u0008\u0010>\u001a\u00020;H\u0002J\u0019\u0010?\u001a\u00020!2\n\u0010@\u001a\u0006\u0012\u0002\u0008\u00030AH\u0000\u00a2\u0006\u0002\u0008BJ!\u0010C\u001a\u00020!2\u0012\u0010D\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010EH\u0000\u00a2\u0006\u0002\u0008FJ\u0015\u0010G\u001a\u00020!2\u0006\u00103\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010HJ\u0015\u0010I\u001a\u00020!2\u0006\u0010J\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010HJ\u0018\u0010K\u001a\u00020!2\u000e\u0010L\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u000309H\u0002J\u0010\u0010M\u001a\u00020;2\u0006\u0010\u0013\u001a\u00020\u0008H\u0002J\u0010\u0010N\u001a\u00020;2\u0006\u0010O\u001a\u00020\u0008H\u0002J\u0019\u0010P\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010QH\u0000\u00a2\u0006\u0002\u0008RJ\u0013\u0010S\u001a\u00020!2\u0008\u0010L\u001a\u0004\u0018\u00010TH\u0096\u0002J\u0015\u0010U\u001a\u00020\u00082\u0006\u00103\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u00105J\u0015\u0010V\u001a\u00020\u00082\u0006\u0010J\u001a\u00028\u0001H\u0002\u00a2\u0006\u0002\u00105J\u0018\u0010W\u001a\u0004\u0018\u00018\u00012\u0006\u00103\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010XJ\u0015\u0010Y\u001a\u00020\u00082\u0006\u00103\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u00105J\u0008\u0010Z\u001a\u00020\u0008H\u0016J\u0008\u0010[\u001a\u00020!H\u0016J\u0019\u0010\\\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010]H\u0000\u00a2\u0006\u0002\u0008^J\u001f\u0010_\u001a\u0004\u0018\u00018\u00012\u0006\u00103\u001a\u00028\u00002\u0006\u0010J\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010`J\u001e\u0010a\u001a\u00020;2\u0014\u0010b\u001a\u0010\u0012\u0006\u0008\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000109H\u0016J\"\u0010c\u001a\u00020!2\u0018\u0010b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010E0AH\u0002J\u001c\u0010d\u001a\u00020!2\u0012\u0010D\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010EH\u0002J\u0010\u0010e\u001a\u00020!2\u0006\u0010f\u001a\u00020\u0008H\u0002J\u0010\u0010g\u001a\u00020;2\u0006\u0010h\u001a\u00020\u0008H\u0002J\u0017\u0010i\u001a\u0004\u0018\u00018\u00012\u0006\u00103\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010XJ!\u0010j\u001a\u00020!2\u0012\u0010D\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010EH\u0000\u00a2\u0006\u0002\u0008kJ\u0010\u0010l\u001a\u00020;2\u0006\u0010m\u001a\u00020\u0008H\u0002J\u0017\u0010n\u001a\u00020\u00082\u0006\u00103\u001a\u00028\u0000H\u0000\u00a2\u0006\u0004\u0008o\u00105J\u0010\u0010p\u001a\u00020;2\u0006\u0010q\u001a\u00020\u0008H\u0002J\u0017\u0010r\u001a\u00020!2\u0006\u0010s\u001a\u00028\u0001H\u0000\u00a2\u0006\u0004\u0008t\u0010HJ\u0010\u0010u\u001a\u00020!2\u0006\u0010v\u001a\u00020\u0008H\u0002J\u0008\u0010w\u001a\u00020xH\u0016J\u0019\u0010y\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010zH\u0000\u00a2\u0006\u0002\u0008{J\u0008\u0010|\u001a\u00020TH\u0002R\u0014\u0010\u0013\u001a\u00020\u00088@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R&\u0010\u0016\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00180\u00178VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u0015R\u001e\u0010\"\u001a\u00020!2\u0006\u0010 \u001a\u00020!@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u001a\u0010%\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00178VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\u001aR\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000bX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\'R\u0016\u0010(\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010*\u001a\u00020\u00082\u0006\u0010 \u001a\u00020\u0008@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u0015R\u001a\u0010,\u001a\u0008\u0012\u0004\u0012\u00028\u00010-8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010/R\u0018\u0010\u000c\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\'R\u0016\u00100\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u000101X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0083\u0001"
    }
    d2 = {
        "Lkotlin/collections/builders/MapBuilder;",
        "K",
        "V",
        "",
        "Ljava/io/Serializable;",
        "Lkotlin/io/Serializable;",
        "()V",
        "initialCapacity",
        "",
        "(I)V",
        "keysArray",
        "",
        "valuesArray",
        "presenceArray",
        "",
        "hashArray",
        "maxProbeDistance",
        "length",
        "([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V",
        "capacity",
        "getCapacity$kotlin_stdlib",
        "()I",
        "entries",
        "",
        "",
        "getEntries",
        "()Ljava/util/Set;",
        "entriesView",
        "Lkotlin/collections/builders/MapBuilderEntries;",
        "hashShift",
        "hashSize",
        "getHashSize",
        "<set-?>",
        "",
        "isReadOnly",
        "isReadOnly$kotlin_stdlib",
        "()Z",
        "keys",
        "getKeys",
        "[Ljava/lang/Object;",
        "keysView",
        "Lkotlin/collections/builders/MapBuilderKeys;",
        "size",
        "getSize",
        "values",
        "",
        "getValues",
        "()Ljava/util/Collection;",
        "valuesView",
        "Lkotlin/collections/builders/MapBuilderValues;",
        "addKey",
        "key",
        "addKey$kotlin_stdlib",
        "(Ljava/lang/Object;)I",
        "allocateValuesArray",
        "()[Ljava/lang/Object;",
        "build",
        "",
        "checkIsMutable",
        "",
        "checkIsMutable$kotlin_stdlib",
        "clear",
        "compact",
        "containsAllEntries",
        "m",
        "",
        "containsAllEntries$kotlin_stdlib",
        "containsEntry",
        "entry",
        "",
        "containsEntry$kotlin_stdlib",
        "containsKey",
        "(Ljava/lang/Object;)Z",
        "containsValue",
        "value",
        "contentEquals",
        "other",
        "ensureCapacity",
        "ensureExtraCapacity",
        "n",
        "entriesIterator",
        "Lkotlin/collections/builders/MapBuilder$EntriesItr;",
        "entriesIterator$kotlin_stdlib",
        "equals",
        "",
        "findKey",
        "findValue",
        "get",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "hash",
        "hashCode",
        "isEmpty",
        "keysIterator",
        "Lkotlin/collections/builders/MapBuilder$KeysItr;",
        "keysIterator$kotlin_stdlib",
        "put",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "putAll",
        "from",
        "putAllEntries",
        "putEntry",
        "putRehash",
        "i",
        "rehash",
        "newHashSize",
        "remove",
        "removeEntry",
        "removeEntry$kotlin_stdlib",
        "removeHashAt",
        "removedHash",
        "removeKey",
        "removeKey$kotlin_stdlib",
        "removeKeyAt",
        "index",
        "removeValue",
        "element",
        "removeValue$kotlin_stdlib",
        "shouldCompact",
        "extraCapacity",
        "toString",
        "",
        "valuesIterator",
        "Lkotlin/collections/builders/MapBuilder$ValuesItr;",
        "valuesIterator$kotlin_stdlib",
        "writeReplace",
        "Companion",
        "EntriesItr",
        "EntryRef",
        "Itr",
        "KeysItr",
        "ValuesItr",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lkotlin/collections/builders/MapBuilder$Companion;

.field private static final Empty:Lkotlin/collections/builders/MapBuilder;

.field private static final INITIAL_CAPACITY:I = 0x8

.field private static final INITIAL_MAX_PROBE_DISTANCE:I = 0x2

.field private static final MAGIC:I = -0x61c88647

.field private static final TOMBSTONE:I = -0x1


# instance fields
.field private entriesView:Lkotlin/collections/builders/MapBuilderEntries;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/builders/MapBuilderEntries<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private hashArray:[I

.field private hashShift:I

.field private isReadOnly:Z

.field private keysArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private keysView:Lkotlin/collections/builders/MapBuilderKeys;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/builders/MapBuilderKeys<",
            "TK;>;"
        }
    .end annotation
.end field

.field private length:I

.field private maxProbeDistance:I

.field private presenceArray:[I

.field private size:I

.field private valuesArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private valuesView:Lkotlin/collections/builders/MapBuilderValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/builders/MapBuilderValues<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lkotlin/collections/builders/MapBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/collections/builders/MapBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/collections/builders/MapBuilder;->Companion:Lkotlin/collections/builders/MapBuilder$Companion;

    .line 469
    new-instance v0, Lkotlin/collections/builders/MapBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/collections/builders/MapBuilder;-><init>(I)V

    move-object v1, v0

    .line 698
    .local v1, "it":Lkotlin/collections/builders/MapBuilder;
    const/4 v2, 0x0

    .line 469
    .local v2, "$i$a$-also-MapBuilder$Companion$Empty$1":I
    const/4 v3, 0x1

    iput-boolean v3, v1, Lkotlin/collections/builders/MapBuilder;->isReadOnly:Z

    .end local v1    # "it":Lkotlin/collections/builders/MapBuilder;
    .end local v2    # "$i$a$-also-MapBuilder$Companion$Empty$1":I
    sput-object v0, Lkotlin/collections/builders/MapBuilder;->Empty:Lkotlin/collections/builders/MapBuilder;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 40
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 9
    .param p1, "initialCapacity"    # I

    .line 42
    nop

    .line 43
    invoke-static {p1}, Lkotlin/collections/builders/ListBuilderKt;->arrayOfUninitializedElements(I)[Ljava/lang/Object;

    move-result-object v1

    .line 44
    const/4 v2, 0x0

    .line 45
    new-array v3, p1, [I

    .line 46
    sget-object v0, Lkotlin/collections/builders/MapBuilder;->Companion:Lkotlin/collections/builders/MapBuilder$Companion;

    invoke-static {v0, p1}, Lkotlin/collections/builders/MapBuilder$Companion;->access$computeHashSize(Lkotlin/collections/builders/MapBuilder$Companion;I)I

    move-result v0

    new-array v4, v0, [I

    .line 47
    const/4 v5, 0x2

    .line 48
    const/4 v6, 0x0

    .line 42
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/collections/builders/MapBuilder;-><init>([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V

    .line 48
    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V
    .registers 9
    .param p1, "keysArray"    # [Ljava/lang/Object;
    .param p2, "valuesArray"    # [Ljava/lang/Object;
    .param p3, "presenceArray"    # [I
    .param p4, "hashArray"    # [I
    .param p5, "maxProbeDistance"    # I
    .param p6, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;[TV;[I[III)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    .line 16
    iput-object p2, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    .line 18
    iput-object p3, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    .line 20
    iput-object p4, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    .line 22
    iput p5, p0, Lkotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    .line 24
    iput p6, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    .line 26
    sget-object v0, Lkotlin/collections/builders/MapBuilder;->Companion:Lkotlin/collections/builders/MapBuilder$Companion;

    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/collections/builders/MapBuilder$Companion;->access$computeShift(Lkotlin/collections/builders/MapBuilder$Companion;I)I

    move-result v0

    iput v0, p0, Lkotlin/collections/builders/MapBuilder;->hashShift:I

    .line 12
    return-void
.end method

.method public static final synthetic access$allocateValuesArray(Lkotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;
    .registers 2
    .param p0, "$this"    # Lkotlin/collections/builders/MapBuilder;

    .line 12
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->allocateValuesArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getEmpty$cp()Lkotlin/collections/builders/MapBuilder;
    .registers 1

    .line 12
    sget-object v0, Lkotlin/collections/builders/MapBuilder;->Empty:Lkotlin/collections/builders/MapBuilder;

    return-object v0
.end method

.method public static final synthetic access$getKeysArray$p(Lkotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;
    .registers 2
    .param p0, "$this"    # Lkotlin/collections/builders/MapBuilder;

    .line 12
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$getLength$p(Lkotlin/collections/builders/MapBuilder;)I
    .registers 2
    .param p0, "$this"    # Lkotlin/collections/builders/MapBuilder;

    .line 12
    iget v0, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    return v0
.end method

.method public static final synthetic access$getPresenceArray$p(Lkotlin/collections/builders/MapBuilder;)[I
    .registers 2
    .param p0, "$this"    # Lkotlin/collections/builders/MapBuilder;

    .line 12
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    return-object v0
.end method

.method public static final synthetic access$getValuesArray$p(Lkotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;
    .registers 2
    .param p0, "$this"    # Lkotlin/collections/builders/MapBuilder;

    .line 12
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$removeKeyAt(Lkotlin/collections/builders/MapBuilder;I)V
    .registers 2
    .param p0, "$this"    # Lkotlin/collections/builders/MapBuilder;
    .param p1, "index"    # I

    .line 12
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->removeKeyAt(I)V

    return-void
.end method

.method private final allocateValuesArray()[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TV;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    .line 214
    .local v0, "curValuesArray":[Ljava/lang/Object;
    if-eqz v0, :cond_5

    return-object v0

    .line 215
    :cond_5
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->getCapacity$kotlin_stdlib()I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/builders/ListBuilderKt;->arrayOfUninitializedElements(I)[Ljava/lang/Object;

    move-result-object v1

    .line 216
    .local v1, "newValuesArray":[Ljava/lang/Object;
    iput-object v1, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    .line 217
    return-object v1
.end method

.method private final compact()V
    .registers 6

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "i":I
    const/4 v1, 0x0

    .line 225
    .local v1, "j":I
    iget-object v2, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    .line 226
    .local v2, "valuesArray":[Ljava/lang/Object;
    :goto_4
    iget v3, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    if-ge v0, v3, :cond_1f

    .line 227
    iget-object v3, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    aget v3, v3, v0

    if-ltz v3, :cond_1c

    .line 228
    iget-object v3, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    aget-object v4, v3, v0

    aput-object v4, v3, v1

    .line 229
    if-eqz v2, :cond_1a

    aget-object v3, v2, v0

    aput-object v3, v2, v1

    .line 230
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    .line 232
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 234
    :cond_1f
    iget-object v4, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    invoke-static {v4, v1, v3}, Lkotlin/collections/builders/ListBuilderKt;->resetRange([Ljava/lang/Object;II)V

    .line 235
    if-eqz v2, :cond_2b

    iget v3, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    invoke-static {v2, v1, v3}, Lkotlin/collections/builders/ListBuilderKt;->resetRange([Ljava/lang/Object;II)V

    .line 236
    :cond_2b
    iput v1, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    .line 238
    return-void
.end method

.method private final contentEquals(Ljava/util/Map;)Z
    .registers 4
    .param p1, "other"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    .line 398
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_18

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lkotlin/collections/builders/MapBuilder;->containsAllEntries$kotlin_stdlib(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private final ensureCapacity(I)V
    .registers 5
    .param p1, "capacity"    # I

    .line 200
    if-ltz p1, :cond_44

    .line 201
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->getCapacity$kotlin_stdlib()I

    move-result v0

    if-le p1, v0, :cond_43

    .line 202
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->getCapacity$kotlin_stdlib()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    .line 203
    .local v0, "newSize":I
    if-le p1, v0, :cond_13

    move v0, p1

    .line 204
    :cond_13
    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    invoke-static {v1, v0}, Lkotlin/collections/builders/ListBuilderKt;->copyOfUninitializedElements([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    .line 205
    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    if-eqz v1, :cond_24

    invoke-static {v1, v0}, Lkotlin/collections/builders/ListBuilderKt;->copyOfUninitializedElements([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    iput-object v1, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    .line 206
    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    const-string v2, "copyOf(this, newSize)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    .line 207
    sget-object v1, Lkotlin/collections/builders/MapBuilder;->Companion:Lkotlin/collections/builders/MapBuilder$Companion;

    invoke-static {v1, v0}, Lkotlin/collections/builders/MapBuilder$Companion;->access$computeHashSize(Lkotlin/collections/builders/MapBuilder$Companion;I)I

    move-result v1

    .line 208
    .local v1, "newHashSize":I
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result v2

    if-le v1, v2, :cond_43

    invoke-direct {p0, v1}, Lkotlin/collections/builders/MapBuilder;->rehash(I)V

    .line 210
    .end local v0    # "newSize":I
    .end local v1    # "newHashSize":I
    :cond_43
    return-void

    .line 200
    :cond_44
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0
.end method

.method private final ensureExtraCapacity(I)V
    .registers 3
    .param p1, "n"    # I

    .line 184
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->shouldCompact(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 185
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result v0

    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->rehash(I)V

    goto :goto_14

    .line 187
    :cond_e
    iget v0, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->ensureCapacity(I)V

    .line 189
    :goto_14
    return-void
.end method

.method private final findKey(Ljava/lang/Object;)I
    .registers 8
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 273
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 274
    .local v0, "hash":I
    iget v1, p0, Lkotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    .line 275
    .local v1, "probesLeft":I
    :goto_6
    nop

    .line 276
    iget-object v2, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    aget v2, v2, v0

    .line 277
    .local v2, "index":I
    const/4 v3, -0x1

    if-nez v2, :cond_f

    return v3

    .line 278
    :cond_f
    if-lez v2, :cond_20

    iget-object v4, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    add-int/lit8 v3, v2, -0x1

    return v3

    .line 279
    :cond_20
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_25

    return v3

    .line 280
    :cond_25
    add-int/lit8 v3, v0, -0x1

    .end local v0    # "hash":I
    .local v3, "hash":I
    if-nez v0, :cond_30

    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .end local v2    # "index":I
    .end local v3    # "hash":I
    .restart local v0    # "hash":I
    goto :goto_6

    .end local v0    # "hash":I
    .restart local v2    # "index":I
    .restart local v3    # "hash":I
    :cond_30
    move v0, v3

    goto :goto_6
.end method

.method private final findValue(Ljava/lang/Object;)I
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 285
    iget v0, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    .line 286
    .local v0, "i":I
    :cond_2
    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_1a

    .line 287
    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    aget v1, v1, v0

    if-ltz v1, :cond_2

    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    return v0

    .line 290
    :cond_1a
    return v1
.end method

.method private final getHashSize()I
    .registers 2

    .line 177
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    array-length v0, v0

    return v0
.end method

.method private final hash(Ljava/lang/Object;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 220
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const v1, -0x61c88647

    mul-int v0, v0, v1

    iget v1, p0, Lkotlin/collections/builders/MapBuilder;->hashShift:I

    ushr-int/2addr v0, v1

    return v0
.end method

.method private final putAllEntries(Ljava/util/Collection;)Z
    .registers 5
    .param p1, "from"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)Z"
        }
    .end annotation

    .line 431
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 432
    :cond_8
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->ensureExtraCapacity(I)V

    .line 433
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 434
    .local v0, "it":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 435
    .local v1, "updated":Z
    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 436
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-direct {p0, v2}, Lkotlin/collections/builders/MapBuilder;->putEntry(Ljava/util/Map$Entry;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 437
    const/4 v1, 0x1

    goto :goto_14

    .line 439
    :cond_28
    return v1
.end method

.method private final putEntry(Ljava/util/Map$Entry;)Z
    .registers 8
    .param p1, "entry"    # Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    .line 416
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlin/collections/builders/MapBuilder;->addKey$kotlin_stdlib(Ljava/lang/Object;)I

    move-result v0

    .line 417
    .local v0, "index":I
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->allocateValuesArray()[Ljava/lang/Object;

    move-result-object v1

    .line 418
    .local v1, "valuesArray":[Ljava/lang/Object;
    const/4 v2, 0x1

    if-ltz v0, :cond_16

    .line 419
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v0

    .line 420
    return v2

    .line 422
    :cond_16
    neg-int v3, v0

    sub-int/2addr v3, v2

    aget-object v3, v1, v3

    .line 423
    .local v3, "oldValue":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 424
    neg-int v4, v0

    sub-int/2addr v4, v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v4

    .line 425
    return v2

    .line 427
    :cond_2d
    const/4 v2, 0x0

    return v2
.end method

.method private final putRehash(I)Z
    .registers 8
    .param p1, "i"    # I

    .line 258
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 259
    .local v0, "hash":I
    iget v1, p0, Lkotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    .line 260
    .local v1, "probesLeft":I
    :goto_a
    nop

    .line 261
    iget-object v2, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    aget v3, v2, v0

    .line 262
    .local v3, "index":I
    const/4 v4, 0x1

    if-nez v3, :cond_1b

    .line 263
    add-int/lit8 v5, p1, 0x1

    aput v5, v2, v0

    .line 264
    iget-object v2, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    aput v0, v2, p1

    .line 265
    return v4

    .line 267
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_21

    const/4 v2, 0x0

    return v2

    .line 268
    :cond_21
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "hash":I
    .local v2, "hash":I
    if-nez v0, :cond_2b

    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result v0

    sub-int/2addr v0, v4

    .end local v2    # "hash":I
    .end local v3    # "index":I
    .restart local v0    # "hash":I
    goto :goto_a

    .end local v0    # "hash":I
    .restart local v2    # "hash":I
    .restart local v3    # "index":I
    :cond_2b
    move v0, v2

    goto :goto_a
.end method

.method private final rehash(I)V
    .registers 5
    .param p1, "newHashSize"    # I

    .line 241
    iget v0, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->size()I

    move-result v1

    if-le v0, v1, :cond_b

    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->compact()V

    .line 242
    :cond_b
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result v0

    if-eq p1, v0, :cond_1e

    .line 243
    new-array v0, p1, [I

    iput-object v0, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    .line 244
    sget-object v0, Lkotlin/collections/builders/MapBuilder;->Companion:Lkotlin/collections/builders/MapBuilder$Companion;

    invoke-static {v0, p1}, Lkotlin/collections/builders/MapBuilder$Companion;->access$computeShift(Lkotlin/collections/builders/MapBuilder$Companion;I)I

    move-result v0

    iput v0, p0, Lkotlin/collections/builders/MapBuilder;->hashShift:I

    goto :goto_28

    .line 246
    :cond_1e
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1}, Lkotlin/collections/ArraysKt;->fill([IIII)V

    .line 248
    :goto_28
    const/4 v0, 0x0

    .line 249
    .local v0, "i":I
    :goto_29
    iget v1, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    if-ge v0, v1, :cond_3f

    .line 250
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->putRehash(I)Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v1

    goto :goto_29

    .line 251
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_3f
    return-void
.end method

.method private final removeHashAt(I)V
    .registers 11
    .param p1, "removedHash"    # I

    .line 343
    move v0, p1

    .line 344
    .local v0, "hash":I
    move v1, p1

    .line 345
    .local v1, "hole":I
    const/4 v2, 0x0

    .line 346
    .local v2, "probeDistance":I
    iget v3, p0, Lkotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v3

    .line 347
    .local v3, "patchAttemptsLeft":I
    :cond_11
    nop

    .line 348
    add-int/lit8 v4, v0, -0x1

    .end local v0    # "hash":I
    .local v4, "hash":I
    if-nez v0, :cond_1d

    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .end local v4    # "hash":I
    .restart local v0    # "hash":I
    goto :goto_1e

    .end local v0    # "hash":I
    .restart local v4    # "hash":I
    :cond_1d
    move v0, v4

    .line 349
    .end local v4    # "hash":I
    .restart local v0    # "hash":I
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    iget v4, p0, Lkotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    const/4 v5, 0x0

    if-le v2, v4, :cond_2a

    .line 351
    iget-object v4, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    aput v5, v4, v1

    .line 352
    return-void

    .line 354
    :cond_2a
    iget-object v4, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    aget v6, v4, v0

    .line 355
    .local v6, "index":I
    if-nez v6, :cond_33

    .line 357
    aput v5, v4, v1

    .line 358
    return-void

    .line 360
    :cond_33
    const/4 v5, -0x1

    if-gez v6, :cond_3b

    .line 366
    aput v5, v4, v1

    .line 367
    move v1, v0

    .line 368
    const/4 v2, 0x0

    goto :goto_5c

    .line 370
    :cond_3b
    iget-object v4, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    add-int/lit8 v7, v6, -0x1

    aget-object v4, v4, v7

    invoke-direct {p0, v4}, Lkotlin/collections/builders/MapBuilder;->hash(Ljava/lang/Object;)I

    move-result v4

    .line 375
    .local v4, "otherHash":I
    sub-int v7, v4, v0

    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    and-int/2addr v7, v8

    if-lt v7, v2, :cond_5c

    .line 377
    iget-object v7, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    aput v6, v7, v1

    .line 378
    iget-object v7, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    add-int/lit8 v8, v6, -0x1

    aput v1, v7, v8

    .line 379
    move v1, v0

    .line 380
    const/4 v2, 0x0

    .line 384
    .end local v4    # "otherHash":I
    :cond_5c
    :goto_5c
    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_11

    .line 386
    iget-object v4, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    aput v5, v4, v1

    .line 387
    return-void
.end method

.method private final removeKeyAt(I)V
    .registers 4
    .param p1, "index"    # I

    .line 336
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/collections/builders/ListBuilderKt;->resetAt([Ljava/lang/Object;I)V

    .line 337
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->removeHashAt(I)V

    .line 338
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    .line 339
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lkotlin/collections/builders/MapBuilder;->size:I

    .line 340
    return-void
.end method

.method private final shouldCompact(I)Z
    .registers 5
    .param p1, "extraCapacity"    # I

    .line 192
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->getCapacity$kotlin_stdlib()I

    move-result v0

    iget v1, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    sub-int/2addr v0, v1

    .line 193
    .local v0, "spareCapacity":I
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->size()I

    move-result v2

    sub-int/2addr v1, v2

    .line 194
    .local v1, "gaps":I
    if-ge v0, p1, :cond_1c

    .line 195
    add-int v2, v1, v0

    if-lt v2, p1, :cond_1c

    .line 196
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->getCapacity$kotlin_stdlib()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    if-lt v1, v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    .line 194
    :goto_1d
    return v2
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 3

    .line 58
    iget-boolean v0, p0, Lkotlin/collections/builders/MapBuilder;->isReadOnly:Z

    if-eqz v0, :cond_d

    .line 59
    new-instance v0, Lkotlin/collections/builders/SerializedMap;

    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v1}, Lkotlin/collections/builders/SerializedMap;-><init>(Ljava/util/Map;)V

    .line 61
    return-object v0

    :cond_d
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "The map cannot be serialized while it is being built."

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addKey$kotlin_stdlib(Ljava/lang/Object;)I
    .registers 10
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 295
    :goto_3
    nop

    .line 296
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 298
    .local v0, "hash":I
    iget v1, p0, Lkotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v1

    .line 299
    .local v1, "tentativeMaxProbeDistance":I
    const/4 v2, 0x0

    .line 300
    .local v2, "probeDistance":I
    :goto_17
    nop

    .line 301
    iget-object v3, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    aget v3, v3, v0

    .line 302
    .local v3, "index":I
    const/4 v4, 0x1

    if-gtz v3, :cond_4d

    .line 303
    iget v5, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->getCapacity$kotlin_stdlib()I

    move-result v6

    if-lt v5, v6, :cond_2b

    .line 304
    invoke-direct {p0, v4}, Lkotlin/collections/builders/MapBuilder;->ensureExtraCapacity(I)V

    .line 305
    goto :goto_3

    .line 307
    :cond_2b
    iget v5, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    .line 308
    .local v5, "putIndex":I
    iget-object v6, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    aput-object p1, v6, v5

    .line 309
    iget-object v6, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    aput v0, v6, v5

    .line 310
    iget-object v6, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    add-int/lit8 v7, v5, 0x1

    aput v7, v6, v0

    .line 311
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->size()I

    move-result v6

    add-int/2addr v6, v4

    iput v6, p0, Lkotlin/collections/builders/MapBuilder;->size:I

    .line 312
    iget v4, p0, Lkotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    if-le v2, v4, :cond_4c

    iput v2, p0, Lkotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    .line 313
    :cond_4c
    return v5

    .line 315
    .end local v5    # "putIndex":I
    :cond_4d
    iget-object v5, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    add-int/lit8 v6, v3, -0x1

    aget-object v5, v5, v6

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 316
    neg-int v4, v3

    return v4

    .line 318
    :cond_5b
    add-int/lit8 v2, v2, 0x1

    if-le v2, v1, :cond_69

    .line 319
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {p0, v4}, Lkotlin/collections/builders/MapBuilder;->rehash(I)V

    .line 320
    goto :goto_3

    .line 322
    :cond_69
    add-int/lit8 v5, v0, -0x1

    .end local v0    # "hash":I
    .local v5, "hash":I
    if-nez v0, :cond_73

    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result v0

    sub-int/2addr v0, v4

    .end local v3    # "index":I
    .end local v5    # "hash":I
    .restart local v0    # "hash":I
    goto :goto_17

    .end local v0    # "hash":I
    .restart local v3    # "index":I
    .restart local v5    # "hash":I
    :cond_73
    move v0, v5

    goto :goto_17
.end method

.method public final build()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlin/collections/builders/MapBuilder;->isReadOnly:Z

    .line 54
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->size()I

    move-result v0

    if-lez v0, :cond_10

    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    goto :goto_19

    :cond_10
    sget-object v0, Lkotlin/collections/builders/MapBuilder;->Empty:Lkotlin/collections/builders/MapBuilder;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.builders.MapBuilder, V of kotlin.collections.builders.MapBuilder>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Map;

    :goto_19
    return-object v0
.end method

.method public final checkIsMutable$kotlin_stdlib()V
    .registers 2

    .line 180
    iget-boolean v0, p0, Lkotlin/collections/builders/MapBuilder;->isReadOnly:Z

    if-nez v0, :cond_5

    .line 181
    return-void

    .line 180
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .registers 7

    .line 102
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 104
    new-instance v0, Lkotlin/ranges/IntRange;

    iget v1, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v0}, Lkotlin/ranges/IntRange;->iterator()Lkotlin/collections/IntIterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-virtual {v0}, Lkotlin/collections/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v1

    .line 105
    .local v1, "i":I
    iget-object v3, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    aget v4, v3, v1

    .line 106
    .local v4, "hash":I
    if-ltz v4, :cond_11

    .line 107
    iget-object v5, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    aput v2, v5, v4

    .line 108
    const/4 v5, -0x1

    aput v5, v3, v1

    .end local v1    # "i":I
    .end local v4    # "hash":I
    goto :goto_11

    .line 111
    :cond_29
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    invoke-static {v0, v2, v1}, Lkotlin/collections/builders/ListBuilderKt;->resetRange([Ljava/lang/Object;II)V

    .line 112
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    if-eqz v0, :cond_39

    iget v1, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    invoke-static {v0, v2, v1}, Lkotlin/collections/builders/ListBuilderKt;->resetRange([Ljava/lang/Object;II)V

    .line 113
    :cond_39
    iput v2, p0, Lkotlin/collections/builders/MapBuilder;->size:I

    .line 114
    iput v2, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    .line 115
    return-void
.end method

.method public final containsAllEntries$kotlin_stdlib(Ljava/util/Collection;)Z
    .registers 6
    .param p1, "m"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 402
    .local v0, "it":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 403
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 404
    .local v1, "entry":Ljava/lang/Object;
    nop

    .line 406
    const/4 v2, 0x0

    if-eqz v1, :cond_23

    :try_start_17
    move-object v3, v1

    check-cast v3, Ljava/util/Map$Entry;

    invoke-virtual {p0, v3}, Lkotlin/collections/builders/MapBuilder;->containsEntry$kotlin_stdlib(Ljava/util/Map$Entry;)Z

    move-result v3
    :try_end_1e
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_1e} :catch_21

    if-nez v3, :cond_9

    goto :goto_23

    .line 408
    :catch_21
    move-exception v3

    .line 409
    .local v3, "e":Ljava/lang/ClassCastException;
    return v2

    .line 407
    .end local v3    # "e":Ljava/lang/ClassCastException;
    :cond_23
    :goto_23
    return v2

    .line 412
    .end local v1    # "entry":Ljava/lang/Object;
    :cond_24
    const/4 v1, 0x1

    return v1
.end method

.method public final containsEntry$kotlin_stdlib(Ljava/util/Map$Entry;)Z
    .registers 5
    .param p1, "entry"    # Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->findKey(Ljava/lang/Object;)I

    move-result v0

    .line 394
    .local v0, "index":I
    if-gez v0, :cond_11

    const/4 v1, 0x0

    return v1

    .line 395
    :cond_11
    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v1, v1, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 64
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->findKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 65
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->findValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final entriesIterator$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder$EntriesItr;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/builders/MapBuilder$EntriesItr<",
            "TK;TV;>;"
        }
    .end annotation

    .line 461
    new-instance v0, Lkotlin/collections/builders/MapBuilder$EntriesItr;

    invoke-direct {v0, p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    return-object v0
.end method

.method public final bridge entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->getEntries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 145
    if-eq p1, p0, :cond_12

    .line 146
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_10

    .line 147
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->contentEquals(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    .line 145
    :goto_13
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->findKey(Ljava/lang/Object;)I

    move-result v0

    .line 69
    .local v0, "index":I
    if-gez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    .line 70
    :cond_8
    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v1, v1, v0

    return-object v1
.end method

.method public final getCapacity$kotlin_stdlib()I
    .registers 2

    .line 176
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public getEntries()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->entriesView:Lkotlin/collections/builders/MapBuilderEntries;

    .line 137
    .local v0, "cur":Lkotlin/collections/builders/MapBuilderEntries;
    if-nez v0, :cond_f

    .line 138
    new-instance v1, Lkotlin/collections/builders/MapBuilderEntries;

    invoke-direct {v1, p0}, Lkotlin/collections/builders/MapBuilderEntries;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    .line 139
    .local v1, "new":Lkotlin/collections/builders/MapBuilderEntries;
    iput-object v1, p0, Lkotlin/collections/builders/MapBuilder;->entriesView:Lkotlin/collections/builders/MapBuilderEntries;

    .line 140
    move-object v2, v1

    check-cast v2, Ljava/util/Set;

    return-object v2

    .line 141
    .end local v1    # "new":Lkotlin/collections/builders/MapBuilderEntries;
    :cond_f
    move-object v1, v0

    check-cast v1, Ljava/util/Set;

    .line 137
    return-object v1
.end method

.method public getKeys()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->keysView:Lkotlin/collections/builders/MapBuilderKeys;

    .line 119
    .local v0, "cur":Lkotlin/collections/builders/MapBuilderKeys;
    if-nez v0, :cond_f

    .line 120
    new-instance v1, Lkotlin/collections/builders/MapBuilderKeys;

    invoke-direct {v1, p0}, Lkotlin/collections/builders/MapBuilderKeys;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    .line 121
    .local v1, "new":Lkotlin/collections/builders/MapBuilderKeys;
    iput-object v1, p0, Lkotlin/collections/builders/MapBuilder;->keysView:Lkotlin/collections/builders/MapBuilderKeys;

    .line 122
    nop

    .end local v1    # "new":Lkotlin/collections/builders/MapBuilderKeys;
    check-cast v1, Ljava/util/Set;

    goto :goto_12

    .line 123
    :cond_f
    move-object v1, v0

    check-cast v1, Ljava/util/Set;

    .line 119
    :goto_12
    return-object v1
.end method

.method public getSize()I
    .registers 2

    .line 28
    iget v0, p0, Lkotlin/collections/builders/MapBuilder;->size:I

    return v0
.end method

.method public getValues()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->valuesView:Lkotlin/collections/builders/MapBuilderValues;

    .line 128
    .local v0, "cur":Lkotlin/collections/builders/MapBuilderValues;
    if-nez v0, :cond_f

    .line 129
    new-instance v1, Lkotlin/collections/builders/MapBuilderValues;

    invoke-direct {v1, p0}, Lkotlin/collections/builders/MapBuilderValues;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    .line 130
    .local v1, "new":Lkotlin/collections/builders/MapBuilderValues;
    iput-object v1, p0, Lkotlin/collections/builders/MapBuilder;->valuesView:Lkotlin/collections/builders/MapBuilderValues;

    .line 131
    nop

    .end local v1    # "new":Lkotlin/collections/builders/MapBuilderValues;
    check-cast v1, Ljava/util/Collection;

    goto :goto_12

    .line 132
    :cond_f
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    .line 128
    :goto_12
    return-object v1
.end method

.method public hashCode()I
    .registers 4

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "result":I
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->entriesIterator$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder$EntriesItr;

    move-result-object v1

    .line 153
    .local v1, "it":Lkotlin/collections/builders/MapBuilder$EntriesItr;
    :goto_5
    invoke-virtual {v1}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 154
    invoke-virtual {v1}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->nextHashCode$kotlin_stdlib()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_5

    .line 156
    :cond_11
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 63
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final isReadOnly$kotlin_stdlib()Z
    .registers 2

    .line 35
    iget-boolean v0, p0, Lkotlin/collections/builders/MapBuilder;->isReadOnly:Z

    return v0
.end method

.method public final bridge keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->getKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final keysIterator$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder$KeysItr;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/builders/MapBuilder$KeysItr<",
            "TK;TV;>;"
        }
    .end annotation

    .line 459
    new-instance v0, Lkotlin/collections/builders/MapBuilder$KeysItr;

    invoke-direct {v0, p0}, Lkotlin/collections/builders/MapBuilder$KeysItr;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 75
    invoke-virtual {p0, p1}, Lkotlin/collections/builders/MapBuilder;->addKey$kotlin_stdlib(Ljava/lang/Object;)I

    move-result v0

    .line 76
    .local v0, "index":I
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->allocateValuesArray()[Ljava/lang/Object;

    move-result-object v1

    .line 77
    .local v1, "valuesArray":[Ljava/lang/Object;
    if-gez v0, :cond_18

    .line 78
    neg-int v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    .line 79
    .local v2, "oldValue":Ljava/lang/Object;
    neg-int v3, v0

    add-int/lit8 v3, v3, -0x1

    aput-object p2, v1, v3

    .line 80
    return-object v2

    .line 82
    .end local v2    # "oldValue":Ljava/lang/Object;
    :cond_18
    aput-object p2, v1, v0

    .line 83
    const/4 v2, 0x0

    return-object v2
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 3
    .param p1, "from"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 89
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->putAllEntries(Ljava/util/Collection;)Z

    .line 90
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 93
    invoke-virtual {p0, p1}, Lkotlin/collections/builders/MapBuilder;->removeKey$kotlin_stdlib(Ljava/lang/Object;)I

    move-result v0

    .line 94
    .local v0, "index":I
    if-gez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    .line 95
    :cond_8
    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 96
    .local v1, "valuesArray":[Ljava/lang/Object;
    aget-object v2, v1, v0

    .line 97
    .local v2, "oldValue":Ljava/lang/Object;
    invoke-static {v1, v0}, Lkotlin/collections/builders/ListBuilderKt;->resetAt([Ljava/lang/Object;I)V

    .line 98
    return-object v2
.end method

.method public final removeEntry$kotlin_stdlib(Ljava/util/Map$Entry;)Z
    .registers 6
    .param p1, "entry"    # Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 444
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->findKey(Ljava/lang/Object;)I

    move-result v0

    .line 445
    .local v0, "index":I
    const/4 v1, 0x0

    if-gez v0, :cond_14

    return v1

    .line 446
    :cond_14
    iget-object v2, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v2, v2, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    return v1

    .line 447
    :cond_26
    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->removeKeyAt(I)V

    .line 448
    const/4 v1, 0x1

    return v1
.end method

.method public final removeKey$kotlin_stdlib(Ljava/lang/Object;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 328
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 329
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->findKey(Ljava/lang/Object;)I

    move-result v0

    .line 330
    .local v0, "index":I
    if-gez v0, :cond_b

    const/4 v1, -0x1

    return v1

    .line 331
    :cond_b
    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->removeKeyAt(I)V

    .line 332
    return v0
.end method

.method public final removeValue$kotlin_stdlib(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 452
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 453
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->findValue(Ljava/lang/Object;)I

    move-result v0

    .line 454
    .local v0, "index":I
    if-gez v0, :cond_b

    const/4 v1, 0x0

    return v1

    .line 455
    :cond_b
    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->removeKeyAt(I)V

    .line 456
    const/4 v1, 0x1

    return v1
.end method

.method public final bridge size()I
    .registers 2

    .line 12
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->getSize()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 161
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const/4 v1, 0x0

    .line 163
    .local v1, "i":I
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->entriesIterator$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder$EntriesItr;

    move-result-object v2

    .line 164
    .local v2, "it":Lkotlin/collections/builders/MapBuilder$EntriesItr;
    :goto_17
    invoke-virtual {v2}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 165
    if-lez v1, :cond_24

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_24
    invoke-virtual {v2, v0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->nextAppendString(Ljava/lang/StringBuilder;)V

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 169
    :cond_2a
    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sb.toString()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3
.end method

.method public final bridge values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final valuesIterator$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder$ValuesItr;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/builders/MapBuilder$ValuesItr<",
            "TK;TV;>;"
        }
    .end annotation

    .line 460
    new-instance v0, Lkotlin/collections/builders/MapBuilder$ValuesItr;

    invoke-direct {v0, p0}, Lkotlin/collections/builders/MapBuilder$ValuesItr;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    return-object v0
.end method
