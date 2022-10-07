ô1
UD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.API\Controllers\AlmacenController.cs
	namespace 	
PremierBeef
 
. 
API 
. 
Controllers %
{ 
[ 
Route 

(
 
$str 
) 
] 
[		 
ApiController		 
]		 
public

 

class

 
AlmacenController

 "
:

# $

Controller

% /
{ 
private 
readonly 
IAlmacenService (
_almacenService) 8
;8 9
public 
AlmacenController  
(  !
IAlmacenService! 0
almacenService1 ?
)? @
{ 	
_almacenService 
= 
almacenService ,
;, -
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetAlmacens) 4
(4 5
)5 6
{ 	
try 
{ 
var 
products 
= 
await $
_almacenService% 4
.4 5
GetAlmacens5 @
(@ A
)A B
;B C
return 
Ok 
( 
products "
)" #
;# $
} 
catch 
( 
	Exception 
) 
{ 
return 

StatusCode !
(! "
$num" %
,% &
$str' T
)T U
;U V
} 
}   	
["" 	
HttpGet""	 
]"" 
[## 	
Route##	 
(## 
$str## 
)##  
]##  !
public$$ 
async$$ 
Task$$ 
<$$ 
ActionResult$$ &
<$$& '
AlmacenViewModel$$' 7
>$$7 8
>$$8 9
Get$$: =
($$= >
int$$> A
id$$B D
)$$D E
{%% 	
var&& 
user&& 
=&& 
await&& 
_almacenService&& ,
.&&, -
GetAlmacenById&&- ;
(&&; <
id&&< >
)&&> ?
;&&? @
if(( 
((( 
user(( 
==(( 
null(( 
)(( 
{)) 
return** 
NotFound** 
(**  
)**  !
;**! "
}++ 
return-- 
Ok-- 
(-- 
user-- 
)-- 
;-- 
}.. 	
[00 	
HttpPost00	 
]00 
public11 
async11 
Task11 
<11 
IActionResult11 '
>11' (
Register11) 1
(111 2
[112 3
FromBody113 ;
]11; <
AlmacenModel11= I
userInputModel11J X
)11X Y
{22 	
var33 
almacenNombre33 
=33 
await33  %
_almacenService33& 5
.335 6
GetAlmacenByAlmacen336 I
(33I J
userInputModel33J X
.33X Y
nombre33Y _
)33_ `
;33` a
if55 
(55 
almacenNombre55 
!=55  
null55! %
)55% &
return66 

BadRequest66 !
(66! "
$str66" G
)66G H
;66H I
var88 
id88 
=88 
await88 
_almacenService88 *
.88* +

AddAlmacen88+ 5
(885 6
userInputModel886 D
)88D E
;88E F
if:: 
(:: 
id:: 
!=:: 
$num:: 
):: 
return;; 
Ok;; 
(;; 
);; 
;;; 
return== 

BadRequest== 
(== 
)== 
;==  
}>> 	
[@@ 	
HttpPut@@	 
]@@ 
publicAA 
asyncAA 
TaskAA 
<AA 
IActionResultAA '
>AA' (
EditAA) -
(AA- .
[AA. /
FromBodyAA/ 7
]AA7 8
AlmacenModelAA9 E
userInputModelAAF T
)AAT U
{BB 	
varCC 
almacenNombreCC 
=CC 
awaitCC  %
_almacenServiceCC& 5
.CC5 6
GetAlmacenByAlmacenCC6 I
(CCI J
userInputModelCCJ X
.CCX Y
nombreCCY _
)CC_ `
;CC` a
ifEE 
(EE 
almacenNombreEE 
!=EE  
nullEE! %
&&EE& (
almacenNombreEE) 6
.EE6 7
idEE7 9
!=EE: <
userInputModelEE= K
.EEK L
idEEL N
)EEN O
returnFF 

BadRequestFF !
(FF! "
$strFF" G
)FFG H
;FFH I
ifHH 
(HH 

ModelStateHH 
.HH 
IsValidHH "
)HH" #
{II 
varJJ 
resultJJ 
=JJ 
awaitJJ "
_almacenServiceJJ# 2
.JJ2 3
UpdateAlmacenJJ3 @
(JJ@ A
userInputModelJJA O
)JJO P
;JJP Q
returnLL 
OkLL 
(LL 
)LL 
;LL 
}MM 
returnNN 

BadRequestNN 
(NN 
)NN 
;NN  
}OO 	
[QQ 	

HttpDeleteQQ	 
(QQ 
$strQQ 
)QQ 
]QQ 
publicRR 
asyncRR 
TaskRR 
<RR 
IActionResultRR '
>RR' (
RemoveAlmacenRR) 6
(RR6 7
intRR7 :
idRR; =
)RR= >
{SS 	
varTT 
resultTT 
=TT 
awaitTT 
_almacenServiceTT .
.TT. /
RemoveAlmacenTT/ <
(TT< =
idTT= ?
)TT? @
;TT@ A
ifVV 
(VV 
resultVV 
==VV 
$numVV 
)VV 
returnWW 
OkWW 
(WW 
)WW 
;WW 
elseXX 
returnYY 
NotFoundYY 
(YY  
)YY  !
;YY! "
}ZZ 	
}[[ 
}\\ üT
\D:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.API\Controllers\AuthenticationController.cs
	namespace 	
PremierBeef
 
. 
API 
. 
Controllers %
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class $
AuthenticationController )
:* +
ControllerBase, :
{ 
private 
readonly 
IConfiguration '
_config( /
;/ 0
private 
readonly 
IUsuarioService (
_usuarioAuthService) <
;< =
private 
readonly 
ISecurityService )
_securityService* :
;: ;
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
public $
AuthenticationController '
(' (
IConfiguration( 6
configuration7 D
,D E
IUsuarioService 
usuarioService *
,* +
ISecurityService 
securityService ,
,, -
IEmailSender 
emailSender $
) 
{ 	
_config   
=   
configuration   #
;  # $
_usuarioAuthService!! 
=!!  !
usuarioService!!" 0
;!!0 1
_securityService"" 
="" 
securityService"" .
;"". /
_emailSender## 
=## 
emailSender## &
;##& '
}%% 	
['' 	
HttpPost''	 
('' 
$str'' 
)'' 
]'' 
public(( 
IActionResult(( 
Login(( "
(((" #
[((# $
FromBody(($ ,
]((, -
Login((. 3
user((4 8
)((8 9
{)) 	
if** 
(** 
user** 
is** 
null** 
)** 
return++ 

BadRequest++ !
(++! "
$str++" 9
)++9 :
;++: ;
var-- 
userInfo-- 
=-- 
_usuarioAuthService-- .
.--. /
GetUserByUsuario--/ ?
(--? @
user--@ D
.--D E
UserName--E M
??--N P
$str--Q S
)--S T
;--T U
bool.. 
isValid.. 
=.. 
false..  
;..  !
if00 
(00 
userInfo00 
.00 
Result00 
!=00  "
null00# '
)00' (
isValid11 
=11 
_securityService11 *
.11* +
Check11+ 0
(110 1
userInfo111 9
.119 :
Result11: @
.11@ A
clave11A F
,11F G
user11H L
.11L M
Password11M U
??11V X
$str11Y [
)11[ \
;11\ ]
else22 
return33 
NotFound33 
(33  
$str33  E
)33E F
;33F G
if55 
(55 
isValid55 
)55 
{66 
var77 
	secretKey77 
=77 
new77  # 
SymmetricSecurityKey77$ 8
(778 9
Encoding779 A
.77A B
UTF877B F
.77F G
GetBytes77G O
(77O P
_config77P W
[77W X
$str77X d
]77d e
)77e f
)77f g
;77g h
var88 
signinCredentials88 %
=88& '
new88( +
SigningCredentials88, >
(88> ?
	secretKey88? H
,88H I
SecurityAlgorithms88J \
.88\ ]

HmacSha25688] g
)88g h
;88h i
var99 
tokeOptions99 
=99  !
new99" %
JwtSecurityToken99& 6
(996 7
issuer:: 
::: 
_config:: #
[::# $
$str::$ 5
]::5 6
,::6 7
audience;; 
:;; 
_config;; %
[;;% &
$str;;& 9
];;9 :
,;;: ;
claims<< 
:<< 
new<< 
List<<  $
<<<$ %
Claim<<% *
><<* +
(<<+ ,
)<<, -
,<<- .
expires== 
:== 
DateTime== %
.==% &
Now==& )
.==) *

AddMinutes==* 4
(==4 5
$num==5 7
)==7 8
,==8 9
signingCredentials>> &
:>>& '
signinCredentials>>( 9
)?? 
;?? 
var@@ 
tokenString@@ 
=@@  !
new@@" %#
JwtSecurityTokenHandler@@& =
(@@= >
)@@> ?
.@@? @

WriteToken@@@ J
(@@J K
tokeOptions@@K V
)@@V W
;@@W X
returnAA 
OkAA 
(AA 
newAA 
JWTTokenResponseAA .
{AA/ 0
TokenAA1 6
=AA7 8
tokenStringAA9 D
}AAE F
)AAF G
;AAG H
}BB 
elseCC 
returnDD 
UnauthorizedDD #
(DD# $
$strDD$ ;
)DD; <
;DD< =
}GG 	
[II 	
HttpPostII	 
(II 
$strII "
)II" #
]II# $
publicJJ 
asyncJJ 
TaskJJ 
<JJ 
IActionResultJJ '
>JJ' (
ForgotPasswordJJ) 7
(JJ7 8
[JJ8 9
FromBodyJJ9 A
]JJA B
ForgotPasswordJJC Q
forgotPasswordJJR `
)JJ` a
{KK 	
ifLL 
(LL 
!LL 

ModelStateLL 
.LL 
IsValidLL #
)LL# $
returnMM 

BadRequestMM !
(MM! "
)MM" #
;MM# $
stringOO 
EmailOO 
=OO 
forgotPasswordOO )
.OO) *
EmailOO* /
!=OO0 2
nullOO3 7
?OO8 9
(OO: ;
stringOO; A
)OOA B
forgotPasswordOOB P
.OOP Q
EmailOOQ V
:OOW X
$strOOY [
;OO[ \
varQQ 
userQQ 
=QQ 
awaitQQ 
_usuarioAuthServiceQQ 0
.QQ0 1
GetUserByCorreoQQ1 @
(QQ@ A
EmailQQA F
)QQF G
;QQG H
ifRR 
(RR 
userRR 
==RR 
nullRR 
)RR 
returnSS 

BadRequestSS !
(SS! "
$strSS" I
)SSI J
;SSJ K
varVV 
paramVV 
=VV 
newVV 

DictionaryVV &
<VV& '
stringVV' -
,VV- .
stringVV/ 5
?VV5 6
>VV6 7
{WW 
{XX 
$strXX 
,XX 
$strXX 
}XX 
,XX 
{YY 
$strYY 
,YY 
forgotPasswordYY (
.YY( )
EmailYY) .
}YY/ 0
,YY0 1
{ZZ 
$strZZ 
,ZZ 
userZZ  
.ZZ  !
usuarioZZ! (
}ZZ( )
}[[ 
;[[ 
var__ 
callback__ 
=__ 
QueryHelpers__ '
.__' (
AddQueryString__( 6
(__6 7
forgotPassword__7 E
.__E F
	ClientURI__F O
,__O P
param__Q V
)__V W
;__W X
callback`` 
=`` 
callback`` 
.``  
Replace``  '
(``' (
$str``( /
,``/ 0
$str``1 4
)``4 5
;``5 6
varaa 
messageaa 
=aa 
newaa 
Messageaa %
(aa% &
newaa& )
stringaa* 0
[aa0 1
]aa1 2
{aa3 4
useraa5 9
.aa9 :
correoaa: @
}aaA B
,aaB C
$straaD Z
,aaZ [
callbackaa\ d
,aad e
nullaaf j
)aaj k
;aak l
awaitcc 
_emailSendercc 
.cc 
SendEmailAsynccc -
(cc- .
messagecc. 5
)cc5 6
;cc6 7
returnee 
Okee 
(ee 
)ee 
;ee 
}ff 	
[hh 	
HttpPosthh	 
(hh 
$strhh !
)hh! "
]hh" #
publicii 
asyncii 
Taskii 
<ii 
IActionResultii '
>ii' (
ResetPasswordii) 6
(ii6 7
[ii7 8
FromBodyii8 @
]ii@ A
ResetPasswordiiB O
resetPasswordiiP ]
)ii] ^
{jj 	
ifkk 
(kk 
!kk 

ModelStatekk 
.kk 
IsValidkk #
)kk# $
returnll 

BadRequestll !
(ll! "
)ll" #
;ll# $
ifnn 
(nn 
resetPasswordnn 
.nn 
passwordnn &
!=nn' )
resetPasswordnn* 7
.nn7 8
confirmPasswordnn8 G
)nnG H
returnoo 

BadRequestoo !
(oo! "
$stroo" <
)oo< =
;oo= >
varqq 
userqq 
=qq 
awaitqq 
_usuarioAuthServiceqq 0
.qq0 1
GetUserByCorreoqq1 @
(qq@ A
resetPasswordqqA N
.qqN O
emailqqO T
)qqT U
;qqU V
ifrr 
(rr 
userrr 
==rr 
nullrr 
)rr 
returnss 

BadRequestss !
(ss! "
$strss" 3
)ss3 4
;ss4 5
ifuu 
(uu 
resetPassworduu 
.uu 
passworduu &
!=uu' )
nulluu* .
&&uu/ 1
resetPassworduu2 ?
.uu? @
passworduu@ H
!=uuI K
StringuuL R
.uuR S
EmptyuuS X
)uuX Y
{vv 
stringww 
encriptedPasswordww (
=ww) *
_securityServiceww+ ;
.ww; <
Hashww< @
(ww@ A
resetPasswordwwA N
.wwN O
passwordwwO W
)wwW X
;wwX Y
useryy 
.yy 
claveyy 
=yy 
encriptedPasswordyy .
;yy. /
var{{ 
result{{ 
={{ 
_usuarioAuthService{{ 0
.{{0 1
UpdateContrase√±a{{1 A
({{A B
resetPassword{{B O
.{{O P
email{{P U
,{{U V
encriptedPassword{{W h
){{h i
;{{i j
}|| 
return
áá 
Ok
áá 
(
áá 
)
áá 
;
áá 
}
àà 	
}
ââ 
}ää ˆ(
WD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.API\Controllers\CategoriaController.cs
	namespace 	
PremierBeef
 
. 
API 
. 
Controllers %
{ 
[ 
Route 

(
 
$str 
) 
] 
[		 
ApiController		 
]		 
public

 

class

 
CategoriaController

 $
:

% &

Controller

' 1
{ 
private 
readonly 
ICategoriaService *
_categoriaService+ <
;< =
public 
CategoriaController "
(" #
ICategoriaService# 4
categoriaService5 E
)E F
{ 	
_categoriaService 
= 
categoriaService  0
;0 1
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetCategorias) 6
(6 7
)7 8
{ 	
try 
{ 
var 
products 
= 
await $
_categoriaService% 6
.6 7
GetCategorias7 D
(D E
)E F
;F G
return 
Ok 
( 
products "
)" #
;# $
} 
catch 
( 
	Exception 
) 
{ 
return 

StatusCode !
(! "
$num" %
,% &
$str' T
)T U
;U V
} 
}   	
["" 	
HttpGet""	 
]"" 
[## 	
Route##	 
(## 
$str## !
)##! "
]##" #
public$$ 
async$$ 
Task$$ 
<$$ 
ActionResult$$ &
<$$& '
CategoriaViewModel$$' 9
>$$9 :
>$$: ;
Get$$< ?
($$? @
int$$@ C
id$$D F
)$$F G
{%% 	
var&& 
user&& 
=&& 
await&& 
_categoriaService&& .
.&&. /
GetCategoriaById&&/ ?
(&&? @
id&&@ B
)&&B C
;&&C D
if(( 
((( 
user(( 
==(( 
null(( 
)(( 
{)) 
return** 
NotFound** 
(**  
)**  !
;**! "
}++ 
return-- 
Ok-- 
(-- 
user-- 
)-- 
;-- 
}.. 	
[00 	
HttpPost00	 
]00 
public11 
async11 
Task11 
<11 
IActionResult11 '
>11' (
Register11) 1
(111 2
[112 3
FromBody113 ;
]11; <
CategoriaModel11= K
catInputModel11L Y
)11Y Z
{22 	
var33 
id33 
=33 
await33 
_categoriaService33 ,
.33, -
AddCategoria33- 9
(339 :
catInputModel33: G
)33G H
;33H I
if55 
(55 
id55 
!=55 
$num55 
)55 
return66 
Ok66 
(66 
)66 
;66 
return88 

BadRequest88 
(88 
)88 
;88  
}99 	
[;; 	
HttpPut;;	 
];; 
public<< 
async<< 
Task<< 
<<< 
IActionResult<< '
><<' (
Edit<<) -
(<<- .
[<<. /
FromBody<</ 7
]<<7 8
CategoriaModel<<9 G
catInputModel<<H U
)<<U V
{== 	
if>> 
(>> 

ModelState>> 
.>> 
IsValid>> "
)>>" #
{?? 
var@@ 
result@@ 
=@@ 
await@@ "
_categoriaService@@# 4
.@@4 5
UpdateCategoria@@5 D
(@@D E
catInputModel@@E R
)@@R S
;@@S T
returnBB 
OkBB 
(BB 
)BB 
;BB 
}CC 
returnDD 

BadRequestDD 
(DD 
)DD 
;DD  
}EE 	
[GG 	

HttpDeleteGG	 
(GG 
$strGG 
)GG 
]GG 
publicHH 
asyncHH 
TaskHH 
<HH 
IActionResultHH '
>HH' (
RemoveCategoriaHH) 8
(HH8 9
intHH9 <
idHH= ?
)HH? @
{II 	
varJJ 
resultJJ 
=JJ 
awaitJJ 
_categoriaServiceJJ 0
.JJ0 1
RemoveCategoriaJJ1 @
(JJ@ A
idJJA C
)JJC D
;JJD E
ifLL 
(LL 
resultLL 
==LL 
$numLL 
)LL 
returnMM 
OkMM 
(MM 
)MM 
;MM 
elseNN 
returnOO 
NotFoundOO 
(OO  
)OO  !
;OO! "
}PP 	
}QQ 
}RR ”0
UD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.API\Controllers\ClienteController.cs
	namespace 	
PremierBeef
 
. 
API 
. 
Controllers %
{ 
[ 
Route 

(
 
$str 
) 
] 
[		 
ApiController		 
]		 
public

 

class

 
ClienteController

 "
:

# $

Controller

% /
{ 
private 
readonly 
IClienteService (
_clienteService) 8
;8 9
public 
ClienteController  
(  !
IClienteService! 0
clienteService1 ?
)? @
{ 	
_clienteService 
= 
clienteService ,
;, -
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetClientes) 4
(4 5
)5 6
{ 	
try 
{ 
var 
products 
= 
await $
_clienteService% 4
.4 5
GetClientes5 @
(@ A
)A B
;B C
return 
Ok 
( 
products "
)" #
;# $
} 
catch 
( 
	Exception 
) 
{ 
return 

StatusCode !
(! "
$num" %
,% &
$str' T
)T U
;U V
} 
}   	
["" 	
HttpGet""	 
]"" 
[## 	
Route##	 
(## 
$str## 
)##  
]##  !
public$$ 
async$$ 
Task$$ 
<$$ 
ActionResult$$ &
<$$& '
ClienteViewModel$$' 7
>$$7 8
>$$8 9
Get$$: =
($$= >
int$$> A
id$$B D
)$$D E
{%% 	
var&& 
user&& 
=&& 
await&& 
_clienteService&& ,
.&&, -
GetClienteById&&- ;
(&&; <
id&&< >
)&&> ?
;&&? @
if(( 
((( 
user(( 
==(( 
null(( 
)(( 
{)) 
return** 
NotFound** 
(**  
)**  !
;**! "
}++ 
return-- 
Ok-- 
(-- 
user-- 
)-- 
;-- 
}.. 	
[00 	
HttpPost00	 
]00 
public11 
async11 
Task11 
<11 
IActionResult11 '
>11' (
Register11) 1
(111 2
[112 3
FromBody113 ;
]11; <
ClienteModel11= I
userInputModel11J X
)11X Y
{22 	
var33 
clienteExiste33 
=33 
await33  %
_clienteService33& 5
.335 6
GetClienteByCliente336 I
(33I J
userInputModel33J X
)33X Y
;33Y Z
if55 
(55 
clienteExiste55 
!=55  
null55! %
)55% &
return66 

BadRequest66 !
(66! "
$str66" S
)66S T
;66T U
var88 
id88 
=88 
await88 
_clienteService88 *
.88* +

AddCliente88+ 5
(885 6
userInputModel886 D
)88D E
;88E F
if:: 
(:: 
id:: 
!=:: 
$num:: 
):: 
return;; 
Ok;; 
(;; 
);; 
;;; 
return== 

BadRequest== 
(== 
)== 
;==  
}>> 	
[@@ 	
HttpPut@@	 
]@@ 
publicAA 
asyncAA 
TaskAA 
<AA 
IActionResultAA '
>AA' (
EditAA) -
(AA- .
[AA. /
FromBodyAA/ 7
]AA7 8
ClienteModelAA9 E
userInputModelAAF T
)AAT U
{BB 	
varCC 
clienteExisteCC 
=CC 
awaitCC  %
_clienteServiceCC& 5
.CC5 6
GetClienteByClienteCC6 I
(CCI J
userInputModelCCJ X
)CCX Y
;CCY Z
ifEE 
(EE 
clienteExisteEE 
!=EE  
nullEE! %
&&EE& (
clienteExisteEE) 6
.EE6 7
idEE7 9
!=EE: <
userInputModelEE= K
.EEK L
idEEL N
)EEN O
returnFF 

BadRequestFF !
(FF! "
$strFF" S
)FFS T
;FFT U
ifHH 
(HH 

ModelStateHH 
.HH 
IsValidHH "
)HH" #
{II 
varJJ 
resultJJ 
=JJ 
awaitJJ "
_clienteServiceJJ# 2
.JJ2 3
UpdateClienteJJ3 @
(JJ@ A
userInputModelJJA O
)JJO P
;JJP Q
returnLL 
OkLL 
(LL 
)LL 
;LL 
}MM 
returnNN 

BadRequestNN 
(NN 
)NN 
;NN  
}OO 	
[QQ 	

HttpDeleteQQ	 
(QQ 
$strQQ 
)QQ 
]QQ 
publicRR 
asyncRR 
TaskRR 
<RR 
IActionResultRR '
>RR' (
RemoveClienteRR) 6
(RR6 7
intRR7 :
idRR; =
)RR= >
{SS 	
varTT 
resultTT 
=TT 
awaitTT 
_clienteServiceTT .
.TT. /
RemoveClienteTT/ <
(TT< =
idTT= ?
)TT? @
;TT@ A
ifVV 
(VV 
resultVV 
==VV 
$numVV 
)VV 
returnWW 
OkWW 
(WW 
)WW 
;WW 
elseXX 
returnYY 
NotFoundYY 
(YY  
)YY  !
;YY! "
}ZZ 	
}[[ 
}\\ ¡
TD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.API\Controllers\PedidoController.cs
	namespace 	
PremierBeef
 
. 
API 
. 
Controllers %
{ 
public 

class 
PedidoController !
:" #

Controller$ .
{ 
public 
IActionResult 
Index "
(" #
)# $
{ 	
return		 
View		 
(		 
)		 
;		 
}

 	
} 
} †3
VD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.API\Controllers\ProductoController.cs
	namespace 	
PremierBeef
 
. 
API 
. 
Controllers %
{ 
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class 
ProductoController #
:$ %

Controller& 0
{ 
private 
readonly 
IProductoService )
_productoService* :
;: ;
private 
readonly 
ISecurityService )
_securityService* :
;: ;
public 
ProductoController !
(! "
IProductoService" 2
usuarioService3 A
,A B
ISecurityServiceC S
securityServiceT c
)c d
{ 	
_productoService 
= 
usuarioService -
;- .
_securityService 
= 
securityService .
;. /
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetProductos) 5
(5 6
)6 7
{ 	
try 
{ 
var 
products 
= 
await $
_productoService% 5
.5 6
GetProductos6 B
(B C
)C D
;D E
return 
Ok 
( 
products "
)" #
;# $
} 
catch 
( 
	Exception 
) 
{   
return!! 

StatusCode!! !
(!!! "
$num!!" %
,!!% &
$str!!' T
)!!T U
;!!U V
}"" 
}## 	
[%% 	
HttpGet%%	 
]%% 
[&& 	
Route&&	 
(&& 
$str&&  
)&&  !
]&&! "
public'' 
async'' 
Task'' 
<'' 
ActionResult'' &
<''& '
ProductoViewModel''' 8
>''8 9
>''9 :
Get''; >
(''> ?
int''? B
id''C E
)''E F
{(( 	
var)) 
user)) 
=)) 
await)) 
_productoService)) -
.))- .
GetProductoById)). =
())= >
id))> @
)))@ A
;))A B
if++ 
(++ 
user++ 
==++ 
null++ 
)++ 
{,, 
return-- 
NotFound-- 
(--  
)--  !
;--! "
}.. 
return00 
Ok00 
(00 
user00 
)00 
;00 
}11 	
[33 	
HttpPost33	 
]33 
public44 
async44 
Task44 
<44 
IActionResult44 '
>44' (
Register44) 1
(441 2
[442 3
FromBody443 ;
]44; <
ProductoModel44= J
userInputModel44K Y
)44Y Z
{55 	
var66 
prod66 
=66 
await66 
_productoService66 -
.66- .!
GetProductoByProducto66. C
(66C D
userInputModel66D R
.66R S
nombre66S Y
)66Y Z
;66Z [
if88 
(88 
prod88 
!=88 
null88 
)88 
return99 

BadRequest99 !
(99! "
$str99" 6
)996 7
;997 8
var;; 
id;; 
=;; 
await;; 
_productoService;; +
.;;+ ,
AddProducto;;, 7
(;;7 8
userInputModel;;8 F
);;F G
;;;G H
if== 
(== 
id== 
!=== 
$num== 
)== 
return>> 
Ok>> 
(>> 
)>> 
;>> 
return@@ 

BadRequest@@ 
(@@ 
)@@ 
;@@  
}AA 	
[CC 	
HttpPutCC	 
]CC 
publicDD 
asyncDD 
TaskDD 
<DD 
IActionResultDD '
>DD' (
EditDD) -
(DD- .
[DD. /
FromBodyDD/ 7
]DD7 8
ProductoModelDD9 F
userInputModelDDG U
)DDU V
{EE 	
varFF 
prodFF 
=FF 
awaitFF 
_productoServiceFF -
.FF- .!
GetProductoByProductoFF. C
(FFC D
userInputModelFFD R
.FFR S
nombreFFS Y
)FFY Z
;FFZ [
ifHH 
(HH 
prodHH 
!=HH 
nullHH 
&&HH 
userInputModelHH  .
.HH. /
idHH/ 1
!=HH2 4
prodHH5 9
.HH9 :
idHH: <
)HH< =
returnII 

BadRequestII !
(II! "
$strII" 6
)II6 7
;II7 8
ifKK 
(KK 

ModelStateKK 
.KK 
IsValidKK "
)KK" #
{LL 
varMM 
resultMM 
=MM 
awaitMM "
_productoServiceMM# 3
.MM3 4
UpdateProductoMM4 B
(MMB C
userInputModelMMC Q
)MMQ R
;MMR S
returnOO 
OkOO 
(OO 
)OO 
;OO 
}PP 
returnQQ 

BadRequestQQ 
(QQ 
)QQ 
;QQ  
}RR 	
[TT 	

HttpDeleteTT	 
(TT 
$strTT 
)TT 
]TT 
publicUU 
asyncUU 
TaskUU 
<UU 
IActionResultUU '
>UU' (
RemoveProductUU) 6
(UU6 7
intUU7 :
idUU; =
)UU= >
{VV 	
varWW 
resultWW 
=WW 
awaitWW 
_productoServiceWW /
.WW/ 0
RemoveProductoWW0 >
(WW> ?
idWW? A
)WWA B
;WWB C
ifYY 
(YY 
resultYY 
==YY 
$numYY 
)YY 
returnZZ 
OkZZ 
(ZZ 
)ZZ 
;ZZ 
else[[ 
return\\ 
NotFound\\ 
(\\  
)\\  !
;\\! "
}]] 	
}^^ 
}__ ˆ(
WD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.API\Controllers\PromocionController.cs
	namespace 	
PremierBeef
 
. 
API 
. 
Controllers %
{ 
[ 
Route 

(
 
$str 
) 
] 
[		 
ApiController		 
]		 
public

 

class

 
PromocionController

 $
:

% &

Controller

' 1
{ 
private 
readonly 
IPromocionService *
_promocionService+ <
;< =
public 
PromocionController "
(" #
IPromocionService# 4
promocionService5 E
)E F
{ 	
_promocionService 
= 
promocionService  0
;0 1
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetPromociones) 7
(7 8
)8 9
{ 	
try 
{ 
var 
roles 
= 
await !
_promocionService" 3
.3 4
GetPromociones4 B
(B C
)C D
;D E
return 
Ok 
( 
roles 
)  
;  !
} 
catch 
( 
	Exception 
) 
{ 
return 

StatusCode !
(! "
$num" %
,% &
$str' T
)T U
;U V
} 
}   	
["" 	
HttpGet""	 
]"" 
[## 	
Route##	 
(## 
$str## !
)##! "
]##" #
public$$ 
async$$ 
Task$$ 
<$$ 
ActionResult$$ &
<$$& '
PromocionViewModel$$' 9
>$$9 :
>$$: ;
Get$$< ?
($$? @
int$$@ C
id$$D F
)$$F G
{%% 	
var&& 
user&& 
=&& 
await&& 
_promocionService&& .
.&&. /
GetPromocionById&&/ ?
(&&? @
id&&@ B
)&&B C
;&&C D
if(( 
((( 
user(( 
==(( 
null(( 
)(( 
{)) 
return** 
NotFound** 
(**  
)**  !
;**! "
}++ 
return-- 
Ok-- 
(-- 
user-- 
)-- 
;-- 
}.. 	
[00 	
HttpPost00	 
]00 
public11 
async11 
Task11 
<11 
IActionResult11 '
>11' (
Register11) 1
(111 2
[112 3
FromBody113 ;
]11; <
PromocionModel11= K
userInputModel11L Z
)11Z [
{22 	
var33 
id33 
=33 
await33 
_promocionService33 ,
.33, -
AddPromocion33- 9
(339 :
userInputModel33: H
)33H I
;33I J
if55 
(55 
id55 
!=55 
$num55 
)55 
return66 
Ok66 
(66 
)66 
;66 
return88 

BadRequest88 
(88 
)88 
;88  
}99 	
[;; 	
HttpPut;;	 
];; 
public<< 
async<< 
Task<< 
<<< 
IActionResult<< '
><<' (
Edit<<) -
(<<- .
[<<. /
FromBody<</ 7
]<<7 8
PromocionModel<<9 G
userInputModel<<H V
)<<V W
{== 	
if>> 
(>> 

ModelState>> 
.>> 
IsValid>> "
)>>" #
{?? 
var@@ 
result@@ 
=@@ 
await@@ "
_promocionService@@# 4
.@@4 5
UpdatePromocion@@5 D
(@@D E
userInputModel@@E S
)@@S T
;@@T U
returnBB 
OkBB 
(BB 
)BB 
;BB 
}CC 
returnDD 

BadRequestDD 
(DD 
)DD 
;DD  
}EE 	
[GG 	

HttpDeleteGG	 
(GG 
$strGG 
)GG 
]GG 
publicHH 
asyncHH 
TaskHH 
<HH 
IActionResultHH '
>HH' (
RemovePromocionHH) 8
(HH8 9
intHH9 <
idHH= ?
)HH? @
{II 	
varJJ 
resultJJ 
=JJ 
awaitJJ 
_promocionServiceJJ 0
.JJ0 1
RemovePromocionJJ1 @
(JJ@ A
idJJA C
)JJC D
;JJD E
ifLL 
(LL 
resultLL 
==LL 
$numLL 
)LL 
returnMM 
OkMM 
(MM 
)MM 
;MM 
elseNN 
returnOO 
NotFoundOO 
(OO  
)OO  !
;OO! "
}PP 	
}QQ 
}RR ˆ(
WD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.API\Controllers\ProveedorController.cs
	namespace 	
PremierBeef
 
. 
API 
. 
Controllers %
{ 
[ 
Route 

(
 
$str 
) 
] 
[		 
ApiController		 
]		 
public

 

class

 
ProveedorController

 $
:

% &

Controller

' 1
{ 
private 
readonly 
IProveedorService *
_proveedorService+ <
;< =
public 
ProveedorController "
(" #
IProveedorService# 4
proveedorService5 E
)E F
{ 	
_proveedorService 
= 
proveedorService  0
;0 1
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetProveedores) 7
(7 8
)8 9
{ 	
try 
{ 
var 
roles 
= 
await !
_proveedorService" 3
.3 4
GetProveedores4 B
(B C
)C D
;D E
return 
Ok 
( 
roles 
)  
;  !
} 
catch 
( 
	Exception 
) 
{ 
return 

StatusCode !
(! "
$num" %
,% &
$str' T
)T U
;U V
} 
}   	
["" 	
HttpGet""	 
]"" 
[## 	
Route##	 
(## 
$str## !
)##! "
]##" #
public$$ 
async$$ 
Task$$ 
<$$ 
ActionResult$$ &
<$$& '
ProveedorViewModel$$' 9
>$$9 :
>$$: ;
Get$$< ?
($$? @
int$$@ C
id$$D F
)$$F G
{%% 	
var&& 
user&& 
=&& 
await&& 
_proveedorService&& .
.&&. /
GetProveedorById&&/ ?
(&&? @
id&&@ B
)&&B C
;&&C D
if(( 
((( 
user(( 
==(( 
null(( 
)(( 
{)) 
return** 
NotFound** 
(**  
)**  !
;**! "
}++ 
return-- 
Ok-- 
(-- 
user-- 
)-- 
;-- 
}.. 	
[00 	
HttpPost00	 
]00 
public11 
async11 
Task11 
<11 
IActionResult11 '
>11' (
Register11) 1
(111 2
[112 3
FromBody113 ;
]11; <
ProveedorModel11= K
userInputModel11L Z
)11Z [
{22 	
var33 
id33 
=33 
await33 
_proveedorService33 ,
.33, -
AddProveedor33- 9
(339 :
userInputModel33: H
)33H I
;33I J
if55 
(55 
id55 
!=55 
$num55 
)55 
return66 
Ok66 
(66 
)66 
;66 
return88 

BadRequest88 
(88 
)88 
;88  
}99 	
[;; 	
HttpPut;;	 
];; 
public<< 
async<< 
Task<< 
<<< 
IActionResult<< '
><<' (
Edit<<) -
(<<- .
[<<. /
FromBody<</ 7
]<<7 8
ProveedorModel<<9 G
userInputModel<<H V
)<<V W
{== 	
if>> 
(>> 

ModelState>> 
.>> 
IsValid>> "
)>>" #
{?? 
var@@ 
result@@ 
=@@ 
await@@ "
_proveedorService@@# 4
.@@4 5
UpdateProveedor@@5 D
(@@D E
userInputModel@@E S
)@@S T
;@@T U
returnBB 
OkBB 
(BB 
)BB 
;BB 
}CC 
returnDD 

BadRequestDD 
(DD 
)DD 
;DD  
}EE 	
[GG 	

HttpDeleteGG	 
(GG 
$strGG 
)GG 
]GG 
publicHH 
asyncHH 
TaskHH 
<HH 
IActionResultHH '
>HH' (
RemoveProveedorHH) 8
(HH8 9
intHH9 <
idHH= ?
)HH? @
{II 	
varJJ 
resultJJ 
=JJ 
awaitJJ 
_proveedorServiceJJ 0
.JJ0 1
RemoveProveedorJJ1 @
(JJ@ A
idJJA C
)JJC D
;JJD E
ifLL 
(LL 
resultLL 
==LL 
$numLL 
)LL 
returnMM 
OkMM 
(MM 
)MM 
;MM 
elseNN 
returnOO 
NotFoundOO 
(OO  
)OO  !
;OO! "
}PP 	
}QQ 
}RR ƒ(
UD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.API\Controllers\ReclamoController.cs
	namespace 	
PremierBeef
 
. 
API 
. 
Controllers %
{ 
[ 
Route 

(
 
$str 
) 
] 
[		 
ApiController		 
]		 
public

 

class

 
ReclamoController

 "
:

# $

Controller

% /
{ 
private 
readonly 
IReclamoService (
_reclamoService) 8
;8 9
public 
ReclamoController  
(  !
IReclamoService! 0
reclamoService1 ?
)? @
{ 	
_reclamoService 
= 
reclamoService ,
;, -
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetReclamos) 4
(4 5
)5 6
{ 	
try 
{ 
var 
roles 
= 
await !
_reclamoService" 1
.1 2
GetReclamos2 =
(= >
)> ?
;? @
return 
Ok 
( 
roles 
)  
;  !
} 
catch 
( 
	Exception 
) 
{ 
return 

StatusCode !
(! "
$num" %
,% &
$str' T
)T U
;U V
} 
}   	
["" 	
HttpGet""	 
]"" 
[## 	
Route##	 
(## 
$str## 
)##  
]##  !
public$$ 
async$$ 
Task$$ 
<$$ 
ActionResult$$ &
<$$& '
ReclamoViewModel$$' 7
>$$7 8
>$$8 9
Get$$: =
($$= >
int$$> A
id$$B D
)$$D E
{%% 	
var&& 
user&& 
=&& 
await&& 
_reclamoService&& ,
.&&, -
GetReclamoById&&- ;
(&&; <
id&&< >
)&&> ?
;&&? @
if(( 
((( 
user(( 
==(( 
null(( 
)(( 
{)) 
return** 
NotFound** 
(**  
)**  !
;**! "
}++ 
return-- 
Ok-- 
(-- 
user-- 
)-- 
;-- 
}.. 	
[00 	
HttpPost00	 
]00 
public11 
async11 
Task11 
<11 
IActionResult11 '
>11' (
Register11) 1
(111 2
[112 3
FromBody113 ;
]11; <
ReclamoModel11= I
userInputModel11J X
)11X Y
{22 	
var33 
id33 
=33 
await33 
_reclamoService33 *
.33* +

AddReclamo33+ 5
(335 6
userInputModel336 D
)33D E
;33E F
if55 
(55 
id55 
!=55 
$num55 
)55 
return66 
Ok66 
(66 
)66 
;66 
return88 

BadRequest88 
(88 
)88 
;88  
}99 	
[;; 	
HttpPut;;	 
];; 
public<< 
async<< 
Task<< 
<<< 
IActionResult<< '
><<' (
Edit<<) -
(<<- .
[<<. /
FromBody<</ 7
]<<7 8
ReclamoModel<<9 E
userInputModel<<F T
)<<T U
{== 	
if>> 
(>> 

ModelState>> 
.>> 
IsValid>> "
)>>" #
{?? 
var@@ 
result@@ 
=@@ 
await@@ "
_reclamoService@@# 2
.@@2 3
UpdateReclamo@@3 @
(@@@ A
userInputModel@@A O
)@@O P
;@@P Q
returnBB 
OkBB 
(BB 
)BB 
;BB 
}CC 
returnDD 

BadRequestDD 
(DD 
)DD 
;DD  
}EE 	
[GG 	

HttpDeleteGG	 
(GG 
$strGG 
)GG 
]GG 
publicHH 
asyncHH 
TaskHH 
<HH 
IActionResultHH '
>HH' (
RemoveReclamoHH) 6
(HH6 7
intHH7 :
idHH; =
)HH= >
{II 	
varJJ 
resultJJ 
=JJ 
awaitJJ 
_reclamoServiceJJ .
.JJ. /
RemoveReclamoJJ/ <
(JJ< =
idJJ= ?
)JJ? @
;JJ@ A
ifLL 
(LL 
resultLL 
==LL 
$numLL 
)LL 
returnMM 
OkMM 
(MM 
)MM 
;MM 
elseNN 
returnOO 
NotFoundOO 
(OO  
)OO  !
;OO! "
}PP 	
}QQ 
}RR ¯
YD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.API\Controllers\ReclamoTipoController.cs
	namespace 	
PremierBeef
 
. 
API 
. 
Controllers %
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class !
ReclamoTipoController &
:' (
ControllerBase) 7
{		 
private

 
readonly

 
IReclamoTipoService

 ,
_reclamoTipoService

- @
;

@ A
public !
ReclamoTipoController $
($ %
IReclamoTipoService% 8
reclamoTipoService9 K
)K L
{ 	
_reclamoTipoService 
=  !
reclamoTipoService" 4
;4 5
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetReclamoTipos) 8
(8 9
)9 :
{ 	
try 
{ 
var 
reclamoTipos  
=! "
await# (
_reclamoTipoService) <
.< =
GetReclamoTipos= L
(L M
)M N
;N O
return 
Ok 
( 
reclamoTipos &
)& '
;' (
} 
catch 
( 
	Exception 
) 
{ 
return 

StatusCode !
(! "
$num" %
,% &
$str' T
)T U
;U V
} 
} 	
} 
}   ¶ö
UD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.API\Controllers\ReporteController.cs
	namespace 	
PremierBeef
 
. 
API 
. 
Controllers %
{		 
[

 
Route

 

(


 
$str

 
)

 
]

 
[ 
ApiController 
] 
public 

class 
ReporteController "
:# $
ControllerBase% 3
{ 
private 
readonly 
IReporteService (
_reporteService) 8
;8 9
public 
ReporteController  
(  !
IReporteService! 0
reporteService1 ?
)? @
{ 	
_reporteService 
= 
reporteService ,
;, -
} 	
[ 	
HttpPost	 
] 
[ 	
Route	 
( 
$str %
)% &
]& '
public 
async 
Task 
< 
ActionResult &
<& '
UsuarioViewModel' 7
>7 8
>8 9
GetReporteVentas: J
(J K
[K L
FromBodyL T
]T U
FiltroReporteModelV h
filtroi o
)o p
{ 	
var 
user 
= 
await 
_reporteService ,
., -
GetReporteVentas- =
(= >
filtro> D
)D E
;E F
if 
( 
user 
== 
null 
) 
{ 
return 
NotFound 
(  
)  !
;! "
} 
return   
Ok   
(   
user   
)   
;   
}!! 	
[## 	
HttpPost##	 
(## 
$str## &
)##& '
]##' (
public$$ 
async$$ 
Task$$ 
<$$ 
IActionResult$$ '
>$$' (
ExcelReporteVentas$$) ;
($$; <
[$$< =
FromBody$$= E
]$$E F
FiltroReporteModel$$G Y
filtro$$Z `
)$$` a
{%% 	
var&& 
reporte&& 
=&& 
await&& 
_reporteService&&  /
.&&/ 0
GetReporteVentas&&0 @
(&&@ A
filtro&&A G
)&&G H
;&&H I
	DataTable(( 
dt(( 
=(( 
new(( 
	DataTable(( (
(((( )
$str(() /
)((/ 0
;((0 1
dt)) 
.)) 
Columns)) 
.)) 
AddRange)) 
())  
new))  #

DataColumn))$ .
[)). /
$num))/ 0
]))0 1
{))2 3
new))4 7

DataColumn))8 B
())B C
$str))C J
)))J K
,))K L
new**% (

DataColumn**) 3
(**3 4
$str**4 =
)**= >
}**? @
)**@ A
;**A B
foreach,, 
(,, 
var,, 
emp,, 
in,, 
reporte,,  '
),,' (
{-- 
dt.. 
... 
Rows.. 
... 
Add.. 
(.. 
emp.. 
...  
detalle..  '
,..' (
emp..) ,
..., -
	respuesta..- 6
)..6 7
;..7 8
}// 
using11 
(11 

XLWorkbook11 
wb11  
=11! "
new11# &

XLWorkbook11' 1
(111 2
)112 3
)113 4
{22 
wb33 
.33 

Worksheets33 
.33 
Add33 !
(33! "
dt33" $
)33$ %
;33% &
using44 
(44 
MemoryStream44 #
stream44$ *
=44+ ,
new44- 0
MemoryStream441 =
(44= >
)44> ?
)44? @
{55 
wb66 
.66 
SaveAs66 
(66 
stream66 $
)66$ %
;66% &
return77 
File77 
(77  
stream77  &
.77& '
ToArray77' .
(77. /
)77/ 0
,770 1
$str772 u
,77u v
$str	77w Ç
)
77Ç É
;
77É Ñ
}88 
}99 
}:: 	
[<< 	
HttpPost<<	 
]<< 
[== 	
Route==	 
(== 
$str== &
)==& '
]==' (
public>> 
async>> 
Task>> 
<>> 
ActionResult>> &
<>>& '
UsuarioViewModel>>' 7
>>>7 8
>>>8 9
GetReportePedidos>>: K
(>>K L
[>>L M
FromBody>>M U
]>>U V
FiltroReporteModel>>W i
filtro>>j p
)>>p q
{?? 	
var@@ 
user@@ 
=@@ 
await@@ 
_reporteService@@ ,
.@@, -
GetReportePedidos@@- >
(@@> ?
filtro@@? E
)@@E F
;@@F G
ifBB 
(BB 
userBB 
==BB 
nullBB 
)BB 
{CC 
returnDD 
NotFoundDD 
(DD  
)DD  !
;DD! "
}EE 
returnGG 
OkGG 
(GG 
userGG 
)GG 
;GG 
}HH 	
[JJ 	
HttpPostJJ	 
(JJ 
$strJJ '
)JJ' (
]JJ( )
publicKK 
asyncKK 
TaskKK 
<KK 
IActionResultKK '
>KK' (
ExcelReportePedidosKK) <
(KK< =
[KK= >
FromBodyKK> F
]KKF G
FiltroReporteModelKKH Z
filtroKK[ a
)KKa b
{LL 	
varMM 
reporteMM 
=MM 
awaitMM 
_reporteServiceMM  /
.MM/ 0
GetReportePedidosMM0 A
(MMA B
filtroMMB H
)MMH I
;MMI J
	DataTableOO 
dtOO 
=OO 
newOO 
	DataTableOO (
(OO( )
$strOO) /
)OO/ 0
;OO0 1
dtPP 
.PP 
ColumnsPP 
.PP 
AddRangePP 
(PP  
newPP  #

DataColumnPP$ .
[PP. /
$numPP/ 0
]PP0 1
{PP2 3
newPP4 7

DataColumnPP8 B
(PPB C
$strPPC J
)PPJ K
,PPK L
newQQ% (

DataColumnQQ) 3
(QQ3 4
$strQQ4 =
)QQ= >
}QQ? @
)QQ@ A
;QQA B
foreachSS 
(SS 
varSS 
empSS 
inSS 
reporteSS  '
)SS' (
{TT 
dtUU 
.UU 
RowsUU 
.UU 
AddUU 
(UU 
empUU 
.UU  
detalleUU  '
,UU' (
empUU) ,
.UU, -
	respuestaUU- 6
)UU6 7
;UU7 8
}VV 
usingXX 
(XX 

XLWorkbookXX 
wbXX  
=XX! "
newXX# &

XLWorkbookXX' 1
(XX1 2
)XX2 3
)XX3 4
{YY 
wbZZ 
.ZZ 

WorksheetsZZ 
.ZZ 
AddZZ !
(ZZ! "
dtZZ" $
)ZZ$ %
;ZZ% &
using[[ 
([[ 
MemoryStream[[ #
stream[[$ *
=[[+ ,
new[[- 0
MemoryStream[[1 =
([[= >
)[[> ?
)[[? @
{\\ 
wb]] 
.]] 
SaveAs]] 
(]] 
stream]] $
)]]$ %
;]]% &
return^^ 
File^^ 
(^^  
stream^^  &
.^^& '
ToArray^^' .
(^^. /
)^^/ 0
,^^0 1
$str^^2 u
,^^u v
$str	^^w Ç
)
^^Ç É
;
^^É Ñ
}__ 
}`` 
}aa 	
[cc 	
HttpPostcc	 
]cc 
[dd 	
Routedd	 
(dd 
$strdd $
)dd$ %
]dd% &
publicee 
asyncee 
Taskee 
<ee 
ActionResultee &
<ee& '
UsuarioViewModelee' 7
>ee7 8
>ee8 9
GetReporteStockee: I
(eeI J
[eeJ K
FromBodyeeK S
]eeS T
FiltroReporteModeleeU g
filtroeeh n
)een o
{ff 	
vargg 
usergg 
=gg 
awaitgg 
_reporteServicegg ,
.gg, -
GetReporteStockgg- <
(gg< =
filtrogg= C
)ggC D
;ggD E
ifii 
(ii 
userii 
==ii 
nullii 
)ii 
{jj 
returnkk 
NotFoundkk 
(kk  
)kk  !
;kk! "
}ll 
returnnn 
Oknn 
(nn 
usernn 
)nn 
;nn 
}oo 	
[qq 	
HttpPostqq	 
(qq 
$strqq %
)qq% &
]qq& '
publicrr 
asyncrr 
Taskrr 
<rr 
IActionResultrr '
>rr' (
ExcelReporteStockrr) :
(rr: ;
[rr; <
FromBodyrr< D
]rrD E
FiltroReporteModelrrF X
filtrorrY _
)rr_ `
{ss 	
vartt 
reportett 
=tt 
awaittt 
_reporteServicett  /
.tt/ 0
GetReporteStocktt0 ?
(tt? @
filtrott@ F
)ttF G
;ttG H
	DataTablevv 
dtvv 
=vv 
newvv 
	DataTablevv (
(vv( )
$strvv) /
)vv/ 0
;vv0 1
dtww 
.ww 
Columnsww 
.ww 
AddRangeww 
(ww  
newww  #

DataColumnww$ .
[ww. /
$numww/ 0
]ww0 1
{ww2 3
newww4 7

DataColumnww8 B
(wwB C
$strwwC J
)wwJ K
,wwK L
newxx% (

DataColumnxx) 3
(xx3 4
$strxx4 =
)xx= >
}xx? @
)xx@ A
;xxA B
foreachzz 
(zz 
varzz 
empzz 
inzz 
reportezz  '
)zz' (
{{{ 
dt|| 
.|| 
Rows|| 
.|| 
Add|| 
(|| 
emp|| 
.||  
detalle||  '
,||' (
emp||) ,
.||, -
	respuesta||- 6
)||6 7
;||7 8
}}} 
using 
( 

XLWorkbook 
wb  
=! "
new# &

XLWorkbook' 1
(1 2
)2 3
)3 4
{
ÄÄ 
wb
ÅÅ 
.
ÅÅ 

Worksheets
ÅÅ 
.
ÅÅ 
Add
ÅÅ !
(
ÅÅ! "
dt
ÅÅ" $
)
ÅÅ$ %
;
ÅÅ% &
using
ÇÇ 
(
ÇÇ 
MemoryStream
ÇÇ #
stream
ÇÇ$ *
=
ÇÇ+ ,
new
ÇÇ- 0
MemoryStream
ÇÇ1 =
(
ÇÇ= >
)
ÇÇ> ?
)
ÇÇ? @
{
ÉÉ 
wb
ÑÑ 
.
ÑÑ 
SaveAs
ÑÑ 
(
ÑÑ 
stream
ÑÑ $
)
ÑÑ$ %
;
ÑÑ% &
return
ÖÖ 
File
ÖÖ 
(
ÖÖ  
stream
ÖÖ  &
.
ÖÖ& '
ToArray
ÖÖ' .
(
ÖÖ. /
)
ÖÖ/ 0
,
ÖÖ0 1
$str
ÖÖ2 u
,
ÖÖu v
$strÖÖw Ç
)ÖÖÇ É
;ÖÖÉ Ñ
}
ÜÜ 
}
áá 
}
àà 	
[
åå 	
HttpPost
åå	 
]
åå 
[
çç 	
Route
çç	 
(
çç 
$str
çç '
)
çç' (
]
çç( )
public
éé 
async
éé 
Task
éé 
<
éé 
ActionResult
éé &
<
éé& '
UsuarioViewModel
éé' 7
>
éé7 8
>
éé8 9 
GetReporteReclamos
éé: L
(
ééL M
[
ééM N
FromBody
ééN V
]
ééV W 
FiltroReporteModel
ééX j
filtro
éék q
)
ééq r
{
èè 	
var
êê 
user
êê 
=
êê 
await
êê 
_reporteService
êê ,
.
êê, - 
GetReporteReclamos
êê- ?
(
êê? @
filtro
êê@ F
)
êêF G
;
êêG H
if
íí 
(
íí 
user
íí 
==
íí 
null
íí 
)
íí 
{
ìì 
return
îî 
NotFound
îî 
(
îî  
)
îî  !
;
îî! "
}
ïï 
return
óó 
Ok
óó 
(
óó 
user
óó 
)
óó 
;
óó 
}
òò 	
[
öö 	
HttpPost
öö	 
(
öö 
$str
öö (
)
öö( )
]
öö) *
public
õõ 
async
õõ 
Task
õõ 
<
õõ 
IActionResult
õõ '
>
õõ' ("
ExcelReporteReclamos
õõ) =
(
õõ= >
[
õõ> ?
FromBody
õõ? G
]
õõG H 
FiltroReporteModel
õõI [
filtro
õõ\ b
)
õõb c
{
úú 	
var
ùù 
reporte
ùù 
=
ùù 
await
ùù 
_reporteService
ùù  /
.
ùù/ 0 
GetReporteReclamos
ùù0 B
(
ùùB C
filtro
ùùC I
)
ùùI J
;
ùùJ K
	DataTable
üü 
dt
üü 
=
üü 
new
üü 
	DataTable
üü (
(
üü( )
$str
üü) /
)
üü/ 0
;
üü0 1
dt
†† 
.
†† 
Columns
†† 
.
†† 
AddRange
†† 
(
††  
new
††  #

DataColumn
††$ .
[
††. /
$num
††/ 0
]
††0 1
{
††2 3
new
††4 7

DataColumn
††8 B
(
††B C
$str
††C J
)
††J K
,
††K L
new
°°% (

DataColumn
°°) 3
(
°°3 4
$str
°°4 =
)
°°= >
}
°°? @
)
°°@ A
;
°°A B
foreach
££ 
(
££ 
var
££ 
emp
££ 
in
££ 
reporte
££  '
)
££' (
{
§§ 
dt
•• 
.
•• 
Rows
•• 
.
•• 
Add
•• 
(
•• 
emp
•• 
.
••  
detalle
••  '
,
••' (
emp
••) ,
.
••, -
	respuesta
••- 6
)
••6 7
;
••7 8
}
¶¶ 
using
®® 
(
®® 

XLWorkbook
®® 
wb
®®  
=
®®! "
new
®®# &

XLWorkbook
®®' 1
(
®®1 2
)
®®2 3
)
®®3 4
{
©© 
wb
™™ 
.
™™ 

Worksheets
™™ 
.
™™ 
Add
™™ !
(
™™! "
dt
™™" $
)
™™$ %
;
™™% &
using
´´ 
(
´´ 
MemoryStream
´´ #
stream
´´$ *
=
´´+ ,
new
´´- 0
MemoryStream
´´1 =
(
´´= >
)
´´> ?
)
´´? @
{
¨¨ 
wb
≠≠ 
.
≠≠ 
SaveAs
≠≠ 
(
≠≠ 
stream
≠≠ $
)
≠≠$ %
;
≠≠% &
return
ÆÆ 
File
ÆÆ 
(
ÆÆ  
stream
ÆÆ  &
.
ÆÆ& '
ToArray
ÆÆ' .
(
ÆÆ. /
)
ÆÆ/ 0
,
ÆÆ0 1
$str
ÆÆ2 u
,
ÆÆu v
$strÆÆw Ç
)ÆÆÇ É
;ÆÆÉ Ñ
}
ØØ 
}
∞∞ 
}
±± 	
[
µµ 	
HttpPost
µµ	 
]
µµ 
[
∂∂ 	
Route
∂∂	 
(
∂∂ 
$str
∂∂ '
)
∂∂' (
]
∂∂( )
public
∑∑ 
async
∑∑ 
Task
∑∑ 
<
∑∑ 
ActionResult
∑∑ &
<
∑∑& '
UsuarioViewModel
∑∑' 7
>
∑∑7 8
>
∑∑8 9 
GetReporteDelivery
∑∑: L
(
∑∑L M
[
∑∑M N
FromBody
∑∑N V
]
∑∑V W 
FiltroReporteModel
∑∑X j
filtro
∑∑k q
)
∑∑q r
{
∏∏ 	
var
ππ 
user
ππ 
=
ππ 
await
ππ 
_reporteService
ππ ,
.
ππ, - 
GetReporteDelivery
ππ- ?
(
ππ? @
filtro
ππ@ F
)
ππF G
;
ππG H
if
ªª 
(
ªª 
user
ªª 
==
ªª 
null
ªª 
)
ªª 
{
ºº 
return
ΩΩ 
NotFound
ΩΩ 
(
ΩΩ  
)
ΩΩ  !
;
ΩΩ! "
}
ææ 
return
¿¿ 
Ok
¿¿ 
(
¿¿ 
user
¿¿ 
)
¿¿ 
;
¿¿ 
}
¡¡ 	
[
√√ 	
HttpPost
√√	 
(
√√ 
$str
√√ (
)
√√( )
]
√√) *
public
ƒƒ 
async
ƒƒ 
Task
ƒƒ 
<
ƒƒ 
IActionResult
ƒƒ '
>
ƒƒ' ("
ExcelReporteDelivery
ƒƒ) =
(
ƒƒ= >
[
ƒƒ> ?
FromBody
ƒƒ? G
]
ƒƒG H 
FiltroReporteModel
ƒƒI [
filtro
ƒƒ\ b
)
ƒƒb c
{
≈≈ 	
var
∆∆ 
reporte
∆∆ 
=
∆∆ 
await
∆∆ 
_reporteService
∆∆  /
.
∆∆/ 0 
GetReporteDelivery
∆∆0 B
(
∆∆B C
filtro
∆∆C I
)
∆∆I J
;
∆∆J K
	DataTable
»» 
dt
»» 
=
»» 
new
»» 
	DataTable
»» (
(
»»( )
$str
»») /
)
»»/ 0
;
»»0 1
dt
…… 
.
…… 
Columns
…… 
.
…… 
AddRange
…… 
(
……  
new
……  #

DataColumn
……$ .
[
……. /
$num
……/ 0
]
……0 1
{
……2 3
new
……4 7

DataColumn
……8 B
(
……B C
$str
……C J
)
……J K
,
……K L
new
  % (

DataColumn
  ) 3
(
  3 4
$str
  4 =
)
  = >
}
  ? @
)
  @ A
;
  A B
foreach
ÃÃ 
(
ÃÃ 
var
ÃÃ 
emp
ÃÃ 
in
ÃÃ 
reporte
ÃÃ  '
)
ÃÃ' (
{
ÕÕ 
dt
ŒŒ 
.
ŒŒ 
Rows
ŒŒ 
.
ŒŒ 
Add
ŒŒ 
(
ŒŒ 
emp
ŒŒ 
.
ŒŒ  
detalle
ŒŒ  '
,
ŒŒ' (
emp
ŒŒ) ,
.
ŒŒ, -
	respuesta
ŒŒ- 6
)
ŒŒ6 7
;
ŒŒ7 8
}
œœ 
using
—— 
(
—— 

XLWorkbook
—— 
wb
——  
=
——! "
new
——# &

XLWorkbook
——' 1
(
——1 2
)
——2 3
)
——3 4
{
““ 
wb
”” 
.
”” 

Worksheets
”” 
.
”” 
Add
”” !
(
””! "
dt
””" $
)
””$ %
;
””% &
using
‘‘ 
(
‘‘ 
MemoryStream
‘‘ #
stream
‘‘$ *
=
‘‘+ ,
new
‘‘- 0
MemoryStream
‘‘1 =
(
‘‘= >
)
‘‘> ?
)
‘‘? @
{
’’ 
wb
÷÷ 
.
÷÷ 
SaveAs
÷÷ 
(
÷÷ 
stream
÷÷ $
)
÷÷$ %
;
÷÷% &
return
◊◊ 
File
◊◊ 
(
◊◊  
stream
◊◊  &
.
◊◊& '
ToArray
◊◊' .
(
◊◊. /
)
◊◊/ 0
,
◊◊0 1
$str
◊◊2 u
,
◊◊u v
$str◊◊w Ç
)◊◊Ç É
;◊◊É Ñ
}
ÿÿ 
}
ŸŸ 
}
⁄⁄ 	
}
‹‹ 
}›› å
QD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.API\Controllers\RolController.cs
	namespace 	
PremierBeef
 
. 
API 
. 
Controllers %
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
RolController 
:  
ControllerBase! /
{		 
private

 
readonly

 
IRolService

 $
_rolService

% 0
;

0 1
public 
RolController 
( 
IRolService (

rolService) 3
)3 4
{ 	
_rolService 
= 

rolService $
;$ %
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetRoles) 1
(1 2
)2 3
{ 	
try 
{ 
var 
roles 
= 
await !
_rolService" -
.- .
GetRoles. 6
(6 7
)7 8
;8 9
return 
Ok 
( 
roles 
)  
;  !
} 
catch 
( 
	Exception 
) 
{ 
return 

StatusCode !
(! "
$num" %
,% &
$str' T
)T U
;U V
} 
} 	
} 
}   Ç
[D:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.API\Controllers\TipoDocumentoController.cs
	namespace 	
PremierBeef
 
. 
API 
. 
Controllers %
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class #
TipoDocumentoController (
:) *
ControllerBase+ 9
{ 
private 
readonly !
ITipoDocumentoService .!
_tipoDocumentoService/ D
;D E
public #
TipoDocumentoController &
(& '!
ITipoDocumentoService' < 
tipoDocumentoService= Q
)Q R
{ 	!
_tipoDocumentoService !
=" # 
tipoDocumentoService$ 8
;8 9
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetTipoDocumentos) :
(: ;
); <
{ 	
try 
{ 
var 
tipos 
= 
await !!
_tipoDocumentoService" 7
.7 8
GetTipoDocumentos8 I
(I J
)J K
;K L
return   
Ok   
(   
tipos   
)    
;    !
}!! 
catch"" 
("" 
	Exception"" 
)"" 
{## 
return$$ 

StatusCode$$ !
($$! "
$num$$" %
,$$% &
$str$$' T
)$$T U
;$$U V
}%% 
}&& 	
}'' 
}(( √A
UD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.API\Controllers\UsuarioController.cs
	namespace 	
PremierBeef
 
. 
API 
. 
Controllers %
{ 
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class 
UsuarioController "
:# $
ControllerBase% 3
{ 
private 
readonly 
IUsuarioService (
_usuarioService) 8
;8 9
private 
readonly 
ISecurityService )
_securityService* :
;: ;
public 
UsuarioController  
(  !
IUsuarioService! 0
usuarioService1 ?
,? @
ISecurityServiceA Q
securityServiceR a
)a b
{ 	
_usuarioService 
= 
usuarioService ,
;, -
_securityService 
= 
securityService .
;. /
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetUsuarios) 4
(4 5
)5 6
{ 	
try 
{ 
var 
products 
= 
await $
_usuarioService% 4
.4 5
GetUsuarios5 @
(@ A
)A B
;B C
return 
Ok 
( 
products "
)" #
;# $
} 
catch 
( 
	Exception 
) 
{   
return!! 

StatusCode!! !
(!!! "
$num!!" %
,!!% &
$str!!' T
)!!T U
;!!U V
}"" 
}## 	
[%% 	
HttpGet%%	 
]%% 
[&& 	
Route&&	 
(&& 
$str&& 
)&&  
]&&  !
public'' 
async'' 
Task'' 
<'' 
ActionResult'' &
<''& '
UsuarioViewModel''' 7
>''7 8
>''8 9
Get'': =
(''= >
int''> A
id''B D
)''D E
{(( 	
var)) 
user)) 
=)) 
await)) 
_usuarioService)) ,
.)), -
GetUserById))- 8
())8 9
id))9 ;
))); <
;))< =
if++ 
(++ 
user++ 
==++ 
null++ 
)++ 
{,, 
return-- 
NotFound-- 
(--  
)--  !
;--! "
}.. 
return00 
Ok00 
(00 
user00 
)00 
;00 
}11 	
[33 	
HttpPost33	 
]33 
public44 
async44 
Task44 
<44 
IActionResult44 '
>44' (
Register44) 1
(441 2
[442 3
FromBody443 ;
]44; <
UsuarioModel44= I
userInputModel44J X
)44X Y
{55 	
var66 
user66 
=66 
await66 
_usuarioService66 ,
.66, -
GetUserByUsuario66- =
(66= >
userInputModel66> L
.66L M
usuario66M T
)66T U
;66U V
if88 
(88 
user88 
!=88 
null88 
)88 
return99 

BadRequest99 !
(99! "
$str99" 5
)995 6
;996 7
var;; 

userCorreo;; 
=;; 
await;; "
_usuarioService;;# 2
.;;2 3
GetUserByCorreo;;3 B
(;;B C
userInputModel;;C Q
.;;Q R
usuario;;R Y
);;Y Z
;;;Z [
if== 
(== 

userCorreo== 
!=== 
null== "
)==" #
return>> 

BadRequest>> !
(>>! "
$str>>" 4
)>>4 5
;>>5 6
if@@ 
(@@ 

ModelState@@ 
.@@ 
IsValid@@ "
)@@" #
{AA 
ifBB 
(BB 
userInputModelBB "
.BB" #
claveBB# (
!=BB) +
nullBB, 0
&&BB1 3
userInputModelBB4 B
.BBB C
claveBBC H
!=BBI K
StringBBL R
.BBR S
EmptyBBS X
)BBX Y
{CC 
stringDD 
encriptedPasswordDD ,
=DD- .
_securityServiceDD/ ?
.DD? @
HashDD@ D
(DDD E
userInputModelDDE S
.DDS T
claveDDT Y
)DDY Z
;DDZ [
userInputModelFF "
.FF" #
claveFF# (
=FF) *
encriptedPasswordFF+ <
;FF< =
}GG 
varII 
idII 
=II 
awaitII 
_usuarioServiceII .
.II. /

AddUsuarioII/ 9
(II9 :
userInputModelII: H
)IIH I
;III J
ifKK 
(KK 
idKK 
!=KK 
$numKK 
)KK 
returnLL 
OkLL 
(LL 
)LL 
;LL  
returnNN 

BadRequestNN !
(NN! "
)NN" #
;NN# $
}OO 
elsePP 
{QQ 
returnRR 

BadRequestRR !
(RR! "
)RR" #
;RR# $
}SS 
}UU 	
[WW 	
HttpPutWW	 
]WW 
publicXX 
asyncXX 
TaskXX 
<XX 
IActionResultXX '
>XX' (
EditXX) -
(XX- .
[XX. /
FromBodyXX/ 7
]XX7 8
UsuarioModelXX9 E
userInputModelXXF T
)XXT U
{YY 	
varZZ 
userZZ 
=ZZ 
awaitZZ 
_usuarioServiceZZ ,
.ZZ, -
GetUserByIdZZ- 8
(ZZ8 9
userInputModelZZ9 G
.ZZG H
idZZH J
)ZZJ K
;ZZK L
if\\ 
(\\ 
user\\ 
==\\ 
null\\ 
)\\ 
return]] 
NotFound]] 
(]]  
$str]]  7
)]]7 8
;]]8 9
var__ 

userCorreo__ 
=__ 
await__ "
_usuarioService__# 2
.__2 3
GetUserByCorreo__3 B
(__B C
userInputModel__C Q
.__Q R
correo__R X
)__X Y
;__Y Z
ifaa 
(aa 

userCorreoaa 
!=aa 
nullaa "
&&aa# %

userCorreoaa& 0
.aa0 1
usuarioaa1 8
!=aa9 ;
userInputModelaa< J
.aaJ K
usuarioaaK R
)aaR S
returnbb 

BadRequestbb !
(bb! "
$strbb" 4
)bb4 5
;bb5 6
ifdd 
(dd 

ModelStatedd 
.dd 
IsValiddd "
)dd" #
{ee 
varff 
resultff 
=ff 
awaitff "
_usuarioServiceff# 2
.ff2 3
UpdateUsuarioff3 @
(ff@ A
userInputModelffA O
)ffO P
;ffP Q
returnhh 
Okhh 
(hh 
)hh 
;hh 
}ii 
returnjj 

BadRequestjj 
(jj 
)jj 
;jj  
}kk 	
[mm 	

HttpDeletemm	 
(mm 
$strmm 
)mm 
]mm 
publicnn 
asyncnn 
Tasknn 
<nn 
IActionResultnn '
>nn' (
RemoveProductnn) 6
(nn6 7
intnn7 :
idnn; =
)nn= >
{oo 	
varpp 
resultpp 
=pp 
awaitpp 
_usuarioServicepp .
.pp. /
RemoveUsuariopp/ <
(pp< =
idpp= ?
)pp? @
;pp@ A
ifrr 
(rr 
resultrr 
)rr 
returnss 
Okss 
(ss 
)ss 
;ss 
elsett 
returnuu 
NotFounduu 
(uu  
)uu  !
;uu! "
}vv 	
}ww 
}xx ôg
?D:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.API\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
builder 
. 
Services 
. 
AddControllers 
(  
)  !
;! "
builder 
. 
Services 
. #
AddEndpointsApiExplorer (
(( )
)) *
;* +
builder 
. 
Services 
. 
AddSwaggerGen 
( 
)  
;  !
builder"" 
."" 
Services"" 
."" 
	Configure"" 
<"" 
PremierBeef"" &
.""& '
Core""' +
.""+ ,
Entities"", 4
.""4 5
PasswordOptions""5 D
>""D E
(""E F
options""F M
=>""N P
builder""Q X
.""X Y
Configuration""Y f
.""f g

GetSection""g q
(""q r
$str	""r É
)
""É Ñ
.
""Ñ Ö
Bind
""Ö â
(
""â ä
options
""ä ë
)
""ë í
)
""í ì
;
""ì î
var$$ 
connectionString$$ 
=$$ 
builder$$ 
.$$ 
Configuration$$ ,
.$$, -
GetConnectionString$$- @
($$@ A
$str$$A P
)$$P Q
;$$Q R
builder%% 
.%% 
Services%% 
.%% 
AddDbContext%% 
<%% 
PremierContext%% ,
>%%, -
(%%- .
x%%. /
=>%%0 2
x%%3 4
.%%4 5
UseSqlServer%%5 A
(%%A B
connectionString%%B R
)%%R S
)%%S T
;%%T U
builder(( 
.(( 
Services(( 
.(( 
AddTransient(( 
<(( 
IUsuarioRepository(( 0
,((0 1
UsuarioRepository((2 C
>((C D
(((D E
)((E F
;((F G
builder)) 
.)) 
Services)) 
.)) 
	AddScoped)) 
<)) 
IUsuarioService)) *
,))* +
UsuarioService)), :
>)): ;
()); <
)))< =
;))= >
builder++ 
.++ 
Services++ 
.++ 
AddTransient++ 
<++ 
IRolRepository++ ,
,++, -
RolRepository++. ;
>++; <
(++< =
)++= >
;++> ?
builder,, 
.,, 
Services,, 
.,, 
	AddScoped,, 
<,, 
IRolService,, &
,,,& '

RolService,,( 2
>,,2 3
(,,3 4
),,4 5
;,,5 6
builder.. 
... 
Services.. 
... 
AddTransient.. 
<.. 
IProductoRepository.. 1
,..1 2
ProductoRepository..3 E
>..E F
(..F G
)..G H
;..H I
builder// 
.// 
Services// 
.// 
	AddScoped// 
<// 
IProductoService// +
,//+ ,
ProductoService//- <
>//< =
(//= >
)//> ?
;//? @
builder11 
.11 
Services11 
.11 
AddTransient11 
<11  
IProveedorRepository11 2
,112 3
ProveedorRepository114 G
>11G H
(11H I
)11I J
;11J K
builder22 
.22 
Services22 
.22 
	AddScoped22 
<22 
IProveedorService22 ,
,22, -
ProveedorService22. >
>22> ?
(22? @
)22@ A
;22A B
builder44 
.44 
Services44 
.44 
AddTransient44 
<44  
ICategoriaRepository44 2
,442 3
CategoriaRepository444 G
>44G H
(44H I
)44I J
;44J K
builder55 
.55 
Services55 
.55 
	AddScoped55 
<55 
ICategoriaService55 ,
,55, -
CategoriaService55. >
>55> ?
(55? @
)55@ A
;55A B
builder77 
.77 
Services77 
.77 
AddTransient77 
<77 
IClienteRepository77 0
,770 1
ClienteRepository772 C
>77C D
(77D E
)77E F
;77F G
builder88 
.88 
Services88 
.88 
	AddScoped88 
<88 
IClienteService88 *
,88* +
ClienteService88, :
>88: ;
(88; <
)88< =
;88= >
builder:: 
.:: 
Services:: 
.:: 
AddTransient:: 
<:: 
IAlmacenRepository:: 0
,::0 1
AlmacenRepository::2 C
>::C D
(::D E
)::E F
;::F G
builder;; 
.;; 
Services;; 
.;; 
	AddScoped;; 
<;; 
IAlmacenService;; *
,;;* +
AlmacenService;;, :
>;;: ;
(;;; <
);;< =
;;;= >
builder== 
.== 
Services== 
.== 
AddTransient== 
<== 
IReclamoRepository== 0
,==0 1
ReclamoRepository==2 C
>==C D
(==D E
)==E F
;==F G
builder>> 
.>> 
Services>> 
.>> 
	AddScoped>> 
<>> 
IReclamoService>> *
,>>* +
ReclamoService>>, :
>>>: ;
(>>; <
)>>< =
;>>= >
builder@@ 
.@@ 
Services@@ 
.@@ 
AddTransient@@ 
<@@ "
IReclamoTipoRepository@@ 4
,@@4 5!
ReclamoTipoRepository@@6 K
>@@K L
(@@L M
)@@M N
;@@N O
builderAA 
.AA 
ServicesAA 
.AA 
	AddScopedAA 
<AA 
IReclamoTipoServiceAA .
,AA. /
ReclamoTipoServiceAA0 B
>AAB C
(AAC D
)AAD E
;AAE F
builderCC 
.CC 
ServicesCC 
.CC 
AddTransientCC 
<CC $
ITipoDocumentoRepositoryCC 6
,CC6 7#
TipoDocumentoRepositoryCC8 O
>CCO P
(CCP Q
)CCQ R
;CCR S
builderDD 
.DD 
ServicesDD 
.DD 
	AddScopedDD 
<DD !
ITipoDocumentoServiceDD 0
,DD0 1 
TipoDocumentoServiceDD2 F
>DDF G
(DDG H
)DDH I
;DDI J
builderFF 
.FF 
ServicesFF 
.FF 
AddTransientFF 
<FF  
IPromocionRepositoryFF 2
,FF2 3
PromocionRepositoryFF4 G
>FFG H
(FFH I
)FFI J
;FFJ K
builderGG 
.GG 
ServicesGG 
.GG 
	AddScopedGG 
<GG 
IPromocionServiceGG ,
,GG, -
PromocionServiceGG. >
>GG> ?
(GG? @
)GG@ A
;GGA B
builderII 
.II 
ServicesII 
.II 
AddTransientII 
<II 
IReporteRepositoryII 0
,II0 1
ReporteRepositoryII2 C
>IIC D
(IID E
)IIE F
;IIF G
builderJJ 
.JJ 
ServicesJJ 
.JJ 
	AddScopedJJ 
<JJ 
IReporteServiceJJ *
,JJ* +
ReporteServiceJJ, :
>JJ: ;
(JJ; <
)JJ< =
;JJ= >
builderLL 
.LL 
ServicesLL 
.LL 
	AddScopedLL 
<LL 
ISecurityServiceLL +
,LL+ ,
SecurityServiceLL- <
>LL< =
(LL= >
)LL> ?
;LL? @
varPP 
emailConfigPP 
=PP 
builderPP 
.PP 
ConfigurationPP '
.QQ 

GetSectionQQ 
(QQ 
$strQQ $
)QQ$ %
.RR 
GetRR 
<RR 	
EmailConfigurationRR	 
>RR 
(RR 
)RR 
;RR 
builderSS 
.SS 
ServicesSS 
.SS 
AddSingletonSS 
(SS 
emailConfigSS )
)SS) *
;SS* +
builderTT 
.TT 
ServicesTT 
.TT 
	AddScopedTT 
<TT 
IEmailSenderTT '
,TT' (
EmailSenderTT) 4
>TT4 5
(TT5 6
)TT6 7
;TT7 8
builder^^ 
.^^ 
Services^^ 
.^^ 
	Configure^^ 
<^^ .
"DataProtectionTokenProviderOptions^^ =
>^^= >
(^^> ?
opt^^? B
=>^^C E
opt__ 
.__ 
TokenLifespan__ 
=__ 
TimeSpan__  
.__  !
	FromHours__! *
(__* +
$num__+ ,
)__, -
)__- .
;__. /
builderbb 
.bb 
Servicesbb 
.bb 
AddAuthenticationbb "
(bb" #
optbb# &
=>bb' )
{cc 
optdd 
.dd %
DefaultAuthenticateSchemedd !
=dd" #
JwtBearerDefaultsdd$ 5
.dd5 6 
AuthenticationSchemedd6 J
;ddJ K
optee 
.ee "
DefaultChallengeSchemeee 
=ee  
JwtBearerDefaultsee! 2
.ee2 3 
AuthenticationSchemeee3 G
;eeG H
}ff 
)ff 
.gg 
AddJwtBearergg 
(gg 
optionsgg 
=>gg 
{hh 
optionsii 
.ii %
TokenValidationParametersii )
=ii* +
newii, /%
TokenValidationParametersii0 I
{jj 	
ValidateIssuerkk 
=kk 
truekk !
,kk! "
ValidateAudiencell 
=ll 
truell #
,ll# $
ValidateLifetimemm 
=mm 
truemm #
,mm# $$
ValidateIssuerSigningKeynn $
=nn% &
truenn' +
,nn+ ,
ValidIssueroo 
=oo 
builderoo !
.oo! "
Configurationoo" /
[oo/ 0
$stroo0 A
]ooA B
,ooB C
ValidAudiencepp 
=pp 
builderpp #
.pp# $
Configurationpp$ 1
[pp1 2
$strpp2 E
]ppE F
,ppF G
IssuerSigningKeyqq 
=qq 
newqq " 
SymmetricSecurityKeyqq# 7
(qq7 8
Encodingqq8 @
.qq@ A
UTF8qqA E
.qqE F
GetBytesqqF N
(qqN O
builderqqO V
.qqV W
ConfigurationqqW d
[qqd e
$strqqe q
]qqq r
)qqr s
)qqs t
}rr 	
;rr	 

}ss 
)ss 
;ss 
varuu 
appuu 
=uu 	
builderuu
 
.uu 
Builduu 
(uu 
)uu 
;uu 
ifxx 
(xx 
appxx 
.xx 
Environmentxx 
.xx 
IsDevelopmentxx !
(xx! "
)xx" #
)xx# $
{yy 
appzz 
.zz 

UseSwaggerzz 
(zz 
)zz 
;zz 
app{{ 
.{{ 
UseSwaggerUI{{ 
({{ 
){{ 
;{{ 
}|| 
using~~ 
(~~ 
var~~ 

scope~~ 
=~~ 
app~~ 
.~~ 
Services~~ 
.~~  
CreateScope~~  +
(~~+ ,
)~~, -
)~~- .
{ 
var
ÄÄ 
	dbContext
ÄÄ 
=
ÄÄ 
scope
ÄÄ 
.
ÄÄ 
ServiceProvider
ÄÄ )
.
ÄÄ) * 
GetRequiredService
ÄÄ* <
<
ÄÄ< =
PremierContext
ÄÄ= K
>
ÄÄK L
(
ÄÄL M
)
ÄÄM N
;
ÄÄN O
}ÅÅ 
appÉÉ 
.
ÉÉ !
UseHttpsRedirection
ÉÉ 
(
ÉÉ 
)
ÉÉ 
;
ÉÉ 
appÖÖ 
.
ÖÖ 
UseAuthentication
ÖÖ 
(
ÖÖ 
)
ÖÖ 
;
ÖÖ 
appáá 
.
áá 
UseAuthorization
áá 
(
áá 
)
áá 
;
áá 
appââ 
.
ââ 
MapControllers
ââ 
(
ââ 
)
ââ 
;
ââ 
appãã 
.
ãã 
UseCors
ãã 
(
ãã 
x
ãã 
=>
ãã 
x
ãã 
.
åå 	
AllowAnyOrigin
åå	 
(
åå 
)
åå 
.
çç 	
AllowAnyMethod
çç	 
(
çç 
)
çç 
.
éé 	
AllowAnyHeader
éé	 
(
éé 
)
éé 
)
éé 
;
éé 
appëë 
.
ëë 
Run
ëë 
(
ëë 
)
ëë 	
;
ëë	 
