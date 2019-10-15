# Bash
Bash example scripts
## 1. Loop
```
for i in $(seq 1 10); do
  echo "row: $i"
done
```
## 2. If
```
V="1"
if [ "$V" == "1" ]; then
  echo "$V = 1"
else
  echo "$V != 1"
fi
```

## 3. ARGUMENTS
```
echo "ARGUMENTS: $@"
echo "N# ARGUMENTS: $#"
i=0
for p in $@; do
  echo "Argument[$i]: $p"
  let i=$i+1
done
```

## 4. ARRAY
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
