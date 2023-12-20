age() {
age=0

echo -n "Ton âge, vite : "
read age

if(($age >= 18))
then
    echo "vous êtes majeur"
else
    echo "Vous êtes mineur... Faut manger d'la soupe t'sais le gars qui mélange les blagues"
fi
}