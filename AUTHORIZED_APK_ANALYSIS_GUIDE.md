# Authorized APK Analysis Guide (No Bypass / No Unpacking Evasion)

This guide is for legitimate, authorized security analysis only.
It does **not** include instructions for bypassing, stripping, or defeating commercial protections (including 360 Jiagu / 360加固).

## 1) Scope and Authorization

- Confirm written authorization from the app owner.
- Record app identifier, version, and analysis scope.
- Define prohibited actions (no anti-protection bypass, no unauthorized redistribution).

## 2) Preferred Source of Truth

- Prefer the original source project and build pipeline over production APK reverse workflows.
- If source is available, produce a clean release APK/AAB from source.
- Verify signing process and certificate chain for produced artifacts.

## 3) Static Inspection (Non-Bypass)

Use static tools to inspect metadata and structure only:

- `apktool` for AndroidManifest/resources inspection.
- `jadx` for high-level code browsing where legally permitted.
- Compare:
  - Permissions
  - Exported components
  - Embedded third-party SDKs/libraries
  - Network endpoints and hardcoded domains (if visible)

## 4) Dynamic Analysis in Isolated Environment

Run analysis in a controlled sandbox/emulator:

- Capture runtime logs.
- Observe network traffic using authorized interception/capture methods.
- Trace app behavior at feature level (auth, payments, telemetry, update checks).
- Record environment details for reproducibility.

## 5) Protected vs. Unprotected Build Comparison (High-Level)

When both variants are available through authorized channels:

- Compare manifest entries and component exposure.
- Compare dependency and SDK inventory.
- Compare runtime behavior and startup flow.
- Document meaningful differences and security implications.

## 6) Reporting Format

Use the following structure for each assessment:

1. **Authorization Evidence**
2. **Artifact Information** (package name, version, hash, signer)
3. **Methodology** (tools, environment, limits)
4. **Findings** (severity, evidence, reproducibility)
5. **Risk Summary**
6. **Recommended Remediation**
7. **Appendix** (logs, captures, screenshots, hash list)

## 7) If Goal Is Shipping Without Jiagu

Do not attempt to remove protections from a production APK.

Use the official build/release pipeline:

- Disable Jiagu in release configuration.
- Build a fresh artifact from source.
- Sign with authorized production keys.
- Validate install/upgrade path and integrity checks.
- Publish through normal release channels.

---

## Practical Checklist

- [ ] Written authorization collected
- [ ] Scope and constraints documented
- [ ] Source-based clean build attempted
- [ ] Signing/certificate verification completed
- [ ] Static inspection completed (non-bypass)
- [ ] Dynamic sandbox analysis completed
- [ ] Variant comparison documented (if applicable)
- [ ] Final report delivered with evidence
