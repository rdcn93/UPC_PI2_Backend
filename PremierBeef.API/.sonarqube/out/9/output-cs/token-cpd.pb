ˇ1
UD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.API\Controllers\AlmacenController.cs
	namespace 	
PremierBeef
 
. 
API 
. 
Controllers %
{ 
[		 

EnableCors		 
(		 
$str		 
)		 
]		 
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
AlmacenController "
:# $

Controller% /
{ 
private 
readonly 
IAlmacenService (
_almacenService) 8
;8 9
public 
AlmacenController  
(  !
IAlmacenService! 0
almacenService1 ?
)? @
{ 	
_almacenService 
= 
almacenService ,
;, -
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetAlmacens) 4
(4 5
)5 6
{ 	
try 
{ 
var 
products 
= 
await $
_almacenService% 4
.4 5
GetAlmacens5 @
(@ A
)A B
;B C
return 
Ok 
( 
products "
)" #
;# $
} 
catch 
( 
	Exception 
) 
{ 
return   

StatusCode   !
(  ! "
$num  " %
,  % &
$str  ' T
)  T U
;  U V
}!! 
}"" 	
[$$ 	
HttpGet$$	 
]$$ 
[%% 	
Route%%	 
(%% 
$str%% 
)%%  
]%%  !
public&& 
async&& 
Task&& 
<&& 
ActionResult&& &
<&&& '
AlmacenViewModel&&' 7
>&&7 8
>&&8 9
Get&&: =
(&&= >
int&&> A
id&&B D
)&&D E
{'' 	
var(( 
user(( 
=(( 
await(( 
_almacenService(( ,
.((, -
GetAlmacenById((- ;
(((; <
id((< >
)((> ?
;((? @
if** 
(** 
user** 
==** 
null** 
)** 
{++ 
return,, 
NotFound,, 
(,,  
),,  !
;,,! "
}-- 
return// 
Ok// 
(// 
user// 
)// 
;// 
}00 	
[22 	
HttpPost22	 
]22 
public33 
async33 
Task33 
<33 
IActionResult33 '
>33' (
Register33) 1
(331 2
[332 3
FromBody333 ;
]33; <
AlmacenModel33= I
userInputModel33J X
)33X Y
{44 	
var55 
almacenNombre55 
=55 
await55  %
_almacenService55& 5
.555 6
GetAlmacenByAlmacen556 I
(55I J
userInputModel55J X
.55X Y
nombre55Y _
)55_ `
;55` a
if77 
(77 
almacenNombre77 
!=77  
null77! %
)77% &
return88 

BadRequest88 !
(88! "
$str88" G
)88G H
;88H I
var:: 
id:: 
=:: 
await:: 
_almacenService:: *
.::* +

AddAlmacen::+ 5
(::5 6
userInputModel::6 D
)::D E
;::E F
if<< 
(<< 
id<< 
!=<< 
$num<< 
)<< 
return== 
Ok== 
(== 
)== 
;== 
return?? 

BadRequest?? 
(?? 
)?? 
;??  
}@@ 	
[BB 	
HttpPutBB	 
]BB 
publicCC 
asyncCC 
TaskCC 
<CC 
IActionResultCC '
>CC' (
EditCC) -
(CC- .
[CC. /
FromBodyCC/ 7
]CC7 8
AlmacenModelCC9 E
userInputModelCCF T
)CCT U
{DD 	
varEE 
almacenNombreEE 
=EE 
awaitEE  %
_almacenServiceEE& 5
.EE5 6
GetAlmacenByAlmacenEE6 I
(EEI J
userInputModelEEJ X
.EEX Y
nombreEEY _
)EE_ `
;EE` a
ifGG 
(GG 
almacenNombreGG 
!=GG  
nullGG! %
&&GG& (
almacenNombreGG) 6
.GG6 7
idGG7 9
!=GG: <
userInputModelGG= K
.GGK L
idGGL N
)GGN O
returnHH 

BadRequestHH !
(HH! "
$strHH" G
)HHG H
;HHH I
ifJJ 
(JJ 

ModelStateJJ 
.JJ 
IsValidJJ "
)JJ" #
{KK 
varLL 
resultLL 
=LL 
awaitLL "
_almacenServiceLL# 2
.LL2 3
UpdateAlmacenLL3 @
(LL@ A
userInputModelLLA O
)LLO P
;LLP Q
returnNN 
OkNN 
(NN 
)NN 
;NN 
}OO 
returnPP 

BadRequestPP 
(PP 
)PP 
;PP  
}QQ 	
[SS 	

HttpDeleteSS	 
(SS 
$strSS 
)SS 
]SS 
publicTT 
asyncTT 
TaskTT 
<TT 
IActionResultTT '
>TT' (
RemoveAlmacenTT) 6
(TT6 7
intTT7 :
idTT; =
)TT= >
{UU 	
varVV 
resultVV 
=VV 
awaitVV 
_almacenServiceVV .
.VV. /
RemoveAlmacenVV/ <
(VV< =
idVV= ?
)VV? @
;VV@ A
ifXX 
(XX 
resultXX 
==XX 
$numXX 
)XX 
returnYY 
OkYY 
(YY 
)YY 
;YY 
elseZZ 
return[[ 
NotFound[[ 
([[  
)[[  !
;[[! "
}\\ 	
}]] 
}^^ œX
\D:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.API\Controllers\AuthenticationController.cs
	namespace 	
PremierBeef
 
. 
API 
. 
Controllers %
{ 
[ 

EnableCors 
( 
$str 
) 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class $
AuthenticationController )
:* +
ControllerBase, :
{ 
private 
readonly 
IConfiguration '
_config( /
;/ 0
private 
readonly 
IUsuarioService (
_usuarioAuthService) <
;< =
private 
readonly 
ISecurityService )
_securityService* :
;: ;
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
public $
AuthenticationController '
(' (
IConfiguration( 6
configuration7 D
,D E
IUsuarioService 
usuarioService *
,* +
ISecurityService 
securityService ,
,, -
IEmailSender 
emailSender $
)!! 
{"" 	
_config## 
=## 
configuration## #
;### $
_usuarioAuthService$$ 
=$$  !
usuarioService$$" 0
;$$0 1
_securityService%% 
=%% 
securityService%% .
;%%. /
_emailSender&& 
=&& 
emailSender&& &
;&&& '
}(( 	
[** 	
HttpPost**	 
(** 
$str** 
)** 
]** 
public++ 
IActionResult++ 
Login++ "
(++" #
[++# $
FromBody++$ ,
]++, -
Login++. 3
user++4 8
)++8 9
{,, 	
if-- 
(-- 
user-- 
is-- 
null-- 
)-- 
return.. 

BadRequest.. !
(..! "
$str.." 9
)..9 :
;..: ;
var00 
userInfo00 
=00 
_usuarioAuthService00 .
.00. /
GetUserByUsuario00/ ?
(00? @
user00@ D
.00D E
UserName00E M
??00N P
$str00Q S
)00S T
;00T U
bool11 
isValid11 
=11 
false11  
;11  !
if33 
(33 
userInfo33 
.33 
Result33 
!=33  "
null33# '
)33' (
isValid44 
=44 
_securityService44 *
.44* +
Check44+ 0
(440 1
userInfo441 9
.449 :
Result44: @
.44@ A
clave44A F
,44F G
user44H L
.44L M
Password44M U
??44V X
$str44Y [
)44[ \
;44\ ]
else55 
return66 
NotFound66 
(66  
$str66  E
)66E F
;66F G
if88 
(88 
isValid88 
)88 
{99 
var:: 
	secretKey:: 
=:: 
new::  # 
SymmetricSecurityKey::$ 8
(::8 9
Encoding::9 A
.::A B
UTF8::B F
.::F G
GetBytes::G O
(::O P
_config::P W
[::W X
$str::X d
]::d e
)::e f
)::f g
;::g h
var;; 
signinCredentials;; %
=;;& '
new;;( +
SigningCredentials;;, >
(;;> ?
	secretKey;;? H
,;;H I
SecurityAlgorithms;;J \
.;;\ ]

HmacSha256;;] g
);;g h
;;;h i
var<< 
tokeOptions<< 
=<<  !
new<<" %
JwtSecurityToken<<& 6
(<<6 7
issuer== 
:== 
_config== #
[==# $
$str==$ 5
]==5 6
,==6 7
audience>> 
:>> 
_config>> %
[>>% &
$str>>& 9
]>>9 :
,>>: ;
claims?? 
:?? 
new?? 
List??  $
<??$ %
Claim??% *
>??* +
(??+ ,
)??, -
,??- .
expires@@ 
:@@ 
DateTime@@ %
.@@% &
Now@@& )
.@@) *

AddMinutes@@* 4
(@@4 5
$num@@5 7
)@@7 8
,@@8 9
signingCredentialsAA &
:AA& '
signinCredentialsAA( 9
)BB 
;BB 
varCC 
tokenStringCC 
=CC  !
newCC" %#
JwtSecurityTokenHandlerCC& =
(CC= >
)CC> ?
.CC? @

WriteTokenCC@ J
(CCJ K
tokeOptionsCCK V
)CCV W
;CCW X
returnEE 
OkEE 
(EE 
newEE 
JWTTokenResponseEE .
{EE/ 0
TokenEE1 6
=EE7 8
tokenStringEE9 D
,EED E
userIdEEF L
=EEM N
userInfoEEO W
.EEW X
ResultEEX ^
.EE^ _
idEE_ a
,EEa b
userEEc g
=EEh i
userInfoEEj r
.EEr s
ResultEEs y
.EEy z
usuario	EEz Å
,
EEÅ Ç
userFullName
EEÇ é
=
EEè ê
userInfo
EEë ô
.
EEô ö
Result
EEö †
.
EE† °
nombreCompleto
EE° Ø
}
EE∞ ±
)
EE± ≤
;
EE≤ ≥
}FF 
elseGG 
returnHH 
UnauthorizedHH #
(HH# $
$strHH$ ;
)HH; <
;HH< =
}KK 	
[MM 	
HttpPostMM	 
(MM 
$strMM "
)MM" #
]MM# $
publicNN 
asyncNN 
TaskNN 
<NN 
IActionResultNN '
>NN' (
ForgotPasswordNN) 7
(NN7 8
[NN8 9
FromBodyNN9 A
]NNA B
ForgotPasswordNNC Q
forgotPasswordNNR `
)NN` a
{OO 	
ifPP 
(PP 
!PP 

ModelStatePP 
.PP 
IsValidPP #
)PP# $
returnQQ 

BadRequestQQ !
(QQ! "
)QQ" #
;QQ# $
stringSS 
EmailSS 
=SS 
forgotPasswordSS )
.SS) *
EmailSS* /
!=SS0 2
nullSS3 7
?SS8 9
(SS: ;
stringSS; A
)SSA B
forgotPasswordSSB P
.SSP Q
EmailSSQ V
:SSW X
$strSSY [
;SS[ \
varUU 
userUU 
=UU 
awaitUU 
_usuarioAuthServiceUU 0
.UU0 1
GetUserByCorreoUU1 @
(UU@ A
EmailUUA F
)UUF G
;UUG H
ifVV 
(VV 
userVV 
==VV 
nullVV 
)VV 
returnWW 

BadRequestWW !
(WW! "
$strWW" I
)WWI J
;WWJ K
varZZ 
paramZZ 
=ZZ 
newZZ 

DictionaryZZ &
<ZZ& '
stringZZ' -
,ZZ- .
stringZZ/ 5
?ZZ5 6
>ZZ6 7
{[[ 
{\\ 
$str\\ 
,\\ 
$str\\ 
}\\ 
,\\ 
{]] 
$str]] 
,]] 
forgotPassword]] (
.]]( )
Email]]) .
}]]/ 0
,]]0 1
{^^ 
$str^^ 
,^^ 
user^^  
.^^  !
usuario^^! (
}^^( )
}__ 
;__ 
varaa 
callbackaa 
=aa 
QueryHelpersaa '
.aa' (
AddQueryStringaa( 6
(aa6 7
forgotPasswordaa7 E
.aaE F
	ClientURIaaF O
,aaO P
paramaaQ V
)aaV W
;aaW X
callbackbb 
=bb 
callbackbb 
.bb  
Replacebb  '
(bb' (
$strbb( /
,bb/ 0
$strbb1 4
)bb4 5
;bb5 6
varcc 
messagecc 
=cc 
newcc 
Messagecc %
(cc% &
newcc& )
stringcc* 0
[cc0 1
]cc1 2
{cc3 4
usercc5 9
.cc9 :
correocc: @
}ccA B
,ccB C
$strccD Z
,ccZ [
callbackcc\ d
,ccd e
nullccf j
)ccj k
;cck l
awaitee 
_emailSenderee 
.ee 
SendEmailAsyncee -
(ee- .
messageee. 5
)ee5 6
;ee6 7
returngg 
Okgg 
(gg 
)gg 
;gg 
}hh 	
[jj 	
HttpPostjj	 
(jj 
$strjj !
)jj! "
]jj" #
publickk 
asynckk 
Taskkk 
<kk 
IActionResultkk '
>kk' (
ResetPasswordkk) 6
(kk6 7
[kk7 8
FromBodykk8 @
]kk@ A
ResetPasswordkkB O
resetPasswordkkP ]
)kk] ^
{ll 	
ifmm 
(mm 
!mm 

ModelStatemm 
.mm 
IsValidmm #
)mm# $
returnnn 

BadRequestnn !
(nn! "
)nn" #
;nn# $
ifpp 
(pp 
resetPasswordpp 
.pp 
passwordpp &
!=pp' )
resetPasswordpp* 7
.pp7 8
confirmPasswordpp8 G
)ppG H
returnqq 

BadRequestqq !
(qq! "
$strqq" <
)qq< =
;qq= >
varss 
userss 
=ss 
awaitss 
_usuarioAuthServicess 0
.ss0 1
GetUserByCorreoss1 @
(ss@ A
resetPasswordssA N
.ssN O
emailssO T
)ssT U
;ssU V
iftt 
(tt 
usertt 
==tt 
nulltt 
)tt 
returnuu 

BadRequestuu !
(uu! "
$struu" L
)uuL M
;uuM N
ifww 
(ww 
resetPasswordww 
.ww 
passwordww &
!=ww' )
nullww* .
&&ww/ 1
resetPasswordww2 ?
.ww? @
passwordww@ H
!=wwI K
StringwwL R
.wwR S
EmptywwS X
)wwX Y
{xx 
stringyy 
encriptedPasswordyy (
=yy) *
_securityServiceyy+ ;
.yy; <
Hashyy< @
(yy@ A
resetPasswordyyA N
.yyN O
passwordyyO W
)yyW X
;yyX Y
user{{ 
.{{ 
clave{{ 
={{ 
encriptedPassword{{ .
;{{. /
var}} 
result}} 
=}} 
_usuarioAuthService}} 0
.}}0 1
UpdateContrase√±a}}1 A
(}}A B
resetPassword}}B O
.}}O P
email}}P U
,}}U V
encriptedPassword}}W h
)}}h i
;}}i j
}~~ 
return
àà 
Ok
àà 
(
àà 
)
àà 
;
àà 
}
ââ 	
}
ää 
}ãã ‹)
WD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.API\Controllers\CategoriaController.cs
	namespace 	
