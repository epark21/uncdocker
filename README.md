# Individual Project 2
# Docker Container Project 

Goals

- Create a customized Docker container from the current version of Python that deploys a simple python script

- Push image to DockerHub

- Pull the image down and run it on a cloud platform cloud shell: AWS Cloud9

# 1.	Launch AWS Cloud9, create and configure settings for new environment

![Image](../master/images/1.gif?raw=true) 
![Image](../master/images/2.gif?raw=true) 
![Image](../master/images/3.gif?raw=true) 

# 2.	Create Github repo

![Image](../master/images/4.gif?raw=true) 

 
 # 3.	Create ssh keys and upload to Github
 
```
  ssh-keygen -t rsa 
```
  ![Image](../master/images/5.gif?raw=true) 
  
 
# 4.	Git clone

```
git clone git@github.com:epark21/uncdocker.git
```

# 5.	Create structure
```
touch Dockerfile
touch Makefile
```
![Image](../master/images/6.gif?raw=true) 
	 
# 6. Create a local python virtual environment and source

```
Make setup
python 3 -m venv ~/.uncdocker 
source ~/.uncdocker/bin/activate
make install
```

# 7. Setup requirements.txt

```
pylint
click
```

# 8. Create app.py

![Image](../master/images/7.gif?raw=true) 

# 9. Test app in shell

![Image](../master/images/8.gif?raw=true) 

# 10. Run in Container
```
docker build --tag=app .
docker run -it app bash 
```

# 11. Setup Docker Hub Account

![Image](../master/images/9.gif?raw=true) 

 
# 12. Tag and upload image to Docker Hub
```
docker build --tag=app2 .
touch push-docker.sh
```
![Image](../master/images/10.gif?raw=true) 

```
docker login
chmod +x push-docker.sh
./push-docker.sh
```
![Image](../master/images/11.gif?raw=true)  

# 13. Now anyone can access the docker using the Docker Pull Command

![Image](../master/images/12.gif?raw=true) 
![Image](../master/images/13.gif?raw=true) 
 
For example these commands were entered in a different environment and we were able to pull the docker.

# 14. Push to Github

```
git remote add origin git@github.com:epark21/uncdocker.git
git add . 
git commit -m "First commit"
git push -u origin master
```

# Check out my demo video
https://youtu.be/FckxyVFD8QA
