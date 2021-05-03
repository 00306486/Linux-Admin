#!/bin/bash
#################################
#In a file
#################################
#First I am going to list the host name of the server to label the output
hostname >> networkinfo.txt
#After labeling the input i'm going to output ifconfig to list all the network info
ifconfig >> networkinfo.txt
#Next i'm going to be listing the dns for the server!
grep 'nameserver' /etc/resolv.conf >> networkinfo.txt
# After recieving the network info I want to make sure that the connection works properly so i will be pinging comcast/xfinity
ping -c 10 www.xfinity.com >> networkinfo.txt
#To wrap up everything i've recieved in this script I'm going to make a time stamp with a signature
echo "__________________________________________________________" >> networkinfo.txt
echo "This Script is to look at the network info of the server and test the connection of the server as well!" >> networkinfo.txt
echo "This script was made by Anthony Rodriguez and was run on: " >> networkinfo.txt
echo $(date) >> networkinfo.txt
################################
#In command line
################################
hostname
ifconfig
grep 'nameserver' /etc/resolv.conf
ping -c 10 www.xfinity.com

