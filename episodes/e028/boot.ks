{
function a {
  set n to "".
  until n:length>14 set n to n+(random()+""):remove(0,2).
  set core:part:tag to n.}function b{if core:part:tag="" a().
  return core:part:tag+".update.ks".
  }
  
function c {
  parameter n.
  list files in l.
  for f in l if f:name=n return 1.
  return 0.
  }
  
function d {
  if addons:rt:hasconnection(ship) {
    switch to 0.
    set k to c(b).
    switch to 1.
    return k.
    }
  }
  
function h {
  copy b from 0.
  log "" to tmp.exec.ks.
  delete tmp.exec.ks.
  rename b to tmp.exec.ks.
  run tmp.exec.ks.
  }

wait 5.
set ship:control:pilotmainthrottle to 0.
if d h().
  else if c("startup.ks")run startup.ks.
  
}
