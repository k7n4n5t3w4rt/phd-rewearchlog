---
title: Reaout | Adding Questions and Custom SessionID
date: 2021-07-14 22:33:09
tags: Rreadout, software
---

Today I was using the Readout tool with the CommSee SMs who are interested in doing the pilot. I decided it was worth getting it working because of the difficulties in working remotely with these folks in India. People have their video off for various reasons:

-   Poor connections (like, mobile phones using 2G or 3G) in rural India
-   Different communication styles - they're quiet
-   Having video on is a signal that you're taking the lead in the meeting

It's a big group of about 14 people and we needed to make some decisions.

I put the link in teams chat but people couldn't access it on the bank network due to security settings. They could use their phones (lucky it works on mobile) but that meant typing in the URL manually.

    NEW REQUIREMENT: Short URLs

In the end it was pretty good. We got a useful readout and decided to spend the weekly sessions focusing on the pilot.

I tried a few different labels for the poles of the dyad slider but some were not URL friendly.

    NEW REQUIREMENT: Base64 encoded URL parameter values

We had a lot of trouble sharing around the URL.

    NEW REQUIREMENT: Custom session IDs so we can use one generic input view and customised `/readout` views for different questions.

I realised that we need to display the question as a visual cue.

    NEW REQUIREMENT: Question

If we're going to be using the same URL as input for a session with multiple questions, we need to be able to clear the existing inputs. This is especially a problem if someone drops off mid-call. Without the ability to clear the history, their last recorded position will just stay there forever.

    NEW REQUIREMENT: Clear history

UPDATE: THE NEXT DAY...

I woke up late and started tweaking it again. It wasn't really working on iPad.

    NEW REQUIREMENT: Make the Readout view open in a new tab

I also fixed a problem I noticed when opening on the iPad from the home screen shortcut. It's feeling pretty good on the iPad and I put a test up in Gentle Agile Folk Slack to try it out.

<https://readout.brokenbaysoftware.co/readin?question=SG93IGlzIHlvdXIgZGF5IGdvaW5nPw==&pole1=Tm90IHNvIGdvb2Q=&pole2=R29vZCE=&sessionId=1626313881590&readoutLink=L3JlYWRvdXQ/cXVlc3Rpb249U0c5M0lHbHpJSGx2ZFhJZ1pHRjVJR2R2YVc1blB3PT0mcG9sZTE9VG05MElITnZJR2R2YjJRPSZwb2xlMj1SMjl2WkNFPSZzZXNzaW9uSWQ9MTYyNjMxMzg4MTU5MA==>

As soon as I did (which is interesting, perhaps), I realised that it needs some feedback when you move the slider. Maybe a little message that appears front and center and then fades away so you can do it many times.

    NEW REQUIREMENT: Feedback after moving slider.
