FROM java:8
COPY src /home/root/coucou/src
WORKDIR /home/root/coucou
RUN mkdir bin
RUN javac -d bin src/Coucou.java
RUN touch youpi.txt
ENTRYPOINT ["java","-cp","bin","Coucou"]
ENV FOO bar
EXPOSE 80 8080
