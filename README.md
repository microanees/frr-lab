# frr-lab

```buildoutcfg
git clone https://github.com/microanees/frr-lab.git
cd frr-lab/
docker build -t frr-lab:1.0 .
docker run -it --rm --name frr -d frr-lab:1.0
docker exec -it frr /bin/bash
docker exec -it frr vtysh
```
