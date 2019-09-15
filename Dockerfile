FROM gcr.io/optimum-archery-169403/github.com/fazzone/minecraft-forge:874b93e
ADD https://storage.googleapis.com/slow-to-anger/rlcraft.tar.gz /minecraft
RUN tar -xzf rlcraft.tar.gz && rm rlcraft.tar.gz
# un-distruct symantec root CAs so that forge can pull jars from bintray... 
RUN sed -ibak /usr/lib/jvm/java-1.8-openjdk/jre/lib/security/java.security -e 's jdk.security.caDistrust #jdk.security.caDistrust g'

