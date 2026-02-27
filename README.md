# Xpra AppImage Builder

> This repository provides an unofficial AppImage build of Xpra.

[AppImage releases](https://github.com/c0xc/xpra-appimage/releases).

## Motivation

The primary motivation for this build was to make it easy to start and use Xpra for an internal project across several workstations running a variety of Linux desktop distributions.
On some systems, official Xpra packages do not exist - such as certain Debian-based distros where neither Debian nor Ubuntu packages work.
Manually building Python and Xpra was a significant, time-consuming effort: Upgrading the OS, installing a newer Python, and repeatedly running the Xpra build only to hit missing development headers, then identifying and installing the required packages (or providing headers another way), and repeating this cycle many times. Eventually, a working Xpra environment could be achieved, but the workstation would be reinstalled and all these many development packages were not meant to remain installed.

Additionally, it was necessary to try different Xpra versions for different scenarios. So AppImages seem like the best tool for the job.

### Addressing AppImage/Flatpak Concerns

I am aware of and share many widely cited concerns about AppImages and Flatpaks (e.g., large image files, dependency issues, outdated libraries, etc.). However, when you need to run an application on a Linux distro for which official packages are not available, these concerns are secondary.

These AppImage builds are unofficial, therefore do not rely on them.

## Motivation: Why AppImage?

AppImage is used here to provide a portable, self-contained binary for Xpra on Linux distributions where official packages are missing or outdated. While installing from source via pip is possible, it requires many system libraries and sometimes a newer Python version, making it non-trivial and not easily repeatable. AppImage solves this by bundling everything needed in one go, despite known drawbacks like bundling too much and lacking update mechanisms.

Snap is not supported due to concerns about its distributor (Canonical) and its tracking of usage data.

**Disclaimer**

This was created for a private project with specific requirements. As such, not all features of Xpra are included or supported - completeness was not the primary goal. This repository is unofficial and is explicitly not intended as a replacement for the official Xpra downloads, which should be preferred for general use:
[Xpra download](https://github.com/Xpra-org/xpra/wiki/Download#-for-rpm-distributions)

Use at your own risk. Not all features are guaranteed to work - especially server functionality, which was not the focus of this build.

This project builds the latest [Xpra](https://github.com/Xpra-org/xpra) as an AppImage in a reproducible container, for use on many Linux distributions.

## Usage

Download pre-built AppImages from the [Releases page](https://github.com/c0xc/xpra-appimage/releases).

## Customization

- To build a different branch, set the `XPRA_BRANCH` environment variable locally, or use the workflow input in GitHub Actions.



