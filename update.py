#!/usr/bin/env python
import os
import shutil
from pathlib import Path

path_map_src_dst = {
    "~/.config/hypr": ".config/hypr",
    "~/.config/my": ".config/my",
    "~/.config/waybar": ".config/waybar",
    "~/.config/zed": ".config/zed",
    "~/.config/rofi": ".config/rofi",
    "~/.local/share/rofi/themes": ".config/rofi/themes",
    "~/.config/dunst": ".config/dunst",
    "~/.config/fish": ".config/fish",
    "~/.config/doom": ".config/doom",
    "~/bin": "bin",
}


def hardlink(src: Path, dst: Path):
    if dst.exists():
        print(f"{dst}.unlink()")
        dst.unlink()
    print(f"shutil.copytree({src}, {dst}, copy_function=os.link)")
    shutil.copytree(src, dst, copy_function=os.link)


for src, dst in path_map_src_dst.items():
    src_path = Path(src).expanduser()
    dst_path = Path(dst)
    hardlink(src_path, dst_path)
