FROM oloc/petclinic:base
MAINTAINER oloc

# Add puppet modules
RUN puppet module install puppetlabs-tomcat
RUN puppet module install puppetlabs-java

ADD site.pp /root/site.pp
RUN chmod +x /root/site.pp
ADD run.sh /root/run.sh
RUN chmod +x /root/run.sh

EXPOSE 8080

CMD ["/root/run.sh"]