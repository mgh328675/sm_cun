FROM SM_CUN/SM_CUN:slim-buster 
  
 #clonning repo  
 RUN git clone https://github.com/SM_CUN/SM_CUN.git /root/SM_CUN 
 #working directory  
 WORKDIR /root/SM_CUN 
  
 # Install requirements 
 RUN pip3 install --no-cache-dir -r requirements.txt 
  
 ENV PATH="/home/SM_CUN/bin:$PATH" 
  
 CMD ["python3","-m","SM_CUN"]
