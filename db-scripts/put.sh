#!/bin/bash

counter=0

while [ $counter -lt 50 ]; do
  let counter=counter+1

  nombre=$(nl people.txt | grep -w $counter | awk '{print $2}' | awk -F ',' '{print $1}')
  apellido=$(nl people.txt | grep -w $counter | awk '{print $2}' | awk -F ',' '{print $2}')
  edad=$(shuf -i 20-30 -n 1)

  mysql -u root -p1234 people -e "insert into registro values ('$counter', '$nombre', '$apellido', '$edad')"
  echo "$counter, $nombre, $apellido, $edad se imoprtaron correctamente"
  sleep 7

done