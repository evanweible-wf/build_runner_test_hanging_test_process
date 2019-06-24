# Repro for hanging test process via `build_runner test`

1. `pub get`
2. `pub run build_runner test`
3. As soon as the first test suite (`long_test.dart`) starts running, interrupt
   the process with `ctrl+c`
4. Note that the parent `build_runner test` process exits, but the child
   `pub run test` process does not because it consumes the first interrupt
   signal. The result is that the user initially sees their terminal prompt
   (because the parent process exited), but right after, the hanging child
   process `pub run test` continues to log to stdout/stderr.
