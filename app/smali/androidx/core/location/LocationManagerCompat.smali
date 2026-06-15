.class public final Landroidx/core/location/LocationManagerCompat;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/location/LocationManagerCompat$Api28Impl;,
        Landroidx/core/location/LocationManagerCompat$Api31Impl;,
        Landroidx/core/location/LocationManagerCompat$Api30Impl;,
        Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;,
        Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;,
        Landroidx/core/location/LocationManagerCompat$LocationListenerKey;,
        Landroidx/core/location/LocationManagerCompat$Api19Impl;,
        Landroidx/core/location/LocationManagerCompat$Api24Impl;,
        Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;,
        Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;,
        Landroidx/core/location/LocationManagerCompat$InlineHandlerExecutor;,
        Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;,
        Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;,
        Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;
    }
.end annotation


# static fields
.field private static final GET_CURRENT_LOCATION_TIMEOUT_MS:J = 0x7530L

.field private static final MAX_CURRENT_LOCATION_AGE_MS:J = 0x2710L

.field private static final PRE_N_LOOPER_TIMEOUT_S:J = 0x5L

.field private static sContextField:Ljava/lang/reflect/Field;

.field private static sGnssRequestBuilderBuildMethod:Ljava/lang/reflect/Method;

.field private static sGnssRequestBuilderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final sLocationListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroidx/core/location/LocationManagerCompat$LocationListenerKey;",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sRegisterGnssMeasurementsCallbackMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 221
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentLocation(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    .registers 14
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "cancellationSignal"    # Landroidx/core/os/CancellationSignal;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/LocationManager;",
            "Ljava/lang/String;",
            "Landroidx/core/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 187
    .local p4, "consumer":Landroidx/core/util/Consumer;, "Landroidx/core/util/Consumer<Landroid/location/Location;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_a

    .line 188
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/location/LocationManagerCompat$Api30Impl;->getCurrentLocation(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    .line 190
    return-void

    .line 193
    :cond_a
    if-eqz p2, :cond_f

    .line 194
    invoke-virtual {p2}, Landroidx/core/os/CancellationSignal;->throwIfCanceled()V

    .line 197
    :cond_f
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 198
    .local v0, "location":Landroid/location/Location;
    if-eqz v0, :cond_2d

    .line 200
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0}, Landroidx/core/location/LocationCompat;->getElapsedRealtimeMillis(Landroid/location/Location;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 201
    .local v1, "locationAgeMs":J
    const-wide/16 v3, 0x2710

    cmp-long v5, v1, v3

    if-gez v5, :cond_2d

    .line 202
    new-instance v3, Landroidx/core/location/LocationManagerCompat$$ExternalSyntheticLambda1;

    invoke-direct {v3, p4, v0}, Landroidx/core/location/LocationManagerCompat$$ExternalSyntheticLambda1;-><init>(Landroidx/core/util/Consumer;Landroid/location/Location;)V

    invoke-interface {p3, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 203
    return-void

    .line 207
    .end local v1    # "locationAgeMs":J
    :cond_2d
    new-instance v1, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;

    invoke-direct {v1, p0, p3, p4}, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;-><init>(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    .line 209
    .local v1, "listener":Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 210
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    .line 209
    move-object v2, p0

    move-object v3, p1

    move-object v7, v1

    invoke-virtual/range {v2 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 212
    if-eqz p2, :cond_4c

    .line 213
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/core/location/LocationManagerCompat$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Landroidx/core/location/LocationManagerCompat$$ExternalSyntheticLambda2;-><init>(Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;)V

    invoke-virtual {p2, v2}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    .line 216
    :cond_4c
    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v2, v3}, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->startTimeout(J)V

    .line 217
    return-void
.end method

.method public static getGnssHardwareModelName(Landroid/location/LocationManager;)Ljava/lang/String;
    .registers 3
    .param p0, "locationManager"    # Landroid/location/LocationManager;

    .line 353
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 354
    invoke-static {p0}, Landroidx/core/location/LocationManagerCompat$Api28Impl;->getGnssHardwareModelName(Landroid/location/LocationManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 356
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getGnssYearOfHardware(Landroid/location/LocationManager;)I
    .registers 3
    .param p0, "locationManager"    # Landroid/location/LocationManager;

    .line 365
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 366
    invoke-static {p0}, Landroidx/core/location/LocationManagerCompat$Api28Impl;->getGnssYearOfHardware(Landroid/location/LocationManager;)I

    move-result v0

    return v0

    .line 368
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static hasProvider(Landroid/location/LocationManager;Ljava/lang/String;)Z
    .registers 5
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "provider"    # Ljava/lang/String;

    .line 147
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_b

    .line 148
    invoke-static {p0, p1}, Landroidx/core/location/LocationManagerCompat$Api31Impl;->hasProvider(Landroid/location/LocationManager;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 152
    :cond_b
    invoke-virtual {p0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    .line 153
    return v1

    .line 158
    :cond_17
    const/4 v0, 0x0

    :try_start_18
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v2
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_1c} :catch_21

    if-eqz v2, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    return v1

    .line 159
    :catch_21
    move-exception v1

    .line 162
    return v0
.end method

.method public static isLocationEnabled(Landroid/location/LocationManager;)Z
    .registers 3
    .param p0, "locationManager"    # Landroid/location/LocationManager;

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 103
    invoke-static {p0}, Landroidx/core/location/LocationManagerCompat$Api28Impl;->isLocationEnabled(Landroid/location/LocationManager;)Z

    move-result v0

    return v0

    .line 106
    :cond_b
    nop

    .line 134
    const-string v0, "network"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 135
    const-string v0, "gps"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    .line 134
    :goto_20
    return v0
.end method

.method static synthetic lambda$getCurrentLocation$0(Landroidx/core/util/Consumer;Landroid/location/Location;)V
    .registers 2
    .param p0, "consumer"    # Landroidx/core/util/Consumer;
    .param p1, "location"    # Landroid/location/Location;

    .line 202
    invoke-interface {p0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$registerGnssStatusCallback$1(Landroid/location/LocationManager;Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;)Ljava/lang/Boolean;
    .registers 3
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "myTransport"    # Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 588
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static registerGnssMeasurementsCallback(Landroid/location/LocationManager;Landroid/location/GnssMeasurementsEvent$Callback;Landroid/os/Handler;)Z
    .registers 5
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "callback"    # Landroid/location/GnssMeasurementsEvent$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 395
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_b

    .line 396
    invoke-static {p0, p1, p2}, Landroidx/core/location/LocationManagerCompat$Api24Impl;->registerGnssMeasurementsCallback(Landroid/location/LocationManager;Landroid/location/GnssMeasurementsEvent$Callback;Landroid/os/Handler;)Z

    move-result v0

    return v0

    .line 397
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_19

    .line 398
    nop

    .line 399
    invoke-static {p2}, Landroidx/core/os/ExecutorCompat;->create(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 398
    invoke-static {p0, v0, p1}, Landroidx/core/location/LocationManagerCompat;->registerGnssMeasurementsCallbackOnR(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent$Callback;)Z

    move-result v0

    return v0

    .line 402
    :cond_19
    sget-object v0, Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;->sGnssMeasurementListeners:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    .line 403
    :try_start_1c
    invoke-static {p0, p1}, Landroidx/core/location/LocationManagerCompat;->unregisterGnssMeasurementsCallback(Landroid/location/LocationManager;Landroid/location/GnssMeasurementsEvent$Callback;)V

    .line 404
    invoke-static {p0, p1, p2}, Landroidx/core/location/LocationManagerCompat$Api24Impl;->registerGnssMeasurementsCallback(Landroid/location/LocationManager;Landroid/location/GnssMeasurementsEvent$Callback;Landroid/os/Handler;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 406
    sget-object v1, Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;->sGnssMeasurementListeners:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1, p1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 409
    :cond_2d
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 411
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_1c .. :try_end_32} :catchall_30

    throw v1
.end method

.method public static registerGnssMeasurementsCallback(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent$Callback;)Z
    .registers 6
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/location/GnssMeasurementsEvent$Callback;

    .line 429
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_b

    .line 430
    invoke-static {p0, p1, p2}, Landroidx/core/location/LocationManagerCompat$Api31Impl;->registerGnssMeasurementsCallback(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent$Callback;)Z

    move-result v0

    return v0

    .line 431
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_14

    .line 432
    invoke-static {p0, p1, p2}, Landroidx/core/location/LocationManagerCompat;->registerGnssMeasurementsCallbackOnR(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent$Callback;)Z

    move-result v0

    return v0

    .line 436
    :cond_14
    sget-object v0, Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;->sGnssMeasurementListeners:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    .line 437
    :try_start_17
    new-instance v1, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;

    invoke-direct {v1, p2, p1}, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;-><init>(Landroid/location/GnssMeasurementsEvent$Callback;Ljava/util/concurrent/Executor;)V

    .line 439
    .local v1, "newTransport":Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;
    invoke-static {p0, p2}, Landroidx/core/location/LocationManagerCompat;->unregisterGnssMeasurementsCallback(Landroid/location/LocationManager;Landroid/location/GnssMeasurementsEvent$Callback;)V

    .line 440
    invoke-static {p0, v1}, Landroidx/core/location/LocationManagerCompat$Api24Impl;->registerGnssMeasurementsCallback(Landroid/location/LocationManager;Landroid/location/GnssMeasurementsEvent$Callback;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 441
    sget-object v2, Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;->sGnssMeasurementListeners:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v2, p2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 444
    :cond_2d
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 446
    .end local v1    # "newTransport":Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_17 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private static registerGnssMeasurementsCallbackOnR(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent$Callback;)Z
    .registers 11
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/location/GnssMeasurementsEvent$Callback;

    .line 479
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_87

    .line 481
    const/4 v0, 0x0

    :try_start_7
    sget-object v1, Landroidx/core/location/LocationManagerCompat;->sGnssRequestBuilderClass:Ljava/lang/Class;

    if-nez v1, :cond_13

    .line 482
    const-string v1, "android.location.GnssRequest$Builder"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroidx/core/location/LocationManagerCompat;->sGnssRequestBuilderClass:Ljava/lang/Class;

    .line 485
    :cond_13
    sget-object v1, Landroidx/core/location/LocationManagerCompat;->sGnssRequestBuilderBuildMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    if-nez v1, :cond_27

    .line 486
    sget-object v1, Landroidx/core/location/LocationManagerCompat;->sGnssRequestBuilderClass:Ljava/lang/Class;

    const-string v3, "build"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/location/LocationManagerCompat;->sGnssRequestBuilderBuildMethod:Ljava/lang/reflect/Method;

    .line 488
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 490
    :cond_27
    sget-object v1, Landroidx/core/location/LocationManagerCompat;->sRegisterGnssMeasurementsCallbackMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-nez v1, :cond_4c

    .line 491
    const-class v1, Landroid/location/LocationManager;

    const-string v5, "registerGnssMeasurementsCallback"

    new-array v6, v4, [Ljava/lang/Class;

    const-string v7, "android.location.GnssRequest"

    .line 494
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v0

    const-class v7, Ljava/util/concurrent/Executor;

    aput-object v7, v6, v2

    const-class v7, Landroid/location/GnssMeasurementsEvent$Callback;

    aput-object v7, v6, v3

    .line 492
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/location/LocationManagerCompat;->sRegisterGnssMeasurementsCallbackMethod:Ljava/lang/reflect/Method;

    .line 496
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 499
    :cond_4c
    sget-object v1, Landroidx/core/location/LocationManagerCompat;->sRegisterGnssMeasurementsCallbackMethod:Ljava/lang/reflect/Method;

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Landroidx/core/location/LocationManagerCompat;->sGnssRequestBuilderBuildMethod:Ljava/lang/reflect/Method;

    sget-object v6, Landroidx/core/location/LocationManagerCompat;->sGnssRequestBuilderClass:Ljava/lang/Class;

    new-array v7, v0, [Ljava/lang/Class;

    .line 501
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    .line 500
    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v0

    aput-object p1, v4, v2

    aput-object p2, v4, v3

    .line 499
    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 503
    .local v1, "success":Ljava/lang/Object;
    if-eqz v1, :cond_7c

    move-object v3, v1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_79
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_79} :catch_85
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_79} :catch_83
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_79} :catch_81
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_79} :catch_7f
    .catch Ljava/lang/InstantiationException; {:try_start_7 .. :try_end_79} :catch_7d

    if-eqz v3, :cond_7c

    const/4 v0, 0x1

    :cond_7c
    return v0

    .line 504
    .end local v1    # "success":Ljava/lang/Object;
    :catch_7d
    move-exception v1

    goto :goto_86

    :catch_7f
    move-exception v1

    goto :goto_86

    :catch_81
    move-exception v1

    goto :goto_86

    :catch_83
    move-exception v1

    goto :goto_86

    :catch_85
    move-exception v1

    .line 506
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_86
    return v0

    .line 509
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_87
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private static registerGnssStatusCallback(Landroid/location/LocationManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z
    .registers 22
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "baseHandler"    # Landroid/os/Handler;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroidx/core/location/GnssStatusCompat$Callback;

    .line 568
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v0, v4, :cond_11

    .line 569
    invoke-static/range {p0 .. p3}, Landroidx/core/location/LocationManagerCompat$Api30Impl;->registerGnssStatusCallback(Landroid/location/LocationManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z

    move-result v0

    return v0

    .line 571
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v0, v4, :cond_1c

    .line 572
    invoke-static/range {p0 .. p3}, Landroidx/core/location/LocationManagerCompat$Api24Impl;->registerGnssStatusCallback(Landroid/location/LocationManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z

    move-result v0

    return v0

    .line 575
    :cond_1c
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 576
    sget-object v6, Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    monitor-enter v6

    .line 577
    :try_start_29
    sget-object v0, Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    .line 578
    invoke-virtual {v0, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    .line 579
    .local v0, "transport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    if-nez v0, :cond_3a

    .line 580
    new-instance v7, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    invoke-direct {v7, v1, v3}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;-><init>(Landroid/location/LocationManager;Landroidx/core/location/GnssStatusCompat$Callback;)V

    move-object v0, v7

    goto :goto_3e

    .line 582
    :cond_3a
    invoke-virtual {v0}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->unregister()V
    :try_end_3d
    .catchall {:try_start_29 .. :try_end_3d} :catchall_10a

    move-object v7, v0

    .line 584
    .end local v0    # "transport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .local v7, "transport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    :goto_3e
    move-object/from16 v8, p2

    :try_start_40
    invoke-virtual {v7, v8}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->register(Ljava/util/concurrent/Executor;)V

    .line 586
    move-object v9, v7

    .line 587
    .local v9, "myTransport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v10, Landroidx/core/location/LocationManagerCompat$$ExternalSyntheticLambda0;

    invoke-direct {v10, v1, v9}, Landroidx/core/location/LocationManagerCompat$$ExternalSyntheticLambda0;-><init>(Landroid/location/LocationManager;Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;)V

    invoke-direct {v0, v10}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    move-object v10, v0

    .line 590
    .local v10, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v11

    if-ne v0, v11, :cond_5d

    .line 591
    invoke-virtual {v10}, Ljava/util/concurrent/FutureTask;->run()V

    goto :goto_63

    .line 592
    :cond_5d
    invoke-virtual {v2, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0
    :try_end_61
    .catchall {:try_start_40 .. :try_end_61} :catchall_10f

    if-eqz v0, :cond_f1

    .line 596
    :goto_63
    const/4 v11, 0x0

    .line 598
    .local v11, "interrupted":Z
    :try_start_64
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v12, 0x5

    invoke-virtual {v0, v12, v13}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v12

    .line 599
    .local v12, "remainingNanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14
    :try_end_70
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_64 .. :try_end_70} :catch_c1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_64 .. :try_end_70} :catch_a7
    .catchall {:try_start_64 .. :try_end_70} :catchall_a5

    add-long/2addr v14, v12

    .line 602
    .local v14, "end":J
    :goto_71
    :try_start_71
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v12, v13, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 603
    sget-object v0, Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, v3, v9}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_84
    .catch Ljava/lang/InterruptedException; {:try_start_71 .. :try_end_84} :catch_9c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_71 .. :try_end_84} :catch_c1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_71 .. :try_end_84} :catch_a7
    .catchall {:try_start_71 .. :try_end_84} :catchall_a5

    .line 604
    nop

    .line 627
    if-eqz v11, :cond_8e

    .line 628
    :try_start_87
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_8e
    monitor-exit v6

    .line 604
    return v4

    .line 606
    :cond_90
    nop

    .line 627
    if-eqz v11, :cond_9a

    .line 628
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_9a
    monitor-exit v6
    :try_end_9b
    .catchall {:try_start_87 .. :try_end_9b} :catchall_10f

    .line 606
    return v5

    .line 608
    :catch_9c
    move-exception v0

    .line 610
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v11, 0x1

    .line 611
    :try_start_9e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16
    :try_end_a2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9e .. :try_end_a2} :catch_c1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9e .. :try_end_a2} :catch_a7
    .catchall {:try_start_9e .. :try_end_a2} :catchall_a5

    sub-long v12, v14, v16

    .line 612
    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_71

    .line 627
    .end local v12    # "remainingNanos":J
    .end local v14    # "end":J
    :catchall_a5
    move-exception v0

    goto :goto_e6

    .line 622
    :catch_a7
    move-exception v0

    .line 623
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_a8
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " appears to be blocked, please run registerGnssStatusCallback() directly on a Looper thread or ensure the main Looper is not blocked by this thread"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v7    # "transport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .end local v9    # "myTransport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .end local v10    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    .end local v11    # "interrupted":Z
    .end local p0    # "locationManager":Landroid/location/LocationManager;
    .end local p1    # "baseHandler":Landroid/os/Handler;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroidx/core/location/GnssStatusCompat$Callback;
    throw v4

    .line 614
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    .restart local v7    # "transport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .restart local v9    # "myTransport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .restart local v10    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    .restart local v11    # "interrupted":Z
    .restart local p0    # "locationManager":Landroid/location/LocationManager;
    .restart local p1    # "baseHandler":Landroid/os/Handler;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroidx/core/location/GnssStatusCompat$Callback;
    :catch_c1
    move-exception v0

    .line 615
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/RuntimeException;

    if-nez v4, :cond_df

    .line 617
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Error;

    if-eqz v4, :cond_d9

    .line 618
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/lang/Error;

    .end local v7    # "transport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .end local v9    # "myTransport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .end local v10    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    .end local v11    # "interrupted":Z
    .end local p0    # "locationManager":Landroid/location/LocationManager;
    .end local p1    # "baseHandler":Landroid/os/Handler;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroidx/core/location/GnssStatusCompat$Callback;
    throw v4

    .line 620
    .restart local v7    # "transport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .restart local v9    # "myTransport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .restart local v10    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    .restart local v11    # "interrupted":Z
    .restart local p0    # "locationManager":Landroid/location/LocationManager;
    .restart local p1    # "baseHandler":Landroid/os/Handler;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroidx/core/location/GnssStatusCompat$Callback;
    :cond_d9
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v7    # "transport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .end local v9    # "myTransport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .end local v10    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    .end local v11    # "interrupted":Z
    .end local p0    # "locationManager":Landroid/location/LocationManager;
    .end local p1    # "baseHandler":Landroid/os/Handler;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroidx/core/location/GnssStatusCompat$Callback;
    throw v4

    .line 616
    .restart local v7    # "transport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .restart local v9    # "myTransport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .restart local v10    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    .restart local v11    # "interrupted":Z
    .restart local p0    # "locationManager":Landroid/location/LocationManager;
    .restart local p1    # "baseHandler":Landroid/os/Handler;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroidx/core/location/GnssStatusCompat$Callback;
    :cond_df
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/lang/RuntimeException;

    .end local v7    # "transport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .end local v9    # "myTransport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .end local v10    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    .end local v11    # "interrupted":Z
    .end local p0    # "locationManager":Landroid/location/LocationManager;
    .end local p1    # "baseHandler":Landroid/os/Handler;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroidx/core/location/GnssStatusCompat$Callback;
    throw v4
    :try_end_e6
    .catchall {:try_start_a8 .. :try_end_e6} :catchall_a5

    .line 627
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    .restart local v7    # "transport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .restart local v9    # "myTransport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .restart local v10    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    .restart local v11    # "interrupted":Z
    .restart local p0    # "locationManager":Landroid/location/LocationManager;
    .restart local p1    # "baseHandler":Landroid/os/Handler;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroidx/core/location/GnssStatusCompat$Callback;
    :goto_e6
    if-eqz v11, :cond_ef

    .line 628
    :try_start_e8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 630
    :cond_ef
    nop

    .end local p0    # "locationManager":Landroid/location/LocationManager;
    .end local p1    # "baseHandler":Landroid/os/Handler;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroidx/core/location/GnssStatusCompat$Callback;
    throw v0

    .line 593
    .end local v11    # "interrupted":Z
    .restart local p0    # "locationManager":Landroid/location/LocationManager;
    .restart local p1    # "baseHandler":Landroid/os/Handler;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroidx/core/location/GnssStatusCompat$Callback;
    :cond_f1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is shutting down"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "locationManager":Landroid/location/LocationManager;
    .end local p1    # "baseHandler":Landroid/os/Handler;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroidx/core/location/GnssStatusCompat$Callback;
    throw v0

    .line 631
    .end local v7    # "transport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .end local v9    # "myTransport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .end local v10    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    .restart local p0    # "locationManager":Landroid/location/LocationManager;
    .restart local p1    # "baseHandler":Landroid/os/Handler;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroidx/core/location/GnssStatusCompat$Callback;
    :catchall_10a
    move-exception v0

    move-object/from16 v8, p2

    :goto_10d
    monitor-exit v6
    :try_end_10e
    .catchall {:try_start_e8 .. :try_end_10e} :catchall_10f

    throw v0

    :catchall_10f
    move-exception v0

    goto :goto_10d
.end method

.method public static registerGnssStatusCallback(Landroid/location/LocationManager;Landroidx/core/location/GnssStatusCompat$Callback;Landroid/os/Handler;)Z
    .registers 5
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "callback"    # Landroidx/core/location/GnssStatusCompat$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 523
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_f

    .line 524
    invoke-static {p2}, Landroidx/core/os/ExecutorCompat;->create(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroidx/core/location/LocationManagerCompat;->registerGnssStatusCallback(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z

    move-result v0

    return v0

    .line 527
    :cond_f
    new-instance v0, Landroidx/core/location/LocationManagerCompat$InlineHandlerExecutor;

    invoke-direct {v0, p2}, Landroidx/core/location/LocationManagerCompat$InlineHandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-static {p0, v0, p1}, Landroidx/core/location/LocationManagerCompat;->registerGnssStatusCallback(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z

    move-result v0

    return v0
.end method

.method public static registerGnssStatusCallback(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z
    .registers 5
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroidx/core/location/GnssStatusCompat$Callback;

    .line 553
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_c

    .line 554
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroidx/core/location/LocationManagerCompat;->registerGnssStatusCallback(Landroid/location/LocationManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z

    move-result v0

    return v0

    .line 556
    :cond_c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 557
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_16

    .line 558
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 560
    :cond_16
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p0, v1, p1, p2}, Landroidx/core/location/LocationManagerCompat;->registerGnssStatusCallback(Landroid/location/LocationManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z

    move-result v1

    return v1
.end method

.method static registerLocationListenerTransport(Landroid/location/LocationManager;Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;)V
    .registers 5
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "transport"    # Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    .line 268
    sget-object v0, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    .line 269
    invoke-virtual {p1}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->getKey()Landroidx/core/location/LocationManagerCompat$LocationListenerKey;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 270
    .local v0, "oldRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;>;"
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 271
    .local v1, "oldTransport":Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;
    :goto_1b
    if-eqz v1, :cond_23

    .line 272
    invoke-virtual {v1}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->unregister()V

    .line 273
    invoke-virtual {p0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 275
    :cond_23
    return-void
.end method

.method public static removeUpdates(Landroid/location/LocationManager;Landroidx/core/location/LocationListenerCompat;)V
    .registers 9
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "listener"    # Landroidx/core/location/LocationListenerCompat;

    .line 315
    sget-object v0, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 316
    const/4 v1, 0x0

    .line 318
    .local v1, "cleanup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/location/LocationManagerCompat$LocationListenerKey;>;"
    :try_start_4
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 319
    .local v3, "transportRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    .line 320
    .local v4, "transport":Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;
    if-nez v4, :cond_21

    .line 321
    goto :goto_c

    .line 323
    :cond_21
    invoke-virtual {v4}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->getKey()Landroidx/core/location/LocationManagerCompat$LocationListenerKey;

    move-result-object v5

    .line 324
    .local v5, "key":Landroidx/core/location/LocationManagerCompat$LocationListenerKey;
    iget-object v6, v5, Landroidx/core/location/LocationManagerCompat$LocationListenerKey;->mListener:Landroidx/core/location/LocationListenerCompat;

    if-ne v6, p1, :cond_3a

    .line 325
    if-nez v1, :cond_31

    .line 326
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    .line 328
    :cond_31
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-virtual {v4}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->unregister()V

    .line 330
    invoke-virtual {p0, v4}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 332
    .end local v3    # "transportRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;>;"
    .end local v4    # "transport":Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;
    .end local v5    # "key":Landroidx/core/location/LocationManagerCompat$LocationListenerKey;
    :cond_3a
    goto :goto_c

    .line 333
    :cond_3b
    if-eqz v1, :cond_54

    .line 334
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/location/LocationManagerCompat$LocationListenerKey;

    .line 335
    .local v3, "key":Landroidx/core/location/LocationManagerCompat$LocationListenerKey;
    sget-object v4, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v3}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    nop

    .end local v3    # "key":Landroidx/core/location/LocationManagerCompat$LocationListenerKey;
    goto :goto_41

    .line 338
    .end local v1    # "cleanup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/location/LocationManagerCompat$LocationListenerKey;>;"
    :cond_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_4 .. :try_end_55} :catchall_59

    .line 342
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 343
    return-void

    .line 338
    :catchall_59
    move-exception v1

    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public static requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Landroidx/core/location/LocationListenerCompat;Landroid/os/Looper;)V
    .registers 13
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "locationRequest"    # Landroidx/core/location/LocationRequestCompat;
    .param p3, "listener"    # Landroidx/core/location/LocationListenerCompat;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 291
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_18

    .line 292
    nop

    .line 293
    invoke-virtual {p2}, Landroidx/core/location/LocationRequestCompat;->toLocationRequest()Landroid/location/LocationRequest;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 294
    invoke-static {v1}, Landroidx/core/os/ExecutorCompat;->create(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 292
    invoke-static {p0, p1, v0, v1, p3}, Landroidx/core/location/LocationManagerCompat$Api31Impl;->requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 295
    return-void

    .line 298
    :cond_18
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/location/LocationManagerCompat$Api19Impl;->tryRequestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Landroidx/core/location/LocationListenerCompat;Landroid/os/Looper;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 300
    return-void

    .line 303
    :cond_1f
    invoke-virtual {p2}, Landroidx/core/location/LocationRequestCompat;->getIntervalMillis()J

    move-result-wide v3

    .line 304
    invoke-virtual {p2}, Landroidx/core/location/LocationRequestCompat;->getMinUpdateDistanceMeters()F

    move-result v5

    .line 303
    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 305
    return-void
.end method

.method public static requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Ljava/util/concurrent/Executor;Landroidx/core/location/LocationListenerCompat;)V
    .registers 14
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "locationRequest"    # Landroidx/core/location/LocationRequestCompat;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroidx/core/location/LocationListenerCompat;

    .line 237
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_f

    .line 238
    nop

    .line 239
    invoke-virtual {p2}, Landroidx/core/location/LocationRequestCompat;->toLocationRequest()Landroid/location/LocationRequest;

    move-result-object v0

    .line 238
    invoke-static {p0, p1, v0, p3, p4}, Landroidx/core/location/LocationManagerCompat$Api31Impl;->requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 240
    return-void

    .line 243
    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1c

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/location/LocationManagerCompat$Api30Impl;->tryRequestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Ljava/util/concurrent/Executor;Landroidx/core/location/LocationListenerCompat;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 245
    return-void

    .line 248
    :cond_1c
    new-instance v0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    new-instance v1, Landroidx/core/location/LocationManagerCompat$LocationListenerKey;

    invoke-direct {v1, p1, p4}, Landroidx/core/location/LocationManagerCompat$LocationListenerKey;-><init>(Ljava/lang/String;Landroidx/core/location/LocationListenerCompat;)V

    invoke-direct {v0, v1, p3}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;-><init>(Landroidx/core/location/LocationManagerCompat$LocationListenerKey;Ljava/util/concurrent/Executor;)V

    .line 251
    .local v0, "transport":Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;
    invoke-static {p0, p1, p2, v0}, Landroidx/core/location/LocationManagerCompat$Api19Impl;->tryRequestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 253
    return-void

    .line 256
    :cond_2d
    sget-object v1, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 257
    :try_start_30
    invoke-virtual {p2}, Landroidx/core/location/LocationRequestCompat;->getIntervalMillis()J

    move-result-wide v4

    .line 258
    invoke-virtual {p2}, Landroidx/core/location/LocationRequestCompat;->getMinUpdateDistanceMeters()F

    move-result v6

    .line 259
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    .line 257
    move-object v2, p0

    move-object v3, p1

    move-object v7, v0

    invoke-virtual/range {v2 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 260
    invoke-static {p0, v0}, Landroidx/core/location/LocationManagerCompat;->registerLocationListenerTransport(Landroid/location/LocationManager;Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;)V

    .line 261
    monitor-exit v1

    .line 262
    return-void

    .line 261
    :catchall_47
    move-exception v2

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_30 .. :try_end_49} :catchall_47

    throw v2
.end method

.method public static unregisterGnssMeasurementsCallback(Landroid/location/LocationManager;Landroid/location/GnssMeasurementsEvent$Callback;)V
    .registers 5
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "callback"    # Landroid/location/GnssMeasurementsEvent$Callback;

    .line 457
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_a

    .line 458
    invoke-static {p0, p1}, Landroidx/core/location/LocationManagerCompat$Api24Impl;->unregisterGnssMeasurementsCallback(Landroid/location/LocationManager;Landroid/location/GnssMeasurementsEvent$Callback;)V

    goto :goto_25

    .line 460
    :cond_a
    sget-object v0, Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;->sGnssMeasurementListeners:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    .line 461
    :try_start_d
    sget-object v1, Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;->sGnssMeasurementListeners:Landroidx/collection/SimpleArrayMap;

    .line 462
    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GnssMeasurementsEvent$Callback;

    .line 463
    .local v1, "transport":Landroid/location/GnssMeasurementsEvent$Callback;
    if-eqz v1, :cond_24

    .line 464
    instance-of v2, v1, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;

    if-eqz v2, :cond_21

    .line 465
    move-object v2, v1

    check-cast v2, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;

    invoke-virtual {v2}, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;->unregister()V

    .line 467
    :cond_21
    invoke-static {p0, v1}, Landroidx/core/location/LocationManagerCompat$Api24Impl;->unregisterGnssMeasurementsCallback(Landroid/location/LocationManager;Landroid/location/GnssMeasurementsEvent$Callback;)V

    .line 469
    .end local v1    # "transport":Landroid/location/GnssMeasurementsEvent$Callback;
    :cond_24
    monitor-exit v0

    .line 471
    :goto_25
    return-void

    .line 469
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_26

    throw v1
.end method

.method public static unregisterGnssStatusCallback(Landroid/location/LocationManager;Landroidx/core/location/GnssStatusCompat$Callback;)V
    .registers 4
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "callback"    # Landroidx/core/location/GnssStatusCompat$Callback;

    .line 642
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_19

    .line 643
    sget-object v0, Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    .line 644
    :try_start_9
    sget-object v1, Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 645
    .local v1, "transport":Ljava/lang/Object;
    if-eqz v1, :cond_14

    .line 646
    invoke-static {p0, v1}, Landroidx/core/location/LocationManagerCompat$Api24Impl;->unregisterGnssStatusCallback(Landroid/location/LocationManager;Ljava/lang/Object;)V

    .line 648
    .end local v1    # "transport":Ljava/lang/Object;
    :cond_14
    monitor-exit v0

    goto :goto_2d

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_16

    throw v1

    .line 650
    :cond_19
    sget-object v0, Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    .line 651
    :try_start_1c
    sget-object v1, Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    .line 652
    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    .line 654
    .local v1, "transport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    if-eqz v1, :cond_2c

    .line 655
    invoke-virtual {v1}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->unregister()V

    .line 656
    invoke-virtual {p0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 658
    .end local v1    # "transport":Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    :cond_2c
    monitor-exit v0

    .line 660
    :goto_2d
    return-void

    .line 658
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_1c .. :try_end_30} :catchall_2e

    throw v1
.end method
