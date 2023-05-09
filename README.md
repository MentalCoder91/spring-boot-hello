# spring-boot-hello
A Spring Boot Bootstrap Hello App with Single and Multistage Dockerfile 


The advantage of Multistage docker file is the images size generated in the build and the deploy stage is almost 
much lesser than just copying the .jar file into the image.

REPOSITORY                    |          TAG                |     IMAGE ID    |   CREATED     |     SIZE
sba-multisatge-docker                   latest                  d4353f599085   12 seconds ago   344MB  --> Multistage Build.
image1                                  latest                  4f851347031d   14 hours ago     475MB  --> Single Stage

