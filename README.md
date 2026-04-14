# docker-ariang

[![Docker Pulls](https://img.shields.io/docker/pulls/qiujun8023/ariang)](https://hub.docker.com/r/qiujun8023/ariang)
[![Docker Image Version](https://img.shields.io/docker/v/qiujun8023/ariang/latest)](https://hub.docker.com/r/qiujun8023/ariang/tags)

Docker image for [AriaNg](https://github.com/mayswind/AriaNg), supports `linux/amd64` and `linux/arm64`, automatically synced with upstream releases daily.

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

Visit http://localhost:8080
