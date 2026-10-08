# docker-ariang

[![Docker Pulls](https://img.shields.io/docker/pulls/qiujun8023/ariang)](https://hub.docker.com/r/qiujun8023/ariang)
[![Docker Image Version](https://img.shields.io/docker/v/qiujun8023/ariang/latest)](https://hub.docker.com/r/qiujun8023/ariang/tags)

Docker image for [AriaNg](https://github.com/mayswind/AriaNg), supports `linux/amd64` and `linux/arm64`, automatically synced with upstream releases daily.

## Tags

- `latest`: the most recent AriaNg release.
- `<version>` (e.g. `1.3.13`): a specific AriaNg release.

## Usage

### Docker

```bash
docker run -d -p 8080:80 qiujun8023/ariang
```

### Docker Compose

```yaml
services:
  ariang:
    image: qiujun8023/ariang
    ports:
      - "8080:80"
    restart: unless-stopped
```

Visit http://localhost:8080, then set the aria2 RPC address and secret under AriaNg Settings → RPC. AriaNg is only a web UI; to run aria2 itself, see [qiujun8023/aria2](https://github.com/qiujun8023/docker-aria2).
