FROM docascod/docsascode:latest

COPY action.sh /action.sh

ENTRYPOINT ["/action.sh"]
