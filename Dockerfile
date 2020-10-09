FROM alpine

RUN apk add --no-cache --upgrade bash
RUN apk add --no-cache  curl
RUN apk add --no-cache openssl
COPY  checkexpirydomain.sh .
RUN chmod +x checkexpirydomain.sh
CMD ["sh","checkexpirydomain.sh"]


