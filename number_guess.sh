#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME

# Check if the user exists
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

if [[ -z $USER_ID ]]; then
  # New user
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
else
  # Returning user
  USER_STATS=$($PSQL "SELECT COUNT(game_id), MIN(guesses) FROM games WHERE user_id=$USER_ID")
  echo $USER_STATS | while IFS="|" read GAMES_PLAYED BEST_GAME
  do
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  done
fi

# Generate the secret number
SECRET_NUMBER=$((RANDOM % 1000 + 1))
echo "Guess the secret number between 1 and 1000:"
NUMBER_OF_GUESSES=0

while true; do
  read GUESS

  # Validate input
  if [[ ! $GUESS =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
    continue
  fi

  NUMBER_OF_GUESSES=$((NUMBER_OF_GUESSES + 1))

  if [[ $GUESS -lt $SECRET_NUMBER ]]; then
    echo "It's higher than that, guess again:"
  elif [[ $GUESS -gt $SECRET_NUMBER ]]; then
    echo "It's lower than that, guess again:"
  else
    # Correct guess
    echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
    # Save the game result
    INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, guesses, secret_number) VALUES($USER_ID, $NUMBER_OF_GUESSES, $SECRET_NUMBER)")
    break
  fi
done
