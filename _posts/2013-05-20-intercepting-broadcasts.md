---
published: true
layout: post
title: Intercepting broadcasts in Android

---

For an upcoming project I wanted to intercept incoming text messages. Initially I ought this to be impossible. I figured the OS would send out a broadcast for every incoming text message. Every BroadcastReceiver that is registered can then pick up the incoming broadcast and do with it whather it wants. Fortunately there is a way to prevent other applications from processing a broadcast. When registering your own BroadcastReceiver in the AndroidManifest.xml, there's an option to specify the priority. The priority, which is a value in the range ]-1000, 1000[ defines the order in which a broadcast is send to BroadcastReceivers. Using a high value (999) as priority, you're able to intercept broadcast messages and handle them before any other BroadcastReceivers receive it. However, this still doesn't solve the problem of other BroadcastReceivers processing the message. Setting the priority only makes sure your BroadcastReceiver is called first.

To prevent a broadcast from being further broadcasted, you can call BroadcastReceiver#abortBroadcast. This basically informs the OS to stop forwarding to the broadcast to other receivers. In the case of a text message, this will prevent the default messaging app from storing the message and showing you a notification.

{:.center}
<script src="https://gist.github.com/XavierTalpe/5612793.js"></script>
