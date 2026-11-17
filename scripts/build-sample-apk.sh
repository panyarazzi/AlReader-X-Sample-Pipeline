#!/usr/bin/env bash
set -euo pipefail

OUT_DIR="${1:?Usage: build-sample-apk.sh OUTPUT_DIRECTORY}"
PROJECT="$OUT_DIR/project"
mkdir -p "$PROJECT/smali/com/example/fixture" "$OUT_DIR"

cat > "$PROJECT/AndroidManifest.xml" <<'XML'
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.fixture">
    <uses-sdk android:minSdkVersion="21" android:targetSdkVersion="28" />
    <application android:label="Sample fixture" android:hasCode="true">
        <activity android:name=".MainActivity" android:exported="true">
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
        </activity>
    </application>
</manifest>
XML

cat > "$PROJECT/apktool.yml" <<'YAML'
version: 2.9.3
apkFileName: sample-fixture.apk
isFrameworkApk: false
usesFramework:
  ids:
  - 1
sdkInfo:
  minSdkVersion: '21'
  targetSdkVersion: '28'
versionInfo:
  versionCode: '1'
  versionName: '1.0'
doNotCompress:
- resources.arsc
YAML

cat > "$PROJECT/smali/com/example/fixture/MainActivity.smali" <<'SMALI'
.class public Lcom/example/fixture/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V
    return-void
.end method

.method public getFixtureLabel()Ljava/lang/String;
    .locals 1
    const-string v0, "Sample fixture"
    return-object v0
.end method
SMALI

java -jar "$APKTOOL_JAR" b "$PROJECT" -o "$OUT_DIR/sample-fixture.apk"
