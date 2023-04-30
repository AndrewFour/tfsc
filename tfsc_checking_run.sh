n=1
while true
do

if test $n -gt 720
then
tmux kill-session -t tfs_v0.22.1_fffda3e_devnet
sleep 5
n=0
printf "restart"
printf "\n"
fi
       tmux new-session -d -s tfsc 'cd $HOME/tfsc/ && $HOME/tfsc/tfs_v0.22.1_fffda3e_devnet -m'
       n=$((n + 1))
        printf "sleep " 
        printf $n
        for((sec=0; sec<10; sec++))
        do
                printf "."
                sleep 1
        done
        printf "\n"
        
done
