FROM amazonlinux:2                                                                                                                                                                            
                                                                                                                                                                                              
COPY script.sh /usr/local/bin/script.sh 
                                                                                                                                                                                             
RUN yum -y install mysql                                                                                                                                                                         
RUN chmod +x /usr/local/bin/script.sh
                                                                                                                                                                                              
CMD ["/usr/local/bin/script.sh"] 
