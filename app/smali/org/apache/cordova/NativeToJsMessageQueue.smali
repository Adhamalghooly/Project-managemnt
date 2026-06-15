.class public Lorg/apache/cordova/NativeToJsMessageQueue;
.super Ljava/lang/Object;
.source "NativeToJsMessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;,
        Lorg/apache/cordova/NativeToJsMessageQueue$EvalBridgeMode;,
        Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;,
        Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;,
        Lorg/apache/cordova/NativeToJsMessageQueue$NoOpBridgeMode;,
        Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;
    }
.end annotation


# static fields
.field private static COMBINED_RESPONSE_CUTOFF:I = 0x0

.field static final DISABLE_EXEC_CHAINING:Z = false

.field private static final FORCE_ENCODE_USING_EVAL:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "JsMessageQueue"


# instance fields
.field private activeBridgeMode:Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;

.field private bridgeModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;",
            ">;"
        }
    .end annotation
.end field

.field private paused:Z

.field private final queue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    const/high16 v0, 0x1000000

    sput v0, Lorg/apache/cordova/NativeToJsMessageQueue;->COMBINED_RESPONSE_CUTOFF:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->queue:Ljava/util/LinkedList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->bridgeModes:Ljava/util/ArrayList;

    return-void
.end method

.method private calculatePackedMessageLength(Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;)I
    .registers 5
    .param p1, "message"    # Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 114
    invoke-virtual {p1}, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->calculateEncodedLength()I

    move-result v0

    .line 115
    .local v0, "messageLen":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "messageLenStr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    return v2
.end method

.method private enqueueMessage(Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;)V
    .registers 4
    .param p1, "message"    # Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 252
    monitor-enter p0

    .line 253
    :try_start_1
    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->activeBridgeMode:Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;

    if-nez v0, :cond_e

    .line 254
    const-string v0, "JsMessageQueue"

    const-string v1, "Dropping Native->JS message due to disabled bridge"

    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    monitor-exit p0

    return-void

    .line 257
    :cond_e
    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 258
    iget-boolean v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->paused:Z

    if-nez v0, :cond_1c

    .line 259
    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->activeBridgeMode:Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;

    invoke-virtual {v0, p0}, Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;->onNativeToJsMessageAvailable(Lorg/apache/cordova/NativeToJsMessageQueue;)V

    .line 261
    :cond_1c
    monitor-exit p0

    .line 262
    return-void

    .line 261
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method private packMessage(Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;Ljava/lang/StringBuilder;)V
    .registers 6
    .param p1, "message"    # Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "sb"
        }
    .end annotation

    .line 120
    invoke-virtual {p1}, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->calculateEncodedLength()I

    move-result v0

    .line 121
    .local v0, "len":I
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 122
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {p1, p2}, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->encodeAsMessage(Ljava/lang/StringBuilder;)V

    .line 124
    return-void
.end method


# virtual methods
.method public addBridgeMode(Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;)V
    .registers 3
    .param p1, "bridgeMode"    # Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bridgeMode"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->bridgeModes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public addJavaScript(Ljava/lang/String;)V
    .registers 3
    .param p1, "statement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statement"
        }
    .end annotation

    .line 223
    new-instance v0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;

    invoke-direct {v0, p1}, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/cordova/NativeToJsMessageQueue;->enqueueMessage(Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;)V

    .line 224
    return-void
.end method

.method public addPluginResult(Lorg/apache/cordova/PluginResult;Ljava/lang/String;)V
    .registers 6
    .param p1, "result"    # Lorg/apache/cordova/PluginResult;
    .param p2, "callbackId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "callbackId"
        }
    .end annotation

    .line 230
    if-nez p2, :cond_f

    .line 231
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "JsMessageQueue"

    const-string v2, "Got plugin result with no callbackId"

    invoke-static {v1, v2, v0}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    return-void

    .line 236
    :cond_f
    invoke-virtual {p1}, Lorg/apache/cordova/PluginResult;->getStatus()I

    move-result v0

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {v1}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 237
    .local v0, "noResult":Z
    :goto_1e
    invoke-virtual {p1}, Lorg/apache/cordova/PluginResult;->getKeepCallback()Z

    move-result v1

    .line 238
    .local v1, "keepCallback":Z
    if-eqz v0, :cond_27

    if-eqz v1, :cond_27

    .line 239
    return-void

    .line 241
    :cond_27
    new-instance v2, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;

    invoke-direct {v2, p1, p2}, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;-><init>(Lorg/apache/cordova/PluginResult;Ljava/lang/String;)V

    .line 248
    .local v2, "message":Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;
    invoke-direct {p0, v2}, Lorg/apache/cordova/NativeToJsMessageQueue;->enqueueMessage(Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;)V

    .line 249
    return-void
