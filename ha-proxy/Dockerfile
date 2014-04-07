# Ha-proxy
# VERSION               0.1

FROM phusion/baseimage



# Install ha-proxy
RUN apt-get install -y --no-install-recommends haproxy

### In Dockerfile:
RUN mkdir -p /etc/my_init.d
ADD run.sh /etc/my_init.d/haproxy.sh


# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]
# Ovveride configuration ?


# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


EXPOSE 80 443
#CMD    ["x11vnc", "-forever", "-usepw", "-create"]