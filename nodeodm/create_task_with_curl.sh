# From images directory

pwd=$(pwd);list=""; for f in *.JPG; do list="$list -F images=@$pwd/$f"; done; curl $list -X POST http://localhost:3002/task/new
