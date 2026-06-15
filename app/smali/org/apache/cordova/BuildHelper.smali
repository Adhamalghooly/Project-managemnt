.class public Lorg/apache/cordova/BuildHelper;
.super Ljava/lang/Object;
.source "BuildHelper.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-string v0, "BuildHelper"

    sput-object v0, Lorg/apache/cordova/BuildHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuildConfigValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ctx",
            "key"
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".BuildConfig"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 55
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 56
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_2c} :catch_5f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_2c} :catch_45
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_2c} :catch_39
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_2c} :catch_2d

    return-object v0

    .line 65
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :catch_2d
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/NullPointerException;
    sget-object v2, Lorg/apache/cordova/BuildHelper;->TAG:Ljava/lang/String;

    const-string v3, "Null Pointer Exception: Let\'s print a stack trace."

    invoke-static {v2, v3}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_6b

    .line 62
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_39
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-object v2, Lorg/apache/cordova/BuildHelper;->TAG:Ljava/lang/String;

    const-string v3, "Illegal Access Exception: Let\'s print a stack trace."

    invoke-static {v2, v3}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_6a

    .line 60
    :catch_45
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    sget-object v2, Lorg/apache/cordova/BuildHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a valid field. Check your build.gradle"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    goto :goto_6a

    .line 57
    :catch_5f
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v2, Lorg/apache/cordova/BuildHelper;->TAG:Ljava/lang/String;

    const-string v3, "Unable to get the BuildConfig, is this built with ANT?"

    invoke-static {v2, v3}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 68
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_6a
    nop

    .line 70
    :goto_6b
    return-object v0
.end method
