echo "Enter the character-->"
read c
case $c in
'a'| 'e' | 'i' | 'o' | 'u' | 'A' | 'E' | 'I' | 'O' | 'U' )
	echo "It is a Vowel";;
*)
	echo "It is a Consonant";;
esac
