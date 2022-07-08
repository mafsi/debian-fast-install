#!/bin/bash

set +e

# This script bulk installs all the necessary debian packages in order
# to perform a fast reinstallation.


# updating source using root account

sudo apt update

# This package contains an informational list of packages which are
# considered essential for building Debian packages. This package also
# depends on the packages on that list, to make it easy to have the
# build-essential packages installed.

sudo apt install -y build-essentials

# Paragraph reformatter
# Greatly enhanced fmt type program by Adam M. Costello.
# Can be used within vi or other editor to automatically reformat text
# in a variety of ways.
# Perfect for use with email & usenet messages as it correctly handles
# multiple levels of quoting characters.

sudo apt install -y par


# install Brave browser

sudo apt install apt-transport-https curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install -y brave-browser

# XFCE4 additional packages

#XFCE packages
sudo apt install -y xfce4 xfce4-goodies

# Microcode for Intel/AMD
# sudo apt install -y amd-microcode
sudo apt install -y intel-microcode

# Network File Tools/System Events
sudo apt install -y dialog mtools acpi acpid gvfs-backends

# Sound packages (pulseaudio installed prior)
sudo apt install -y alsa-utils volumeicon-alsa

# EXA installation
# replace ls command in .bashrc file with line below
# alias ls='exa -al --long --header --color=always --group-directories-first'
sudo apt install -y exa

# Printing and bluetooth (if needed)
sudo apt install -y cups
sudo apt install -y bluez blueman

sudo systemctl enable bluetooth
sudo systemctl enable cups


# Command line text editor 
sudo apt install -y vim


# Install fonts
sudo apt install fonts-font-awesome fonts-powerline fonts-ubuntu \
fonts-liberation2 fonts-liberation fonts-terminus -y

# Install Zram Swap zram is a Linux kernel module that allows you to set
# up compressed filesystems in RAM. zram-tools uses this module to set
# up compressed swap space. This is useful on systems with low memory
# or servers running a large amount of services with data that's easily
# swappable but that you may wish to swap back fast without sacrificing
# disk bandwidth.

# By default it allocates 100MB of RAM, you can configure this in
# /etc/default/zramswap

sudo apt install -y zram-tools

# KeepassXC -- Password manager
sudo apt install -y keepassxc


# Install Flatpak for additional packages

sudo apt install -y flatpak
sudo apt install -y gnome-software-plugin-flatpak

# Adding Flatpak repo
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install flatpak apps

# Whatsapp
flatpak install flathub io.github.mimbrero.WhatsAppDesktop -y
# Telegram
flatpak install flathub org.telegram.desktop -y
# Scantailor Advanced
flatpak install flathub com.github._4lex4.ScanTailor-Advanced -y

# Install Git & Git Hub 
# hub is a command line tool that wraps git in
# order to extend it with extra features and commands that make working
# with GitHub easier.
# see: https://github.com/github/hub#installation

sudo apt install -y  git hub


# install git CLI successor of git hub

curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh

# install battery management
sudo apt install -y tlp

# Yt-dlp downloader
python3 -m pip install -U yt-dlp

# Spotify downloader
pip install spotdl


# Install PdfGrep

sudo apt install -y pdfgrep

# install zip

sudo apt install -y zip

# install Micsro$oft fonts for LibreOffice

sudo apt install -y ttf-mscorefonts-installer

# Substituting Calibri And Cambria Fonts
sudo apt-get install fonts-crosextra-carlito fonts-crosextra-caladea

# install aditional Tesseract languages & Tesseract OCR
sudo apt install -y tesseract-ocr
sudo apt install -y tesseract-ocr-deu # german
sudo apt install -y tesseract-ocr-ell # greek
sudo apt install -y tesseract-ocr-ron # romanian
sudo apt install -y tesseract-ocr-fra # french
sudo apt install -y tesseract-ocr-grc # ancient greek
sudo apt install -y tesseract-ocr-ita # italian
sudo apt install -y tesseract-ocr-lat # latin

# install pdftk 

# pdftk port to java - a tool for manipulating PDF documents If PDF
# is electronic paper, then PDFtk is an electronic stapler-remover,
# hole-punch, binder, secret-decoder-ring, and X-Ray-glasses. PDFtk is a
# simple tool for doing everyday things with PDF documents.

sudo apt install -y pdftk-java pdftk


# install most to colorize man pages
sudo apt install -y most
