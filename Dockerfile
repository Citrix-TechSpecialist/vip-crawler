FROM progrium/busybox
MAINTAINER Mayank Tahilramani
RUN opkg-install bash bzip2
COPY ./ scripts/
RUN mv /scripts/conda_install.sh /root/conda_install.sh && mv /scripts/Miniconda3-3.8.3-Linux-x86_64.sh /root/Miniconda3-3.8.3-Linux-x86_64.sh
RUN ["bash", "/root/conda_install.sh"]
RUN /root/bin/conda install pip && /root/bin/pip install -r /scripts/requirements.txt
RUN mkdir /var/vip-input/ && touch /var/vip-input/vips.csv
CMD /root/bin/python /scripts/vipCrawler-ssl.py /var/vip-input/vip.csv
