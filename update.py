#!/usr/bin/env python
import os
import shutil

# repo path : system path
path_map = {
    ".config/hypr": "~/.config/hypr",
    ".config/my": "~/.config/my",
    ".config/waybar": "~/.config/waybar",
    ".config/zed": "~/.config/zed",
    ".config/rofi": "~/.config/rofi",
    ".config/rofi/themes": "~/.local/share/rofi/themes",
    ".config/dunst": "~/.config/dunst",
    ".config/fish": "~/.config/fish",
    "bin": "~/bin",
    ".config/doom": "~/.config/doom",
}

def copy_if_newer(src: str, dst: str):
    dst_t = os.path.getmtime(dst) if os.path.exists(dst) else 0
    src_t = os.path.getmtime(src)
    if src_t <= dst_t:
        return
    if os.path.isfile(src):
        shutil.copyfile(src, dst)
        return

    if not os.path.exists(dst):
        os.makedirs(dst)

    for child in os.listdir(src):
        copy_if_newer(f"{src}/{child}", f"{dst}/{child}")

    for child in os.listdir(dst):
        if os.path.exists(f"{src}/{child}"):
            continue
        dst_child = f"{dst}/{child}"
        if os.path.isfile(dst_child):
            os.remove(dst_child)
        else:
            shutil.rmtree(dst_child)

HOME = os.getenv("HOME") or "/home/arch"
for dst in path_map:
    copy_if_newer(path_map[dst].replace("~", HOME), dst)
