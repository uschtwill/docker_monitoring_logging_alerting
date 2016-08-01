FROM kibana

# installing plugins doesn't work for some weird fucked up reason
### At the very end of building: >>> ERROR: Service 'kibana' failed to build: lstat docker-entrypoint.sh: no such file or directory

# RUN gosu kibana kibana plugin -i kibana/timelion
# RUN gosu kibana kibana plugin -i elastic/sense
# RUN gosu kibana kibana plugin -i elasticsearch/marvel/latest

# ENV PATH /opt/kibana/bin:$PATH

# COPY docker-entrypoint.sh /

# EXPOSE 5601
# ENTRYPOINT ["/docker-entrypoint.sh"]
# CMD ["kibana"]
