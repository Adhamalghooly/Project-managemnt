.class Lcom/adhamalghouli/projectmanagement/MainActivity$DownloadBridge;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adhamalghouli/projectmanagement/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadBridge"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$8ID4Z9CWvN5lCGpxfnGa8SJu1Oo(Lcom/adhamalghouli/projectmanagement/MainActivity$DownloadBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/adhamalghouli/projectmanagement/MainActivity$DownloadBridge;->lambda$saveFile$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/adhamalghouli/projectmanagement/MainActivity$DownloadBridge;->context:Landroid/content/Context;

    .line 144
    return-void
.end method

.method private synthetic lambda$saveFile$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "base64Data"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .line 155
    const-string v0, "is_pending"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_4
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 157
    .local v3, "bytes":[B
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_ce

    const/16 v5, 0x1d

    const-string v6, "\u2705 \u062a\u0645 \u062d\u0641\u0638 \u0627\u0644\u0645\u0644\u0641 \u0641\u064a \u0627\u0644\u062a\u0646\u0632\u064a\u0644\u0627\u062a: "

    if-lt v4, v5, :cond_8a

    .line 158
    :try_start_10
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 159
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "_display_name"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v5, "mime_type"

    .line 161
    if-eqz p3, :cond_20

    move-object v7, p3

    goto :goto_22

    .line 162
    :cond_20
    const-string v7, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    .line 160
    :goto_22
    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 165
    iget-object v5, p0, Lcom/adhamalghouli/projectmanagement/MainActivity$DownloadBridge;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Landroid/provider/MediaStore$Downloads;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v7, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 168
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_89

    .line 169
    iget-object v7, p0, Lcom/adhamalghouli/projectmanagement/MainActivity$DownloadBridge;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v7
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_44} :catch_ce

    .line 170
    .local v7, "os":Ljava/io/OutputStream;
    if-eqz v7, :cond_56

    :try_start_46
    invoke-virtual {v7, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_56

    .line 169
    :catchall_4a
    move-exception v0

    if-eqz v7, :cond_55

    :try_start_4d
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception v1

    :try_start_52
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "base64Data":Ljava/lang/String;
    .end local p2    # "filename":Ljava/lang/String;
    .end local p3    # "mimeType":Ljava/lang/String;
    :cond_55
    :goto_55
    throw v0

    .line 171
    .restart local p1    # "base64Data":Ljava/lang/String;
    .restart local p2    # "filename":Ljava/lang/String;
    .restart local p3    # "mimeType":Ljava/lang/String;
    :cond_56
    :goto_56
    if-eqz v7, :cond_5b

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 172
    .end local v7    # "os":Ljava/io/OutputStream;
    :cond_5b
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 173
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    iget-object v0, p0, Lcom/adhamalghouli/projectmanagement/MainActivity$DownloadBridge;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v4, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/adhamalghouli/projectmanagement/MainActivity$DownloadBridge;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 179
    .end local v4    # "values":Landroid/content/ContentValues;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_89
    goto :goto_c3

    .line 180
    :cond_8a
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 182
    .local v0, "downloadsDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_99

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 183
    :cond_99
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 184
    .local v1, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_a3} :catch_ce

    .line 185
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_a3
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_c4

    .line 186
    :try_start_a6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 187
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    iget-object v4, p0, Lcom/adhamalghouli/projectmanagement/MainActivity$DownloadBridge;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 189
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_c3} :catch_ce

    .line 196
    .end local v0    # "downloadsDir":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "bytes":[B
    :goto_c3
    goto :goto_f2

    .line 184
    .restart local v0    # "downloadsDir":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "bytes":[B
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_c4
    move-exception v5

    :try_start_c5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c8
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_c9

    goto :goto_cd

    :catchall_c9
    move-exception v6

    :try_start_ca
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "base64Data":Ljava/lang/String;
    .end local p2    # "filename":Ljava/lang/String;
    .end local p3    # "mimeType":Ljava/lang/String;
    :goto_cd
    throw v5
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_ce} :catch_ce

    .line 191
    .end local v0    # "downloadsDir":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "bytes":[B
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local p1    # "base64Data":Ljava/lang/String;
    .restart local p2    # "filename":Ljava/lang/String;
    .restart local p3    # "mimeType":Ljava/lang/String;
    :catch_ce
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    iget-object v1, p0, Lcom/adhamalghouli/projectmanagement/MainActivity$DownloadBridge;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u274c \u062e\u0637\u0623 \u0641\u064a \u062d\u0641\u0638 \u0627\u0644\u0645\u0644\u0641: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 194
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_f2
    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public saveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "base64Data"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 153
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/adhamalghouli/projectmanagement/MainActivity$DownloadBridge$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/adhamalghouli/projectmanagement/MainActivity$DownloadBridge$$ExternalSyntheticLambda0;-><init>(Lcom/adhamalghouli/projectmanagement/MainActivity$DownloadBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    return-void
.end method
