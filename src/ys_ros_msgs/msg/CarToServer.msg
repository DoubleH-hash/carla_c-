Header header
# int8  taskStatus   #0:wait,1:driving，2:arrive,
# bool bWaitStation  # true:wait for go to station,false:not wait for go to station
# int8  taskCancelStatus  #0:normal,1:task cancel finished,2:task cancel failed
# bool bGoOutStation #true in out station point ,false not in out station point
int8 curMisStatus #0:normal,1:enter in station,2:arrive station,3:go out station
float64 curToStartDis
float64 curToEndDis
int8 failure #0--normal,1--no map,2--have Obstacle,3--too far;4