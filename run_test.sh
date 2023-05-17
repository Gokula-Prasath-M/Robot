#!/bin/bash

# Set up environment
export ANDROID_HOME=/home/rently/Android/Sdk
export ANDROID_AVD_HOME=/home/rently/.android/avd
export PATH=$PATH:$ANDROID_HOME:$ANDROID_HOME/emulator:$ANDROID_HOME/platform-tools

# Start Appium server
appium &

# Run your test command or script
robot Test_Suite/Test_Cases.robot

# Stop Appium server
pkill -f "appium"
