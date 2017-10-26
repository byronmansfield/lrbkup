# Adobe Lightroom Backup

**Warning:** This project is still very much in development. It is not intended for public usage in it's current state. Nor is it a goal. It's is public hoping that someone might find majority of the code useful and tailor it to their own needs. For a full list of known issues, bugs, or incomplete features, please check the [issues page](https://github.com/byronmansfield/lrbkup/issues).

This is a script that helps me backup my Lightroom catalogs and photos to an external hard drive and to AWS S3, plus more. This originally started because of a data loss from a hard drive plus my lack of laziness to run an `aws` and/or `rsync` command. In addition to double checking myself manually. With this script the goal is to have no less than 2 copies of the data and minimize the amount I store on my local hard drive. This way if there is a data loss with any one of the devices, there is another backup somewhere. Also it helps solve the issue of filling up any one device. Eventually this will happen, so it helps me maintain these issues. Mostly I just automated most of my typical actions around Adobe LR.

## Why not write a Adobe LR plug-in

This is a great question and it still may happen in the future. I actually started a small sample project for this (no repo for it yet). I stopped when I ran into one issue that I'm still trying to figure out. The issue of where to put the plug-in and how the user would interact with it. What I mean is, is this a (what Adobe calls) Module at the top? Is this something that will go under the "Backup" button? Is this something that is just a little window in the side toolbar under a specific view? If you have any thoughts or suggestions on where to put this, that would be super helpful. I welcome advice and feedback to improve this project.

## It's not perfect

Yes I know. There are steps you have to do specifically within Lightroom. This is why I am still trying to figure out how to do this as a LR plug-in. However I have put in many alerts for reminders that you need to take these actions until I find a better solution. Mostly this helps me get up and going quickly to ensure that I do not suffer a data loss again.

### Things that work

 - Backup to local hard drive to external hard drive
 - Backup external hard drive to aws s3

### Things that still need work

This is just a short list of the main features that I'm still working on. Please check the [issues page](https://github.com/byronmansfield/lrbkup/issues) for a full list of features and other bugs I'm working through.

 - Freeing up local hard drive space
 - Pulling s3 images down to external hard drive

## Requirements

 - Mac OS X (Sorry I do not have a windows machine to work on, and Adobe does not have a Linux version of their software)
 - Bash 4 (It supports associative arrays which are used in this script)
 - You will have to set up a folder watch on your `/Volumes/` directory
 - You will need the `aws` command line tool set up and installed plus an aws account

## Setup/install

 - Pull the project
 - Make sure you have the above requirements
 - Make sure the bash script is executable and in your path
 - Add the applescript to `/Library/Scripts/Folder\ Action\ Scripts/`
 - Add watch and applescript to on `/Volumes/`

## Usage

Basic idea/workflow.

```bash
$ ./lrbkup
> Please pick which backup you want to do
> 1) backup to external
> 2) backup to S3
>
```

Thats basically it. Enjoy.

