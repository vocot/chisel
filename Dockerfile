FROM heroku/heroku:20
RUN curl -sSL https://github.com/jpillora/chisel/releases/download/v1.7.7/chisel_1.7.7_linux_amd64.gz | zcat > /bin/chisel
RUN chmod +x bin/chisel
EXPOSE 80
