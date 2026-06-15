.class Landroidx/core/location/LocationManagerCompat$Api19Impl;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api19Impl"
.end annotation


# static fields
.field private static sLocationRequestClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1296
    return-void
.end method

.method static tryRequestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Landroidx/core/location/LocationListenerCompat;Landroid/os/Looper;)Z
    .registers 13
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "locationRequest"    # Landroidx/core/location/LocationRequestCompat;
    .param p3, "listener"    # Landroidx/core/location/LocationListenerCompat;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 1343
    nop

    .line 1345
    const/4 v0, 0x0

    :try_start_2
    sget-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    if-nez v1, :cond_e

    .line 1346
    const-string v1, "android.location.LocationRequest"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    .line 1349
    :cond_e
    sget-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v1, :cond_30

    .line 1350
    const-class v1, Landroid/location/LocationManager;

    const-string v5, "requestLocationUpdates"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    aput-object v7, v6, v0

    const-class v7, Landroid/location/LocationListener;

    aput-object v7, v6, v4

    const-class v7, Landroid/os/Looper;

    aput-object v7, v6, v2

    .line 1351
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    .line 1355
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1358
    :cond_30
    invoke-virtual {p2, p1}, Landroidx/core/location/LocationRequestCompat;->toLocationRequest(Ljava/lang/String;)Landroid/location/LocationRequest;

    move-result-object v1

    .line 1359
    .local v1, "request":Landroid/location/LocationRequest;
    if-eqz v1, :cond_44

    .line 1360
    sget-object v5, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    aput-object p3, v3, v4

    aput-object p4, v3, v2

    invoke-virtual {v5, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_43} :catch_4d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_43} :catch_4b
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_43} :catch_49
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_43} :catch_47
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_43} :catch_45

    .line 1362
    return v4

    .line 1370
    .end local v1    # "request":Landroid/location/LocationRequest;
    :cond_44
    goto :goto_4e

    .line 1364
    :catch_45
    move-exception v1

    goto :goto_4e

    :catch_47
    move-exception v1

    goto :goto_4e

    :catch_49
    move-exception v1

    goto :goto_4e

    :catch_4b
    move-exception v1

    goto :goto_4e

    :catch_4d
    move-exception v1

    .line 1372
    :goto_4e
    return v0
.end method

.method static tryRequestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;)Z
    .registers 12
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "locationRequest"    # Landroidx/core/location/LocationRequestCompat;
    .param p3, "transport"    # Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    .line 1304
    nop

    .line 1306
    const/4 v0, 0x0

    :try_start_2
    sget-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    if-nez v1, :cond_e

    .line 1307
    const-string v1, "android.location.LocationRequest"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    .line 1309
    :cond_e
    sget-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v1, :cond_30

    .line 1310
    const-class v1, Landroid/location/LocationManager;

    const-string v5, "requestLocationUpdates"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    aput-object v7, v6, v0

    const-class v7, Landroid/location/LocationListener;

    aput-object v7, v6, v4

    const-class v7, Landroid/os/Looper;

    aput-object v7, v6, v2

    .line 1311
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    .line 1315
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1318
    :cond_30
    invoke-virtual {p2, p1}, Landroidx/core/location/LocationRequestCompat;->toLocationRequest(Ljava/lang/String;)Landroid/location/LocationRequest;

    move-result-object v1

    .line 1319
    .local v1, "request":Landroid/location/LocationRequest;
    if-eqz v1, :cond_52

    .line 1320
    sget-object v5, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    monitor-enter v5
    :try_end_39
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_39} :catch_5b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_39} :catch_59
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_39} :catch_57
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_39} :catch_55
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_39} :catch_53

    .line 1321
    :try_start_39
    sget-object v6, Landroidx/core/location/LocationManagerCompat$Api19Impl;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    aput-object p3, v3, v4

    .line 1322
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    aput-object v7, v3, v2

    .line 1321
    invoke-virtual {v6, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    invoke-static {p0, p3}, Landroidx/core/location/LocationManagerCompat;->registerLocationListenerTransport(Landroid/location/LocationManager;Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;)V

    .line 1324
    monitor-exit v5

    return v4

    .line 1325
    :catchall_4f
    move-exception v2

    monitor-exit v5
    :try_end_51
    .catchall {:try_start_39 .. :try_end_51} :catchall_4f

    .end local p0    # "locationManager":Landroid/location/LocationManager;
    .end local p1    # "provider":Ljava/lang/String;
    .end local p2    # "locationRequest":Landroidx/core/location/LocationRequestCompat;
    .end local p3    # "transport":Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;
    :try_start_51
    throw v2
    :try_end_52
    .catch Ljava/lang/NoSuchMethodException; {:try_start_51 .. :try_end_52} :catch_5b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_51 .. :try_end_52} :catch_59
    .catch Ljava/lang/IllegalAccessException; {:try_start_51 .. :try_end_52} :catch_57
    .catch Ljava/lang/ClassNotFoundException; {:try_start_51 .. :try_end_52} :catch_55
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_51 .. :try_end_52} :catch_53

    .line 1333
    .end local v1    # "request":Landroid/location/LocationRequest;
    .restart local p0    # "locationManager":Landroid/location/LocationManager;
    .restart local p1    # "provider":Ljava/lang/String;
    .restart local p2    # "locationRequest":Landroidx/core/location/LocationRequestCompat;
    .restart local p3    # "transport":Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;
    :cond_52
    goto :goto_5c

    .line 1327
    :catch_53
    move-exception v1

    goto :goto_5c

    :catch_55
    move-exception v1

    goto :goto_5c

    :catch_57
    move-exception v1

    goto :goto_5c

    :catch_59
    move-exception v1

    goto :goto_5c

    :catch_5b
    move-exception v1

    .line 1335
    :goto_5c
    return v0
.end method
