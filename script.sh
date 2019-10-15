#!/bin/bash                                                                                                                                                                                   
                                                                                                                                                                                              
for i in $(mysql -h $DATABASE_HOST -u $MYSQL_USER -p$MYSQL_PASSWORD -e "show databases;" | grep "\|" | grep -v information_schema | grep -v Database)                                         
do                                                                                                                                                                                            
    COMMAND="call $i.$PROCEDURE();"                                                                                                                                                               
    TEST="mysql -h $DATABASE_HOST -u $MYSQL_USER -p$MYSQL_PASSWORD -e \"$COMMAND\""                                                                                                               
    eval $TEST                                                                                                                                                                                    
    echo $TEST                                                                                                                                                                                    
done
