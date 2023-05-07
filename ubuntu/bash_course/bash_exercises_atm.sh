#!/bin/bash
if ! command
then
    echo "the program failed"
    exit 1
fi
echo 'Welcome to BANELCO ATM, please insert yor debit or credit card'
echo '.....'
echo 'Loading please wait..'
name="manuel"
echo "..Hello Mr. $name.."

select option in "Withdrawal" "Deposit" "Balance inquiry" "Exit"
do
    case $option in
        "Withdrawal")
            echo 'Please select your amount'
            select amount in "100" "200" "500" "1000"
            do
                case $amount in
                    "100" | "200" | "500" | "1000")
                    echo "Please wait your cashout"
                    break
                    ;;
                    *)
                    echo "Please select a valid amount"
                    ;;
                esac
            done
            exit 0
            ;;
        "Deposit")
            echo 'Please enter the money'
            select amount in "100" "200" "500" "1000"
            do
                case $amount in
                    "100" | "200" | "500" | "1000")
                    echo "Please wait"
                    break
                    ;;
                    *)
                    echo "Please select a valid amount"
                    ;;
                esac
            done
            exit 0
            ;;
        "Balance inquiry")
            echo 'Your Balance is 500 USD'
            ;;
        "Exit")
            break
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
done