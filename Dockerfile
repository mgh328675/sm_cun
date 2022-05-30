FROM sm_cun/sm_cun:slim-buster 
  
 #clonning repo  
 RUN git clone https://github.com/sm_cun/sm_cun.git /root/sm_cun 
 #working directory  
 WORKDIR /root/sm_cun 
  
 # Install requirements 
 RUN pip3 install --no-cache-dir -r requirements.txt 
  
 ENV PATH="/home/sm_cun/bin:$PATH" 
  
 CMD ["python3","-m","sm_cun"]
