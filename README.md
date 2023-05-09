# spring-boot-hello
A Spring Boot Bootstrap Hello App with Single and Multistage Dockerfile 


The advantage of Multistage docker file is the images size generated in the build and the deploy stage is almost 
much lesser than just copying the .jar file into the image.

REPOSITORY                              TAG                     IMAGE ID       CREATED          SIZE
sba-multisatge-docker                   latest                  d4353f599085   12 seconds ago   344MB  --> Multistage Build.
<none>                                  <none>                  78654221d460   15 seconds ago   516MB
image1                                  latest                  4f851347031d   14 hours ago     475MB  --> Single Stage
eclipse-temurin                         17-jdk-jammy            56c7bc12ee6d   4 days ago       456MB
maven                                   3.8.3-openjdk-17-slim   98e2db9506ab   17 months ago    424MB
openjdk                                 17-jdk-alpine           264c9bdce361   22 months ago    326MB
