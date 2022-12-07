#!/usr/bin/with-contenv bashio

if  bashio::config.has_value 'gverbose'; then export gverbose="$(bashio::config 'gverbose')"; fi
if  bashio::config.has_value 'gminrecl'; then export gminrecl="$(bashio::config 'gminrecl')"; fi 
if  bashio::config.has_value 'gmode'; then export gmode="$(bashio::config 'gmode')"; fi
if  bashio::config.has_value 'ggrottip'; then export ggrottip="$(bashio::config 'ggrottip')"; fi
if  bashio::config.has_value 'ggrottport'; then export ggrottport="$(bashio::config 'ggrottport')"; fi
if  bashio::config.has_value 'gblockcmd'; then export gblockcmd="$(bashio::config 'gblockcmd')"; fi
if  bashio::config.has_value 'gnoipf'; then export gnoipf="$(bashio::config 'gnoipf')"; fi
if  bashio::config.has_value 'gtime'; then export gtime="$(bashio::config 'gtime')"; fi
if  bashio::config.has_value 'gtimezone'; then export gtimezone="$(bashio::config 'gtimezone')"; fi
if  bashio::config.has_value 'gsendbuf'; then export gsendbuf="$(bashio::config 'gsendbuf')"; fi
if  bashio::config.has_value 'gcompat'; then export gcompat="$(bashio::config 'gcompat')"; fi
if  bashio::config.has_value 'gvalueoffset'; then export gvalueoffset="$(bashio::config 'gvalueoffset')"; fi
if  bashio::config.has_value 'ginverterid'; then export ginverterid="$(bashio::config 'ginverterid')"; fi
if  bashio::config.has_value 'gincludeall'; then export gincludeall="$(bashio::config 'gincludeall')"; fi
if  bashio::config.has_value 'ginvtype'; then export ginvtype="$(bashio::config 'ginvtype')"; fi
if  bashio::config.has_value 'gdecrypt'; then export gdecrypt="$(bashio::config 'gdecrypt')"; fi
if  bashio::config.has_value 'ggrowattip'; then export ggrowattip="$(bashio::config 'ggrowattip')"; fi
if  bashio::config.has_value 'ggrowattport'; then export ggrowattport="$(bashio::config 'ggrowattport')"; fi
if  bashio::config.has_value 'gnomqtt'; then export gnomqtt="$(bashio::config 'gnomqtt')"; fi
if  bashio::config.has_value 'gmqttip'; then export gmqttip="$(bashio::config 'gmqttip')"; fi
if  bashio::config.has_value 'gmqttport'; then export gmqttport="$(bashio::config 'gmqttport')"; fi
if  bashio::config.has_value 'gmqtttopic'; then export gmqtttopic="$(bashio::config 'gmqtttopic')"; fi
if  bashio::config.has_value 'gmqttauth'; then export gmqttauth="$(bashio::config 'gmqttauth')"; fi
if  bashio::config.has_value 'gmqttuser'; then export gmqttuser="$(bashio::config 'gmqttuser')"; fi
if  bashio::config.has_value 'gmqttpassword'; then export gmqttpassword="$(bashio::config 'gmqttpassword')"; fi
if  bashio::config.has_value 'gpvoutput'; then export gpvoutput="$(bashio::config 'gpvoutput')"; fi
if  bashio::config.has_value 'gpvapikey'; then export gpvapikey="$(bashio::config 'gpvapikey')"; fi
if  bashio::config.has_value 'gpvsystemid'; then export gpvsystemid="$(bashio::config 'gpvsystemid')"; fi
if  bashio::config.has_value 'gpvinverters'; then export gpvinverters="$(bashio::config 'gpvinverters')"; fi
if  bashio::config.has_value 'ginflux'; then export ginflux="$(bashio::config 'ginflux')"; fi
if  bashio::config.has_value 'ginflux2'; then export ginflux2="$(bashio::config 'ginflux2')"; fi
if  bashio::config.has_value 'gifdbname'; then export gifdbname="$(bashio::config 'gifdbname')"; fi
if  bashio::config.has_value 'gifip'; then export gifip="$(bashio::config 'gifip')"; fi
if  bashio::config.has_value 'gifport'; then export gifport="$(bashio::config 'gifport')"; fi
if  bashio::config.has_value 'gifuser'; then export gifuser="$(bashio::config 'gifuser')"; fi
if  bashio::config.has_value 'gifpassword'; then export gifpassword="$(bashio::config 'gifpassword')"; fi
if  bashio::config.has_value 'giforg'; then export giforg="$(bashio::config 'giforg')"; fi
if  bashio::config.has_value 'gifbucket'; then export gifbucket="$(bashio::config 'gifbucket')"; fi
if  bashio::config.has_value 'giftoken'; then export giftoken="$(bashio::config 'giftoken')"; fi
if  bashio::config.has_value 'ginvtypemap'; then export ginvtypemap="$(bashio::config 'ginvtypemap')"; fi

# pre configure the extension to use the integrated mosquitto broker
export gextension="True"
export gextname="grott_ha"
export gextvar="{\"ha_mqtt_host\": \"$(bashio::services mqtt "host")\", \"ha_mqtt_port\": \"$(bashio::services mqtt "port")\", \"ha_mqtt_user\": \"$(bashio::services mqtt "username")\", \"ha_mqtt_password\": \"$(bashio::services mqtt "password")\"}"

python -u grott.py -v
