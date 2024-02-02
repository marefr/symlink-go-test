# vscode-go extension with test on save and symbolic links

Test repo for reproducing issue regarding test on save when package/file is a symbolic linc.

**Settings:**
```json
{
  "search.followSymlinks": true,
  "search.useIgnoreFiles": false,
  "go.testOnSave": true
}
```

**Reproduction steps:**

1. Setup symbolic links
```
cd ./b
./dev.sh
```

2. a/pkg/extensions should now include content from b/src/pkg/extensions as symbolic links

2. Open "a" directory in vs code
```
cd ..
code ./a
```

3. Open `pkg/extensions/something/something_test.go`
4. Save the file
5. Output window show the failure when running tests

```
Running tool: /usr/local/go/bin/go test github.com/marefr/symlink-go-test/a/pkg/extensions/something

no required module provides package github.com/marefr/symlink-go-test/a/pkg/extensions/something: go.mod file not found in current directory or any parent directory; see 'go help modules'
```

6. Open a terminal in vs code (current directory should be the workspace, `<repo>/a`)
7. Paste command from output window above
```
~/go/src/github.com/marefr/symlink-go-test/a
❯ /usr/local/go/bin/go test github.com/marefr/symlink-go-test/a/pkg/extensions/something
ok      github.com/marefr/symlink-go-test/a/pkg/extensions/something    0.003s
```