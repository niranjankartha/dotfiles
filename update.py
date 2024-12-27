#!/usr/bin/env python

import os
import shutil

HOME = os.getenv("HOME")

for dir in os.listdir("config"):
    shutil.copytree(f"{HOME}/.config/{dir}", f"config/{dir}", dirs_exist_ok=True)

for file in os.listdir("bin"):
    shutil.copyfile(f"{HOME}/bin/{file}", f"bin/{file}")
