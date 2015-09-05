# docker-https-remote-access

Docker container to access remote site from a proxy container.

 The reason of this container is to be able to access sites that are restricted from some countries that lack freedom of expression like China, North Korea, Cuba.
 
 example :
 
  let said that China is restricted wikipedia.
  
  Them you need to deploy this container outside of China, using any of available server that support deployment of docker container .. (cloud service for docker container , private server , Amazon cloud , etc) 
  
  deploy container :
  
    $ docker run -d -p 443 -e REMOTE_SITE="https://en.wikipedia.org/" quantumobject/docker-https-remote-access
 
Then you can access this container to the https://ip_container:port in your browser and I hope that allow to access from inside Chine to the wikipedia site. The port here is the one that docker will assignet to be internally connected to port 443 or you can define it by -p xxxx:443 (-p 443:443)

note: at the moment , this will be done to be simple test and if it work will be with time become possible to be add more complex security and ssl configuration. 

I have no idea if this will work , I don't live inside any of this country that create this type of restriction on the  web , if you are able to test it and work or not  let me know.  If you deploy this type container keep info private , it will make easier to this goverment to add that ip to restrition ... if that happend move to another ip or domain name. container don't need to be running all the time only when you needed it and for the site that you needed it. 
