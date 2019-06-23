#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from utility.common import Common
from utility.package import Package

if __name__ == "__main__":
    files = ['sync.py']
    directory = Common.get_cmd_dir()
    paths = [Common.join_paths(directory, x) for x in files]
    distdir = Common.get_cmd_dir()
    Package(paths, distdir).run()