PremierBeef
 
. 
API 
. 
Controllers %
{ 
[		 

EnableCors		 
(		 
$str		 
)		 
]		 
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
CategoriaController $
:% &

Controller' 1
{ 
private 
readonly 
ICategoriaService *
_categoriaService+ <
;< =
public 
CategoriaController "
(" #
ICategoriaService# 4
categoriaService5 E
)E F
{ 	
_categoriaService 
= 
categoriaService  0
;0 1
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetCategorias) 6
(6 7
)7 8
{ 	
try 
{ 
var 
products 
= 
await $
_categoriaService% 6
.6 7
GetCategorias7 D
(D E
)E F
;F G
return 
Ok 
( 
products "
)" #
;# $
} 
catch 
( 
	Exception 
) 
{ 
return   

StatusCode   !
(  ! "
$num  " %
,  % &
$str  ' T
)  T U
;  U V
}!! 
}"" 	
[$$ 	
HttpGet$$	 
]$$ 
[%% 	
Route%%	 
(%% 
$str%% !
)%%! "
]%%" #
public&& 
async&& 
Task&& 
<&& 
ActionResult&& &
<&&& '
CategoriaViewModel&&' 9
>&&9 :
>&&: ;
Get&&< ?
(&&? @
int&&@ C
id&&D F
)&&F G
{'' 	
var(( 
user(( 
=(( 
await(( 
_categoriaService(( .
.((. /
GetCategoriaById((/ ?
(((? @
id((@ B
)((B C
;((C D
if** 
(** 
user** 
==** 
null** 
)** 
{++ 
return,, 
NotFound,, 
(,,  
),,  !
;,,! "
}-- 
return// 
Ok// 
(// 
user// 
)// 
;// 
}00 	
[22 	
HttpPost22	 
]22 
public33 
async33 
Task33 
<33 
IActionResult33 '
>33' (
Register33) 1
(331 2
[332 3
FromBody333 ;
]33; <
CategoriaModel33= K
catInputModel33L Y
)33Y Z
{44 	
var55 
id55 
=55 
await55 
_categoriaService55 ,
.55, -
AddCategoria55- 9
(559 :
catInputModel55: G
)55G H
;55H I
if77 
(77 
id77 
!=77 
$num77 
)77 
return88 
Ok88 
(88 
)88 
;88 
return:: 

BadRequest:: 
(:: 
):: 
;::  
};; 	
[== 	
HttpPut==	 
]== 
public>> 
async>> 
Task>> 
<>> 
IActionResult>> '
>>>' (
Edit>>) -
(>>- .
[>>. /
FromBody>>/ 7
]>>7 8
CategoriaModel>>9 G
catInputModel>>H U
)>>U V
{?? 	
if@@ 
(@@ 

ModelState@@ 
.@@ 
IsValid@@ "
)@@" #
{AA 
varBB 
resultBB 
=BB 
awaitBB "
_categoriaServiceBB# 4
.BB4 5
UpdateCategoriaBB5 D
(BBD E
catInputModelBBE R
)BBR S
;BBS T
returnDD 
OkDD 
(DD 
)DD 
;DD 
}EE 
returnFF 

BadRequestFF 
(FF 
)FF 
;FF  
}GG 	
[II 	

HttpDeleteII	 
(II 
$strII 
)II 
]II 
publicJJ 
asyncJJ 
TaskJJ 
<JJ 
IActionResultJJ '
>JJ' (
RemoveCategoriaJJ) 8
(JJ8 9
intJJ9 <
idJJ= ?
)JJ? @
{KK 	
varLL 
resultLL 
=LL 
awaitLL 
_categoriaServiceLL 0
.LL0 1
RemoveCategoriaLL1 @
(LL@ A
idLLA C
)LLC D
;LLD E
ifNN 
(NN 
resultNN 
==NN 
$numNN 
)NN 
returnOO 
OkOO 
(OO 
)OO 
;OO 
elsePP 
returnQQ 
NotFoundQQ 
(QQ  
)QQ  !
;QQ! "
}RR 	
}SS 
}TT Í9
UD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.API\Controllers\ClienteController.cs
	namespace 	
PremierBeef
 
. 
API 
. 
Controllers %
{ 
[		 

EnableCors		 
(		 
$str		 
)		 
]		 
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
ClienteController "
:# $

Controller% /
{ 
private 
readonly 
IClienteService (
_clienteService) 8
;8 9
public 
ClienteController  
(  !
IClienteService! 0
clienteService1 ?
)? @
{ 	
_clienteService 
= 
clienteService ,
;, -
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetClientes) 4
(4 5
)5 6
{ 	
try 
{ 
var 
products 
= 
await $
_clienteService% 4
.4 5
GetClientes5 @
(@ A
)A B
;B C
return 
Ok 
( 
products "
)" #
;# $
} 
catch 
( 
	Exception 
) 
{ 
return   

StatusCode   !
(  ! "
$num  " %
,  % &
$str  ' T
)  T U
;  U V
}!! 
}"" 	
[$$ 	
HttpGet$$	 
]$$ 
[%% 	
Route%%	 
(%% 
$str%% 
)%%  
]%%  !
public&& 
async&& 
Task&& 
<&& 
ActionResult&& &
<&&& '
ClienteViewModel&&' 7
>&&7 8
>&&8 9
Get&&: =
(&&= >
int&&> A
id&&B D
)&&D E
{'' 	
var(( 
user(( 
=(( 
await(( 
_clienteService(( ,
.((, -
GetClienteById((- ;
(((; <
id((< >
)((> ?
;((? @
if** 
(** 
user** 
==** 
null** 
)** 
{++ 
return,, 
NotFound,, 
(,,  
),,  !
;,,! "
}-- 
return// 
Ok// 
(// 
user// 
)// 
;// 
}00 	
[22 	
HttpPost22	 
]22 
public33 
async33 
Task33 
<33 
IActionResult33 '
>33' (
Register33) 1
(331 2
[332 3
FromBody333 ;
]33; <
ClienteModel33= I
userInputModel33J X
)33X Y
{44 	
var55 
clienteExiste55 
=55 
await55  %
_clienteService55& 5
.555 6
GetClienteByCliente556 I
(55I J
userInputModel55J X
)55X Y
;55Y Z
var66 
clienteNroDocExiste66 #
=66$ %
await66& +
_clienteService66, ;
.66; <$
GetClienteByNroDocumento66< T
(66T U
userInputModel66U c
)66c d
;66d e
if88 
(88 
clienteExiste88 
!=88  
null88! %
)88% &
return99 

BadRequest99 !
(99! "
$str99" S
)99S T
;99T U
if;; 
(;; 
clienteNroDocExiste;; "
!=;;# %
null;;& *
);;* +
return<< 

BadRequest<< !
(<<! "
$str<<" [
)<<[ \
;<<\ ]
var>> 
id>> 
=>> 
await>> 
_clienteService>> *
.>>* +

AddCliente>>+ 5
(>>5 6
userInputModel>>6 D
)>>D E
;>>E F
if@@ 
(@@ 
id@@ 
!=@@ 
$num@@ 
)@@ 
returnAA 
OkAA 
(AA 
)AA 
;AA 
returnCC 

BadRequestCC 
(CC 
)CC 
;CC  
}DD 	
[FF 	
HttpPutFF	 
]FF 
publicGG 
asyncGG 
TaskGG 
<GG 
IActionResultGG '
>GG' (
EditGG) -
(GG- .
[GG. /
FromBodyGG/ 7
]GG7 8
ClienteModelGG9 E
userInputModelGGF T
)GGT U
{HH 	
varII 
clienteExisteII 
=II 
awaitII  %
_clienteServiceII& 5
.II5 6
GetClienteByClienteII6 I
(III J
userInputModelIIJ X
)IIX Y
;IIY Z
varJJ 
clienteNroDocExisteJJ #
=JJ$ %
awaitJJ& +
_clienteServiceJJ, ;
.JJ; <$
GetClienteByNroDocumentoJJ< T
(JJT U
userInputModelJJU c
)JJc d
;JJd e
ifLL 
(LL 
clienteExisteLL 
!=LL  
nullLL! %
&&LL& (
clienteExisteLL) 6
.LL6 7
idLL7 9
!=LL: <
userInputModelLL= K
.LLK L
idLLL N
)LLN O
returnMM 

BadRequestMM !
(MM! "
$strMM" S
)MMS T
;MMT U
ifOO 
(OO 
clienteNroDocExisteOO #
!=OO$ &
nullOO' +
&&OO, .
clienteNroDocExisteOO/ B
.OOB C
idOOC E
!=OOF H
userInputModelOOI W
.OOW X
idOOX Z
)OOZ [
returnPP 

BadRequestPP !
(PP! "
$strPP" [
)PP[ \
;PP\ ]
ifRR 
(RR 

ModelStateRR 
.RR 
IsValidRR "
)RR" #
{SS 
varTT 
resultTT 
=TT 
awaitTT "
_clienteServiceTT# 2
.TT2 3
UpdateClienteTT3 @
(TT@ A
userInputModelTTA O
)TTO P
;TTP Q
returnVV 
OkVV 
(VV 
)VV 
;VV 
}WW 
returnXX 

BadRequestXX 
(XX 
)XX 
;XX  
}YY 	
[[[ 	

HttpDelete[[	 
([[ 
$str[[ 
)[[ 
][[ 
public\\ 
async\\ 
Task\\ 
<\\ 
IActionResult\\ '
>\\' (
RemoveCliente\\) 6
(\\6 7
int\\7 :
id\\; =
)\\= >
{]] 	
var^^ 
result^^ 
=^^ 
await^^ 
_clienteService^^ .
.^^. /
RemoveCliente^^/ <
(^^< =
id^^= ?
)^^? @
;^^@ A
if`` 
(`` 
result`` 
==`` 
$num`` 
)`` 
returnaa 
Okaa 
(aa 
)aa 
;aa 
elsebb 
returncc 
NotFoundcc 
(cc  
)cc  !
;cc! "
}dd 	
}ee 
}ff ¡
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
} Ü4
VD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.API\Controllers\ProductoController.cs
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
 

EnableCors

 
(

 
$str

 
)

 
]

 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
ProductoController #
:$ %

Controller& 0
{ 
private 
readonly 
IProductoService )
_productoService* :
;: ;
private 
readonly 
ISecurityService )
_securityService* :
;: ;
public 
ProductoController !
(! "
IProductoService" 2
usuarioService3 A
,A B
ISecurityServiceC S
securityServiceT c
)c d
{ 	
_productoService 
= 
usuarioService -
;- .
_securityService 
= 
securityService .
;. /
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetProductos) 5
(5 6
)6 7
{ 	
try 
{ 
var 
products 
= 
await $
_productoService% 5
.5 6
GetProductos6 B
(B C
)C D
;D E
return 
Ok 
( 
products "
)" #
;# $
}   
catch!! 
(!! 
	Exception!! 
)!! 
{"" 
return## 

StatusCode## !
(##! "
$num##" %
,##% &
$str##' T
)##T U
;##U V
}$$ 
}%% 	
['' 	
HttpGet''	 
]'' 
[(( 	
Route((	 
((( 
$str((  
)((  !
]((! "
public)) 
async)) 
Task)) 
<)) 
ActionResult)) &
<))& '
ProductoViewModel))' 8
>))8 9
>))9 :
Get)); >
())> ?
int))? B
id))C E
)))E F
{** 	
var++ 
user++ 
=++ 
await++ 
_productoService++ -
.++- .
GetProductoById++. =
(++= >
id++> @
)++@ A
;++A B
if-- 
(-- 
user-- 
==-- 
null-- 
)-- 
{.. 
return// 
NotFound// 
(//  
)//  !
;//! "
}00 
return22 
Ok22 
(22 
user22 
)22 
;22 
}33 	
[55 	
HttpPost55	 
]55 
public66 
async66 
Task66 
<66 
IActionResult66 '
>66' (
Register66) 1
(661 2
[662 3
FromBody663 ;
]66; <
ProductoModel66= J
userInputModel66K Y
)66Y Z
{77 	
var88 
prod88 
=88 
await88 
_productoService88 -
.88- .!
GetProductoByProducto88. C
(88C D
userInputModel88D R
.88R S
nombre88S Y
)88Y Z
;88Z [
if:: 
(:: 
prod:: 
!=:: 
null:: 
):: 
return;; 

BadRequest;; !
(;;! "
$str;;" 6
);;6 7
;;;7 8
var== 
id== 
=== 
await== 
_productoService== +
.==+ ,
AddProducto==, 7
(==7 8
userInputModel==8 F
)==F G
;==G H
if?? 
(?? 
id?? 
!=?? 
$num?? 
)?? 
return@@ 
Ok@@ 
(@@ 
)@@ 
;@@ 
returnBB 

BadRequestBB 
(BB 
)BB 
;BB  
}CC 	
[EE 	
HttpPutEE	 
]EE 
publicFF 
asyncFF 
TaskFF 
<FF 
IActionResultFF '
>FF' (
EditFF) -
(FF- .
[FF. /
FromBodyFF/ 7
]FF7 8
ProductoModelFF9 F
userInputModelFFG U
)FFU V
{GG 	
varHH 
prodHH 
=HH 
awaitHH 
_productoServiceHH -
.HH- .!
GetProductoByProductoHH. C
(HHC D
userInputModelHHD R
.HHR S
nombreHHS Y
)HHY Z
;HHZ [
ifJJ 
(JJ 
prodJJ 
!=JJ 
nullJJ 
&&JJ 
userInputModelJJ  .
.JJ. /
idJJ/ 1
!=JJ2 4
prodJJ5 9
.JJ9 :
idJJ: <
)JJ< =
returnKK 

BadRequestKK !
(KK! "
$strKK" 6
)KK6 7
;KK7 8
ifMM 
(MM 

ModelStateMM 
.MM 
IsValidMM "
)MM" #
{NN 
varOO 
resultOO 
=OO 
awaitOO "
_productoServiceOO# 3
.OO3 4
UpdateProductoOO4 B
(OOB C
userInputModelOOC Q
)OOQ R
;OOR S
returnQQ 
OkQQ 
(QQ 
)QQ 
;QQ 
}RR 
returnSS 

BadRequestSS 
(SS 
)SS 
;SS  
}TT 	
[VV 	

HttpDeleteVV	 
(VV 
$strVV 
)VV 
]VV 
publicWW 
asyncWW 
TaskWW 
<WW 
IActionResultWW '
>WW' (
RemoveProductWW) 6
(WW6 7
intWW7 :
idWW; =
)WW= >
{XX 	
varYY 
resultYY 
=YY 
awaitYY 
_productoServiceYY /
.YY/ 0
RemoveProductoYY0 >
(YY> ?
idYY? A
)YYA B
;YYB C
if[[ 
([[ 
result[[ 
==[[ 
$num[[ 
)[[ 
return\\ 
Ok\\ 
(\\ 
)\\ 
;\\ 
else]] 
return^^ 
NotFound^^ 
(^^  
)^^  !
;^^! "
}__ 	
}`` 
}aa É,
WD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.API\Controllers\PromocionController.cs
	namespace 	
PremierBeef
 
. 
API 
. 
Controllers %
{ 
[		 

EnableCors		 
(		 
$str		 
)		 
]		 
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
PromocionController $
:% &

Controller' 1
{ 
private 
readonly 
IPromocionService *
_promocionService+ <
;< =
public 
PromocionController "
(" #
IPromocionService# 4
promocionService5 E
)E F
{ 	
_promocionService 
= 
promocionService  0
;0 1
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetPromociones) 7
(7 8
)8 9
{ 	
try 
{ 
var 
roles 
= 
await !
_promocionService" 3
.3 4
GetPromociones4 B
(B C
)C D
;D E
return 
Ok 
( 
roles 
)  
;  !
} 
catch 
( 
	Exception 
) 
{ 
return   

StatusCode   !
(  ! "
$num  " %
,  % &
$str  ' T
)  T U
;  U V
}!! 
}"" 	
[$$ 	
HttpGet$$	 
]$$ 
[%% 	
Route%%	 
(%% 
$str%% !
)%%! "
]%%" #
public&& 
async&& 
Task&& 
<&& 
ActionResult&& &
<&&& '
PromocionViewModel&&' 9
>&&9 :
>&&: ;
Get&&< ?
(&&? @
int&&@ C
id&&D F
)&&F G
{'' 	
var(( 
user(( 
=(( 
await(( 
_promocionService(( .
.((. /
GetPromocionById((/ ?
(((? @
id((@ B
)((B C
;((C D
if** 
(** 
user** 
==** 
null** 
)** 
{++ 
return,, 
NotFound,, 
(,,  
),,  !
;,,! "
}-- 
return// 
Ok// 
(// 
user// 
)// 
;// 
}00 	
[22 	
HttpPost22	 
]22 
public33 
async33 
Task33 
<33 
IActionResult33 '
>33' (
Register33) 1
(331 2
[332 3
FromBody333 ;
]33; <
PromocionModel33= K
userInputModel33L Z
)33Z [
{44 	
if55 
(55 
userInputModel55 
.55 
	fecInicio55 '
>55( )
userInputModel55* 8
.558 9
fecFin559 ?
)55? @
return66 
NotFound66 
(66  
$str66  O
)66O P
;66P Q
var88 
id88 
=88 
await88 
_promocionService88 ,
.88, -
AddPromocion88- 9
(889 :
userInputModel88: H
)88H I
;88I J
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
]AA7 8
PromocionModelAA9 G
userInputModelAAH V
)AAV W
{BB 	
ifCC 
(CC 

ModelStateCC 
.CC 
IsValidCC "
)CC" #
{DD 
varEE 
resultEE 
=EE 
awaitEE "
_promocionServiceEE# 4
.EE4 5
UpdatePromocionEE5 D
(EED E
userInputModelEEE S
)EES T
;EET U
returnGG 
OkGG 
(GG 
)GG 
;GG 
}HH 
returnII 

BadRequestII 
(II 
)II 
;II  
}JJ 	
[LL 	

HttpDeleteLL	 
(LL 
$strLL 
)LL 
]LL 
publicMM 
asyncMM 
TaskMM 
<MM 
IActionResultMM '
>MM' (
RemovePromocionMM) 8
(MM8 9
intMM9 <
idMM= ?
)MM? @
{NN 	
varOO 
resultOO 
=OO 
awaitOO 
_promocionServiceOO 0
.OO0 1
RemovePromocionOO1 @
(OO@ A
idOOA C
)OOC D
;OOD E
ifQQ 
(QQ 
resultQQ 
==QQ 
$numQQ 
)QQ 
returnRR 
OkRR 
(RR 
)RR 
;RR 
elseSS 
returnTT 
NotFoundTT 
(TT  
)TT  !
;TT! "
}UU 	
}VV 
}WW ‹)
WD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.API\Controllers\ProveedorController.cs
	namespace 	
PremierBeef
 
. 
API 
. 
Controllers %
{ 
[		 

EnableCors		 
(		 
$str		 
)		 
]		 
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
ProveedorController $
:% &

Controller' 1
{ 
private 
readonly 
IProveedorService *
_proveedorService+ <
;< =
public 
ProveedorController "
(" #
IProveedorService# 4
proveedorService5 E
)E F
{ 	
_proveedorService 
= 
proveedorService  0
;0 1
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetProveedores) 7
(7 8
)8 9
{ 	
try 
{ 
var 
roles 
= 
await !
_proveedorService" 3
.3 4
GetProveedores4 B
(B C
)C D
;D E
return 
Ok 
( 
roles 
)  
;  !
} 
catch 
( 
	Exception 
) 
{ 
return   

StatusCode   !
(  ! "
$num  " %
,  % &
$str  ' T
)  T U
;  U V
}!! 
}"" 	
[$$ 	
HttpGet$$	 
]$$ 
[%% 	
Route%%	 
(%% 
$str%% !
)%%! "
]%%" #
public&& 
async&& 
Task&& 
<&& 
ActionResult&& &
<&&& '
ProveedorViewModel&&' 9
>&&9 :
>&&: ;
Get&&< ?
(&&? @
int&&@ C
id&&D F
)&&F G
{'' 	
var(( 
user(( 
=(( 
await(( 
_proveedorService(( .
.((. /
GetProveedorById((/ ?
(((? @
id((@ B
)((B C
;((C D
if** 
(** 
user** 
==** 
null** 
)** 
{++ 
return,, 
NotFound,, 
(,,  
),,  !
;,,! "
}-- 
return// 
Ok// 
(// 
user// 
)// 
;// 
}00 	
[22 	
HttpPost22	 
]22 
public33 
async33 
Task33 
<33 
IActionResult33 '
>33' (
Register33) 1
(331 2
[332 3
FromBody333 ;
]33; <
ProveedorModel33= K
userInputModel33L Z
)33Z [
{44 	
var55 
id55 
=55 
await55 
_proveedorService55 ,
.55, -
AddProveedor55- 9
(559 :
userInputModel55: H
)55H I
;55I J
if77 
(77 
id77 
!=77 
$num77 
)77 
return88 
Ok88 
(88 
)88 
;88 
return:: 

BadRequest:: 
(:: 
):: 
;::  
};; 	
[== 	
HttpPut==	 
]== 
public>> 
async>> 
Task>> 
<>> 
IActionResult>> '
>>>' (
Edit>>) -
(>>- .
[>>. /
FromBody>>/ 7
]>>7 8
ProveedorModel>>9 G
userInputModel>>H V
)>>V W
{?? 	
if@@ 
(@@ 

ModelState@@ 
.@@ 
IsValid@@ "
)@@" #
{AA 
varBB 
resultBB 
=BB 
awaitBB "
_proveedorServiceBB# 4
.BB4 5
UpdateProveedorBB5 D
(BBD E
userInputModelBBE S
)BBS T
;BBT U
returnDD 
OkDD 
(DD 
)DD 
;DD 
}EE 
returnFF 

BadRequestFF 
(FF 
)FF 
;FF  
}GG 	
[II 	

HttpDeleteII	 
(II 
$strII 
)II 
]II 
publicJJ 
asyncJJ 
TaskJJ 
<JJ 
IActionResultJJ '
>JJ' (
RemoveProveedorJJ) 8
(JJ8 9
intJJ9 <
idJJ= ?
)JJ? @
{KK 	
varLL 
resultLL 
=LL 
awaitLL 
_proveedorServiceLL 0
.LL0 1
RemoveProveedorLL1 @
(LL@ A
idLLA C
)LLC D
;LLD E
ifNN 
(NN 
resultNN 
==NN 
$numNN 
)NN 
returnOO 
OkOO 
(OO 
)OO 
;OO 
elsePP 
returnQQ 
NotFoundQQ 
(QQ  
)QQ  !
;QQ! "
}RR 	
}SS 
}TT «*
UD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.API\Controllers\ReclamoController.cs
	namespace		 	
PremierBeef		
 
.		 
API		 
.		 
Controllers		 %
{

 
[ 

EnableCors 
( 
$str 
) 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
ReclamoController "
:# $

Controller% /
{ 
private 
readonly 
IReclamoService (
_reclamoService) 8
;8 9
public 
ReclamoController  
(  !
IReclamoService! 0
reclamoService1 ?
)? @
{ 	
_reclamoService 
= 
reclamoService ,
;, -
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetReclamos) 4
(4 5
)5 6
{ 	
try 
{ 
var 
roles 
= 
await !
_reclamoService" 1
.1 2
GetReclamos2 =
(= >
)> ?
;? @
return 
Ok 
( 
roles 
)  
;  !
} 
catch   
(   
	Exception   
)   
{!! 
return"" 

StatusCode"" !
(""! "
$num""" %
,""% &
$str""' T
)""T U
;""U V
}## 
}$$ 	
[&& 	
HttpGet&&	 
]&& 
['' 	
Route''	 
('' 
$str'' 
)''  
]''  !
public(( 
async(( 
Task(( 
<(( 
ActionResult(( &
<((& '
ReclamoViewModel((' 7
>((7 8
>((8 9
Get((: =
(((= >
int((> A
id((B D
)((D E
{)) 	
var** 
user** 
=** 
await** 
_reclamoService** ,
.**, -
GetReclamoById**- ;
(**; <
id**< >
)**> ?
;**? @
if,, 
(,, 
user,, 
==,, 
null,, 
),, 
{-- 
return.. 
NotFound.. 
(..  
)..  !
;..! "
}// 
return11 
Ok11 
(11 
user11 
)11 
;11 
}22 	
[44 	
HttpPost44	 
]44 
public55 
async55 
Task55 
<55 
IActionResult55 '
>55' (
Register55) 1
(551 2
[552 3
FromBody553 ;
]55; <
ReclamoModel55= I
userInputModel55J X
)55X Y
{66 	
var77 
id77 
=77 
await77 
_reclamoService77 *
.77* +

AddReclamo77+ 5
(775 6
userInputModel776 D
)77D E
;77E F
if99 
(99 
id99 
!=99 
$num99 
)99 
return:: 
Ok:: 
(:: 
):: 
;:: 
return<< 

BadRequest<< 
(<< 
)<< 
;<<  
}== 	
[?? 	
HttpPut??	 
]?? 
public@@ 
async@@ 
Task@@ 
<@@ 
IActionResult@@ '
>@@' (
Edit@@) -
(@@- .
[@@. /
FromBody@@/ 7
]@@7 8
ReclamoModel@@9 E
userInputModel@@F T
)@@T U
{AA 	
ifBB 
(BB 

ModelStateBB 
.BB 
IsValidBB "
)BB" #
{CC 
varDD 
resultDD 
=DD 
awaitDD "
_reclamoServiceDD# 2
.DD2 3
UpdateReclamoDD3 @
(DD@ A
userInputModelDDA O
)DDO P
;DDP Q
ifFF 
(FF 
resultFF 
)FF 
returnGG 
OkGG 
(GG 
)GG 
;GG  
elseHH 
returnII 

BadRequestII %
(II% &
$strII& P
)IIP Q
;IIQ R
}KK 
returnLL 

BadRequestLL 
(LL 
)LL 
;LL  
}MM 	
[OO 	

HttpDeleteOO	 
(OO 
$strOO 
)OO 
]OO 
publicPP 
asyncPP 
TaskPP 
<PP 
IActionResultPP '
>PP' (
RemoveReclamoPP) 6
(PP6 7
intPP7 :
idPP; =
)PP= >
{QQ 	
varRR 
resultRR 
=RR 
awaitRR 
_reclamoServiceRR .
.RR. /
RemoveReclamoRR/ <
(RR< =
idRR= ?
)RR? @
;RR@ A
ifTT 
(TT 
resultTT 
)TT 
returnUU 
OkUU 
(UU 
)UU 
;UU 
elseVV 
returnWW 
NotFoundWW 
(WW  
)WW  !
;WW! "
}XX 	
}YY 
}ZZ ﬁ
YD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.API\Controllers\ReclamoTipoController.cs
	namespace 	
PremierBeef
 
. 
API 
. 
Controllers %
{ 
[ 

EnableCors 
( 
$str 
) 
] 
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
 !
ReclamoTipoController

 &
:

' (
ControllerBase

) 7
{ 
private 
readonly 
IReclamoTipoService ,
_reclamoTipoService- @
;@ A
public !
ReclamoTipoController $
($ %
IReclamoTipoService% 8
reclamoTipoService9 K
)K L
{ 	
_reclamoTipoService 
=  !
reclamoTipoService" 4
;4 5
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetReclamoTipos) 8
(8 9
)9 :
{ 	
try 
{ 
var 
reclamoTipos  
=! "
await# (
_reclamoTipoService) <
.< =
GetReclamoTipos= L
(L M
)M N
;N O
return 
Ok 
( 
reclamoTipos &
)& '
;' (
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
}!! 
}"" •õ
UD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.API\Controllers\ReporteController.cs
	namespace		 	
PremierBeef		
 
.		 
API		 
.		 
Controllers		 %
{

 
[ 

EnableCors 
( 
$str 
) 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
ReporteController "
:# $
ControllerBase% 3
{ 
private 
readonly 
IReporteService (
_reporteService) 8
;8 9
public 
ReporteController  
(  !
IReporteService! 0
reporteService1 ?
)? @
{ 	
_reporteService 
= 
reporteService ,
;, -
} 	
[ 	
HttpPost	 
] 
[ 	
Route	 
( 
$str %
)% &
]& '
public 
async 
Task 
< 
ActionResult &
<& '
UsuarioViewModel' 7
>7 8
>8 9
GetReporteVentas: J
(J K
[K L
FromBodyL T
]T U
FiltroReporteModelV h
filtroi o
)o p
{ 	
var 
user 
= 
await 
_reporteService ,
., -
GetReporteVentas- =
(= >
filtro> D
)D E
;E F
if 
( 
user 
== 
null 
) 
{ 
return 
NotFound 
(  
)  !
;! "
}   
return"" 
Ok"" 
("" 
user"" 
)"" 
;"" 
}## 	
[%% 	
HttpPost%%	 
(%% 
$str%% &
)%%& '
]%%' (
public&& 
async&& 
Task&& 
<&& 
IActionResult&& '
>&&' (
ExcelReporteVentas&&) ;
(&&; <
[&&< =
FromBody&&= E
]&&E F
FiltroReporteModel&&G Y
filtro&&Z `
)&&` a
{'' 	
var(( 
reporte(( 
=(( 
await(( 
_reporteService((  /
.((/ 0
GetReporteVentas((0 @
(((@ A
filtro((A G
)((G H
;((H I
	DataTable** 
dt** 
=** 
new** 
	DataTable** (
(**( )
$str**) /
)**/ 0
;**0 1
dt++ 
.++ 
Columns++ 
.++ 
AddRange++ 
(++  
new++  #

DataColumn++$ .
[++. /
$num++/ 0
]++0 1
{++2 3
new++4 7

DataColumn++8 B
(++B C
$str++C J
)++J K
,++K L
new,,% (

DataColumn,,) 3
(,,3 4
$str,,4 =
),,= >
},,? @
),,@ A
;,,A B
foreach.. 
(.. 
var.. 
emp.. 
in.. 
reporte..  '
)..' (
{// 
dt00 
.00 
Rows00 
.00 
Add00 
(00 
emp00 
.00  
cliente00  '
,00' (
emp00) ,
.00, -
tipo_documento00- ;
)00; <
;00< =
}11 
using33 
(33 

XLWorkbook33 
wb33  
=33! "
new33# &

XLWorkbook33' 1
(331 2
)332 3
)333 4
{44 
wb55 
.55 

Worksheets55 
.55 
Add55 !
(55! "
dt55" $
)55$ %
;55% &
using66 
(66 
MemoryStream66 #
stream66$ *
=66+ ,
new66- 0
MemoryStream661 =
(66= >
)66> ?
)66? @
{77 
wb88 
.88 
SaveAs88 
(88 
stream88 $
)88$ %
;88% &
return99 
File99 
(99  
stream99  &
.99& '
ToArray99' .
(99. /
)99/ 0
,990 1
$str992 u
,99u v
$str	99w Ç
)
99Ç É
;
99É Ñ
}:: 
};; 
}<< 	
[>> 	
HttpPost>>	 
]>> 
[?? 	
Route??	 
(?? 
$str?? &
)??& '
]??' (
public@@ 
async@@ 
Task@@ 
<@@ 
ActionResult@@ &
<@@& '
UsuarioViewModel@@' 7
>@@7 8
>@@8 9
GetReportePedidos@@: K
(@@K L
[@@L M
FromBody@@M U
]@@U V
FiltroReporteModel@@W i
filtro@@j p
)@@p q
{AA 	
varBB 
userBB 
=BB 
awaitBB 
_reporteServiceBB ,
.BB, -
GetReportePedidosBB- >
(BB> ?
filtroBB? E
)BBE F
;BBF G
ifDD 
(DD 
userDD 
==DD 
nullDD 
)DD 
{EE 
returnFF 
NotFoundFF 
(FF  
)FF  !
;FF! "
}GG 
returnII 
OkII 
(II 
userII 
)II 
;II 
}JJ 	
[LL 	
HttpPostLL	 
(LL 
$strLL '
)LL' (
]LL( )
publicMM 
asyncMM 
TaskMM 
<MM 
IActionResultMM '
>MM' (
ExcelReportePedidosMM) <
(MM< =
[MM= >
FromBodyMM> F
]MMF G
FiltroReporteModelMMH Z
filtroMM[ a
)MMa b
{NN 	
varOO 
reporteOO 
=OO 
awaitOO 
_reporteServiceOO  /
.OO/ 0
GetReportePedidosOO0 A
(OOA B
filtroOOB H
)OOH I
;OOI J
	DataTableQQ 
dtQQ 
=QQ 
newQQ 
	DataTableQQ (
(QQ( )
$strQQ) /
)QQ/ 0
;QQ0 1
dtRR 
.RR 
ColumnsRR 
.RR 
AddRangeRR 
(RR  
newRR  #

DataColumnRR$ .
[RR. /
$numRR/ 0
]RR0 1
{RR2 3
newRR4 7

DataColumnRR8 B
(RRB C
$strRRC J
)RRJ K
,RRK L
newSS% (

DataColumnSS) 3
(SS3 4
$strSS4 =
)SS= >
}SS? @
)SS@ A
;SSA B
foreachUU 
(UU 
varUU 
empUU 
inUU 
reporteUU  '
)UU' (
{VV 
dtWW 
.WW 
RowsWW 
.WW 
AddWW 
(WW 
empWW 
.WW  
detalleWW  '
,WW' (
empWW) ,
.WW, -
	respuestaWW- 6
)WW6 7
;WW7 8
}XX 
usingZZ 
(ZZ 

XLWorkbookZZ 
wbZZ  
=ZZ! "
newZZ# &

XLWorkbookZZ' 1
(ZZ1 2
)ZZ2 3
)ZZ3 4
{[[ 
wb\\ 
.\\ 

Worksheets\\ 
.\\ 
Add\\ !
(\\! "
dt\\" $
)\\$ %
;\\% &
using]] 
(]] 
MemoryStream]] #
stream]]$ *
=]]+ ,
new]]- 0
MemoryStream]]1 =
(]]= >
)]]> ?
)]]? @
{^^ 
wb__ 
.__ 
SaveAs__ 
(__ 
stream__ $
)__$ %
;__% &
return`` 
File`` 
(``  
stream``  &
.``& '
ToArray``' .
(``. /
)``/ 0
,``0 1
$str``2 u
,``u v
$str	``w Ç
)
``Ç É
;
``É Ñ
}aa 
}bb 
}cc 	
[ee 	
HttpPostee	 
]ee 
[ff 	
Routeff	 
(ff 
$strff $
)ff$ %
]ff% &
publicgg 
asyncgg 
Taskgg 
<gg 
ActionResultgg &
<gg& '
UsuarioViewModelgg' 7
>gg7 8
>gg8 9
GetReporteStockgg: I
(ggI J
[ggJ K
FromBodyggK S
]ggS T
FiltroReporteModelggU g
filtroggh n
)ggn o
{hh 	
varii 
userii 
=ii 
awaitii 
_reporteServiceii ,
.ii, -
GetReporteStockii- <
(ii< =
filtroii= C
)iiC D
;iiD E
ifkk 
(kk 
userkk 
==kk 
nullkk 
)kk 
{ll 
returnmm 
NotFoundmm 
(mm  
)mm  !
;mm! "
}nn 
returnpp 
Okpp 
(pp 
userpp 
)pp 
;pp 
}qq 	
[ss 	
HttpPostss	 
(ss 
$strss %
)ss% &
]ss& '
publictt 
asynctt 
Tasktt 
<tt 
IActionResulttt '
>tt' (
ExcelReporteStocktt) :
(tt: ;
[tt; <
FromBodytt< D
]ttD E
FiltroReporteModelttF X
filtrottY _
)tt_ `
{uu 	
varvv 
reportevv 
=vv 
awaitvv 
_reporteServicevv  /
.vv/ 0
GetReporteStockvv0 ?
(vv? @
filtrovv@ F
)vvF G
;vvG H
	DataTablexx 
dtxx 
=xx 
newxx 
	DataTablexx (
(xx( )
$strxx) /
)xx/ 0
;xx0 1
dtyy 
.yy 
Columnsyy 
.yy 
AddRangeyy 
(yy  
newyy  #

DataColumnyy$ .
[yy. /
$numyy/ 0
]yy0 1
{yy2 3
newyy4 7

DataColumnyy8 B
(yyB C
$stryyC J
)yyJ K
,yyK L
newzz% (

DataColumnzz) 3
(zz3 4
$strzz4 =
)zz= >
}zz? @
)zz@ A
;zzA B
foreach|| 
(|| 
var|| 
emp|| 
in|| 
reporte||  '
)||' (
{}} 
dt~~ 
.~~ 
Rows~~ 
.~~ 
Add~~ 
(~~ 
emp~~ 
.~~  
detalle~~  '
,~~' (
emp~~) ,
.~~, -
	respuesta~~- 6
)~~6 7
;~~7 8
} 
using
ÅÅ 
(
ÅÅ 

XLWorkbook
ÅÅ 
wb
ÅÅ  
=
ÅÅ! "
new
ÅÅ# &

XLWorkbook
ÅÅ' 1
(
ÅÅ1 2
)
ÅÅ2 3
)
ÅÅ3 4
{
ÇÇ 
wb
ÉÉ 
.
ÉÉ 

Worksheets
ÉÉ 
.
ÉÉ 
Add
ÉÉ !
(
ÉÉ! "
dt
ÉÉ" $
)
ÉÉ$ %
;
ÉÉ% &
using
ÑÑ 
(
ÑÑ 
MemoryStream
ÑÑ #
stream
ÑÑ$ *
=
ÑÑ+ ,
new
ÑÑ- 0
MemoryStream
ÑÑ1 =
(
ÑÑ= >
)
ÑÑ> ?
)
ÑÑ? @
{
ÖÖ 
wb
ÜÜ 
.
ÜÜ 
SaveAs
ÜÜ 
(
ÜÜ 
stream
ÜÜ $
)
ÜÜ$ %
;
ÜÜ% &
return
áá 
File
áá 
(
áá  
stream
áá  &
.
áá& '
ToArray
áá' .
(
áá. /
)
áá/ 0
,
áá0 1
$str
áá2 u
,
ááu v
$strááw Ç
)ááÇ É
;ááÉ Ñ
}
àà 
}
ââ 
}
ää 	
[
éé 	
HttpPost
éé	 
]
éé 
[
èè 	
Route
èè	 
(
èè 
$str
èè '
)
èè' (
]
èè( )
public
êê 
async
êê 
Task
êê 
<
êê 
ActionResult
êê &
<
êê& '
UsuarioViewModel
êê' 7
>
êê7 8
>
êê8 9 
GetReporteReclamos
êê: L
(
êêL M
[
êêM N
FromBody
êêN V
]
êêV W 
FiltroReporteModel
êêX j
filtro
êêk q
)
êêq r
{
ëë 	
var
íí 
user
íí 
=
íí 
await
íí 
_reporteService
íí ,
.
íí, - 
GetReporteReclamos
íí- ?
(
íí? @
filtro
íí@ F
)
ííF G
;
ííG H
if
îî 
(
îî 
user
îî 
==
îî 
null
îî 
)
îî 
{
ïï 
return
ññ 
NotFound
ññ 
(
ññ  
)
ññ  !
;
ññ! "
}
óó 
return
ôô 
Ok
ôô 
(
ôô 
user
ôô 
)
ôô 
;
ôô 
}
öö 	
[
úú 	
HttpPost
úú	 
(
úú 
$str
úú (
)
úú( )
]
úú) *
public
ùù 
async
ùù 
Task
ùù 
<
ùù 
IActionResult
ùù '
>
ùù' ("
ExcelReporteReclamos
ùù) =
(
ùù= >
[
ùù> ?
FromBody
ùù? G
]
ùùG H 
FiltroReporteModel
ùùI [
filtro
ùù\ b
)
ùùb c
{
ûû 	
var
üü 
reporte
üü 
=
üü 
await
üü 
_reporteService
üü  /
.
üü/ 0 
GetReporteReclamos
üü0 B
(
üüB C
filtro
üüC I
)
üüI J
;
üüJ K
	DataTable
°° 
dt
°° 
=
°° 
new
°° 
	DataTable
°° (
(
°°( )
$str
°°) /
)
°°/ 0
;
°°0 1
dt
¢¢ 
.
¢¢ 
Columns
¢¢ 
.
¢¢ 
AddRange
¢¢ 
(
¢¢  
new
¢¢  #

DataColumn
¢¢$ .
[
¢¢. /
$num
¢¢/ 0
]
¢¢0 1
{
¢¢2 3
new
¢¢4 7

DataColumn
¢¢8 B
(
¢¢B C
$str
¢¢C J
)
¢¢J K
,
¢¢K L
new
££% (

DataColumn
££) 3
(
££3 4
$str
££4 =
)
££= >
}
££? @
)
££@ A
;
££A B
foreach
•• 
(
•• 
var
•• 
emp
•• 
in
•• 
reporte
••  '
)
••' (
{
¶¶ 
dt
ßß 
.
ßß 
Rows
ßß 
.
ßß 
Add
ßß 
(
ßß 
emp
ßß 
.
ßß  
detalle
ßß  '
,
ßß' (
emp
ßß) ,
.
ßß, -
	respuesta
ßß- 6
)
ßß6 7
;
ßß7 8
}
®® 
using
™™ 
(
™™ 

XLWorkbook
™™ 
wb
™™  
=
™™! "
new
™™# &

XLWorkbook
™™' 1
(
™™1 2
)
™™2 3
)
™™3 4
{
´´ 
wb
¨¨ 
.
¨¨ 

Worksheets
¨¨ 
.
¨¨ 
Add
¨¨ !
(
¨¨! "
dt
¨¨" $
)
¨¨$ %
;
¨¨% &
using
≠≠ 
(
≠≠ 
MemoryStream
≠≠ #
stream
≠≠$ *
=
≠≠+ ,
new
≠≠- 0
MemoryStream
≠≠1 =
(
≠≠= >
)
≠≠> ?
)
≠≠? @
{
ÆÆ 
wb
ØØ 
.
ØØ 
SaveAs
ØØ 
(
ØØ 
stream
ØØ $
)
ØØ$ %
;
ØØ% &
return
∞∞ 
File
∞∞ 
(
∞∞  
stream
∞∞  &
.
∞∞& '
ToArray
∞∞' .
(
∞∞. /
)
∞∞/ 0
,
∞∞0 1
$str
∞∞2 u
,
∞∞u v
$str∞∞w Ç
)∞∞Ç É
;∞∞É Ñ
}
±± 
}
≤≤ 
}
≥≥ 	
[
∑∑ 	
HttpPost
∑∑	 
]
∑∑ 
[
∏∏ 	
Route
∏∏	 
(
∏∏ 
$str
∏∏ '
)
∏∏' (
]
∏∏( )
public
ππ 
async
ππ 
Task
ππ 
<
ππ 
ActionResult
ππ &
<
ππ& '
UsuarioViewModel
ππ' 7
>
ππ7 8
>
ππ8 9 
GetReporteDelivery
ππ: L
(
ππL M
[
ππM N
FromBody
ππN V
]
ππV W 
FiltroReporteModel
ππX j
filtro
ππk q
)
ππq r
{
∫∫ 	
var
ªª 
user
ªª 
=
ªª 
await
ªª 
_reporteService
ªª ,
.
ªª, - 
GetReporteDelivery
ªª- ?
(
ªª? @
filtro
ªª@ F
)
ªªF G
;
ªªG H
if
ΩΩ 
(
ΩΩ 
user
ΩΩ 
==
ΩΩ 
null
ΩΩ 
)
ΩΩ 
{
ææ 
return
øø 
NotFound
øø 
(
øø  
)
øø  !
;
øø! "
}
¿¿ 
return
¬¬ 
Ok
¬¬ 
(
¬¬ 
user
¬¬ 
)
¬¬ 
;
¬¬ 
}
√√ 	
[
≈≈ 	
HttpPost
≈≈	 
(
≈≈ 
$str
≈≈ (
)
≈≈( )
]
≈≈) *
public
∆∆ 
async
∆∆ 
Task
∆∆ 
<
∆∆ 
IActionResult
∆∆ '
>
∆∆' ("
ExcelReporteDelivery
∆∆) =
(
∆∆= >
[
∆∆> ?
FromBody
∆∆? G
]
∆∆G H 
FiltroReporteModel
∆∆I [
filtro
∆∆\ b
)
∆∆b c
{
«« 	
var
»» 
reporte
»» 
=
»» 
await
»» 
_reporteService
»»  /
.
»»/ 0 
GetReporteDelivery
»»0 B
(
»»B C
filtro
»»C I
)
»»I J
;
»»J K
	DataTable
   
dt
   
=
   
new
   
	DataTable
   (
(
  ( )
$str
  ) /
)
  / 0
;
  0 1
dt
ÀÀ 
.
ÀÀ 
Columns
ÀÀ 
.
ÀÀ 
AddRange
ÀÀ 
(
ÀÀ  
new
ÀÀ  #

DataColumn
ÀÀ$ .
[
ÀÀ. /
$num
ÀÀ/ 0
]
ÀÀ0 1
{
ÀÀ2 3
new
ÀÀ4 7

DataColumn
ÀÀ8 B
(
ÀÀB C
$str
ÀÀC J
)
ÀÀJ K
,
ÀÀK L
new
ÃÃ% (

DataColumn
ÃÃ) 3
(
ÃÃ3 4
$str
ÃÃ4 =
)
ÃÃ= >
}
ÃÃ? @
)
ÃÃ@ A
;
ÃÃA B
foreach
ŒŒ 
(
ŒŒ 
var
ŒŒ 
emp
ŒŒ 
in
ŒŒ 
reporte
ŒŒ  '
)
ŒŒ' (
{
œœ 
dt
–– 
.
–– 
Rows
–– 
.
–– 
Add
–– 
(
–– 
emp
–– 
.
––  
detalle
––  '
,
––' (
emp
––) ,
.
––, -
	respuesta
––- 6
)
––6 7
;
––7 8
}
—— 
using
”” 
(
”” 

XLWorkbook
”” 
wb
””  
=
””! "
new
””# &

XLWorkbook
””' 1
(
””1 2
)
””2 3
)
””3 4
{
‘‘ 
wb
’’ 
.
’’ 

Worksheets
’’ 
.
’’ 
Add
’’ !
(
’’! "
dt
’’" $
)
’’$ %
;
’’% &
using
÷÷ 
(
÷÷ 
MemoryStream
÷÷ #
stream
÷÷$ *
=
÷÷+ ,
new
÷÷- 0
MemoryStream
÷÷1 =
(
÷÷= >
)
÷÷> ?
)
÷÷? @
{
◊◊ 
wb
ÿÿ 
.
ÿÿ 
SaveAs
ÿÿ 
(
ÿÿ 
stream
ÿÿ $
)
ÿÿ$ %
;
ÿÿ% &
return
ŸŸ 
File
ŸŸ 
(
ŸŸ  
stream
ŸŸ  &
.
ŸŸ& '
ToArray
ŸŸ' .
(
ŸŸ. /
)
ŸŸ/ 0
,
ŸŸ0 1
$str
ŸŸ2 u
,
ŸŸu v
$strŸŸw Ç
)ŸŸÇ É
;ŸŸÉ Ñ
}
⁄⁄ 
}
€€ 
}
‹‹ 	
}
ﬁﬁ 
}ﬂﬂ Ú
QD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.API\Controllers\RolController.cs
	namespace 	
PremierBeef
 
. 
API 
. 
Controllers %
{ 
[ 

EnableCors 
( 
$str 
) 
] 
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
 
RolController

 
:

  
ControllerBase

! /
{ 
private 
readonly 
IRolService $
_rolService% 0
;0 1
public 
RolController 
( 
IRolService (

rolService) 3
)3 4
{ 	
_rolService 
= 

rolService $
;$ %
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetRoles) 1
(1 2
)2 3
{ 	
try 
{ 
var 
roles 
= 
await !
_rolService" -
.- .
GetRoles. 6
(6 7
)7 8
;8 9
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
}!! 
}"" Ë
[D:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.API\Controllers\TipoDocumentoController.cs
	namespace 	
PremierBeef
 
. 
API 
. 
Controllers %
{ 
[ 

EnableCors 
( 
$str 
) 
] 
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
 #
TipoDocumentoController

 (
:

) *
ControllerBase

+ 9
{ 
private 
readonly !
ITipoDocumentoService .!
_tipoDocumentoService/ D
;D E
public #
TipoDocumentoController &
(& '!
ITipoDocumentoService' < 
tipoDocumentoService= Q
)Q R
{ 	!
_tipoDocumentoService !
=" # 
tipoDocumentoService$ 8
;8 9
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetTipoDocumentos) :
(: ;
); <
{ 	
try 
{ 
var 
tipos 
= 
await !!
_tipoDocumentoService" 7
.7 8
GetTipoDocumentos8 I
(I J
)J K
;K L
return 
Ok 
( 
tipos 
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
}!! 
}"" ©B
UD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.API\Controllers\UsuarioController.cs
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
 

EnableCors

 
(

 
$str

 
)

 
]

 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
UsuarioController "
:# $
ControllerBase% 3
{ 
private 
readonly 
IUsuarioService (
_usuarioService) 8
;8 9
private 
readonly 
ISecurityService )
_securityService* :
;: ;
public 
UsuarioController  
(  !
IUsuarioService! 0
usuarioService1 ?
,? @
ISecurityServiceA Q
securityServiceR a
)a b
{ 	
_usuarioService 
= 
usuarioService ,
;, -
_securityService 
= 
securityService .
;. /
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetUsuarios) 4
(4 5
)5 6
{ 	
try 
{ 
var 
products 
= 
await $
_usuarioService% 4
.4 5
GetUsuarios5 @
(@ A
)A B
;B C
return 
Ok 
( 
products "
)" #
;# $
}   
catch!! 
(!! 
	Exception!! 
)!! 
{"" 
return## 

StatusCode## !
(##! "
$num##" %
,##% &
$str##' T
)##T U
;##U V
}$$ 
}%% 	
['' 	
HttpGet''	 
]'' 
[(( 	
Route((	 
((( 
$str(( 
)((  
]((  !
public)) 
async)) 
Task)) 
<)) 
ActionResult)) &
<))& '
UsuarioViewModel))' 7
>))7 8
>))8 9
Get)): =
())= >
int))> A
id))B D
)))D E
{** 	
var++ 
user++ 
=++ 
await++ 
_usuarioService++ ,
.++, -
GetUserById++- 8
(++8 9
id++9 ;
)++; <
;++< =
if-- 
(-- 
user-- 
==-- 
null-- 
)-- 
{.. 
return// 
NotFound// 
(//  
)//  !
;//! "
}00 
return22 
Ok22 
(22 
user22 
)22 
;22 
}33 	
[55 	
HttpPost55	 
]55 
public66 
async66 
Task66 
<66 
IActionResult66 '
>66' (
Register66) 1
(661 2
[662 3
FromBody663 ;
]66; <
UsuarioModel66= I
userInputModel66J X
)66X Y
{77 	
var88 
user88 
=88 
await88 
_usuarioService88 ,
.88, -
GetUserByUsuario88- =
(88= >
userInputModel88> L
.88L M
usuario88M T
)88T U
;88U V
if:: 
(:: 
user:: 
!=:: 
null:: 
):: 
return;; 

BadRequest;; !
(;;! "
$str;;" 5
);;5 6
;;;6 7
var== 

userCorreo== 
=== 
await== "
_usuarioService==# 2
.==2 3
GetUserByCorreo==3 B
(==B C
userInputModel==C Q
.==Q R
usuario==R Y
)==Y Z
;==Z [
if?? 
(?? 

userCorreo?? 
!=?? 
null?? "
)??" #
return@@ 

BadRequest@@ !
(@@! "
$str@@" 4
)@@4 5
;@@5 6
ifBB 
(BB 

ModelStateBB 
.BB 
IsValidBB "
)BB" #
{CC 
ifDD 
(DD 
userInputModelDD "
.DD" #
claveDD# (
!=DD) +
nullDD, 0
&&DD1 3
userInputModelDD4 B
.DDB C
claveDDC H
!=DDI K
StringDDL R
.DDR S
EmptyDDS X
)DDX Y
{EE 
stringFF 
encriptedPasswordFF ,
=FF- .
_securityServiceFF/ ?
.FF? @
HashFF@ D
(FFD E
userInputModelFFE S
.FFS T
claveFFT Y
)FFY Z
;FFZ [
userInputModelHH "
.HH" #
claveHH# (
=HH) *
encriptedPasswordHH+ <
;HH< =
}II 
varKK 
idKK 
=KK 
awaitKK 
_usuarioServiceKK .
.KK. /

AddUsuarioKK/ 9
(KK9 :
userInputModelKK: H
)KKH I
;KKI J
ifMM 
(MM 
idMM 
!=MM 
$numMM 
)MM 
returnNN 
OkNN 
(NN 
)NN 
;NN  
returnPP 

BadRequestPP !
(PP! "
)PP" #
;PP# $
}QQ 
elseRR 
{SS 
returnTT 

BadRequestTT !
(TT! "
)TT" #
;TT# $
}UU 
}WW 	
[YY 	
HttpPutYY	 
]YY 
publicZZ 
asyncZZ 
TaskZZ 
<ZZ 
IActionResultZZ '
>ZZ' (
EditZZ) -
(ZZ- .
[ZZ. /
FromBodyZZ/ 7
]ZZ7 8
UsuarioModelZZ9 E
userInputModelZZF T
)ZZT U
{[[ 	
var\\ 
user\\ 
=\\ 
await\\ 
_usuarioService\\ ,
.\\, -
GetUserById\\- 8
(\\8 9
userInputModel\\9 G
.\\G H
id\\H J
)\\J K
;\\K L
if^^ 
(^^ 
user^^ 
==^^ 
null^^ 
)^^ 
return__ 
NotFound__ 
(__  
$str__  7
)__7 8
;__8 9
varaa 

userCorreoaa 
=aa 
awaitaa "
_usuarioServiceaa# 2
.aa2 3
GetUserByCorreoaa3 B
(aaB C
userInputModelaaC Q
.aaQ R
correoaaR X
)aaX Y
;aaY Z
ifcc 
(cc 

userCorreocc 
!=cc 
nullcc "
&&cc# %

userCorreocc& 0
.cc0 1
usuariocc1 8
!=cc9 ;
userInputModelcc< J
.ccJ K
usuarioccK R
)ccR S
returndd 

BadRequestdd !
(dd! "
$strdd" 4
)dd4 5
;dd5 6
ifff 
(ff 

ModelStateff 
.ff 
IsValidff "
)ff" #
{gg 
varhh 
resulthh 
=hh 
awaithh "
_usuarioServicehh# 2
.hh2 3
UpdateUsuariohh3 @
(hh@ A
userInputModelhhA O
)hhO P
;hhP Q
returnjj 
Okjj 
(jj 
)jj 
;jj 
}kk 
returnll 

BadRequestll 
(ll 
)ll 
;ll  
}mm 	
[oo 	

HttpDeleteoo	 
(oo 
$stroo 
)oo 
]oo 
publicpp 
asyncpp 
Taskpp 
<pp 
IActionResultpp '
>pp' (
RemoveProductpp) 6
(pp6 7
intpp7 :
idpp; =
)pp= >
{qq 	
varrr 
resultrr 
=rr 
awaitrr 
_usuarioServicerr .
.rr. /
RemoveUsuariorr/ <
(rr< =
idrr= ?
)rr? @
;rr@ A
iftt 
(tt 
resulttt 
)tt 
returnuu 
Okuu 
(uu 
)uu 
;uu 
elsevv 
returnww 
NotFoundww 
(ww  
)ww  !
;ww! "
}xx 	
}yy 
}zz Ùo
?D:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.API\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
builder 
. 
Services 
. 
AddControllers 
(  
)  !
;! "
builder   
.   
Services   
.   #
AddEndpointsApiExplorer   (
(  ( )
)  ) *
;  * +
builder!! 
.!! 
Services!! 
.!! 
AddSwaggerGen!! 
(!! 
)!!  
;!!  !
builder$$ 
.$$ 
Services$$ 
.$$ 
	Configure$$ 
<$$ 
PremierBeef$$ &
.$$& '
Core$$' +
.$$+ ,
Entities$$, 4
.$$4 5
PasswordOptions$$5 D
>$$D E
($$E F
options$$F M
=>$$N P
builder$$Q X
.$$X Y
Configuration$$Y f
.$$f g

GetSection$$g q
($$q r
$str	$$r É
)
$$É Ñ
.
$$Ñ Ö
Bind
$$Ö â
(
$$â ä
options
$$ä ë
)
$$ë í
)
$$í ì
;
$$ì î
var'' 
connectionString'' 
='' 
builder'' 
.'' 
Configuration'' ,
.'', -
GetConnectionString''- @
(''@ A
$str''A P
)''P Q
;''Q R
builder(( 
.(( 
Services(( 
.(( 
AddDbContext(( 
<(( 
PremierContext(( ,
>((, -
(((- .
x((. /
=>((0 2
x((3 4
.((4 5
UseSqlServer((5 A
(((A B
connectionString((B R
)((R S
.((S T$
UseQueryTrackingBehavior((T l
(((l m"
QueryTrackingBehavior	((m Ç
.
((Ç É

NoTracking
((É ç
)
((ç é
)
((é è
;
((è ê
builder++ 
.++ 
Services++ 
.++ 
AddTransient++ 
<++ 
IUsuarioRepository++ 0
,++0 1
UsuarioRepository++2 C
>++C D
(++D E
)++E F
;++F G
builder,, 
.,, 
Services,, 
.,, 
	AddScoped,, 
<,, 
IUsuarioService,, *
,,,* +
UsuarioService,,, :
>,,: ;
(,,; <
),,< =
;,,= >
builder.. 
... 
Services.. 
... 
AddTransient.. 
<.. 
IRolRepository.. ,
,.., -
RolRepository... ;
>..; <
(..< =
)..= >
;..> ?
builder// 
.// 
Services// 
.// 
	AddScoped// 
<// 
IRolService// &
,//& '

RolService//( 2
>//2 3
(//3 4
)//4 5
;//5 6
builder11 
.11 
Services11 
.11 
AddTransient11 
<11 
IProductoRepository11 1
,111 2
ProductoRepository113 E
>11E F
(11F G
)11G H
;11H I
builder22 
.22 
Services22 
.22 
	AddScoped22 
<22 
IProductoService22 +
,22+ ,
ProductoService22- <
>22< =
(22= >
)22> ?
;22? @
builder44 
.44 
Services44 
.44 
AddTransient44 
<44  
IProveedorRepository44 2
,442 3
ProveedorRepository444 G
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
IProveedorService55 ,
,55, -
ProveedorService55. >
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
ICategoriaRepository77 2
,772 3
CategoriaRepository774 G
>77G H
(77H I
)77I J
;77J K
builder88 
.88 
Services88 
.88 
	AddScoped88 
<88 
ICategoriaService88 ,
,88, -
CategoriaService88. >
>88> ?
(88? @
)88@ A
;88A B
builder:: 
.:: 
Services:: 
.:: 
AddTransient:: 
<:: 
IClienteRepository:: 0
,::0 1
ClienteRepository::2 C
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
IClienteService;; *
,;;* +
ClienteService;;, :
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
IAlmacenRepository== 0
,==0 1
AlmacenRepository==2 C
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
IAlmacenService>> *
,>>* +
AlmacenService>>, :
>>>: ;
(>>; <
)>>< =
;>>= >
builder@@ 
.@@ 
Services@@ 
.@@ 
AddTransient@@ 
<@@ 
IReclamoRepository@@ 0
,@@0 1
ReclamoRepository@@2 C
>@@C D
(@@D E
)@@E F
;@@F G
builderAA 
.AA 
ServicesAA 
.AA 
	AddScopedAA 
<AA 
IReclamoServiceAA *
,AA* +
ReclamoServiceAA, :
>AA: ;
(AA; <
)AA< =
;AA= >
builderCC 
.CC 
ServicesCC 
.CC 
AddTransientCC 
<CC "
IReclamoTipoRepositoryCC 4
,CC4 5!
ReclamoTipoRepositoryCC6 K
>CCK L
(CCL M
)CCM N
;CCN O
builderDD 
.DD 
ServicesDD 
.DD 
	AddScopedDD 
<DD 
IReclamoTipoServiceDD .
,DD. /
ReclamoTipoServiceDD0 B
>DDB C
(DDC D
)DDD E
;DDE F
builderFF 
.FF 
ServicesFF 
.FF 
AddTransientFF 
<FF $
ITipoDocumentoRepositoryFF 6
,FF6 7#
TipoDocumentoRepositoryFF8 O
>FFO P
(FFP Q
)FFQ R
;FFR S
builderGG 
.GG 
ServicesGG 
.GG 
	AddScopedGG 
<GG !
ITipoDocumentoServiceGG 0
,GG0 1 
TipoDocumentoServiceGG2 F
>GGF G
(GGG H
)GGH I
;GGI J
builderII 
.II 
ServicesII 
.II 
AddTransientII 
<II  
IPromocionRepositoryII 2
,II2 3
PromocionRepositoryII4 G
>IIG H
(IIH I
)III J
;IIJ K
builderJJ 
.JJ 
ServicesJJ 
.JJ 
	AddScopedJJ 
<JJ 
IPromocionServiceJJ ,
,JJ, -
PromocionServiceJJ. >
>JJ> ?
(JJ? @
)JJ@ A
;JJA B
builderLL 
.LL 
ServicesLL 
.LL 
AddTransientLL 
<LL 
IReporteRepositoryLL 0
,LL0 1
ReporteRepositoryLL2 C
>LLC D
(LLD E
)LLE F
;LLF G
builderMM 
.MM 
ServicesMM 
.MM 
	AddScopedMM 
<MM 
IReporteServiceMM *
,MM* +
ReporteServiceMM, :
>MM: ;
(MM; <
)MM< =
;MM= >
builderOO 
.OO 
ServicesOO 
.OO 
	AddScopedOO 
<OO 
ISecurityServiceOO +
,OO+ ,
SecurityServiceOO- <
>OO< =
(OO= >
)OO> ?
;OO? @
builderWW 
.WW 
ServicesWW 
.WW 
AddCorsWW 
(WW 
optionsWW  
=>WW! #
{XX 
optionsYY 
.YY 
	AddPolicyYY 
(YY 
$strYY "
,YY" #
builderYY$ +
=>YY, .
{YY/ 0
builderYY1 8
.ZZ 	
AllowAnyOriginZZ	 
(ZZ 
)ZZ 
.[[ 	
AllowAnyMethod[[	 
([[ 
)[[ 
.\\ 	
AllowAnyHeader\\	 
(\\ 
)\\ 
;\\ 
}]] 
)]] 
;]] 
}^^ 
)^^ 
;^^ 
var`` 
emailConfig`` 
=`` 
builder`` 
.`` 
Configuration`` '
.aa 

GetSectionaa 
(aa 
$straa $
)aa$ %
.bb 
Getbb 
<bb 	
EmailConfigurationbb	 
>bb 
(bb 
)bb 
;bb 
buildercc 
.cc 
Servicescc 
.cc 
AddSingletoncc 
(cc 
emailConfigcc )
)cc) *
;cc* +
builderdd 
.dd 
Servicesdd 
.dd 
	AddScopeddd 
<dd 
IEmailSenderdd '
,dd' (
EmailSenderdd) 4
>dd4 5
(dd5 6
)dd6 7
;dd7 8
buildernn 
.nn 
Servicesnn 
.nn 
	Configurenn 
<nn .
"DataProtectionTokenProviderOptionsnn =
>nn= >
(nn> ?
optnn? B
=>nnC E
optoo 
.oo 
TokenLifespanoo 
=oo 
TimeSpanoo  
.oo  !
	FromHoursoo! *
(oo* +
$numoo+ ,
)oo, -
)oo- .
;oo. /
builderrr 
.rr 
Servicesrr 
.rr 
AddAuthenticationrr "
(rr" #
optrr# &
=>rr' )
{ss 
opttt 
.tt %
DefaultAuthenticateSchemett !
=tt" #
JwtBearerDefaultstt$ 5
.tt5 6 
AuthenticationSchemett6 J
;ttJ K
optuu 
.uu "
DefaultChallengeSchemeuu 
=uu  
JwtBearerDefaultsuu! 2
.uu2 3 
AuthenticationSchemeuu3 G
;uuG H
}vv 
)vv 
.ww 
AddJwtBearerww 
(ww 
optionsww 
=>ww 
{xx 
optionsyy 
.yy %
TokenValidationParametersyy )
=yy* +
newyy, /%
TokenValidationParametersyy0 I
{zz 	
ValidateIssuer{{ 
={{ 
true{{ !
,{{! "
ValidateAudience|| 
=|| 
true|| #
,||# $
ValidateLifetime}} 
=}} 
true}} #
,}}# $$
ValidateIssuerSigningKey~~ $
=~~% &
true~~' +
,~~+ ,
ValidIssuer 
= 
builder !
.! "
Configuration" /
[/ 0
$str0 A
]A B
,B C
ValidAudience
ÄÄ 
=
ÄÄ 
builder
ÄÄ #
.
ÄÄ# $
Configuration
ÄÄ$ 1
[
ÄÄ1 2
$str
ÄÄ2 E
]
ÄÄE F
,
ÄÄF G
IssuerSigningKey
ÅÅ 
=
ÅÅ 
new
ÅÅ ""
SymmetricSecurityKey
ÅÅ# 7
(
ÅÅ7 8
Encoding
ÅÅ8 @
.
ÅÅ@ A
UTF8
ÅÅA E
.
ÅÅE F
GetBytes
ÅÅF N
(
ÅÅN O
builder
ÅÅO V
.
ÅÅV W
Configuration
ÅÅW d
[
ÅÅd e
$str
ÅÅe q
]
ÅÅq r
)
ÅÅr s
)
ÅÅs t
}
ÇÇ 	
;
ÇÇ	 

}
ÉÉ 
)
ÉÉ 
;
ÉÉ 
varÖÖ 
app
ÖÖ 
=
ÖÖ 	
builder
ÖÖ
 
.
ÖÖ 
Build
ÖÖ 
(
ÖÖ 
)
ÖÖ 
;
ÖÖ 
appáá 
.
áá 
UseCors
áá 
(
áá 
$str
áá 
)
áá 
;
áá 
ifää 
(
ää 
app
ää 
.
ää 
Environment
ää 
.
ää 
IsDevelopment
ää !
(
ää! "
)
ää" #
)
ää# $
{ãã 
app
åå 
.
åå 

UseSwagger
åå 
(
åå 
)
åå 
;
åå 
app
çç 
.
çç 
UseSwaggerUI
çç 
(
çç 
)
çç 
;
çç 
}éé 
usingêê 
(
êê 
var
êê 

scope
êê 
=
êê 
app
êê 
.
êê 
Services
êê 
.
êê  
CreateScope
êê  +
(
êê+ ,
)
êê, -
)
êê- .
{ëë 
var
íí 
	dbContext
íí 
=
íí 
scope
íí 
.
íí 
ServiceProvider
íí )
.
íí) * 
GetRequiredService
íí* <
<
íí< =
PremierContext
íí= K
>
ííK L
(
ííL M
)
ííM N
;
ííN O
}ìì 
appïï 
.
ïï !
UseHttpsRedirection
ïï 
(
ïï 
)
ïï 
;
ïï 
appóó 
.
óó 
UseAuthentication
óó 
(
óó 
)
óó 
;
óó 
appôô 
.
ôô 
UseAuthorization
ôô 
(
ôô 
)
ôô 
;
ôô 
appùù 
.
ùù 
MapControllers
ùù 
(
ùù 
)
ùù 
;
ùù 
appüü 
.
üü 
UseCors
üü 
(
üü 
x
üü 
=>
üü 
x
üü 
.
†† 	
AllowAnyOrigin
††	 
(
†† 
)
†† 
.
°° 	
AllowAnyMethod
°°	 
(
°° 
)
°° 
.
¢¢ 	
AllowAnyHeader
¢¢	 
(
¢¢ 
)
¢¢ 
)
¢¢ 
;
¢¢ 
app•• 
.
•• 
Run
•• 
(
•• 
)
•• 	
;
••	 
