.class public Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;
.super Ljava/lang/Object;
.source "CapacitorHttpUrlConnection.java"

# interfaces
.implements Lcom/getcapacitor/plugin/util/ICapacitorHttpUrlConnection;


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .registers 2
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->connection:Ljava/net/HttpURLConnection;

    .line 44
    invoke-direct {p0}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->setDefaultRequestProperties()V

    .line 45
    return-void
.end method

.method private buildDefaultAcceptLanguageProperty()Ljava/lang/String;
    .registers 8

    .line 446
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-lt v0, v1, :cond_10

    .line 447
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .local v0, "locale":Ljava/util/Locale;
    goto :goto_14

    .line 449
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 451
    .restart local v0    # "locale":Ljava/util/Locale;
    :goto_14
    const-string v1, ""

    .line 452
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 453
    .local v3, "lang":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 454
    .local v4, "country":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_46

    .line 455
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_3c

    .line 456
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object v4, v5, v6

    const/4 v2, 0x2

    aput-object v3, v5, v2

    const-string v2, "%s-%s,%s;q=0.5"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_46

    .line 458
    :cond_3c
    new-array v5, v6, [Ljava/lang/Object;

    aput-object v3, v5, v2

    const-string v2, "%s;q=0.5"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 461
    :cond_46
    :goto_46
    return-object v1
.end method

.method private setDefaultRequestProperties()V
    .registers 4

    .line 435
    invoke-direct {p0}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->buildDefaultAcceptLanguageProperty()Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "acceptLanguage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 437
    iget-object v1, p0, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->connection:Ljava/net/HttpURLConnection;

    const-string v2, "Accept-Language"

    invoke-virtual {v1, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_11
    return-void
.end method

.method private writeFormDataRequestBody(Ljava/lang/String;Lcom/getcapacitor/JSArray;)V
    .registers 19
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "entries"    # Lcom/getcapacitor/JSArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/io/DataOutputStream;

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v0

    .line 265
    .local v2, "os":Ljava/io/DataOutputStream;
    :try_start_e
    const-string v0, ";"
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_16d

    move-object/from16 v3, p1

    :try_start_12
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aget-object v0, v0, v4

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    .line 266
    .local v0, "boundary":Ljava/lang/String;
    const-string v4, "\r\n"

    .line 267
    .local v4, "lineEnd":Ljava/lang/String;
    const-string v5, "--"

    .line 269
    .local v5, "twoHyphens":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/getcapacitor/JSArray;->toList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_148

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 270
    .local v7, "e":Ljava/lang/Object;
    instance-of v8, v7, Lorg/json/JSONObject;

    if-eqz v8, :cond_144

    .line 271
    move-object v8, v7

    check-cast v8, Lorg/json/JSONObject;

    .line 272
    .local v8, "entry":Lorg/json/JSONObject;
    const-string v9, "type"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 273
    .local v9, "type":Ljava/lang/String;
    const-string v10, "key"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 274
    .local v10, "key":Ljava/lang/String;
    const-string v11, "value"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 275
    .local v11, "value":Ljava/lang/String;
    const-string v12, "string"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_56
    .catchall {:try_start_12 .. :try_end_56} :catchall_16b

    const-string v13, "\""

    const-string v14, "Content-Disposition: form-data; name=\""

    if-eqz v12, :cond_a2

    .line 276
    :try_start_5c
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 277
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 278
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/DataOutputStream;->write([B)V

    .line 279
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto/16 :goto_144

    .line 280
    :cond_a2
    const-string v12, "base64File"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_144

    .line 281
    const-string v12, "fileName"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 282
    .local v12, "fileName":Ljava/lang/String;
    const-string v15, "contentType"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 284
    .local v15, "fileContentType":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, "\"; filename=\""

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Content-Type: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Content-Transfer-Encoding: binary"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 290
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1a

    if-lt v1, v13, :cond_139

    .line 291
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_141

    .line 293
    :cond_139
    const/4 v1, 0x0

    invoke-static {v11, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 296
    :goto_141
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 299
    .end local v7    # "e":Ljava/lang/Object;
    .end local v8    # "entry":Lorg/json/JSONObject;
    .end local v9    # "type":Ljava/lang/String;
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    .end local v12    # "fileName":Ljava/lang/String;
    .end local v15    # "fileContentType":Ljava/lang/String;
    :cond_144
    :goto_144
    move-object/from16 v1, p0

    goto/16 :goto_2d

    .line 301
    :cond_148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_167
    .catchall {:try_start_5c .. :try_end_167} :catchall_16b

    .line 303
    .end local v0    # "boundary":Ljava/lang/String;
    .end local v4    # "lineEnd":Ljava/lang/String;
    .end local v5    # "twoHyphens":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 304
    .end local v2    # "os":Ljava/io/DataOutputStream;
    return-void

    .line 264
    .restart local v2    # "os":Ljava/io/DataOutputStream;
    :catchall_16b
    move-exception v0

    goto :goto_170

    :catchall_16d
    move-exception v0

    move-object/from16 v3, p1

    :goto_170
    move-object v1, v0

    :try_start_171
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_174
    .catchall {:try_start_171 .. :try_end_174} :catchall_175

    goto :goto_17a

    :catchall_175
    move-exception v0

    move-object v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_17a
    throw v1
.end method

.method private writeObjectRequestBody(Lcom/getcapacitor/JSObject;)V
    .registers 8
    .param p1, "object"    # Lcom/getcapacitor/JSObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 247
    .local v0, "os":Ljava/io/DataOutputStream;
    :try_start_b
    invoke-virtual {p1}, Lcom/getcapacitor/JSObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 248
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 249
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 250
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/getcapacitor/JSObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 251
    .local v3, "d":Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 252
    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 255
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 256
    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 258
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "d":Ljava/lang/Object;
    :cond_3f
    goto :goto_f

    .line 259
    :cond_40
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_43
    .catchall {:try_start_b .. :try_end_43} :catchall_47

    .line 260
    .end local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 261
    .end local v0    # "os":Ljava/io/DataOutputStream;
    return-void

    .line 246
    .restart local v0    # "os":Ljava/io/DataOutputStream;
    :catchall_47
    move-exception v1

    :try_start_48
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    goto :goto_50

    :catchall_4c
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_50
    throw v1
.end method

.method private writeRequestBody(Ljava/lang/String;)V
    .registers 5
    .param p1, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 240
    .local v0, "os":Ljava/io/DataOutputStream;
    :try_start_b
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 241
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_1b

    .line 242
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 243
    .end local v0    # "os":Ljava/io/DataOutputStream;
    return-void

    .line 239
    .restart local v0    # "os":Ljava/io/DataOutputStream;
    :catchall_1b
    move-exception v1

    :try_start_1c
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_24
    throw v1
.end method


# virtual methods
.method public connect()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 329
    return-void
.end method

.method public disconnect()V
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 57
    return-void
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .registers 2

    .line 379
    iget-object v0, p0, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 395
    iget-object v0, p0, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHttpConnection()Ljava/net/HttpURLConnection;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public getURL()Ljava/net/URL;
    .registers 2

    .line 356
    iget-object v0, p0, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public setAllowUserInteraction(Z)V
    .registers 3
    .param p1, "isAllowedInteraction"    # Z

    .line 67
    iget-object v0, p0, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 68
    return-void
.end method

.method public setConnectTimeout(I)V
    .registers 4
    .param p1, "timeout"    # I

    .line 115
    if-ltz p1, :cond_8

    .line 118
    iget-object v0, p0, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 119
    return-void

    .line 116
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout can not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDisableRedirects(Z)V
    .registers 4
    .param p1, "disableRedirects"    # Z

    .line 145
    iget-object v0, p0, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->connection:Ljava/net/HttpURLConnection;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 146
    return-void
.end method

.method public setDoOutput(Z)V
    .registers 3
    .param p1, "shouldDoOutput"    # Z

    .line 173
    iget-object v0, p0, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 174
    return-void
.end method

.method public setReadTimeout(I)V
    .registers 4
    .param p1, "timeout"    # I

    .line 134
    if-ltz p1, :cond_8

    .line 137
    iget-object v0, p0, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 138
    return-void

    .line 135
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout can not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRequestBody(Lcom/getcapacitor/PluginCall;Lcom/getcapacitor/JSValue;)V
    .registers 4
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .param p2, "body"    # Lcom/getcapacitor/JSValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->setRequestBody(Lcom/getcapacitor/PluginCall;Lcom/getcapacitor/JSValue;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public setRequestBody(Lcom/getcapacitor/PluginCall;Lcom/getcapacitor/JSValue;Ljava/lang/String;)V
    .registers 9
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .param p2, "body"    # Lcom/getcapacitor/JSValue;
    .param p3, "bodyType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->connection:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "contentType":Ljava/lang/String;
    const-string v1, ""

    .line 196
    .local v1, "dataString":Ljava/lang/String;
    if-eqz v0, :cond_b1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    goto/16 :goto_b1

    .line 198
    :cond_14
    const-string v2, "application/json"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 199
    const/4 v2, 0x0

    .line 200
    .local v2, "jsArray":Lcom/getcapacitor/JSArray;
    const-string v3, "data"

    if-eqz p2, :cond_26

    .line 201
    invoke-virtual {p2}, Lcom/getcapacitor/JSValue;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    .line 203
    :cond_26
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lcom/getcapacitor/PluginCall;->getArray(Ljava/lang/String;Lcom/getcapacitor/JSArray;)Lcom/getcapacitor/JSArray;

    move-result-object v2

    .line 205
    :goto_2b
    if-eqz v2, :cond_32

    .line 206
    invoke-virtual {v2}, Lcom/getcapacitor/JSArray;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_38

    .line 207
    :cond_32
    if-nez p2, :cond_38

    .line 208
    invoke-virtual {p1, v3}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    :cond_38
    :goto_38
    if-eqz v1, :cond_3c

    move-object v3, v1

    goto :goto_3e

    :cond_3c
    const-string v3, ""

    :goto_3e
    invoke-direct {p0, v3}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->writeRequestBody(Ljava/lang/String;)V

    .line 211
    .end local v2    # "jsArray":Lcom/getcapacitor/JSArray;
    goto/16 :goto_b0

    :cond_43
    if-eqz p3, :cond_7e

    const-string v2, "file"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 212
    new-instance v2, Ljava/io/DataOutputStream;

    iget-object v3, p0, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 213
    .local v2, "os":Ljava/io/DataOutputStream;
    :try_start_58
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_6d

    .line 214
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/getcapacitor/JSValue;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 216
    :cond_6d
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_70
    .catchall {:try_start_58 .. :try_end_70} :catchall_74

    .line 217
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 212
    .end local v2    # "os":Ljava/io/DataOutputStream;
    goto :goto_b0

    .restart local v2    # "os":Ljava/io/DataOutputStream;
    :catchall_74
    move-exception v3

    :try_start_75
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_79

    goto :goto_7d

    :catchall_79
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7d
    throw v3

    .line 218
    .end local v2    # "os":Ljava/io/DataOutputStream;
    :cond_7e
    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 220
    :try_start_86
    invoke-virtual {p2}, Lcom/getcapacitor/JSValue;->toJSObject()Lcom/getcapacitor/JSObject;

    move-result-object v2

    .line 221
    .local v2, "obj":Lcom/getcapacitor/JSObject;
    invoke-direct {p0, v2}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->writeObjectRequestBody(Lcom/getcapacitor/JSObject;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8d} :catch_8e

    .end local v2    # "obj":Lcom/getcapacitor/JSObject;
    goto :goto_96

    .line 222
    :catch_8e
    move-exception v2

    .line 224
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p2}, Lcom/getcapacitor/JSValue;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->writeRequestBody(Ljava/lang/String;)V

    .line 225
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_96
    goto :goto_b0

    .line 226
    :cond_97
    if-eqz p3, :cond_a9

    const-string v2, "formData"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 227
    invoke-virtual {p2}, Lcom/getcapacitor/JSValue;->toJSArray()Lcom/getcapacitor/JSArray;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->writeFormDataRequestBody(Ljava/lang/String;Lcom/getcapacitor/JSArray;)V

    goto :goto_b0

    .line 229
    :cond_a9
    invoke-virtual {p2}, Lcom/getcapacitor/JSValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->writeRequestBody(Ljava/lang/String;)V

    .line 231
    :goto_b0
    return-void

    .line 196
    :cond_b1
    :goto_b1
    return-void
.end method

.method public setRequestHeaders(Lcom/getcapacitor/JSObject;)V
    .registers 6
    .param p1, "headers"    # Lcom/getcapacitor/JSObject;

    .line 153
    invoke-virtual {p1}, Lcom/getcapacitor/JSObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 154
    .local v0, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 155
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 156
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/getcapacitor/JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "value":Ljava/lang/String;
    iget-object v3, p0, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    goto :goto_4

    .line 159
    :cond_1a
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .registers 3
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public setSSLSocketFactory(Lcom/getcapacitor/Bridge;)V
    .registers 8
    .param p1, "bridge"    # Lcom/getcapacitor/Bridge;

    .line 467
    :try_start_0
    const-string v0, "io.ionic.sslpinning.SSLPinning"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 468
    .local v0, "sslPinningImpl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getSSLSocketFactory"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/getcapacitor/Bridge;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 469
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v3, v5, [Ljava/lang/Class;

    .line 470
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    .line 469
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSocketFactory;

    .line 473
    .local v2, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    if-eqz v2, :cond_35

    .line 474
    iget-object v3, p0, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->connection:Ljava/net/HttpURLConnection;

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    goto :goto_35

    .line 476
    .end local v0    # "sslPinningImpl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :catch_34
    move-exception v0

    :cond_35
    :goto_35
    nop

    .line 477
    return-void
.end method
