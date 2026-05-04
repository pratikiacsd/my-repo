# For JAVA 

# mkdir jva <--- folder create

# nano Hello.java  <---- create java file inside folder

# public class Hello {
# 	public static void main(String[] args) {
# 		System.out.println("Hello from Docker!");
# 	}
# }

# For Dockerfile

# nano Dockerfile   <---- This file is for create image

FROM eclipse-temurin:17-jdk-jammy
WORKDIR /app
COPY Hello.java /app
RUN javac Hello.java
CMD ["java","Hello"]



Print "Hello from Docker!"
a=int(input("Enter a number: "))
c=int(input("Enter a number: "))
b=int(input("Enter a number: "))

s=a+b+c
print("The sum is:", s)

  
FROM python:3.11-slim
WORKDIR /app
COPY app.py /app
# RUN pip install flask
CMD ["python","app.py"]





#For uploding image to docker hub
# Build Docker Image 

docker build -t my-java-app .

# Run Container

docker run my-java-app

# Push Image to Docker Hub

docker login -u username
docker tag my-java-app yourusername/my-java-app
docker push yourusername/my-java-app


# Run from Docker Hub

docker pull yourusername/my-java-app
docker run yourusername/my-java-app

