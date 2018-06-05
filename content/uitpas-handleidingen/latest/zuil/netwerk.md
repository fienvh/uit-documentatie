---
---

# Netwerk vereisten voor de UiTPAS-zuil

## IP via DHCP

Om een IP adres (en gateway en dns) te verkrijgen rekent de zuil op dhcp. Het toegekende IP-adres wordt tijdens het opstarten weergegeven.

De zuil heeft een aantal open poorten nodig.

* TCP 443 naar www.uitid.be (176.34.136.29)
* TCP 80 naar www.uitid.be (176.34.136.29) & cidmonitor.lodgon.com (54.246.119.103)
* TCP 8080 naar cidmonitor.lodgon.com (54.246.119.103)
* UDP 123 (voor het contacteren van publieke ntp servers)

## Vast IP

Als een DHCP-server op de locatie niet mogelijk is, kan de zuil een vast IP-adres krijgen. Om dit te doen, zijn de onderstaande stappen belangrijk.

De zuil moet via een DHCP-netwerk verbonden worden met het netwerk. Zo kan er via ssh ingelogd worden op de zuil.

Hierna kunnen we de netwerk-instellingen wijzigen in het bestand /etc/network/interfaces. Om een vast IP-adres toe te kennen moeten we

```
iface eth0 inet dhcp
```

vervangen door (in dit voorbeeld is 192.168.1.130/24 het vaste IP-adres)

```
  iface eth0 inet static  
  address 192.168.1.130   
  netmask 255.255.255.0   
  network 192.168.1.0   
  broadcast 192.168.1.255   
  gateway 192.168.1.250
```

In het bestand /etc/resolv.conf moet ook de nameserver toegevoegd worden.