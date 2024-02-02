package something

import (
	"context"

	"github.com/marefr/symlink-go-test/a/pkg/lib"
)

func Test() string {
	return lib.Test(context.Background())
}
