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
def link_recursive(src: str, dst: str):
    if os.path.isfile(src):
        if os.path.exists(dst):
            os.remove(dst)
        os.link(src, dst)
        return

    if not os.path.exists(dst):
        os.makedirs(dst)

    for child in os.listdir(src):
        link_recursive(f"{src}/{child}", f"{dst}/{child}")

    for child in os.listdir(dst):
        if os.path.exists(f"{src}/{child}"):
            continue
        dst_child = f"{dst}/{child}"
        if os.path.isfile(dst_child):
            os.unlink(dst_child)
        else:
            shutil.rmtree(dst_child)

HOME = os.getenv("HOME", "/home/arch")
for dst in path_map:
    link_recursive(path_map[dst].replace("~", HOME), dst)
