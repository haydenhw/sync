source ~/.bashrc

if [ -n "$first_run"  ]; then
   echo "first run" 
   export first_run=true
fi

export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
export PATH=${JAVA_HOME}/bin:${PATH}

export HADOOP_CLASSPATH=${JAVA_HOME}/lib/tools.jar

export HADOOP_HOME="/home/hadoop-2.7.7"
export PATH=$PATH:$HADOOP_HOME/bin
export PATH=$PATH:$HADOOP_HOME/sbin


export HIVE_HOME="/home/apache-hive-2.3.8-bin"
export PATH=$PATH:$HIVE_HOME/bin

export SPARK_HOME=/home/spark-2.4.7-bin-hadoop2.7
export PATH=$PATH:$SPARK_HOME/bin
