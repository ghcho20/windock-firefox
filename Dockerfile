FROM ghcho20/centos:0

#RUN yum groupinstall -y "GNOME Desktop"
RUN yum groupinstall -y "X Window System"
RUN ln -sf /lib/systemd/system/runlevel5.target /etc/systemd/system/default.target

RUN yum install -y firefox

CMD /usr/bin/firefox
