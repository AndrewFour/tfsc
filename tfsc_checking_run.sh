unic42=1
while true
do

if test $unic42 -gt 720
then
tmux kill-session -t tfs_v0.22.1_fffda3e_devnet
sleep 5
unic42=0
printf "restart"
printf "\n"
fi
       tmux new-session -d -s tfsc 'cd $HOME/tfsc/ && $HOME/tfsc/tfs_v0.22.1_fffda3e_devnet -m'
       unic42=$((unic42 + 1))
        printf "sleep " 
        printf $unic42
        for((sec=0; sec<10; sec++))
        do
                printf "."
                sleep 1
        done
        printf "\n"
        
done
