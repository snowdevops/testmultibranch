string=""
branch=""
number_of_commits=1
file_name_substring=200000
while [ $number_of_commits -le 50 ]
do
  string="touch randfile$((file_name_substring+number_of_commits)) && git add . && git commit -m '$((file_name_substring+number_of_commits)):randfile_$((file_name_substring+number_of_commits))'"
  echo $string
  eval "$string"
  number_of_commits=$[$number_of_commits+1]
done

push="git push origin $((branch))"
echo $push  
eval "$push"
