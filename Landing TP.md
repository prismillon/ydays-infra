- 🎯 Quels sont les trois différents types de cloud computing disponibles ?  
    Expliquez leurs principes de fonctionnement
	- cloud public: c'est une infra qui a pour but d'être loué par l'utilisateur final.
	- cloud privé: pareil mais elle est mise en place par ou pour l'utilisateur final.
	- cloud hybride: un ensemble des deux rassemblé pour être considéré comme un seul.

macos pardon romain je suis désolé je fais ce que je peux.... (mon mac a 12h d'autonomie ratio)
![[image ip vm.png]]
![[image disque vm.png]]
```bash
[user@landing-vm1 ~]$ lsblk
NAME        MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
vda         252:0    0   64G  0 disk
├─vda1      252:1    0  600M  0 part /boot/efi
├─vda2      252:2    0    1G  0 part /boot
└─vda3      252:3    0 62.4G  0 part
  ├─rl-root 253:0    0 40.5G  0 lvm  /
  ├─rl-swap 253:1    0  2.1G  0 lvm  [SWAP]
  └─rl-home 253:2    0 19.8G  0 lvm  /home
vdb         252:16   0   10G  0 disk
├─vdb1      252:17   0    5G  0 part
└─vdb2      252:18   0    5G  0 part
```

- ⏹️ Placez deux routeurs `R1` `R2` et deux PC `PC1` et `PC2`. Reliez un PC à un routeur chacun, puis reliez les deux routeurs entre eux.
![[routeur nul.png]]
- 🎯 Quelle est la commande à utiliser pour faire en sorte que mon PC dans le réseau en `10.0` pinge mon autre PC dans le réseau `20.0` ?
`ip route 20.0.1.1 255.255.255.0 30.0.1.1` et inversement

- 🎰 Utilisez cette commande et testez un ping entre `PC1` et `PC2`
 ```beurk_windows
C:\>ping 20.0.1.2
Pinging 20.0.1.2 with 32 bytes of data:
Reply from 20.0.1.2: bytes=32 time<1ms TTL=126
Reply from 20.0.1.2: bytes=32 time<1ms TTL=126
Reply from 20.0.1.2: bytes=32 time<1ms TTL=126
Reply from 20.0.1.2: bytes=32 time<1ms TTL=126
Ping statistics for 20.0.1.2:
Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
Minimum = 0ms, Maximum = 0ms, Average = 0ms
C:\>
```

-  ⏹️ Placez un `PC3` relié uniquement au routeur `R3` avec l'adresse IP `60.0.1.1`
![[routeur triangle très nul.png]]
- 🎰 Pingez les PC avec un traceroute pour montrer le chemin.
```
C:\>tracert 60.0.1.2

Tracing route to 60.0.1.2 over a maximum of 30 hops:

1 0 ms 0 ms 0 ms 10.0.1.1
2 0 ms 0 ms 0 ms 50.0.1.1
3 23 ms 0 ms 0 ms 60.0.1.2

Trace complete.

C:\>
```