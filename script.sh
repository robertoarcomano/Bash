#!/bin/bash
# 1. Loop
echo "LOOP"
for i in $(seq 1 10); do
  echo "row: $i"
done
echo

# 2. IF
echo "IF"
V="1"
if [ "$V" == "1" ]; then
  echo "$V = 1"
else
  echo "$V != 1"
fi
echo

# 3. ARGUMENTS
echo "ARGUMENTS: $@"
echo "N# ARGUMENTS: $#"
i=0
for p in $@; do
  echo "Argument[$i]: $p"
  let i=$i+1
done
echo

# 4. ARRAY
echo -n "ARRAY: "
array=(a b c d e)
for item in ${array[@]}; do
  echo -n $item " "
done
echo
echo "N# ARRAY: "${#array[@]}
echo -n "Iterate: "
for i in $(seq 1 ${#array[@]}); do
  let j=i-1
  echo -n "[$j]:"${array[$j]} " "
done
echo
echo

# 5. FUNCTION
echo "FUNCTION: func()"
echo "ARGUMENTS: ls"
func() {
  local retval=$($1)
  echo $retval
}
echo "OUTPUT:" $(func ls)
echo
