# Sample APK pipeline validation

- Result: PASS (all commands and assertions completed)
- Input: generated synthetic fixture; not the user's AlReader X APK
- Size: 1198 bytes
- SHA-256: b5114e4bafc6321d6dac904ba3e1f0d217b7754e4999883b59593e9de4f68e77
- Apktool: 3.0.3
- JADX: 1.5.6
- Apktool decode: passed; decoded manifest exists
- JADX decompile: passed; fixture marker found
- Run: https://github.com/panyarazzi/AlReader-X-Sample-Pipeline/actions/runs/44015663148
- Commit: a4f8cb3e120239e3a8e8c7975ff84ab4f45455a5

This validates only the synthetic fixture pipeline. It does not mean the original AlReader X APK was accessed or modified.

## Apktool decoded files
/home/runner/work/_temp/sample-fixture/decoded/AndroidManifest.xml
/home/runner/work/_temp/sample-fixture/decoded/apktool.yml
/home/runner/work/_temp/sample-fixture/decoded/original/AndroidManifest.xml

## JADX output files
/home/runner/work/_temp/sample-fixture/jadx/resources/AndroidManifest.xml
/home/runner/work/_temp/sample-fixture/jadx/sources/com/example/fixture/MainActivity.java
