FROM heroku/heroku:20
RUN curl -sSL https://github.com/jpillora/chisel/releases/download/v1.7.7/chisel_1.7.7_linux_amd64.gz | zcat > /bin/chisel
RUN chmod +x bin/chisel
EXPOSE 80 443 1000-65535
CMD chisel server --port 80 --socks5 --reverse
