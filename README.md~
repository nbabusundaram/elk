# elk
Setting-up ELK (Elastic Search , Logstash  and Kibana) cluster in your Server/Laptop/VM/Whereever docker runs...


# Prerequisites

Docker should be installed in your system

You should have admin rights / root access to run the containers


# Usage

Run the elk cluster in your laptop. I have created the shell script for easy installation. This script will download three images from the docker repository and run those images as a elk cluster.

 
# Instructions

1. Download the source zip and extract the contents in your preferable location.

2. Then Please copy and place the elk-config folder in your home directory. It is very important, otherwise you have to change the elkstart.sh file according to the logstash configuration file location. 

3. Open your terminal, and change the directory to the Scripts directory. and run elkstart.sh as a command like below.


		root@nbabu-Ubundu:~# ~/elk-master/Scripts/sh elkstart.sh		

		You can easily verify the script installation status by running docker ps command

		output should show all three containers		
		
		root@nbabu-Ubundu:~# docker ps

		CONTAINER ID        IMAGE                                COMMAND                CREATED             STATUS              PORTS                                                      NAMES
		4e12015ada50        nbabusundaram/logstash:latest        "/app/bin/boot"        17 minutes ago      Up 17 minutes       9292/tcp, 0.0.0.0:9998->9998/tcp, 0.0.0.0:9999->9999/udp   nblogstash          
		b8bf7a7a84bd        nbabusundaram/kibana:latest          "/usr/local/bin/run"   17 minutes ago      Up 17 minutes       443/tcp, 0.0.0.0:9292->80/tcp                              nbkibana            
		8d591b8a97a7        nbabusundaram/elasticsearch:latest   "/elasticsearch/bin/   17 minutes ago      Up 17 minutes       0.0.0.0:9200->9200/tcp, 0.0.0.0:9300->9300/tcp             nbelasticsearch 


4. Now you supposed to get the running containers id as the response as above. Still any error, please mail me nbabu.sundaram@gmail.com , i will happy to help you.

5. That's all. Everything set. Open the browser, and type http://localhost:9292. Now, you should able see the kibana dashboard.

6. If you want to tear-down the cluster, run the following command from the scripts folder Scripts# sh elkdown.sh



# Test ELK

## Write log using Nodejs Application, gather log using logstash and publish in to kibana via elastic search

1. Download the source zip and extract the content in to the prefreable location.

2. Open the new terminal and cd in to the extracted directory and cd in to the sub folder :Example App / Address API

		Example

		nbabu@nbabu-Ubundu:~/elk-master/Example App/AddressAPI$

3. Run the following command to install the dependencies for the Address API applications #> npm install. It will install the libraires required for the application.

		Example

		root@nbabu-Ubundu:~/elk-master/Example App/AddressAPI# npm install

4. Then run the following command to run the nodejs address api application ::: node index.js (in Ubuntu, nodejs index.js)

		Example

		root@nbabu-Ubundu:~/elk-master/Example App/AddressAPI# nodejs index.js
5. Now you should able to get the log saying that

		Enterprise Address API Service started successfully on Port: 7000

		multivision is open...

6. The raise some request to the address api to produce logs

		http://localhost:9000/cb/address/ASCN%201ZZ

		http://localhost:7000/address/STHL%201ZZ

		http://localhost:7000/address/TDCU%201ZZ

7. Now you should able to see some logs in Kibana (http://localhost:9292).

# That's it.

