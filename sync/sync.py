#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
from utility.common import Common


class PodSync(object):
    def __init__(self, data):
        super(PodSync, self).__init__()
        pod_path = Common.join_paths(os.environ['HOME'], ".cocoapods/repos")
        self._srcPodDir = Common.join_paths(pod_path, data.get('SrcRepo'))
        self._destPodDir = Common.join_paths(pod_path, data.get('DestRepo'))
        self._pods = data.get('Pods')

    def run(self):
        self.update_dst_repo()
        self.sync_pods()
        self.upload_dst_repo()

    def update_dst_repo(self):
        Common.system_cmd('git pull --all', directory=self._destPodDir)

    def upload_dst_repo(self):
        Common.system_cmd('git add .', directory=self._destPodDir)
        Common.system_cmd('git commit -m "auto sync"',
                          directory=self._destPodDir)
        Common.system_cmd('git push', directory=self._destPodDir)

    def sync_pods(self):
        for name in self._pods:
            md5 = Common.md5(name)
            src_path = Common.join_paths(self._srcPodDir, 'Specs', md5[0],
                                         md5[1], md5[2], name)
            dst_path = Common.join_paths(self._destPodDir, 'Specs', md5[0],
                                         md5[1], md5[2], name)
            Common.replace_file(src_path, dst_path)


def main():
    path = Common.join_paths(Common.get_cmd_dir(), 'config.json')
    content = Common.read_file(path)
    arr = Common.str2json(content)
    for x in arr:
        PodSync(x).run()


if __name__ == "__main__":
    main()
