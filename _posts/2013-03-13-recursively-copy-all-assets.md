---
layout: post
published: true
title: "Recursively copy all assets using v0.3 of the Gradle Android Plugin"
tags: code
---

Version 0.3 of the Android plugin for Gradle has a nasty bug that prevents assets in subfolders from being included in the APK. The bug has been addressed quite quickly, and a fix has already been implemented into the AOSP build. However, for those who don't want to download the source or wait for v0.4 to come along, I wrote a task that recursively copies all assets into the right folder.

<script src="https://gist.github.com/XavierTalpe/5158552.js"></script>

Based on [Zulaxia's answer](https://groups.google.com/d/msg/adt-dev/sA8KFsquss4/Q_UXMUuhWqsJ) at the Google Developer Forums.