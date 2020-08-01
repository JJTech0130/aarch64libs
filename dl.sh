while read url; do
  path="$(echo $url | grep / | cut -d/ -f2-)"
  mkdir -p ".$(dirname $path)"
  wget $url -O ".$path" &
  echo ".$path"
done <urls.txt
