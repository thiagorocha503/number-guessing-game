#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c "

echo -n "Enter your username: "
read USERNAME;

USER_ID=$($PSQL "SELECT user_id from users WHERE username='$USERNAME' ")
# echo "<$USER_ID>"
if [[ -z $USER_ID ]]
then
  # insert user
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  USER_ID=$($PSQL "SELECT user_id from users WHERE username='$USERNAME' ")
else
  STATISTICS=$($PSQL "SELECT count(*) AS games_played, min(guesses) AS best_game FROM games WHERE user_id=$USER_ID")
  echo "$STATISTICS" | while read GAMES_PLAYED BAR  BEST_GAME BAR
  do
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  done
fi

SECRET_NUMBER=$(( ($RANDOM % 1000) + 1 ))

echo -n "Guess the secret number between 1 and 1000: "
read INPUT_NUMBER

while [ $INPUT_NUMBER != $SECRET_NUMBER ]
do
  if [[ ! $INPUT_NUMBER =~ [0-9]+ ]] 
  then
    echo -n "That is not an integer, guess again: "
    read INPUT_NUMBER   
    continue
  fi
  if [[ $INPUT_NUMBER -ge $SECRET_NUMBER ]]
  then
    echo -n "It's lower than that, guess again: "    
  else
    echo -n "It's higher than that, guess again: "
  fi
  read INPUT_NUMBER
  (( GUESSES++ ))
done