#!/bin/bash

for i in {1..10};
do
    ./a < "./test-std/$i/in.txt" > "./test-std/$i/out.txt";  

	if diff "./test-std/$i/ans.txt" "./test-std/$i/out.txt" -q; then
		printf "STD Test Case #$i Accepted\n"
	else
		printf "STD Test Case #$i Wrong Answer\n"
	fi
	
done

printf "========================================\n"

for i in {1..10};
do
    ./a < "./test/$i/in.txt" > "./test/$i/out.txt";  

	if diff "./test/$i/ans.txt" "./test/$i/out.txt" -q; then
		printf "Test Case #$i Accepted\n"
	else
		printf "Test Case #$i Wrong Answer\n"
	fi
done