.end method

.method public isBridgeEnabled()Z
    .registers 2

    .line 73
    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->activeBridgeMode:Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 77
    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public popAndEncode(Z)Ljava/lang/String;
    .registers 9
    .param p1, "fromOnlineEvent"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromOnlineEvent"
        }
    .end annotation

    .line 135
    monitor-enter p0

    .line 136
    :try_start_1
    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->activeBridgeMode:Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 137
    monitor-exit p0

    return-object v1

    .line 139
    :cond_8
    invoke-virtual {v0, p0, p1}, Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;->notifyOfFlush(Lorg/apache/cordova/NativeToJsMessageQueue;Z)V

    .line 140
    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 141
    monitor-exit p0

    return-object v1

    .line 143
    :cond_15
    const/4 v0, 0x0

    .line 144
    .local v0, "totalPayloadLen":I
    const/4 v1, 0x0

    .line 145
    .local v1, "numMessagesToSend":I
    iget-object v2, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;

    .line 146
    .local v3, "message":Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;
    invoke-direct {p0, v3}, Lorg/apache/cordova/NativeToJsMessageQueue;->calculatePackedMessageLength(Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;)I

    move-result v4

    .line 147
    .local v4, "messageSize":I
    if-lez v1, :cond_38

    sget v5, Lorg/apache/cordova/NativeToJsMessageQueue;->COMBINED_RESPONSE_CUTOFF:I

    if-lez v5, :cond_38

    add-int v6, v0, v4

    if-le v6, v5, :cond_38

    .line 151
    goto :goto_3d

    .line 153
    :cond_38
    add-int/2addr v0, v4

    .line 154
    nop

    .end local v3    # "message":Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;
    .end local v4    # "messageSize":I
    add-int/lit8 v1, v1, 0x1

    .line 155
    goto :goto_1d

    .line 157
    :cond_3d
    :goto_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 158
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_43
    if-ge v3, v1, :cond_53

    .line 159
    iget-object v4, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;

    .line 160
    .local v4, "message":Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;
    invoke-direct {p0, v4, v2}, Lorg/apache/cordova/NativeToJsMessageQueue;->packMessage(Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;Ljava/lang/StringBuilder;)V

    .line 158
    .end local v4    # "message":Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    .line 163
    .end local v3    # "i":I
    :cond_53
    iget-object v3, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_60

    .line 165
    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    :cond_60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, "ret":Ljava/lang/String;
    monitor-exit p0

    return-object v3

    .line 169
    .end local v0    # "totalPayloadLen":I
    .end local v1    # "numMessagesToSend":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "ret":Ljava/lang/String;
    :catchall_66
    move-exception v0

    monitor-exit p0
    :try_end_68
    .catchall {:try_start_1 .. :try_end_68} :catchall_66

    throw v0
.end method

