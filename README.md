# Bazzite for Minecraft Speedrunning

The fastest and easiest way to get Minecraft Speedrunning set up on linux. (and you
don't have to run arch)

Bazzite is a great distro for beginners (and grumpy oldheads) that is incredibly stable
and difficult to break. However, it's slightly annoying to get MCSR going on it because
of dynamic linking and immutability.

Anyway I did the hard work for you, this image is ready to go.

## Installing

Download and install bazzite[https://bazzite.gg] (just select desktop pc, KDE, and your
graphics). Then run `brh`, select "Custom Provider", type `rickh94`, then for the image
`bazzite-mcsr:latest` for intel/amd gpus, `bazzite-mcsr-nvidia-open:latest` for nvidia
RTX cards and anything newer than a 10-series and `bazzite-mcsr-nvidia:latest` for
10-series nvidia cards and older. It'll do stuff, then select `Exit`, then reboot.
You're now on the mcsr image.

## Setup

Once you're rebased to this image, you can follow
[draconix's linux guide](https://draconix6.github.io/linux-mcsr/minecraft/mmc.html). You
can skip all the install stuff, that's done. There are a couple modifications, listed
below.

There is also a link to the guide on the system, just search in the app launcher.

## Prism Launcher

Prism launcher is already installed. You can immediately create a new instance. If all
you want is Ranked, there's a link to the download page in the app launcher.

## LD_PRELOAD

jemalloc is installed. It is at `/usr/lib64/libjemalloc.so`. You can verify this running
`jemalloc-config --libdir`. Use `/usr/lib64/libjemalloc.so` instead of
`/usr/lib/libjemalloc.so`

## waywall

Waywall is already installed at `/usr/bin/waywall`. You can skip past the installation
section to **Run waywall in your terminal**.

## Patched GLFW

waywall's patched glfw is already installed at `/usr/lib64/waywall-glfw/libglfw.so`. In
your instanced go to `Settings` -> `Tweaks`. Check `Native Libraries` then check
`Use system installation of GLFW` then paste the above path.

## Configuring waywall

All of this is normal, just follow the guide.

## Boat Eye

calsens is pre-installed. Just open Konsole and run `calcsens.py` following the guide to
calculate the numbers. It always gives you godsens so you can use green boat, it would
be crazy to do anything else. You can also just play with the numbers in your waywall
config until it feels good.

Always make changes to sensitivity in the waywall config. Your sensitivity in minecraft
should never change and you should have raw input turned _off_. It also automatically
changes your sens when you enable your measuring macro.

## Drag clicking

The libinput tweak that allows drag clicking is already installed in `/etc/libinput`.

### Extras

## Utilities

ModCheck and MapCheck are installed and available in the app menu. You can copy your
instance folder path from Prism and use them to download mods and maps.

## Links

There are links to open the minecraft speedrunning site, the draconix linux guide, the
waywall help, and a link to download ranked.

## OBS Studio

OBS Studio is pre-installed natively for recording and streaming
