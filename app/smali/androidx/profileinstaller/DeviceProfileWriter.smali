.class public Landroidx/profileinstaller/DeviceProfileWriter;
.super Ljava/lang/Object;
.source "DeviceProfileWriter.java"


# instance fields
.field private final mApkName:Ljava/lang/String;

.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private final mCurProfile:Ljava/io/File;

.field private final mDesiredVersion:[B

.field private mDeviceSupportsAotProfile:Z

.field private final mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mProfile:[Landroidx/profileinstaller/DexProfileData;

.field private final mProfileMetaSourceLocation:Ljava/lang/String;

.field private final mProfileSourceLocation:Ljava/lang/String;

.field private mTranscodedProfile:[B


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 9
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "diagnosticsCallback"    # Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;
    .param p4, "apkName"    # Ljava/lang/String;
    .param p5, "profileSourceLocation"    # Ljava/lang/String;
    .param p6, "profileMetaSourceLocation"    # Ljava/lang/String;
    .param p7, "curProfile"    # Ljava/io/File;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    .line 103
    iput-object p1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mAssetManager:Landroid/content/res/AssetManager;

    .line 104
    iput-object p2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mExecutor:Ljava/util/concurrent/Executor;

    .line 105
    iput-object p3, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    .line 106
    iput-object p4, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/String;

    .line 107
    iput-object p5, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfileSourceLocation:Ljava/lang/String;

    .line 108
    iput-object p6, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfileMetaSourceLocation:Ljava/lang/String;

    .line 109
    iput-object p7, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/io/File;

    .line 110
    invoke-static {}, Landroidx/profileinstaller/DeviceProfileWriter;->desiredVersion()[B

    move-result-object v0

    iput-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDesiredVersion:[B

    .line 111
    return-void
.end method

.method private addMetadata([Landroidx/profileinstaller/DexProfileData;[B)Landroidx/profileinstaller/DeviceProfileWriter;
    .registers 7
    .param p1, "profile"    # [Landroidx/profileinstaller/DexProfileData;
    .param p2, "desiredVersion"    # [B

    .line 253
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfileMetaSourceLocation:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Landroidx/profileinstaller/DeviceProfileWriter;->openStreamFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_9} :catch_43
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_3b
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_9} :catch_30

    .line 254
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_2a

    .line 255
    :try_start_b
    sget-object v2, Landroidx/profileinstaller/ProfileTranscoder;->MAGIC_PROFM:[B

    invoke-static {v1, v2}, Landroidx/profileinstaller/ProfileTranscoder;->readHeader(Ljava/io/InputStream;[B)[B

    move-result-object v2

    .line 256
    .local v2, "metaVersion":[B
    invoke-static {v1, v2, p2, p1}, Landroidx/profileinstaller/ProfileTranscoder;->readMeta(Ljava/io/InputStream;[B[B[Landroidx/profileinstaller/DexProfileData;)[Landroidx/profileinstaller/DexProfileData;

    move-result-object v3

    iput-object v3, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:[Landroidx/profileinstaller/DexProfileData;
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_1e

    .line 262
    nop

    .line 264
    if-eqz v1, :cond_1d

    :try_start_1a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1d} :catch_43
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_3b
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_1d} :catch_30

    .line 262
    :cond_1d
    return-object p0

    .line 253
    .end local v2    # "metaVersion":[B
    :catchall_1e
    move-exception v2

    if-eqz v1, :cond_29

    :try_start_21
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_29

    :catchall_25
    move-exception v3

    :try_start_26
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "profile":[Landroidx/profileinstaller/DexProfileData;
    .end local p2    # "desiredVersion":[B
    :cond_29
    :goto_29
    throw v2

    .line 264
    .restart local p1    # "profile":[Landroidx/profileinstaller/DexProfileData;
    .restart local p2    # "desiredVersion":[B
    :cond_2a
    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_2f} :catch_43
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2f} :catch_3b
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_2f} :catch_30

    goto :goto_4b

    .line 269
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_30
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/IllegalStateException;
    iput-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:[Landroidx/profileinstaller/DexProfileData;

    .line 271
    iget-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    const/16 v3, 0x8

    invoke-interface {v2, v3, v1}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    goto :goto_4c

    .line 267
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_3b
    move-exception v1

    .line 268
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    const/4 v3, 0x7

    invoke-interface {v2, v3, v1}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_4b

    .line 264
    :catch_43
    move-exception v1

    .line 265
    .local v1, "e":Ljava/io/FileNotFoundException;
    iget-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    const/16 v3, 0x9

    invoke-interface {v2, v3, v1}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    .line 272
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_4b
    :goto_4b
    nop

    .line 273
    :goto_4c
    return-object v0
.end method

.method private assertDeviceAllowsProfileInstallerAotWritesCalled()V
    .registers 3

    .line 136
    iget-boolean v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    if-eqz v0, :cond_5

    .line 140
    return-void

    .line 137
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This device doesn\'t support aot. Did you call deviceSupportsAotProfile()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static desiredVersion()[B
    .registers 3

    .line 363
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-lt v0, v1, :cond_23

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-le v0, v1, :cond_e

    goto :goto_23

    .line 368
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v0, :pswitch_data_24

    .line 389
    return-object v2

    .line 386
    :pswitch_14
    sget-object v0, Landroidx/profileinstaller/ProfileVersion;->V015_S:[B

    return-object v0

    .line 381
    :pswitch_17
    sget-object v0, Landroidx/profileinstaller/ProfileVersion;->V010_P:[B

    return-object v0

    .line 376
    :pswitch_1a
    sget-object v0, Landroidx/profileinstaller/ProfileVersion;->V009_O_MR1:[B

    return-object v0

    .line 374
    :pswitch_1d
    sget-object v0, Landroidx/profileinstaller/ProfileVersion;->V005_O:[B

    return-object v0

    .line 371
    :pswitch_20
    sget-object v0, Landroidx/profileinstaller/ProfileVersion;->V001_N:[B

    return-object v0

    .line 365
    :cond_23
    :goto_23
    return-object v2

    :pswitch_data_24
    .packed-switch 0x18
        :pswitch_20
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method private getProfileInputStream(Landroid/content/res/AssetManager;)Ljava/io/InputStream;
    .registers 6
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;

    .line 208
    const/4 v0, 0x0

    .line 210
    .local v0, "profileStream":Ljava/io/InputStream;
    :try_start_1
    iget-object v1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfileSourceLocation:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Landroidx/profileinstaller/DeviceProfileWriter;->openStreamFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_7} :catch_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_9

    move-object v0, v1

    .line 215
    :goto_8
    goto :goto_19

    .line 213
    :catch_9
    move-exception v1

    .line 214
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    const/4 v3, 0x7

    invoke-interface {v2, v3, v1}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    goto :goto_19

    .line 211
    .end local v1    # "e":Ljava/io/IOException;
    :catch_11
    move-exception v1

    .line 212
    .local v1, "e":Ljava/io/FileNotFoundException;
    iget-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    const/4 v3, 0x6

    invoke-interface {v2, v3, v1}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    goto :goto_8

    .line 216
    :goto_19
    return-object v0
.end method

.method private openStreamFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 9
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    const/4 v0, 0x0

    .line 190
    .local v0, "profileStream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 191
    .local v1, "descriptor":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_9} :catch_b

    move-object v0, v2

    .line 198
    .end local v1    # "descriptor":Landroid/content/res/AssetFileDescriptor;
    goto :goto_21

    .line 192
    :catch_b
    move-exception v1

    .line 193
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "message":Ljava/lang/String;
    if-eqz v2, :cond_21

    const-string v3, "compressed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 195
    iget-object v3, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onDiagnosticReceived(ILjava/lang/Object;)V

    .line 199
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "message":Ljava/lang/String;
    :cond_21
    :goto_21
    return-object v0
.end method

.method private readProfileInternal(Ljava/io/InputStream;)[Landroidx/profileinstaller/DexProfileData;
    .registers 7
    .param p1, "profileStream"    # Ljava/io/InputStream;

    .line 226
    const/4 v0, 0x0

    .line 228
    .local v0, "profile":[Landroidx/profileinstaller/DexProfileData;
    const/4 v1, 0x7

    :try_start_2
    sget-object v2, Landroidx/profileinstaller/ProfileTranscoder;->MAGIC_PROF:[B

    invoke-static {p1, v2}, Landroidx/profileinstaller/ProfileTranscoder;->readHeader(Ljava/io/InputStream;[B)[B

    move-result-object v2

    .line 229
    .local v2, "baselineVersion":[B
    iget-object v3, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Landroidx/profileinstaller/ProfileTranscoder;->readProfile(Ljava/io/InputStream;[BLjava/lang/String;)[Landroidx/profileinstaller/DexProfileData;

    move-result-object v3
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_28
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_e} :catch_1c
    .catchall {:try_start_2 .. :try_end_e} :catchall_1a

    move-object v0, v3

    .line 236
    .end local v2    # "baselineVersion":[B
    :try_start_f
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_13

    .line 239
    :goto_12
    goto :goto_32

    .line 237
    :catch_13
    move-exception v2

    .line 238
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    invoke-interface {v3, v1, v2}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    .line 240
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_32

    .line 235
    :catchall_1a
    move-exception v2

    goto :goto_33

    .line 232
    :catch_1c
    move-exception v2

    .line 233
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_1d
    iget-object v3, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v2}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_1a

    .line 236
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :try_start_24
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_13

    goto :goto_12

    .line 230
    :catch_28
    move-exception v2

    .line 231
    .local v2, "e":Ljava/io/IOException;
    :try_start_29
    iget-object v3, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    invoke-interface {v3, v1, v2}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_1a

    .line 236
    .end local v2    # "e":Ljava/io/IOException;
    :try_start_2e
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_13

    goto :goto_12

    .line 241
    :goto_32
    return-object v0

    .line 236
    :goto_33
    :try_start_33
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    .line 239
    goto :goto_3d

    .line 237
    :catch_37
    move-exception v3

    .line 238
    .local v3, "e":Ljava/io/IOException;
    iget-object v4, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    invoke-interface {v4, v1, v3}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    .line 240
    .end local v3    # "e":Ljava/io/IOException;
    :goto_3d
    throw v2
.end method

.method private static requiresMetadata()Z
    .registers 3

    .line 395
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-lt v0, v1, :cond_18

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-le v0, v1, :cond_e

    goto :goto_18

    .line 400
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_1a

    .line 424
    return v2

    .line 421
    :pswitch_15
    return v1

    .line 415
    :pswitch_16
    return v2

    .line 406
    :pswitch_17
    return v1

    .line 397
    :cond_18
    :goto_18
    return v2

    nop

    :pswitch_data_1a
    .packed-switch 0x18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method private result(ILjava/lang/Object;)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/profileinstaller/DeviceProfileWriter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroidx/profileinstaller/DeviceProfileWriter$$ExternalSyntheticLambda0;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method


# virtual methods
.method public deviceAllowsProfileInstallerAotWrites()Z
    .registers 4

    .line 118
    iget-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDesiredVersion:[B

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0}, Landroidx/profileinstaller/DeviceProfileWriter;->result(ILjava/lang/Object;)V

    .line 120
    return v1

    .line 123
    :cond_10
    iget-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 127
    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Landroidx/profileinstaller/DeviceProfileWriter;->result(ILjava/lang/Object;)V

    .line 128
    return v1

    .line 131
    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    .line 132
    return v0
.end method

.method synthetic lambda$result$0$androidx-profileinstaller-DeviceProfileWriter(ILjava/lang/Object;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    invoke-interface {v0, p1, p2}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    return-void
.end method

.method public read()Landroidx/profileinstaller/DeviceProfileWriter;
    .registers 4

    .line 159
    invoke-direct {p0}, Landroidx/profileinstaller/DeviceProfileWriter;->assertDeviceAllowsProfileInstallerAotWritesCalled()V

    .line 160
    iget-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDesiredVersion:[B

    if-nez v0, :cond_8

    .line 161
    return-object p0

    .line 164
    :cond_8
    iget-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-direct {p0, v0}, Landroidx/profileinstaller/DeviceProfileWriter;->getProfileInputStream(Landroid/content/res/AssetManager;)Ljava/io/InputStream;

    move-result-object v0

    .line 165
    .local v0, "profileStream":Ljava/io/InputStream;
    if-eqz v0, :cond_16

    .line 166
    invoke-direct {p0, v0}, Landroidx/profileinstaller/DeviceProfileWriter;->readProfileInternal(Ljava/io/InputStream;)[Landroidx/profileinstaller/DexProfileData;

    move-result-object v1

    iput-object v1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:[Landroidx/profileinstaller/DexProfileData;

    .line 168
    :cond_16
    iget-object v1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:[Landroidx/profileinstaller/DexProfileData;

    if-eqz v1, :cond_2b

    .line 169
    iget-object v1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:[Landroidx/profileinstaller/DexProfileData;

    .line 170
    .local v1, "profile":[Landroidx/profileinstaller/DexProfileData;
    invoke-static {}, Landroidx/profileinstaller/DeviceProfileWriter;->requiresMetadata()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 171
    iget-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDesiredVersion:[B

    invoke-direct {p0, v1, v2}, Landroidx/profileinstaller/DeviceProfileWriter;->addMetadata([Landroidx/profileinstaller/DexProfileData;[B)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    .line 172
    .local v2, "profileWriter":Landroidx/profileinstaller/DeviceProfileWriter;
    if-eqz v2, :cond_2b

    return-object v2

    .line 175
    .end local v1    # "profile":[Landroidx/profileinstaller/DexProfileData;
    .end local v2    # "profileWriter":Landroidx/profileinstaller/DeviceProfileWriter;
    :cond_2b
    return-object p0
.end method

.method public transcodeIfNeeded()Landroidx/profileinstaller/DeviceProfileWriter;
    .registers 8

    .line 296
    iget-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:[Landroidx/profileinstaller/DexProfileData;

    .line 297
    .local v0, "profile":[Landroidx/profileinstaller/DexProfileData;
    iget-object v1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDesiredVersion:[B

    .line 298
    .local v1, "desiredVersion":[B
    if-eqz v0, :cond_50

    if-nez v1, :cond_9

    goto :goto_50

    .line 301
    :cond_9
    invoke-direct {p0}, Landroidx/profileinstaller/DeviceProfileWriter;->assertDeviceAllowsProfileInstallerAotWritesCalled()V

    .line 302
    const/4 v2, 0x0

    :try_start_d
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_45
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_12} :catch_3c

    .line 303
    .local v3, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_12
    invoke-static {v3, v1}, Landroidx/profileinstaller/ProfileTranscoder;->writeHeader(Ljava/io/OutputStream;[B)V

    .line 304
    invoke-static {v3, v1, v0}, Landroidx/profileinstaller/ProfileTranscoder;->transcodeAndWriteBody(Ljava/io/OutputStream;[B[Landroidx/profileinstaller/DexProfileData;)Z

    move-result v4

    .line 310
    .local v4, "success":Z
    if-nez v4, :cond_28

    .line 311
    iget-object v5, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    const/4 v6, 0x5

    invoke-interface {v5, v6, v2}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    .line 315
    iput-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:[Landroidx/profileinstaller/DexProfileData;
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_32

    .line 316
    nop

    .line 320
    :try_start_24
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_45
    .catch Ljava/lang/IllegalStateException; {:try_start_24 .. :try_end_27} :catch_3c

    .line 316
    return-object p0

    .line 319
    :cond_28
    :try_start_28
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:[B
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_32

    .line 320
    .end local v4    # "success":Z
    :try_start_2e
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_45
    .catch Ljava/lang/IllegalStateException; {:try_start_2e .. :try_end_31} :catch_3c

    goto :goto_4c

    .line 302
    :catchall_32
    move-exception v4

    :try_start_33
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v5

    :try_start_38
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "profile":[Landroidx/profileinstaller/DexProfileData;
    .end local v1    # "desiredVersion":[B
    :goto_3b
    throw v4
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3c} :catch_45
    .catch Ljava/lang/IllegalStateException; {:try_start_38 .. :try_end_3c} :catch_3c

    .line 322
    .end local v3    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "profile":[Landroidx/profileinstaller/DexProfileData;
    .restart local v1    # "desiredVersion":[B
    :catch_3c
    move-exception v3

    .line 323
    .local v3, "e":Ljava/lang/IllegalStateException;
    iget-object v4, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    const/16 v5, 0x8

    invoke-interface {v4, v5, v3}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    goto :goto_4d

    .line 320
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_45
    move-exception v3

    .line 321
    .local v3, "e":Ljava/io/IOException;
    iget-object v4, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    const/4 v5, 0x7

    invoke-interface {v4, v5, v3}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    .line 324
    .end local v3    # "e":Ljava/io/IOException;
    :goto_4c
    nop

    .line 325
    :goto_4d
    iput-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:[Landroidx/profileinstaller/DexProfileData;

    .line 326
    return-object p0

    .line 299
    :cond_50
    :goto_50
    return-object p0
.end method

.method public write()Z
    .registers 8

    .line 338
    iget-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:[B

    .line 339
    .local v0, "transcodedProfile":[B
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 340
    return v1

    .line 342
    :cond_6
    invoke-direct {p0}, Landroidx/profileinstaller/DeviceProfileWriter;->assertDeviceAllowsProfileInstallerAotWritesCalled()V

    .line 344
    const/4 v2, 0x0

    :try_start_a
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_f} :catch_45
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_3f
    .catchall {:try_start_a .. :try_end_f} :catchall_3d

    .line 345
    .local v3, "bis":Ljava/io/InputStream;
    :try_start_f
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_33

    .line 347
    .local v4, "os":Ljava/io/OutputStream;
    :try_start_16
    invoke-static {v3, v4}, Landroidx/profileinstaller/Encoding;->writeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 348
    const/4 v5, 0x1

    invoke-direct {p0, v5, v2}, Landroidx/profileinstaller/DeviceProfileWriter;->result(ILjava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_29

    .line 349
    nop

    .line 350
    :try_start_1e
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_33

    :try_start_21
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_24} :catch_45
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_3f
    .catchall {:try_start_21 .. :try_end_24} :catchall_3d

    .line 355
    iput-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:[B

    .line 356
    iput-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:[Landroidx/profileinstaller/DexProfileData;

    .line 349
    return v5

    .line 343
    :catchall_29
    move-exception v5

    :try_start_2a
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception v6

    :try_start_2f
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "transcodedProfile":[B
    .end local v3    # "bis":Ljava/io/InputStream;
    :goto_32
    throw v5
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_33

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v0    # "transcodedProfile":[B
    .restart local v3    # "bis":Ljava/io/InputStream;
    :catchall_33
    move-exception v4

    :try_start_34
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception v5

    :try_start_39
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "transcodedProfile":[B
    :goto_3c
    throw v4
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_3d} :catch_45
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3d} :catch_3f
    .catchall {:try_start_39 .. :try_end_3d} :catchall_3d

    .line 355
    .end local v3    # "bis":Ljava/io/InputStream;
    .restart local v0    # "transcodedProfile":[B
    :catchall_3d
    move-exception v1

    goto :goto_50

    .line 352
    :catch_3f
    move-exception v3

    .line 353
    .local v3, "e":Ljava/io/IOException;
    const/4 v4, 0x7

    :try_start_41
    invoke-direct {p0, v4, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->result(ILjava/lang/Object;)V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_4a

    .line 350
    :catch_45
    move-exception v3

    .line 351
    .local v3, "e":Ljava/io/FileNotFoundException;
    const/4 v4, 0x6

    invoke-direct {p0, v4, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->result(ILjava/lang/Object;)V
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_3d

    .line 355
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_4a
    iput-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:[B

    .line 356
    iput-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:[Landroidx/profileinstaller/DexProfileData;

    .line 357
    nop

    .line 358
    return v1

    .line 355
    :goto_50
    iput-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:[B

    .line 356
    iput-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:[Landroidx/profileinstaller/DexProfileData;

    .line 357
    throw v1
.end method
