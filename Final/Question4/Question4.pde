int n1, n2; 
int sum; 
String additionSentence; 

void setup(){
size(300, 300); 

n1 = int(random(0,10)); 
n2 = int(random(0,10)); 

sum = addNumbers(n1, n2);

additionSentence = str(n1) + " + " + str(n2) + " = " + str(sum); 
text(additionSentence, width*.2, height/2);
println(additionSentence);

returnAString("Math isn't", "that bad.");
//display text from the return a string function 
}

int addNumbers(int num1, int num2){
int sum;
sum = n1 + n2;
return sum; 

}

//fix the function errors here
void returnAString(String string1, String string2){
text(string1 +" "+ string2, width*.2+50, height/2+50);
println(string1 +" "+ string2);
} 
