FROM docascod/docsascode:latest

ADD action.sh /action.sh
RUN chmod +x /action.sh
ENTRYPOINT ["/action.sh"]
