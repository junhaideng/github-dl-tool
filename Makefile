GOOS=`go env GOOS`

test: main.go 
	go run main.go -url https://github.com/junhaideng/go-crawler-example/

build: main.go 
	go env -w GOOS=windows
	go build -o github-dl.exe main.go
	go env -w GOOS=darwin
	go build -o github-dl_mac main.go 
	go env -w GOOS=linux
	go build -o github-dl_linux main.go
	go env -w GOOS=${GOOS}

clean:
	rm github-dl*