---
title: Three.js
date: 2020-05-18 07:19:05
tags:
	- code
	- javascript
	- webAR
---

WebAR is built on WebGL, and the library for working with WebGL is [three.js](https://threejs.org/), invented by [mrdoob](https://github.com/mrdoob/three.js/). Before learning webAR, I thought I should do a couple of experiments with three.js so that I understood some of the basic concepts. Also, I wanted to test out my [boilerplate](../../17/ES-Preact-Boilerplate-AKA-Goodthing/).

[Lines1](http://sketches.brokenbaysoftware.co/lines1/) is a line generated from a 100 random points. Not random exactly but random within a range around the last point that was generated.

[Lines2](http://sketches.brokenbaysoftware.co/lines2/) is the same thing but 100... or a 1000, i can't remember... lines are generated at once and rendered to the scene.

The key learnings were:

-   How to use three.js with a `useEffect()` hook in a Preact component - kind of cheating but a nice way to just do vanilla JS with Preact/React
-   Working out how to re-render
-   Getting the thing to go full screen on tap

Doing three.js inside `useEffect()` is basically just a mess of side effects. Not very functional at all. The approach I've use so far is very procedural - set up all the properties for the scene things and then render, then do this onTapEnd, etc. It's very oldschool. One idea might be to use RX.js but I'm wondering if it's worth it. [A-Frame](https://aframe.io/docs/1.0.0/introduction/) is an HTML-like, declarative wrapper around three.js. It might be better to just use that and hide away all the funny business.

Looking ahead at the [AR.js docs](https://ar-js-org.github.io/AR.js-Docs/), all the examples use AR.js. There is a version of AR.js that uses three.js directly without A-Frame but there aren't any actual examples in the docs showing how to use it, just some repos on GitHub. So, the next step is probably to try out Goodthing with AR.js.
