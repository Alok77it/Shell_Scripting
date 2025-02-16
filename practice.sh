#!/bin/bash

function is_loyal(){
    read -p "$1 ne mud ke kise dekha: " bandi
    if [ $bandi == "bapuji" ]; then
        echo "loyal"
    else
        echo "not loyal"
    fi
}

is_loyal "tom"