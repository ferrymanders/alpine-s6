# alpine-s6

```
ALPINE=3.16

docker buildx build \
    --push \
    --platform linux/amd64,linux/arm64 \
    --build-arg ALPINE=${ALPINE} \
    -t fmanders/alpine-s6:${ALPINE} \
    .
```