<!DOCTYPE html>
<html lang="en">
<head>    
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body{
  background:#e19A2E;
}
.cat{
  position:absolute;
  width:70%;
  height:450px;
  margin:0px 30%;
  overflow:hidden;
  
}
.rastro{
  position:absolute;
  width:700px;
  height:90px;
  opacity:.5;
  border-bottom:9px dashed #9e6621;
  margin:321px 172px;
   animation: corre.7s alternate infinite;
  -moz-animation:corre .7s alternate infinite; 
-webkit-animation:corre .7s linear infinite;
-o-animation:corre .7s alternate infinite;
}
.legs{
  position:absolute;
  width:25px;
  height:70px;
  border-radius:0px 0px 90px 0;
  background:black;
  margin: 350px 85px;
   animation: camina .2s alternate infinite;
  -moz-animation:camina .2s alternate infinite; 
-webkit-animation: camina .2s alternate infinite;
-o-animation:camina .2s alternate infinite;
}
.legs::before{
  content:"";
  display:blocK;
  width:25px;
  height:70px;
  border-radius:0px 0px 90px 0;
  background:black;
  margin: -12px 50px;
  animation: camina3 .2s alternate infinite;
  -moz-animation:camina3 .2s alternate infinite; 
-webkit-animation:camina3 .2s alternate infinite;
-o-animation:camina3 .2s alternate infinite;
}

.cuerpo{
  position:absolute;
  isplay:block;
   width: 132px;
   height: 180px;
   background-color: black;
   -webkit-border-radius: 63px 63px 63px 63px / 108px 108px 72px 72px;
   border-radius:         50%  50%  50%  50%  / 40%   40%   60%  60%;
     margin: 172px 70px;
   animation: sube .2s alternate infinite;
  -moz-animation:sube .2s alternate infinite; 
-webkit-animation:sube .2s alternate infinite;
-o-animation:sube .2s alternate infinite;
}
.cuerpo::before{
  content:"";
  display:block;
  width:125px;
  height:112px;
  border-radius:100%;
  background:black;
  margin:95px -16px;
}
.cuerpo::after{
  content:"";
  display:block;
  width:112px;
  height:70px;
  border-radius:102px 102px 0 0;
  border-top:21px solid black;
  border-left:21px solid black;
  margin: -309px -23px;
  animation: sube3 .2 alternate infinite;
  -moz-animation:sube3 .2s alternate infinite; 
-webkit-animation: sube3 .2s alternate infinite;
-o-animation:sube3 .2s alternate infinite;
  
}
.patas{
  position:absolute;
  width: 65px;
  height:30px;
  border-radius:90px 90px 0 0;
  background:black;
  margin: -270px 70px;
  border-top:3px solid gray;
-webkit-transform: rotate(-116deg);
       -moz-transform: rotate(-116deg);
        -ms-transform: rotate(-116deg);
         -o-transform: rotate(-116deg);
            transform: rotate(-116deg);
}
.patas::before{
  content:"";
  display:block;
  width:17px;
  height:43px;
  border-radius:12px;
  background:black;
  margin:-9px -25px;
  border-top:1px solid gray;
  border-right:3px solid gray;
   
  -webkit-transform: rotate(-65deg);
       -moz-transform: rotate(-65deg);
        -ms-transform: rotate(-65deg);
         -o-transform: rotate(-65deg);
            transform: rotate(-65deg);
}
.orejas{
  position:absolute;
  width: 0;
    height: 0;
    border-top: 30px solid transparent;
    border-left: 30px solid #121212;
    border-bottom: 30px solid transparent;
  margin:-212px -12px;
}
.orejas::before{
  content:"";
  display:block;
  width: 0;
    height: 0;
    border-top: 21px solid transparent;
    border-left: 9px solid gray;
    border-bottom: 12px solid transparent;
  margin:-21px -25px;
}

