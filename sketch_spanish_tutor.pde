int nword = 91;
int word = 0;
int hide = 0;

void setup(){
size(1000,600);
}

void keyPressed(){

if(key==' '){
word=int(random(1,nword+1));
}

if(key=='1'){
hide=0;
}

if(key=='2'){
hide=1;
}

if(key=='3'){
hide=2;
}

}

void draw(){
background(0);
textSize(50);
fill(255);

if(word == 0){
text("Spanish - Bulgarian",200,200);
}

if(word == 1){
text("Hola",200,300);
text("Здрасти",600,300);
}

if(word == 2){
text("abuelo",200,300);
text("дядо",600,300);
}

if(word == 3){
text("bien",200,300);
text("добре",600,300);
}

if(word == 4){
text("casa",200,300);
text("къща",600,300);
}

if(word == 5){
text("cosa",200,300);
text("нещо",600,300);

}

if(word == 6){
text("cuatro",200,300);
text("четери",600,300);
}

if(word == 7){
text("cerrado",200,300);
text("затворено",600,300);
}

if(word == 8){
text("cine",200,300);
text("кино",600,300);
}

if(word == 9){
text("dia",200,300);
text("ден",600,300);
}

if(word == 10){
text("dos",200,300);
text("две",600,300);
}

if(word == 11){
text("fumar",200,300);
text("пума",600,300);
}

if(word == 12){
text("gato",200,300);
text("котка",600,300);
}

if(word == 13){
text("pago",200,300);
text("плащам",600,300);
}

if(word == 14){
text("agua",200,300);
text("вода",600,300);
}

if(word == 15){
text("guerrero",200,300);
text("войник",600,300);
}

if(word == 16){
text("guitarra",200,300);
text("китара",600,300);
}

if(word == 17){
text("genio",200,300);
text("гениалнен",600,300);
}

if(word == 18){
text("giro",200,300);
text("дърпам",600,300);
}

if(word == 19){
text("hotel",200,300);
text("хотел",600,300);
}

if(word == 20){
text("hospital",200,300);
text("болница",600,300);
}

if(word == 21){
text("jefe",200,300);
text("шеф",600,300);
}

if(word == 22){
text("jirafa",200,300);
text("жираф",600,300);
}

if(word == 23){
text("kilogramo",200,300);
text("килограм",600,300);
}

if(word == 24){
text("leon",200,300);
text("лъв",600,300);
}

if(word == 25){
text("lemon",200,300);
text("лимон",600,300);
}

if(word == 26){
text("mira",200,300);
text("гледам",600,300);
}

if(word == 27){
text("nada",200,300);
text("нищо",600,300);
}

if(word == 28){
text("no",200,300);
text("не",600,300);
}

if(word == 29){
text("niña",200,300);
text("лъв",600,300);
}

if(word == 30){
text("año",200,300);
text("година",600,300);
}

if(word == 31){
text("pan",200,300);
text("хляб",600,300);
}

if(word == 32){
text("pera",200,300);
text("круша",600,300);
}

if(word == 33){
text("perra",200,300);
text("кучка",600,300);
}

if(word == 34){
text("quince",200,300);
text("петнаисет",600,300);
}

if(word == 35){
text("queso",200,300);
text("кашкавал",600,300);
}

if(word == 36){
text("rosa",200,300);
text("розово, роза",600,300);
}

if(word == 37){
text("ramo",200,300);
text("букет",600,300);
}

if(word == 38){
text("arroz",200,300);
text("ориз",600,300);
}

if(word == 39){
text("sol",200,300);
text("слънце",600,300);
}

if(word == 40){
text("paseo",200,300);
text("алея за разходки",600,300);
}

if(word == 41){
text("tomate",200,300);
text("домат",600,300);
}

if(word == 42){
text("tu",200,300);
text("ти",600,300);
}

if(word == 43){
text("vaca",200,300);
text("карава",600,300);
}

if(word == 44){
text("ven",200,300);
text("ела",600,300);
}

if(word == 45){
text("vino",200,300);
text("вино",600,300);
}

if(word == 46){
text("examen",200,300);
text("изпит",600,300);
}

if(word == 47){
text("exito",200,300);
text("успех",600,300);
}

if(word == 48){
text("yogur",200,300);
text("кисело мляко",600,300);
}

if(word == 49){
text("zapato",200,300);
text("обувка",600,300);
}

if(word == 50){
text("cazo",200,300);
text("лов",600,300);
}

if(word == 51){
text("azul",200,300);
text("син",600,300);
}

if(word == 52){
text("chocolate",200,300);
text("шоколад",600,300);
}

if(word == 53){
text("iiave",200,300);
text("ключ",600,300);
}

if(word == 54){
text("iiuria",200,300);
text("дъжд",600,300);
}

if(word == 55){
text("quiero",200,300);
text("искам",600,300);
}

if(word == 56){
text("quiero",200,300);
text("искам",600,300);
}

if(word == 57){
text("amar",200,300);
text("обичам",600,300);
}

if(word == 58){
text("color",200,300);
text("цвят",600,300);
}

if(word == 59){
text("guerra",200,300);
text("война",600,300);
}

if(word == 60){
text("agosto",200,300);
text("август",600,300);
}

if(word == 61){
text("zoo",200,300);
text("зоологическ градина",600,300);
}

if(word == 62){
text("jamon",200,300);
text("шунка",600,300);
}

if(word == 63){
text("gitano",200,300);
text("циганин",600,300);
}

if(word == 64){
text("julio",200,300);
text("юли",600,300);
}

if(word == 65){
text("cafe",200,300);
text("кафе",600,300);
}

if(word == 66){
text("medico",200,300);
text("доктор",600,300);
}

if(word == 67){
text("arbol",200,300);
text("дърво",600,300);
}

if(word == 68){
text("lenga",200,300);
text("език",600,300);
}

if(word == 69){
text("paises",200,300);
text("държави",600,300);
}

if(word == 70){
text("despues",200,300);
text("viene",200,400);
text("след това",600,300);
}

if(word == 71){
text("mirar",200,300);
text("виждам",600,300);
}

if(word == 72){
text("encantado",200,300);
text("приятно ми е",600,300);
}

if(word == 73){
text("pero",200,300);
text("но",600,300);
}

if(word == 74){
text("ahora",200,300);
text("сега",600,300);
}

if(word == 75){
text("vivir",200,300);
text("живея",600,300);
}

if(word == 76){
text("en",200,300);
text("в",600,300);
}

if(word == 77){
text("blanco",200,300);
text("бяло",600,300);
}

if(word == 78){
text("gris",200,300);
text("сиво",600,300);
}

if(word == 79){
text("negro",200,300);
text("черно",600,300);
}

if(word == 80){
text("verde",200,300);
text("зелено",600,300);
}

if(word == 81){
text("azul",200,300);
text("синьо",600,300);
}

if(word == 82){
text("marron",200,300);
text("кафяво",600,300);
}

if(word == 83){
text("amario",200,300);
text("жълто",600,300);
}

if(word == 84){
text("naraja",200,300);
text("оранжево, портокал",600,300);
}

if(word == 85){
text("morado",200,300);
text("кафяво",600,300);
}

if(word == 86){
text("rosa",200,300);
text("розово, роза",600,300);
}

if(word == 87){
text("rojo",200,300);
text("червено",600,300);
}

if(word == 88){
text("pelo",200,300);
text("коса",600,300);
}

if(word == 89){
text("vino tinto",200,300);
text("червено вино",600,300);
}

if(word == 90){
text("ojos",200,300);
text("очи",600,300);
}

if(word == 91){
text("orejas",200,300);
text("уши",600,300);
}

fill(0);
if(hide==1){rect(0,0,550,800);}
if(hide==2){rect(550,0,550,800);}
}
