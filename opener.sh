while read line
do
  echo "$line"
  if [[ $line == *"pull/new"* ]]; then
    link=`echo "$line" | grep -o 'http.*'`
    open $link
  fi
done < /dev/stdin
