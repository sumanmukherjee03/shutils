#! /usr/bin/env bash

arp -a # ARP of router
arping -I eth0 10.23.11.101 # Ping the device at the ethernet layer
ping google.ca # Check if request is even going out
traceroute google.ca # Trace using icmp
tcptraceroute google.ca # Trace using tcp instead of icmp

ifconfig -a # Display all interfaces
ifconfig en0 # Display selected interface

netstat -r -f inet # Route table for inet address family
netstat -tup # List currently active connection to the system
netstat -tupl # List listening ports
netstat -anp --udp --tcp | grep LISTEN # List listening ports for tcp and udp connections

ifdata -e eth0; echo $? # Checks existence of interface and prints the exit status
ifdata -pa eth0 # Network address of interface
ifdata -pn eth0 # Netmask of interface
ifdata -pN eth0 # Network address of interface
ifdata -pb eth0 # Broadcast of interface
ifdata -p eth0 # Prints details of the interface
ifdata -si eth0 # Stats of interface for incoming requests
ifdata -so eth0 # Stats of interface for outgoing requests

lsof -i 4 -n -P # List of all open sockets for ipv4
socklist # List of all open sockets
sockstat -p 22 # Get socket info for port 22

iptables -L -n -v # List all firewall settings
iptables -Z # Clear out the counter for packets and bytes in the INPUT, OUTPUT and FORWARD chains
iptables -L -t nat # Check the NAT status
cat /proc/sys/net/ipv4/ip_forward # Check if IP forwarding is on. Useful for NAT instances
