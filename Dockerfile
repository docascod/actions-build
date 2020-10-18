FROM docascod/docsascode:latest

COPY action.sh /action.sh

RUN chmod +x /action.sh

ENTRYPOINT ["/action.sh"]
