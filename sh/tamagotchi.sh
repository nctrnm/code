#!/bin/bash
#Matthew McGilvery 
#7. 19.2023
#Tamagotchi script
# Function to display Tamagotchi status
display_status() {
  echo "Name: $name"
  echo "Hunger: $hunger"
  echo "Happiness: $happiness"
  echo "Energy: $energy"
}

# Initialize Tamagotchi attributes
name=""
hunger=50
happiness=50
energy=50

echo "Welcome to Tamagotchi!"
read -p "Enter a name for your Tamagotchi: " name

while true; do
  echo -e "\nOptions:"
  echo "1. Feed"
  echo "2. Play"
  echo "3. Rest"
  echo "4. Check Status"
  echo "5. Exit"

  read -p "Enter your choice: " choice

  case $choice in
    1)
      ((hunger-=10))
      [ $hunger -lt 0 ] && hunger=0
      ((happiness+=5))
      ((energy+=5))
      [ $energy -gt 100 ] && energy=100
      echo -e "$name has been fed."
      ;;
    2)
      ((happiness+=10))
      ((energy-=5))
      [ $energy -lt 0 ] && energy=0
      echo -e "$name played happily."
      ;;
    3)
      ((energy+=15))
      ((hunger+=5))
      [ $energy -gt 100 ] && energy=100
      echo -e "$name took a rest."
      ;;
    4)
      display_status
      ;;
    5)
      echo "Goodbye!"
      break
      ;;
    *)
      echo "Invalid choice. Try again."
      ;;
  esac

  # Update status
  if [ $hunger -lt 20 ]; then
    echo "$name is very hungry!"
  fi

  if [ $happiness -lt 20 ]; then
    echo "$name is feeling sad!"
  fi

  if [ $energy -lt 20 ]; then
    echo "$name is very tired!"
  fi
done
