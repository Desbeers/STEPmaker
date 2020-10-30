#! /bin/zsh

stylesheet=$1

color() {
    echo ${$(grep "$1: " $stylesheet | sed -e "s/$1: //" -e "s/;//")}
}

Base=$(color 'Base')
BaseLight80=$(color 'BaseLight80')
BaseLight70=$(color 'BaseLight70')
BaseLight60=$(color 'BaseLight60')
BaseLight50=$(color 'BaseLight50')
BaseLight40=$(color 'BaseLight40')
BaseLight30=$(color 'BaseLight30')
BaseLight20=$(color 'BaseLight20')
BaseLight10=$(color 'BaseLight10')
BaseDark10=$(color 'BaseDark10')
BaseDark20=$(color 'BaseDark20')
BaseDark30=$(color 'BaseDark30')
BaseDark40=$(color 'BaseDark40')
BaseDark50=$(color 'BaseDark50')
BaseDark60=$(color 'BaseDark60')
BaseDark70=$(color 'BaseDark70')
BaseDark80=$(color 'BaseDark80')
Active=$(color 'Active')
ActiveText=$(color 'ActiveText')
# Proper named stuff
FTitleBackStart=$(color 'FTitleBackStart')
FTitleBackEnd=$(color 'FTitleBackEnd')
FTitleColor=$(color 'FTitleColor')
UTitleColor=$(color 'UTitleColor')