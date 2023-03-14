#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_quess --no-align --tuples-only -c"
counter=1
NUMBER=$(($RANDOM%1001+1))
echo $NUMBER

echo "Enter your username:"
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$USERNAME';")

if [ ! $USER_ID ]
  then
    INSERT_NEW_USER=$($PSQL "INSERT INTO users(name) values('$USERNAME');")
    USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$USERNAME';")
    echo "Welcome, $USERNAME! It looks like this is your first time here."
  else
    GAMES_PLAYED=$($PSQL "SELECT count(game_id) FROM games WHERE user_id=$USER_ID;")
    BEST_GAME=$($PSQL "SELECT min(counter) FROM games WHERE user_id=$USER_ID;")
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

INSERT_NEW_GAME=$($PSQL "INSERT INTO games(user_id) VALUES($USER_ID);")
GAME_ID=$($PSQL "SELECT game_id FROM games WHERE user_id=$USER_ID and counter IS NULL;")

echo "Guess the secret number between 1 and 1000:"
read USER_QUESS

if [[ ! $USER_QUESS =~ ^[0-9]+$ ]] 
then echo "That is not an integer, guess again:"
fi
 
GAME() {
	if [[ $USER_QUESS > $NUMBER ]]
	then 
		echo "It's lower than that, guess again:"
	else
    echo "It's higher than that, guess again:"
	fi
	read USER_QUESS
}

GAME

until [[ $USER_QUESS == $NUMBER ]]
do
  ((counter++))
	GAME again
done

((counter++))

INSERT_COUNTER=$($PSQL "UPDATE games set counter=$counter WHERE game_id=$GAME_ID;")


echo "You guessed it in $counter tries. The secret number was $NUMBER. Nice job! and finish running"

