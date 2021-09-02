# Test Docker file from LinuxONE - <LinuxONE: 2021/09/02 09:20>
FROM ehchung11/hpvsop-base-ssh:1.2.3-release-d0651e4
COPY myapp01-01.sh /root 
COPY iptables.conf /etc/iptables/
RUN chmod +x /root/myapp01-01.sh
RUN apt-get install -y nginx
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
# Execute initialization code
CMD ["/sbin/init"]
ENTRYPOINT ["/root/myapp01-01.sh"]
