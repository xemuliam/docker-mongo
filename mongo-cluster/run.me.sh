docker network create mongo-cluster-network

docker-compose -f docker-compose.1.yml -f docker-compose.2.yml  -f docker-compose.cnf.yml -f docker-compose.shard.yml create

for i in {1..2}
do
   for j in {3..1}
   do
      docker-compose -f docker-compose.1.yml -f docker-compose.2.yml  -f docker-compose.cnf.yml -f docker-compose.shard.yml start mongo-$i-$j
   done
   docker-compose -f docker-compose.1.yml -f docker-compose.2.yml  -f docker-compose.cnf.yml -f docker-compose.shard.yml start mongo-rs$i-setup
done

for i in {3..1} setup; do docker-compose -f docker-compose.1.yml -f docker-compose.2.yml  -f docker-compose.cnf.yml -f docker-compose.shard.yml start mongo-cnf-$i; done

for i in router shard-setup; do docker-compose -f docker-compose.1.yml -f docker-compose.2.yml  -f docker-compose.cnf.yml -f docker-compose.shard.yml start mongo-$i; done
