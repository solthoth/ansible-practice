$image = "solthoth/ansible"
docker build -t solthoth/ansible .
docker run -it --network host $image