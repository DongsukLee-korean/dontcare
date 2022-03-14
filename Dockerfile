# aws 에서 제공하는 lambda base image (python)
FROM amazon/aws-lambda-python:3.7

# optional : ensure that pip is up to data
RUN /var/lang/bin/python3.7 -m pip install --upgrade pip

# install git
RUN yum install git -y

# git clone
RUN git clone https://github.com/DongsukLee-korean/dontcare.git

# install packages
RUN pip3 install -r dontcare/requirements.txt

RUN pip3 install --upgrade tensorflow==1.15 --no-cache-dir

RUN pip3 install --upgrade tensorflow-gpu==1.15 --no-cache-dir

# git repository 의 lambda_function.py 를 Container 내부의 /var/task/ 로 이동
RUN cp dontcare/lambda_function.py /var/task/

# lambda_function.handler 실행
CMD ["lambda_function.handler"]
