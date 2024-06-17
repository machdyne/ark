# Ark

Ark is a work-in-progress information distribution intended for offline computers. This repo contains scripts that download and prepare the distribution for deployment and a simple script for accessing the content.

The distribution is currently ~2.4GB and will remain <= 4GB. The primary criteria for inclusion are potential offline utility and/or historical notability. Inclusion does not necessarily imply endorsement. Please contact us to nominate additional information.

## Information

This is the list of currently included information:

  * Project Gutenberg CD-ROM (~600 books) [2003]
  * Wikipedia (~10K "vital" articles) [2008]
  * CIA World Factbook with world map images [2010]
  * MedlinePlus Health Topics [2024]

## Building

### Install Prerequisties

```
$ sudo apt install wget 7z git-lfs links
```

### Download & Process

```
$ . scripts/build.sh
```

The results will be in the ark directory, the build directory can be deleted.

### Use

The `ark` script is included for browsing and reading the content.

```
$ . scripts/ark browse wp 
$ . scripts/ark search pg moby
$ . scripts/ark read pg 355
```

### Install

#### Generic Installation

The following commands will copy the data to `/opt/ark` and install the `ark` script:

```
$ chmod +x scripts/ark
$ sudo cp scripts/ark /usr/local/bin
$ sudo mkdir -p /opt/ark
$ sudo cp -R ark/* /opt/ark
```

If you want to install the data in another location, you'll need to edit the ARKDIR variable at the top of `ark` script.

#### Kakao Linux

If using Ark with [Kakao Linux](https://github.com/machdyne/kakao) you should copy the data to your Ark partition:

```
$ mount /dev/sdX4 /mnt
$ cp -R ark/* /mnt
$ sync
```

You can then use the `ark` command while running Kakao to browse and read the content.

## License

This repo including the documentation, scripts and metadata not included below are released under the Lone Dynamics Open License (which is substantially similar to the BSD-1-Clause license).

The content from Wikipedia is released under the [Creative Commons Attribution-ShareAlike 3.0 Unported License](https://creativecommons.org/licenses/by-sa/3.0/).

The content from Project Gutenberg is believed to be in the public domain, but we make no guarantees that this is the case and it is up to you to verify copyright status and to understand the copyright laws in your country.

The content from MedlinePlus is product of the National Library of Medicine (NLM), which is part of the National Institutes of Health (NIH), and is believed to be in the public domain.
