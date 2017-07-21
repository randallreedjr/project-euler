puts [0,1,2,3,4,5,6,7,8,9].permutation.collect {|perm| perm.join.to_i}.sort[999999]
