#!/bin/bash
echo "Welcome to the Arch and AUR maintainer script, do you wanna proceed?"
echo "1) yes"
echo "2) no"

read -p "Input Choice: " choice

# aur helper
case "$choice" in
  1)
  echo "Select your AUR helper or pacman"
  echo "1) yay"
  echo "2) paru"
  echo "3) pacman"
  echo "4) exit"
  
  read -p "Input Choice: " aurhelper
  ;;
esac

# yay script
case "$aurhelper" in
  1)
  echo "Checking archlinux.org news"
  yay -Pw
  
  echo "Do you wanna update all packages and clean all cache and unused packages?"
  echo "1) yes"
  echo "2) no"

  read -p "Input Choice: " yayscript
  ;;
esac
case "$yayscript" in
   1)
   yay -Syu
   yay -Scc
   yay -Yc
   sudo pacman -Rns $(pacman -Qtdq)
   rm -rf ~/.cache/*
   ;;
esac

# paru script
case "$aurhelper" in
  2)
  echo "Checking archlinux.org news"
  paru -Pw
  
  echo "Do you wanna update all packages and clean all cache and unused packages?"
  echo "1) yes"
  echo "2) no"

  read -p "Input Choice: " paruscript
  ;;
esac
case "$paruscript" in
   1)
   paru -Syu
   paru -Scc
   paru -Yc
   sudo pacman -Rns $(pacman -Qtdq)
   rm -rf ~/.cache/*
   ;;
esac

# pacman script
case "$aurhelper" in
  3)
  echo "Checking archlinux.org news"
  paru -Pw
  
  echo "Do you wanna update all packages and clean all cache and unused packages?"
  echo "1) yes"
  echo "2) no"

  read -p "Input Choice: " pacmanscript
  ;;
esac
case "$pacmanscript" in
   1)
   sudo pacman -Syu
   sudo pacman -Scc
   sudo pacman -Yc
   sudo pacman -Rns $(pacman -Qtdq)
   rm -rf ~/.cache/*
   ;;
esac