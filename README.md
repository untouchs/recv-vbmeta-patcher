## Patch your Samsung Recovery and VBMeta images
This is a combo version of patching Samsung recovery image with fastbootd (https://github.com/Johx22/Patch-Recovery) and patching vbmeta (https://github.com/cd-Crypton/vbmeta-action-patcher) utilizing GitHub Workflows infra. All binaries are coming from those repos.

## Guide
* Fork this repository.
* Upload your vbmeta.img.lz4 and recovery.img.lz4 to the forked repo.
* Go to `Action` tab, then execute the workflow.
* You'll find patched recovery with fastbootd and vbmeta in correspoding artifacts section of the workflow run in a single file called miniAP.tar.md5.
* Simply flash that archive with patched Odin to AP section.
