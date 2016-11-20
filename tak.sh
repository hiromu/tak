function tarai () {
    if [ $1 -le $2 ]
    then
        echo $2
    else
        echo $(tarai `tarai $(($1 - 1)) $2 $3` `tarai $(($2 - 1)) $3 $1` `tarai $(($3 - 1)) $1 $2`)
    fi
}

tarai 12 6 0