.cabeza{
  position:absolute;
  width:85px;
  height:85px;
  border-radius:100%;
  background:black;
  margin:291px 70px;
}
.ojos{
  position:absolute;
  width:30px;
  height:30px;
  border-radius:100%;
  background:white;
  border:3px solid black;
  margin:40px -3px;
  
  
}
.ojos::before{
  content:"";
  display:block;
  width:30px;
  height:30px;
  border-radius:100%;
  background:white;
  border:3px solid black;
  margin:-3px 50px;
  
}
.ojos::after{
  content:"";
  display:block;
  width:12px;
  height:9px;
  border-radius:100%;
  background:#9c1b4d;
  margin:3px 37px
}
.iris{
  position:absolute;
   width:12px;
  height:12px;
  border-radius:100%;
  background:black;
  margin: -27px 17px;
  animation: sube4 .2s alternate infinite;
  -moz-animation:sube4 .2s alternate infinite; 
-webkit-animation: sube4 .2s alternate infinite;
-o-animation:sube4 .2s alternate infinite;
}
.iris::before{
  content:"";
  display:block;
   width:12px;
  height:12px;
  border-radius:100%;
  background:black;
  margin: 0px 53px;
}
.orejitas{
  position:absolute;
 width: 0;
    height: 0;
    border-top: 30px solid transparent;
    border-right: 30px solid #121212;
    border-bottom: 30px solid transparent;
  margin:-33px 65px;
  animation: sube4 .3s alternate infinite;
  -moz-animation:sube4 .3s alternate infinite; 
-webkit-animation: sube4 .3s alternate infinite;
-o-animation:sube4 .3s alternate infinite;
}
.orejitas::before{
  content:"";
  display:block;
  width: 0;
    height: 0;
    border-top: 21px solid transparent;
    border-right: 9px solid gray;
    border-bottom: 12px solid transparent;
  margin:-21px 16px;
}
.bigotes{
  position:absolute;
  width:23px;
  height:3px;
  background:gray;
    -webkit-transform: rotate(-21deg);
       -moz-transform: rotate(-21deg);
        -ms-transform: rotate(-21deg);
         -o-transform: rotate(-21deg);
            transform: rotate(-21deg);
  margin:80px 12px;
animation: sube5 .2s alternate infinite;
  -moz-animation:sube5 .2s alternate infinite; 
-webkit-animation: sube5 .2s alternate infinite;
-o-animation:sube5 .2s alternate infinite;
}
.bigotes::before{
 content:"";
  display:block;
  width:23px;
  height:3px;
  background:gray;
    -webkit-transform: rotate(45deg);
       -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
         -o-transform: rotate(45deg);
            transform: rotate(45deg);
  margin:13px 35px

}
.bigotitos{
  position:absolute;
  width:21px;
  height:3px;
  background:gray;
    -webkit-transform: rotate(-21deg);
       -moz-transform: rotate(-21deg);
        -ms-transform: rotate(-21deg);
         -o-transform: rotate(-21deg);
            transform: rotate(-21deg);
  margin:-21px 3px

}
.bigotitos::before{
 content:"";
  display:block;
  width:21px;
  height:3px;
  background:gray;
    -webkit-transform: rotate(85deg);
       -moz-transform: rotate(85deg);
        -ms-transform: rotate(85deg);
         -o-transform: rotate(85deg);
            transform: rotate(85deg);
  margin:19px 22px;

}
.cola{
  position:absolute;
  width:21px;
  height:12px;
  border-radius:0 0 90px 90px;
  border-bottom:21px solid black;
  border-right:21px solid black;
  border-left:21px solid black;
  margin:-239px -65px;
}
.sombra{
  position:absolute;
  width:152px;
  height:30px;
  border-radius:100%;
  background:#9e6621;
  margin: 400px 50px;
  
  animation: grande .2s alternate infinite;
  -moz-animation:grande .2s alternate infinite; 
-webkit-animation: grande .2s alternate infinite;
-o-animation:grande .2s alternate infinite;
}
@-webkit-keyframes sube{
0%{margin-top:172px;}

100%{margin-top:169px;}

}
@-moz-keyframes sube{
0%{margin-top:172px;}

100%{margin-top:169px;}

}
@keyframes sube{
0%{margin-top:172px;}

100%{margin-top:169px;}

}
@-webkit-keyframes sube3 {
0%{margin-top:-328px;}

100%{margin-top:-323px;}

}
@-moz-keyframes sube3 {
0%{margin-top:-328px;}

100%{margin-top:-323px;}

}
@keyframes sube3 {
0%{margin-top:-328px;}

100%{margin-top:-323px;}

}
@-webkit-keyframes sube4 {
0%{margin-top:-27px;}

100%{margin-top:-25px;}

}
@-moz-keyframes sube4 {
0%{margin-top:-27px;}

100%{margin-top:-25px;}

}
@keyframes sube4 {
0%{margin-top:-27px;}

100%{margin-top:-25px;}

}
@-webkit-keyframes sube5  {
0%{margin-top:80px;}

100%{margin-top:77px;}

}
@-moz-keyframes sube5  {
0%{margin-top:80px;}

100%{margin-top:77px;}

}
@keyframes sube5  {
0%{margin-top:80px;}

100%{margin-top:77px;}

}
@-webkit-keyframes camina {
0%{margin-top: 350px;margin-left:85px;}

100%{margin-top: 343px;margin-left:90px;}

}
@-moz-keyframes camina {
0%{margin-top: 350px;margin-left:85px;}

100%{margin-top: 343px;margin-left:90px;}

}
@keyframes camina {
0%{margin-top: 350px;margin-left:85px;}

100%{margin-top: 343px;margin-left:90px;}

}
@-webkit-keyframes camina3{
0%{margin-top:-12px; margin-left:50px;}

100%{margin-top:5px; margin-left:21px}

}
@-moz-keyframes camina3{
0%{margin-top:-12px; margin-left:50px;}

100%{margin-top:5px; margin-left:21px}

}
@keyframes camina3{
0%{margin-top:-12px; margin-left:50px;}

100%{margin-top:5px; margin-left:21px}

}
@-webkit-keyframes grande {
0%{-webkit-transform: scale(.9); 
 -moz-transform: scale(.9); 
 -ms-transform: scale(.9); 
 -o-transform: scale(.9); 
 transform: scale(.9);  }

100%{-webkit-transform: scale(1); 
 -moz-transform: scale(1); 
 -ms-transform: scale(1); 
 -o-transform: scale(1); 
 transform: scale(1); }

}
@-moz-keyframes grande {
0%{-webkit-transform: scale(.9); 
 -moz-transform: scale(.9); 
 -ms-transform: scale(.9); 
 -o-transform: scale(.9); 
 transform: scale(.9);  }

100%{-webkit-transform: scale(1); 
 -moz-transform: scale(1); 
 -ms-transform: scale(1); 
 -o-transform: scale(1); 
 transform: scale(1); }

}
@keyframes grande {
0%{-webkit-transform: scale(.9); 
 -moz-transform: scale(.9); 
 -ms-transform: scale(.9); 
 -o-transform: scale(.9); 
 transform: scale(.9);  }

100%{-webkit-transform: scale(1); 
 -moz-transform: scale(1); 
 -ms-transform: scale(1); 
 -o-transform: scale(1); 
 transform: scale(1); }

}
@-webkit-keyframes corre {
0%{margin-left:55px;}

100%{margin-left:172px;}

}
@-moz-keyframes corre {
0%{margin-left:55px;}

100%{margin-left:172px;}

}
@keyframes corre {
0%{margin-left:55px;}

100%{margin-left:172px;}

}
</style>
</head>
<body>
    <div class="cat">
  <div class="rastro"></div>
  <div class="sombra">
    
  </div>
  
  <div class="legs"></div>
  <div class="cuerpo">
    <div class="cola"></div>
    <div class="patas"></div>
    <div class="orejas"></div>
    
  </div>
  <div class="cabeza">
    <div class="ojos"><div class="iris"></div></div>
     <div class="orejitas"></div>
    <div class="bigotes"><div class="bigotitos"></div></div>
    
  </div>
  
</div>

</body>

</html>