#!/bin/bash

source tools.sh

$ANDROID update project --name KiwiViewer --path $app_dir --target android-19 --subprojects
