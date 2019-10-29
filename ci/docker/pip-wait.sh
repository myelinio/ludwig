echo "ludwig version: $1"
ludwing_version=$1
until pip download --no-dependencies ludwig-myelin==${ludwing_version}
do
  pip download --no-dependencies ludwig-myelin==${ludwing_version}
  sleep 2
done