.method public popAndEncodeAsJs()Ljava/lang/String;
    .registers 11

    .line 176
    monitor-enter p0

    .line 177
    :try_start_1
    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 178
    .local v0, "length":I
    if-nez v0, :cond_c

    .line 179
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 181
    :cond_c
    const/4 v1, 0x0

    .line 182
    .local v1, "totalPayloadLen":I
    const/4 v2, 0x0

    .line 183
    .local v2, "numMessagesToSend":I
    iget-object v3, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;

    .line 184
    .local v4, "message":Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;
    invoke-virtual {v4}, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->calculateEncodedLength()I

    move-result v5

    add-int/lit8 v5, v5, 0x32

    .line 185
    .local v5, "messageSize":I
    if-lez v2, :cond_31

    sget v6, Lorg/apache/cordova/NativeToJsMessageQueue;->COMBINED_RESPONSE_CUTOFF:I

    if-lez v6, :cond_31

    add-int v7, v1, v5

    if-le v7, v6, :cond_31

    .line 189
    goto :goto_36

    .line 191
    :cond_31
    add-int/2addr v1, v5

    .line 192
    nop

    .end local v4    # "message":Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;
    .end local v5    # "messageSize":I
    add-int/lit8 v2, v2, 0x1

    .line 193
    goto :goto_14

    .line 194
    :cond_36
    :goto_36
    iget-object v3, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_42

    const/4 v3, 0x1

    goto :goto_43

    :cond_42
    const/4 v3, 0x0

    .line 195
    .local v3, "willSendAllMessages":Z
    :goto_43
    new-instance v6, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_49

    const/4 v7, 0x0

    goto :goto_4b

    :cond_49
    const/16 v7, 0x64

    :goto_4b
    add-int/2addr v7, v1

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 198
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_50
    if-ge v7, v2, :cond_74

    .line 199
    iget-object v8, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;

    .line 200
    .local v8, "message":Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;
    if-eqz v3, :cond_64

    add-int/lit8 v9, v7, 0x1

    if-ne v9, v2, :cond_64

    .line 201
    invoke-virtual {v8, v6}, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->encodeAsJsMessage(Ljava/lang/StringBuilder;)V

    goto :goto_71

    .line 203
    :cond_64
    const-string v9, "try{"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v8, v6}, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->encodeAsJsMessage(Ljava/lang/StringBuilder;)V

    .line 205
    const-string v9, "}finally{"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .end local v8    # "message":Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;
    :goto_71
    add-int/lit8 v7, v7, 0x1

    goto :goto_50

    .line 208
    .end local v7    # "i":I
    :cond_74
    if-nez v3, :cond_7b

    .line 209
    const-string v7, "window.setTimeout(function(){cordova.require(\'cordova/plugin/android/polling\').pollOnce();},0);"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_7b
    if-eqz v3, :cond_7e

    const/4 v4, 0x1

    .local v4, "i":I
    :cond_7e
    :goto_7e
    if-ge v4, v2, :cond_88

    .line 212
    const/16 v5, 0x7d

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    add-int/lit8 v4, v4, 0x1

    goto :goto_7e

    .line 214
    .end local v4    # "i":I
    :cond_88
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, "ret":Ljava/lang/String;
    monitor-exit p0

    return-object v4

    .line 216
    .end local v0    # "length":I
    .end local v1    # "totalPayloadLen":I
    .end local v2    # "numMessagesToSend":I
    .end local v3    # "willSendAllMessages":Z
    .end local v4    # "ret":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catchall_8e
    move-exception v0

    monitor-exit p0
    :try_end_90
    .catchall {:try_start_1 .. :try_end_90} :catchall_8e

    throw v0
.end method

.method public reset()V
    .registers 2

    .line 107
    monitor-enter p0

    .line 108
    :try_start_1
    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 109
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/cordova/NativeToJsMessageQueue;->setBridgeMode(I)V

    .line 110
    monitor-exit p0

    .line 111
    return-void

    .line 110
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public setBridgeMode(I)V
    .registers 6
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 84
    const/4 v0, -0x1

    if-lt p1, v0, :cond_5d

    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->bridgeModes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    goto :goto_5d

    .line 87
    :cond_c
    if-gez p1, :cond_10

    const/4 v0, 0x0

    goto :goto_18

    :cond_10
    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->bridgeModes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;

    .line 88
    .local v0, "newMode":Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;
    :goto_18
    iget-object v1, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->activeBridgeMode:Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;

    if-eq v0, v1, :cond_75

    .line 89
    const-string v1, "JsMessageQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set native->JS mode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_2e

    const-string v3, "null"

    goto :goto_36

    :cond_2e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    :goto_36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    monitor-enter p0

    .line 91
    :try_start_42
    iput-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->activeBridgeMode:Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;

    .line 92
    if-eqz v0, :cond_58

    .line 93
    invoke-virtual {v0}, Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;->reset()V

    .line 94
    iget-boolean v1, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->paused:Z

    if-nez v1, :cond_58

    iget-object v1, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_58

    .line 95
    invoke-virtual {v0, p0}, Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;->onNativeToJsMessageAvailable(Lorg/apache/cordova/NativeToJsMessageQueue;)V

    .line 98
    :cond_58
    monitor-exit p0

    goto :goto_75

    :catchall_5a
    move-exception v1

    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_42 .. :try_end_5c} :catchall_5a

    throw v1

    .line 85
    .end local v0    # "newMode":Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;
    :cond_5d
    :goto_5d
    const-string v0, "JsMessageQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid NativeToJsBridgeMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_75
    :goto_75
    return-void
.end method

.method public setPaused(Z)V
    .registers 5
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 265
    iget-boolean v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->paused:Z

    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    .line 268
    const-string v0, "JsMessageQueue"

    const-string v1, "nested call to setPaused detected."

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    :cond_12
    iput-boolean p1, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->paused:Z

    .line 271
    if-nez p1, :cond_2b

    .line 272
    monitor-enter p0

    .line 273
    :try_start_17
    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->activeBridgeMode:Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;

    if-eqz v0, :cond_26

    .line 274
    invoke-virtual {v0, p0}, Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;->onNativeToJsMessageAvailable(Lorg/apache/cordova/NativeToJsMessageQueue;)V

    .line 276
    :cond_26
    monitor-exit p0

    goto :goto_2b

    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_28

    throw v0

    .line 278
    :cond_2b
    :goto_2b
    return-void
.end method
