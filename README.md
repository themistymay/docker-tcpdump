# docker-tcpdump

```bash
$ docker run --net=host -v {LOCAL_DIR}:/data/pcaps {ID} -i {LOCAL_INTERFACE_TO_DUMP}
```

```bash
docker run -d --net=host -v /media/storage1/pcaps:/data/pcaps 5e1ad9384dec -i em4
```
