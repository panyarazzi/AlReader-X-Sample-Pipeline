# AlReader X Sample Pipeline

An isolated public repository for validating the APK analysis toolchain before any work is attempted on the original AlReader X APK.

## Safety boundary

- This repository contains only a synthetic sample APK builder and workflow.
- The original APK and the private repository are not copied here.
- Never upload the original APK to this public repository.
- A successful sample run proves only that the runner can build, decode, decompile, and report on the synthetic fixture.

## Run the validation

1. Open the **Actions** tab.
2. Select **Validate sample APK analysis pipeline**.
3. Choose **Run workflow** on the `main` branch.
4. Open the run and confirm every step passes.
5. Confirm `reports/pipeline/sample-apk-validation.md` is committed to `main`.

The workflow uses a standard `ubuntu-latest` GitHub-hosted runner. GitHub documents standard GitHub-hosted runner usage as free for public repositories. Larger runners are not used.

## Scope

This is a pipeline smoke test, not an APK modification project. Do not infer anything about the original APK until a separate, privacy-preserving analysis path is designed and approved.
