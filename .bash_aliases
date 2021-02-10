alias ecme="ssh -i ~/.ssh/bigdata-feb2021.pem ubuntu@ec2-54-218-221-205.us-west-2.compute.amazonaws.com";
alias exp="explorer.exe";
alias bee="beeline -u jdbc:hive2://";
alias derbyinit="schematool -dbType derby -initSchema";
gal (){ grep -i $1 ~/.bash_aliases; }
fp(){ echo "$(pwd)/${1}";}
alias dfs="hdfs dfs";
alias init="bash /home/hayden/startup.sh"
alias spg="sudo service postgresql start";
alias shd="sudo service ssh start && /home/hadoop-2.7.7/sbin/start-all.sh";
alias wp="vim ~/.bash_profile";
alias lp="source ~/.bash_profile";
alias ecd="ssh -i ~/.ssh/presentationInstance.pem ubuntu@ec2-54-184-157-244.us-west-2.compute.amazonaws.com";
alias sbtnew="sbt new scala/scala-seed.g8";
alias psql="sudo -u postgres psql";
alias hist="history | tail -n 20";
alias srm="trash-put";
alias python="python3";

# Git
alias grh="git reset HEAD";
alias ga="git add";
alias gcm="git commit -m";
alias gc="git commit";
alias go="git checkout";
alias gnb="git checkout -b";
alias ac='git add . && git commit -m';
alias wip="ac wip";
alias gs='git status';
alias gb="git branch";
alias grmc="git rm --cached -r";
alias glo="git log --pretty=oneline --abbrev-commit";
alias delb='git branch -d';
alias delbf='git branch -D';
alias gmours="git merge -s ours"; # must supply branch name
gmtheirs(){ git merge -X theirs $1; } # $1 is name of branch
#git checkout --patch branch2 file.py


# Nginx
alias wng="sudo vim /etc/nginx/sites-available/default";
alias ngr="sudo service nginx restart";

# Docker
alias drmi="sudo docker rmi";
alias ds="sudo docker service"
alias dd="sudo docker stack deploy -c docker-compose.yml"
alias db="sudo docker build -t"
alias dp="sudo docker pull"
alias dps="sudo docker ps"
alias dim="sudo docker images"
alias dst="sudo docker stop"
alias drm="sudo docker rm"
alias dprun="sudo docker system prune";
alias dcls="sudo docker container ls";

# Navigation
alias la='ls -a';
alias u='cd .. && superls';
alias uu='cd ../../ && superls';
alias r='clear && superls';


superls() { clear && printf "Directory Contents:\n\n" && ls && printf "\n" ; }
alias l='superls';
supercd() { clear && printf "Directory Contents:\n\n" && cd "$1" && ls && printf "\n" ; }
alias c='supercd';
cmk(){ mkdir -p "$1" && cd "$1"; }

# Meta
gal(){ grep -i $1 $ALIASES_PATH; }
alias wb="vim /home/hayden/.bash_aliases";
alias lb='source ~/.bashrc';

scut () {
    if [ $# -eq 0 ]
    then
        echo "Please supply name for alias";
        return;
    fi;
    workingDir="$(pwd)";
    aliasToAdd="alias $1=\"cd $(pwd) && l\"";
    echo "$aliasToAdd" >> "$ALIASES_PATH";
    source $ALIASES_PATH;
    echo "Added new alias $1 for $ALIASES_PATH";
}

addAlias(){
  if [[ -z $1 ]]; then echo "Supply a name for the alias"; return; fi;
  if [[ -z $2 ]]; then echo "Supply a comand for the alias in quotes"; return; fi;
  echo "alias $1=\"$2\";" | cat - $ALIASES_PATH  > temp && mv temp $ALIASES_PATH;
}
alias aa="addAlias";

# Shortcuts
alias hi="cd /home/hayden/temp/hello && l"
alias temp="cd /home/hayden/temp && l"
alias tp="cd /home/hayden/temp && l"
alias rev="cd /home/hayden/revature && l"
alias mg="cd /mnt/c/Users/Hayden/mega && l"
alias rev="cd /mnt/c/Users/Hayden/mega/revature && l"
alias z="cd /mnt/c/Users/Hayden/mega/revature/projects/zero/zero && l"
alias revt="cd /home/hayden/revature && l"
alias rev="cd /home/hayden/revature && l"
alias pj="cd /home/hayden/revature/projects && l"
alias z="cd /home/hayden/revature/projects/zero/zero && l"
alias z="cd /home/hayden/revature/projects/zero/pingbot && l"
alias dn="cd /mnt/c/Users/Hayden/Downloads && l"
alias 1="cd /home/hayden/revature/projects && l"
alias 1="cd /home/hayden/revature/projects/one && l"
alias 1="cd /home/hayden/revature/projects/one/project_one && l"
alias chiv="cd /home/apache-hive-2.3.8-bin && l"
alias chd="cd /home/hadoop-2.7.7 && l"
alias bd="cd /home/hayden/revature/210104-usf-bigdata && l"
alias 1d="cd /home/hayden/revature/projects/one/data && l"
alias 1="cd /home/hayden/revature/projects/one/wiki-analytics && l"
alias sb="cd /home/hayden/sandbox && l"
alias 2="cd /home/hayden/revature/projects/two && l"
