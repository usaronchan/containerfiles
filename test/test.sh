docker buildx build \
  --platform linux/amd64 \
  --file ./test/Dockerfile \
  --tag test
  ./test
