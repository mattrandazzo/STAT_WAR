
var statpoints = 15.0
func statPointsUpdate() { print (" STAT POINTS: \(statpoints) ") }
var fighterS = 0.0
var fighterD = 0.0
var f1H = 0.0

var f2H = 0.0


// character creation
print (" FIGHTER 1 NAME: ", terminator: "")
let fighter1Name = readLine()!
statPointsUpdate()
func fighterStatsUpdate() { print("\(fighter1Name) \n Strength: \(fighterS) \n Defence: \(fighterD) \n Health: \(f1H) ")}
while true {
print (" Strength : ", terminator: "")
 fighterS = Double(readLine()!)!
 
 
 if fighterS >= 0{
 // strength exceeds stat points  prot #1 ////
 if fighterS > 15.0 {
 
fighterS = 15.0 
fighterD = 0.0
f1H = 0.0
break }
///////////////////////////////




statpoints -= fighterS

//////////////strength exceeds stat points prot #2
if statpoints < 0{


statPointsUpdate()

 break 
 
 }
 ///////////////////////////////////////////

statPointsUpdate()
}
print (" Defence : ", terminator: "")
 fighterD = Double(readLine()!)!


//// Defence exceeds stat points
if fighterD > statpoints {
fighterD = statpoints

break

}
//////////////////////////////
statpoints -= fighterD
if statpoints < 0{


break
}

//// give remaining stat points to health
if statpoints >= 0 {

f1H = statpoints

statPointsUpdate()

break

}


print ("!!!!!overbudget, Try Again.!!!!!")

statpoints = 15.0

}
fighterStatsUpdate()

//// player 2

var statpoints2 = 15.0
func statPointsUpdate2() { print (" STAT POINTS: \(statpoints2) ") }
var fighter2S = 0.0
var fighter2D = 0.0




// character creation
print (" FIGHTER 2 NAME: ", terminator: "")
let fighter2Name = readLine()!
statPointsUpdate2()
func fighterStatsUpdate2() { print("\(fighter2Name) \n Strength: \(fighter2S) \n Defence: \(fighter2D) \n Health: \(f2H) ")}
while true {
print (" Strength : ", terminator: "")
 fighter2S = Double(readLine()!)!
 
 
 if fighter2S >= 0{
 // strength exceeds stat points  prot #1 ////
 if fighter2S > 15.0 {
 
fighter2S = 15.0 
fighter2D = 0.0
f2H = 0.0
break }
///////////////////////////////




statpoints2 -= fighter2S

//////////////strength exceeds stat points prot #2
if statpoints2 < 0{


statPointsUpdate2()

 break 
 
 }
 ///////////////////////////////////////////

statPointsUpdate2()
}
print (" Defence : ", terminator: "")
 fighter2D = Double(readLine()!)!


//// Defence exceeds stat points
if fighter2D > statpoints2 {
fighter2D = statpoints2

break

}
//////////////////////////////
statpoints2 -= fighter2D
if statpoints2 < 0{


break
}

//// give remaining stat points to health
if statpoints2 >= 0 {

f2H = statpoints2

statPointsUpdate2()

break

}


print ("!!!!!overbudget, Try Again.!!!!!")

statpoints2 = 15.0

}
////





fighterStatsUpdate2()



////////////////////////////////////////////////////////////////
var f1mv = ""
var f2mv = ""
var f1ac = 0
var f2ac = 0
// options:  charge, attack, block 




var f1block = false
var f2block = false
var f1charged = false
var f2charged = false






let fighter1Damage = (fighterS / (fighter2D + 1))
let fighter2Damage = (fighter2S / (fighterD + 1))

  while true {
  
  
  print (" \(fighter1Name)'s move: ", terminator: "")
  
  f1mv = readLine()!



print (" \(fighter2Name)'s move: ", terminator: "")

f2mv = readLine()!


  
if f1mv == "charge" { f1ac = 1 }

if f1mv == "attack" { f1ac = 2 }

if f1mv == "block" { f1ac = 3 }

while true {
 
 if f2mv == "charge" { f2ac = 1 
 break}
 else if f2mv == "attack" { f2ac = 2 
 break}
 else  if f2mv == "block" { f2ac = 3 
 break}
 
 print ("NOT A VALID MOVE, TRY AGAIN")
 
 }
 
 
    if f1ac == 3 {
  f1block = true
  }
   if f1ac == 1{
 f1charged = true
 }
 
 if f2ac == 1{
 f2charged = true }
 
 if f2ac == 3 {
 f2block = true
 }

 
  if f1charged == true && f1ac == 2 && f2block == true {
  
  print (" \(fighter2Name) blocked the attack! ")
  f1charged = false
  f1charged = false
  }
  
  else if f1charged == true && f1ac == 2 && f1block == false {
  f2H = (f2H - fighter1Damage)
  print (" \(fighter1Name) hit \(fighter2Name) !")
  f1charged = false
  
  }

  if f2charged == true && f2ac == 2 && f1block == true {
  print (" \(fighter1Name) blocked the attack! ")
  f2charged = false
  f1charged = false
  }
  
  else if f2charged == true && f2ac == 2 && f1block == false {
  f1H = (f1H - fighter2Damage)
  print (" \(fighter2Name) hit \(fighter1Name) ! ")
  f2charged = false
  }
 

print (" \(fighter1Name) H: \(f1H) \n \(fighter2Name) H: \(f2H) ")



f1block = false
f2block = false



if f2H < 0.0 && f1H > 0{
print ("\n //////////////////// \n \(fighter1Name) IS VICTORIOUS! \n /////////////////// \n ")
break

}

if f1H < 0.0 && f2H > 0{
print ("\(fighter2Name) IS VICTORIOUS! ")
break
}

if f1H < 0.0 && f2H < 0.0 {

if f1H < f2H {

print (" \(fighter2Name) IS VICTORIOUS! ")

break

}

if f2H < f1H {
print (" \(fighter1Name) IS VICTORIOUS!")
break
}

else if f1H == f2H {
print ("\n DRAW ")
break
}

}


}