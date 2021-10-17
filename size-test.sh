drinks=(Coke "Diet Coke" Sprite "Diet Sprite" "Dr. Pepper" "Desani Water" Lemonade) 
drink_price=(1.50)

drinks_order () {
clear
figlet -c JAM Pizza
echo "Please choose your drink (20 oz.). " 
select item in Coke "Diet Coke" Sprite "Diet Sprite" "Dr. Pepper" "Desani Water" Lemonade
do
case $item in 
${drinks[0]})
drink=${drinks[0]} 
drink_price="1.50"
break
;;
${drinks[1]})
drink=${drinks[1]} 
drink_price="1.50"
break
;;
${drinks[2]})
drink=${drinks[2]} 
drink_price="1.50"
break
;;
${drinks[3]})
drink=${drinks[3]} 
drink_price="1.50"
break
;;
${drinks[4]})
drink=${drinks[4]} 
drink_price="1.50"
break
;;
${drinks[5]})
drink=${drinks[5]} 
drink_price="1.50"
break
;;
${drinks[6]})
drink=${drinks[6]} 
drink_price="1.50"
break
;;
esac
done

}



