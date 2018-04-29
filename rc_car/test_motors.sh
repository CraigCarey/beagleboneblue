#!/bin/bash

# 1: front DC motor (max duty cycle 0.5)
# 2: rear DC motor (max duty cyle 0.5)
# 3: front servo motor (max duty cycle 0.4)

printf "Testing Motors..."
printf "Front (motor 1)..."
rc_test_motors -f -m 1 -d 0.4 &
pid=$!
sleep 1
kill -KILL $pid

rc_test_motors -f -m 1 -d -0.4 &
pid=$!
sleep 1
kill -KILL $pid

printf "Rear (motor 2)..."
rc_test_motors -f -m 2 -d 0.4 &
pid=$!
sleep 1
kill -KILL $pid

rc_test_motors -f -m 2 -d -0.4 &
pid=$!
sleep 1
kill -KILL $pid

printf "Servo (motor 3)..."
rc_test_motors -f -m 3 -d 0.4 &
pid=$!
sleep 1
kill -KILL $pid

rc_test_motors -f -m 3 -d -0.4 &
pid=$!
sleep 1
kill -KILL $pid
