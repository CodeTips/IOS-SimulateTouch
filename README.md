# IOS-SimulateTouch
源码来自于 [IOS13-SimulateTouch](https://github.com/xuan32546/IOS13-SimulateTouch)
修改支持roothide、rootless编译安装

删除了OpenCV相关功能和system相关调用。

如果需要system调用可以使用下面代码
```
int spawn(const char* executable, ...) {
    int     ret;
    pid_t   pid;
    va_list args;
    va_start(args, executable);
    setuid(0);
    const char *path[] = {"PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin", NULL};
    ret = posix_spawn(&pid, executable, NULL, NULL, (char**)args, (char**)path);
    if (ret == 0) waitpid(pid, NULL, 0);
    return ret;
}
```
已知问题 app闪退，后面有时间了完善。 不影响socket远程调用。
