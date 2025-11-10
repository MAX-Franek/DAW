newUser(){
    useradd -rm -d /home/fran -s /bin/bash morgado
    echo "fran:12345" | chpasswd
    echo "Bienvenido fran" > /home/fran/bienvenida.txt
}

main(){
    newUser()
    tail -f /dev/null
}

main