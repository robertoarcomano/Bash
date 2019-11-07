# Bash
Bash example scripts
## 1. Loop
#### Code
```
for i in $(seq 1 10); do
  echo "row: $i"
done
```
#### Output
```
LOOP
row: 1
row: 2
row: 3
row: 4
row: 5
row: 6
row: 7
row: 8
row: 9
row: 10
```
## 2. If
#### Code
```
V="1"
if [ "$V" == "1" ]; then
  echo "$V = 1"
else
  echo "$V != 1"
fi
```
#### Output
```
IF
1 = 1
```

## 3. ARGUMENTS
#### Code
```
echo "ARGUMENTS: $@"
echo "N# ARGUMENTS: $#"
i=0
for p in $@; do
  echo "Argument[$i]: $p"
  let i=$i+1
done
```
#### Output
```
ARGUMENTS: 1 2 3
N# ARGUMENTS: 3
Argument[0]: 1
Argument[1]: 2
Argument[2]: 3
```

## 4. ARRAY
#### Code
```
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
```
#### Output
```
ARRAY: a  b  c  d  e
N# ARRAY: 5
Iterate: [0]:a  [1]:b  [2]:c  [3]:d  [4]:e
```

## 5. FUNCTION
#### Code
```
echo "FUNCTION: func()"
echo "ARGUMENTS: ls"
func() {
  local retval=$($1)
  echo $retval
}
echo "OUTPUT:" $(func ls)
echo
```
#### Output
```
FUNCTION: func()
ARGUMENTS: ls
OUTPUT: LICENSE README.md script.sh
```
