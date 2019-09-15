FROM webhippie/minecraft-forge
ADD https://storage.googleapis.com/slow-to-anger/rlcraft.tar.gz /minecraft
RUN cd /minecraft && tar -xvzf rlcraft.tar.gz
