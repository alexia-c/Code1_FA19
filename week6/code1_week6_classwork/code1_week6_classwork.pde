//part 1
//int numbers[] = {2, 4, 6, 0, 19};
//String words[];

//void setup(){
//  //println(numbers[2]);
//  words =new String[4];
  
//  words[0] = "banana";
//  words[1] = "oatmilk";
//  words[2] = "strawberries";
//  words[3] = "berries";
  
//  for(int i= 0; i<4; i++){
//    println(words[i]);
//  }
//}


//part 2

float randomNumbers[] = new float[100];

int counter = 0;

void setup(){
  size(500, 500);
  
  for(int i=0; i<100; i++){
  randomNumbers[i] = random(1, 100);
  println(randomNumbers[i]);
  }
  if(runLoop){
  for(int i = 0; i<sentence.length; i++){
  if(sentence[i] == "the"){
    counter++;
}
if(i == (sentence.length-1)){
  runLoop =false;
}
}
  }
}

  

void draw(){
  for(int i = 0; i<randomNumbers.length; i++){
    rect(randomNumbers[i], randomNumbers[i],randomNumbers[i], randomNumbers[i]);
  }
}

//create a string array
//assign sentence to your string array
//loop through your array and print out when
//words is equal to "the"
//increase counter when string is == "the"
