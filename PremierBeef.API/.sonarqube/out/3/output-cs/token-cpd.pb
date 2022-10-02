‘
WD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\InputModel\AlmacenModel.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "

InputModel" ,
{ 
public 

class 
AlmacenModel 
{ 
public 
int 
id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
nombre 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
descripcion !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
	direccion 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
string		 
telefono		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
}

 
} ü
YD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\InputModel\CategoriaModel.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "

InputModel" ,
{ 
public 

class 
CategoriaModel 
{ 
public 
int 
id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
nombre 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
descripcion !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
}		 µ
WD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\InputModel\ClienteModel.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "

InputModel" ,
{ 
public 

class 
ClienteModel 
{ 
public 
int 
id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
nombre 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 

apePaterno  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 

apeMaterno  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
string		 
telefono		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
string

 
	direccion

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
bool 
estado 
{ 
get  
;  !
set" %
;% &
}' (
public 
DateTime 
fecRegistro #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
fecModificacion '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
int 
idTipoDocumento "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
numeroDocumento %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool 
enviarPromociones %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} Ø
]D:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\InputModel\FiltroReporteModel.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "

InputModel" ,
{ 
public 

class 
FiltroReporteModel #
{ 
public 
DateTime 
	fecInicio !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
fecFin 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
idPedido 
{ 
get !
;! "
set# &
;& '
}( )
} 
}		 «
YD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\InputModel\ForgotPassword.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "

InputModel" ,
{ 
public 

class 
ForgotPassword 
{ 
[ 	
Required	 
] 
[ 	
EmailAddress	 
] 
public		 
string		 
?		 
Email		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
[ 	
Required	 
] 
public 
string 
? 
	ClientURI  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} ó
PD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\InputModel\Login.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "

InputModel" ,
{ 
public 

class 
Login 
{ 
public 
string 
? 
UserName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
? 
Password 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} §

XD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\InputModel\ProductoModel.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "

InputModel" ,
{ 
public 

class 
ProductoModel 
{ 
[ 	
Required	 
] 
public 
int 
id 
{ 
get 
; 
set  
;  !
}" #
public		 
string		 
nombre		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 
string

 
descripcion

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
public 
decimal 
precio 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
idCategoria 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
idProveedor 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ≠
YD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\InputModel\PromocionModel.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "

InputModel" ,
{ 
public 

class 
PromocionModel 
{ 
public 
int 
id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
nombre 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
descripcion !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
	fecInicio !
{" #
get$ '
;' (
set) ,
;, -
}. /
public		 
DateTime		 
fecFin		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
decimal

 
porcentajeDescuento

 *
{

+ ,
get

- 0
;

0 1
set

2 5
;

5 6
}

7 8
public 
bool 
estado 
{ 
get  
;  !
set" %
;% &
}' (
public 
DateTime 
fecRegistro #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
fecModificacion '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
List 
< 
int 
> 
productosIds %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} ·
YD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\InputModel\ProveedorModel.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "

InputModel" ,
{ 
public 

class 
ProveedorModel 
{ 
public 
int 
id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
nombre 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
descripcion !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
	direccion 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
string		 
telefono		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
int

 
idTipoDocumento

 "
{

# $
get

% (
;

( )
set

* -
;

- .
}

/ 0
public 
string 
numeroDocumento %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
DateTime 
fecRegistro #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
fecModificacion '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} é
WD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\InputModel\ReclamoModel.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "

InputModel" ,
{ 
public 

class 
ReclamoModel 
{ 
public 
int 
id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
detalle 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
	idUsuario 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
idPedido 
{ 
get !
;! "
set# &
;& '
}( )
public		 
int		 
idTipoReclamo		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public

 
string

 
	respuesta

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
int 
idUsuarioRespuesta %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} ¬
XD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\InputModel\ResetPassword.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "

InputModel" ,
{ 
public 

class 
ResetPassword 
{ 
public 
string 
email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
confirmPassword %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
token 
{ 
get !
;! "
set# &
;& '
}( )
}		 
}

 †
WD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\InputModel\UsuarioModel.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "

InputModel" ,
{ 
public 

class 
UsuarioModel 
{ 
[ 	
Required	 
] 
public 
int 
id 
{ 
get 
; 
set  
;  !
}" #
public

 
string

 
usuario

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
string 
clave 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
public 
string 
correo 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
nombre 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 

apePaterno  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 

apeMaterno  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
telefono 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
idRol 
{ 
get 
; 
set  #
;# $
}% &
} 
} Í4
_D:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\Services\Almacen\AlmacenService.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "
Services" *
.* +
Almacen+ 2
{ 
public 

class 
AlmacenService 
:  !
IAlmacenService" 1
{		 
private

 
readonly

 
IAlmacenRepository

 +
_almacenRepository

, >
;

> ?
public 
AlmacenService 
( 
IAlmacenRepository 0
almacenRepository1 B
)B C
{ 	
_almacenRepository 
=  
almacenRepository! 2
;2 3
} 	
public 
async 
Task 
< 
int 
> 

AddAlmacen )
() *
AlmacenModel* 6
newU7 ;
); <
{ 	
Core 
. 
Entities 
. 
Almacen !
cliente" )
=* +
new, /
Core0 4
.4 5
Entities5 =
.= >
Almacen> E
{ 
nombre 
= 
newU 
. 
nombre $
,$ %
descripcion 
= 
newU "
." #
descripcion# .
,. /
	direccion 
= 
newU  
.  !
	direccion! *
,* +
telefono 
= 
newU 
.  
telefono  (
,( )
fecRegistro 
= 
DateTime &
.& '
Now' *
,* +
fecModificacion 
=  !
DateTime" *
.* +
Now+ .
} 
; 
var 
id 
= 
await 
_almacenRepository -
.- .

AddAlmacen. 8
(8 9
cliente9 @
)@ A
;A B
return 
id 
; 
} 	
public!! 
async!! 
Task!! 
<!! 
int!! 
>!! 
UpdateAlmacen!! ,
(!!, -
AlmacenModel!!- 9
newU!!: >
)!!> ?
{"" 	
Core## 
.## 
Entities## 
.## 
Almacen## !
usuario##" )
=##* +
new##, /
Core##0 4
.##4 5
Entities##5 =
.##= >
Almacen##> E
{$$ 
id%% 
=%% 
newU%% 
.%% 
id%% 
,%% 
nombre&& 
=&& 
newU&& 
.&& 
nombre&& $
,&&$ %
descripcion'' 
='' 
newU'' "
.''" #
descripcion''# .
,''. /
	direccion(( 
=(( 
newU((  
.((  !
	direccion((! *
,((* +
telefono)) 
=)) 
newU)) 
.))  
telefono))  (
,))( )
fecModificacion** 
=**  !
DateTime**" *
.*** +
Now**+ .
}++ 
;++ 
var-- 
result-- 
=-- 
await-- 
_almacenRepository-- 1
.--1 2
UpdateAlmacen--2 ?
(--? @
usuario--@ G
)--G H
;--H I
return// 
result// 
;// 
}00 	
public22 
async22 
Task22 
<22 
int22 
>22 
RemoveAlmacen22 ,
(22, -
int22- 0
id221 3
)223 4
{33 	
var44 
result44 
=44 
await44 
_almacenRepository44 1
.441 2
RemoveAlmacen442 ?
(44? @
id44@ B
)44B C
;44C D
return66 
result66 
;66 
}77 	
public99 
async99 
Task99 
<99 
AlmacenViewModel99 *
>99* +
GetAlmacenByAlmacen99, ?
(99? @
string99@ F
usu99G J
)99J K
{:: 	
AlmacenViewModel;; 
	productVM;; &
=;;' (
null;;) -
;;;- .
try<< 
{== 
var>> 
user>> 
=>> 
await>>  
_almacenRepository>>! 3
.>>3 4
GetAlmacenByAlmacen>>4 G
(>>G H
usu>>H K
)>>K L
;>>L M
	productVM@@ 
=@@ 
new@@ 
AlmacenViewModel@@  0
(@@0 1
user@@1 5
)@@5 6
;@@6 7
}AA 
catchBB 
(BB 
	ExceptionBB 
)BB 
{CC 
}DD 
returnFF 
	productVMFF 
;FF 
}GG 	
publicII 
asyncII 
TaskII 
<II 
AlmacenViewModelII *
>II* +
GetAlmacenByIdII, :
(II: ;
intII; >
idII? A
)IIA B
{JJ 	
AlmacenViewModelKK 
	productVMKK &
=KK' (
nullKK) -
;KK- .
tryLL 
{MM 
varNN 
userNN 
=NN 
awaitNN  
_almacenRepositoryNN! 3
.NN3 4
GetAlmacenByIdNN4 B
(NNB C
idNNC E
)NNE F
;NNF G
	productVMPP 
=PP 
newPP 
AlmacenViewModelPP  0
(PP0 1
userPP1 5
)PP5 6
;PP6 7
}QQ 
catchRR 
(RR 
	ExceptionRR 
)RR 
{SS 
}TT 
returnVV 
	productVMVV 
;VV 
}WW 	
publicYY 
asyncYY 
TaskYY 
<YY 
ListYY 
<YY 
AlmacenViewModelYY /
>YY/ 0
>YY0 1
GetAlmacensYY2 =
(YY= >
)YY> ?
{ZZ 	
var[[ 
products[[ 
=[[ 
await[[  
_almacenRepository[[! 3
.[[3 4
GetAlmacens[[4 ?
([[? @
)[[@ A
;[[A B
var]] 
	productsM]] 
=]] 
products]] $
.^^ 
Select^^ 
(^^ 
u^^ 
=>^^ 
new^^  
AlmacenViewModel^^! 1
(^^1 2
u^^2 3
)^^3 4
)^^4 5
.__ 
ToList__ 
(__ 
)__ 
;__ 
returnaa 
	productsMaa 
;aa 
}bb 	
}cc 
}dd œ
`D:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\Services\Almacen\IAlmacenService.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "
Services" *
.* +
Almacen+ 2
{ 
public 

	interface 
IAlmacenService $
{ 
Task		 
<		 
int		 
>		 

AddAlmacen		 
(		 
AlmacenModel		 )
newU		* .
)		. /
;		/ 0
Task

 
<

 
int

 
>

 
UpdateAlmacen

 
(

  
AlmacenModel

  ,
newU

- 1
)

1 2
;

2 3
Task 
< 
int 
> 
RemoveAlmacen 
(  
int  #
id$ &
)& '
;' (
Task 
< 
AlmacenViewModel 
> 
GetAlmacenByAlmacen 2
(2 3
string3 9
usu: =
)= >
;> ?
Task 
< 
AlmacenViewModel 
> 
GetAlmacenById -
(- .
int. 1
id2 4
)4 5
;5 6
Task 
< 
List 
< 
AlmacenViewModel "
>" #
># $
GetAlmacens% 0
(0 1
)1 2
;2 3
} 
} ≠,
cD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\Services\Categoria\CategoriaService.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "
Services" *
.* +
	Categoria+ 4
{ 
public 

class 
CategoriaService !
:" #
ICategoriaService$ 5
{		 
private

 
readonly

  
ICategoriaRepository

 - 
_categoriaRepository

. B
;

B C
public 
CategoriaService 
(   
ICategoriaRepository  4
categoriaRepository5 H
)H I
{ 	 
_categoriaRepository  
=! "
categoriaRepository# 6
;6 7
} 	
public 
async 
Task 
< 
int 
> 
AddCategoria +
(+ ,
CategoriaModel, :
newU; ?
)? @
{ 	
Core 
. 
Entities 
. 
	Categoria #
cliente$ +
=, -
new. 1
Core2 6
.6 7
Entities7 ?
.? @
	Categoria@ I
{ 
nombre 
= 
newU 
. 
nombre $
,$ %
descripcion 
= 
newU "
." #
descripcion# .
,. /
} 
; 
var 
id 
= 
await  
_categoriaRepository /
./ 0
AddCategoria0 <
(< =
cliente= D
)D E
;E F
return 
id 
; 
} 	
public   
async   
Task   
<   
int   
>   
UpdateCategoria   .
(  . /
CategoriaModel  / =
newU  > B
)  B C
{!! 	
Core"" 
."" 
Entities"" 
."" 
	Categoria"" #
usuario""$ +
="", -
new"". 1
Core""2 6
.""6 7
Entities""7 ?
.""? @
	Categoria""@ I
{## 
id$$ 
=$$ 
newU$$ 
.$$ 
id$$ 
,$$ 
nombre%% 
=%% 
newU%% 
.%% 
nombre%% $
,%%$ %
descripcion&& 
=&& 
newU&& "
.&&" #
descripcion&&# .
,&&. /
})) 
;)) 
var++ 
result++ 
=++ 
await++  
_categoriaRepository++ 3
.++3 4
UpdateCategoria++4 C
(++C D
usuario++D K
)++K L
;++L M
return-- 
result-- 
;-- 
}.. 	
public00 
async00 
Task00 
<00 
int00 
>00 
RemoveCategoria00 .
(00. /
int00/ 2
id003 5
)005 6
{11 	
var22 
result22 
=22 
await22  
_categoriaRepository22 3
.223 4
RemoveCategoria224 C
(22C D
id22D F
)22F G
;22G H
return44 
result44 
;44 
}55 	
public77 
async77 
Task77 
<77 
CategoriaViewModel77 ,
>77, -#
GetCategoriaByCategoria77. E
(77E F
string77F L
cat77M P
)77P Q
{88 	
var99 
user99 
=99 
await99  
_categoriaRepository99 1
.991 2#
GetCategoriaByCategoria992 I
(99I J
cat99J M
)99M N
;99N O
CategoriaViewModel;; 
	productVM;; (
=;;) *
new;;+ .
CategoriaViewModel;;/ A
(;;A B
user;;B F
);;F G
;;;G H
return== 
	productVM== 
;== 
}>> 	
public@@ 
async@@ 
Task@@ 
<@@ 
CategoriaViewModel@@ ,
>@@, -
GetCategoriaById@@. >
(@@> ?
int@@? B
id@@C E
)@@E F
{AA 	
varBB 
userBB 
=BB 
awaitBB  
_categoriaRepositoryBB 1
.BB1 2
GetCategoriaByIdBB2 B
(BBB C
idBBC E
)BBE F
;BBF G
CategoriaViewModelDD 
	productVMDD (
=DD) *
newDD+ .
CategoriaViewModelDD/ A
(DDA B
userDDB F
)DDF G
;DDG H
returnFF 
	productVMFF 
;FF 
}GG 	
publicII 
asyncII 
TaskII 
<II 
ListII 
<II 
CategoriaViewModelII 1
>II1 2
>II2 3
GetCategoriasII4 A
(IIA B
)IIB C
{JJ 	
varKK 
productsKK 
=KK 
awaitKK   
_categoriaRepositoryKK! 5
.KK5 6
GetCategoriasKK6 C
(KKC D
)KKD E
;KKE F
varMM 
	productsMMM 
=MM 
productsMM $
.NN 
SelectNN 
(NN 
uNN 
=>NN 
newNN  
CategoriaViewModelNN! 3
(NN3 4
uNN4 5
)NN5 6
)NN6 7
.OO 
ToListOO 
(OO 
)OO 
;OO 
returnQQ 
	productsMQQ 
;QQ 
}RR 	
}SS 
}TT Ô
dD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\Services\Categoria\ICategoriaService.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "
Services" *
.* +
	Categoria+ 4
{ 
public 

	interface 
ICategoriaService &
{ 
Task		 
<		 
int		 
>		 
AddCategoria		 
(		 
CategoriaModel		 -
newU		. 2
)		2 3
;		3 4
Task

 
<

 
int

 
>

 
UpdateCategoria

 !
(

! "
CategoriaModel

" 0
newU

1 5
)

5 6
;

6 7
Task 
< 
int 
> 
RemoveCategoria !
(! "
int" %
id& (
)( )
;) *
Task 
< 
CategoriaViewModel 
>  #
GetCategoriaByCategoria! 8
(8 9
string9 ?
cat@ C
)C D
;D E
Task 
< 
CategoriaViewModel 
>  
GetCategoriaById! 1
(1 2
int2 5
id6 8
)8 9
;9 :
Task 
< 
List 
< 
CategoriaViewModel $
>$ %
>% &
GetCategorias' 4
(4 5
)5 6
;6 7
} 
} ﬂ@
_D:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\Services\Cliente\ClienteService.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "
Services" *
.* +
Cliente+ 2
{ 
public 

class 
ClienteService 
:  !
IClienteService" 1
{		 
private

 
readonly

 
IClienteRepository

 +
_clienteRepository

, >
;

> ?
public 
ClienteService 
( 
IClienteRepository 0
clienteRepository1 B
)B C
{ 	
_clienteRepository 
=  
clienteRepository! 2
;2 3
} 	
public 
async 
Task 
< 
int 
> 

AddCliente )
() *
ClienteModel* 6
newU7 ;
); <
{ 	
Core 
. 
Entities 
. 
Cliente !
cliente" )
=* +
new, /
Core0 4
.4 5
Entities5 =
.= >
Cliente> E
{ 
nombre 
= 
newU 
. 
nombre $
,$ %

apePaterno 
= 
newU !
.! "

apePaterno" ,
,, -

apeMaterno 
= 
newU !
.! "

apeMaterno" ,
,, -
telefono 
= 
newU 
.  
telefono  (
,( )
	direccion 
= 
newU  
.  !
	direccion! *
,* +
idTipoDocumento 
=  !
newU" &
.& '
idTipoDocumento' 6
,6 7
numeroDocumento 
=  !
newU" &
.& '
numeroDocumento' 6
,6 7
enviarPromociones !
=" #
newU$ (
.( )
enviarPromociones) :
,: ;
fecRegistro 
= 
DateTime &
.& '
Now' *
,* +
fecModificacion 
=  !
DateTime" *
.* +
Now+ .
} 
; 
var   
id   
=   
await   
_clienteRepository   -
.  - .

AddCliente  . 8
(  8 9
cliente  9 @
)  @ A
;  A B
return"" 
id"" 
;"" 
}## 	
public%% 
async%% 
Task%% 
<%% 
int%% 
>%% 
UpdateCliente%% ,
(%%, -
ClienteModel%%- 9
newU%%: >
)%%> ?
{&& 	
Core'' 
.'' 
Entities'' 
.'' 
Cliente'' !
usuario''" )
=''* +
new'', /
Core''0 4
.''4 5
Entities''5 =
.''= >
Cliente''> E
{(( 
id)) 
=)) 
newU)) 
.)) 
id)) 
,)) 
nombre** 
=** 
newU** 
.** 
nombre** $
,**$ %

apePaterno++ 
=++ 
newU++ !
.++! "

apePaterno++" ,
,++, -

apeMaterno,, 
=,, 
newU,, !
.,,! "

apeMaterno,," ,
,,,, -
telefono-- 
=-- 
newU-- 
.--  
telefono--  (
,--( )
	direccion.. 
=.. 
newU..  
...  !
	direccion..! *
,..* +
idTipoDocumento// 
=//  !
newU//" &
.//& '
idTipoDocumento//' 6
,//6 7
numeroDocumento00 
=00  !
newU00" &
.00& '
numeroDocumento00' 6
,006 7
enviarPromociones11 !
=11" #
newU11$ (
.11( )
enviarPromociones11) :
,11: ;
fecModificacion22 
=22  !
DateTime22" *
.22* +
Now22+ .
}33 
;33 
var55 
result55 
=55 
await55 
_clienteRepository55 1
.551 2
UpdateCliente552 ?
(55? @
usuario55@ G
)55G H
;55H I
return77 
result77 
;77 
}88 	
public:: 
async:: 
Task:: 
<:: 
int:: 
>:: 
RemoveCliente:: ,
(::, -
int::- 0
id::1 3
)::3 4
{;; 	
var<< 
result<< 
=<< 
await<< 
_clienteRepository<< 1
.<<1 2
RemoveCliente<<2 ?
(<<? @
id<<@ B
)<<B C
;<<C D
return>> 
result>> 
;>> 
}?? 	
publicAA 
asyncAA 
TaskAA 
<AA 
ClienteViewModelAA *
>AA* +
GetClienteByClienteAA, ?
(AA? @
ClienteModelAA@ L
usuAAM P
)AAP Q
{BB 	
CoreCC 
.CC 
EntitiesCC 
.CC 
ClienteCC !
usuarioCC" )
=CC* +
newCC, /
CoreCC0 4
.CC4 5
EntitiesCC5 =
.CC= >
ClienteCC> E
{DD 
idEE 
=EE 
usuEE 
.EE 
idEE 
,EE 
nombreFF 
=FF 
usuFF 
.FF 
nombreFF #
??FF$ &
$strFF' )
,FF) *

apePaternoGG 
=GG 
usuGG  
.GG  !

apePaternoGG! +
??GG, .
$strGG/ 1
,GG1 2

apeMaternoHH 
=HH 
usuHH  
.HH  !

apeMaternoHH! +
??HH, .
$strHH/ 1
}II 
;II 
ClienteViewModelKK 
	productVMKK &
=KK' (
nullKK) -
;KK- .
tryLL 
{MM 
varNN 
userNN 
=NN 
awaitNN  
_clienteRepositoryNN! 3
.NN3 4
GetClienteByClienteNN4 G
(NNG H
usuarioNNH O
)NNO P
;NNP Q
	productVMPP 
=PP 
newPP 
ClienteViewModelPP  0
(PP0 1
userPP1 5
)PP5 6
;PP6 7
}QQ 
catchRR 
(RR 
	ExceptionRR 
)RR 
{SS 
}TT 
returnVV 
	productVMVV 
;VV 
}WW 	
publicYY 
asyncYY 
TaskYY 
<YY 
ClienteViewModelYY *
>YY* +
GetClienteByIdYY, :
(YY: ;
intYY; >
idYY? A
)YYA B
{ZZ 	
var[[ 
user[[ 
=[[ 
await[[ 
_clienteRepository[[ /
.[[/ 0
GetClienteById[[0 >
([[> ?
id[[? A
)[[A B
;[[B C
ClienteViewModel]] 
	productVM]] &
=]]' (
new]]) ,
ClienteViewModel]]- =
(]]= >
user]]> B
)]]B C
;]]C D
return__ 
	productVM__ 
;__ 
}`` 	
publicbb 
asyncbb 
Taskbb 
<bb 
Listbb 
<bb 
ClienteViewModelbb /
>bb/ 0
>bb0 1
GetClientesbb2 =
(bb= >
)bb> ?
{cc 	
vardd 
productsdd 
=dd 
awaitdd  
_clienteRepositorydd! 3
.dd3 4
GetClientesdd4 ?
(dd? @
)dd@ A
;ddA B
varff 
	productsMff 
=ff 
productsff $
.gg 
Selectgg 
(gg 
ugg 
=>gg 
newgg  
ClienteViewModelgg! 1
(gg1 2
ugg2 3
)gg3 4
)gg4 5
.hh 
ToListhh 
(hh 
)hh 
;hh 
returnjj 
	productsMjj 
;jj 
}kk 	
}ll 
}mm ’
`D:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\Services\Cliente\IClienteService.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "
Services" *
.* +
Cliente+ 2
{ 
public 

	interface 
IClienteService $
{ 
Task		 
<		 
int		 
>		 

AddCliente		 
(		 
ClienteModel		 )
newU		* .
)		. /
;		/ 0
Task

 
<

 
int

 
>

 
UpdateCliente

 
(

  
ClienteModel

  ,
newU

- 1
)

1 2
;

2 3
Task 
< 
int 
> 
RemoveCliente 
(  
int  #
id$ &
)& '
;' (
Task 
< 
ClienteViewModel 
> 
GetClienteByCliente 2
(2 3
ClienteModel3 ?
cli@ C
)C D
;D E
Task 
< 
ClienteViewModel 
> 
GetClienteById -
(- .
int. 1
id2 4
)4 5
;5 6
Task 
< 
List 
< 
ClienteViewModel "
>" #
># $
GetClientes% 0
(0 1
)1 2
;2 3
} 
} ﬂ
bD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\Services\Producto\IProductoService.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "
Services" *
.* +
Producto+ 3
{ 
public 

	interface 
IProductoService %
{ 
Task		 
<		 
int		 
>		 
AddProducto		 
(		 
ProductoModel		 +
newU		, 0
)		0 1
;		1 2
Task

 
<

 
int

 
>

 
UpdateProducto

  
(

  !
ProductoModel

! .
newU

/ 3
)

3 4
;

4 5
Task 
< 
int 
> 
RemoveProducto  
(  !
int! $
id% '
)' (
;( )
Task 
< 
ProductoViewModel 
> !
GetProductoByProducto  5
(5 6
string6 <
usu= @
)@ A
;A B
Task 
< 
ProductoViewModel 
> 
GetProductoById  /
(/ 0
int0 3
id4 6
)6 7
;7 8
Task 
< 
List 
< 
ProductoViewModel #
># $
>$ %
GetProductos& 2
(2 3
)3 4
;4 5
} 
} ˙6
aD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\Services\Producto\ProductoService.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "
Services" *
.* +
Producto+ 3
{ 
public 

class 
ProductoService  
:! "
IProductoService# 3
{		 
private

 
readonly

 
IProductoRepository

 ,
_productoRepository

- @
;

@ A
public 
ProductoService 
( 
IProductoRepository 2
productoRepository3 E
)E F
{ 	
_productoRepository 
=  !
productoRepository" 4
;4 5
} 	
public 
async 
Task 
< 
int 
> 
AddProducto *
(* +
ProductoModel+ 8
newU9 =
)= >
{ 	
Core 
. 
Entities 
. 
Producto "
usuario# *
=+ ,
new- 0
Core1 5
.5 6
Entities6 >
.> ?
Producto? G
{ 
nombre 
= 
newU 
. 
nombre $
,$ %
descripcion 
= 
newU "
." #
descripcion# .
,. /
precio 
= 
newU 
. 
precio $
,$ %
idCategoria 
= 
newU "
." #
idCategoria# .
,. /
idProveedor 
= 
newU "
." #
idProveedor# .
,. /
fecRegistro 
= 
DateTime &
.& '
Now' *
,* +
fecModificacion 
=  !
DateTime" *
.* +
Now+ .
} 
; 
var 
id 
= 
await 
_productoRepository .
.. /
AddProducto/ :
(: ;
usuario; B
)B C
;C D
return 
id 
; 
}   	
public"" 
async"" 
Task"" 
<"" 
int"" 
>"" 
UpdateProducto"" -
(""- .
ProductoModel"". ;
newU""< @
)""@ A
{## 	
Core$$ 
.$$ 
Entities$$ 
.$$ 
Producto$$ "
usuario$$# *
=$$+ ,
new$$- 0
Core$$1 5
.$$5 6
Entities$$6 >
.$$> ?
Producto$$? G
{%% 
id&& 
=&& 
newU&& 
.&& 
id&& 
,&& 
nombre'' 
='' 
newU'' 
.'' 
nombre'' $
,''$ %
descripcion(( 
=(( 
newU(( "
.((" #
descripcion((# .
,((. /
precio)) 
=)) 
newU)) 
.)) 
precio)) $
,))$ %
idCategoria** 
=** 
newU** "
.**" #
idCategoria**# .
,**. /
idProveedor++ 
=++ 
newU++ "
.++" #
idProveedor++# .
,++. /
fecModificacion,, 
=,,  !
DateTime,," *
.,,* +
Now,,+ .
}-- 
;-- 
var// 
result// 
=// 
await// 
_productoRepository// 2
.//2 3
UpdateProducto//3 A
(//A B
usuario//B I
)//I J
;//J K
return11 
result11 
;11 
}22 	
public44 
async44 
Task44 
<44 
int44 
>44 
RemoveProducto44 -
(44- .
int44. 1
id442 4
)444 5
{55 	
var66 
result66 
=66 
await66 
_productoRepository66 2
.662 3
RemoveProducto663 A
(66A B
id66B D
)66D E
;66E F
return88 
result88 
;88 
}99 	
public;; 
async;; 
Task;; 
<;; 
ProductoViewModel;; +
>;;+ ,!
GetProductoByProducto;;- B
(;;B C
string;;C I
usu;;J M
);;M N
{<< 	
ProductoViewModel== 
	productVM== '
===( )
null==* .
;==. /
try>> 
{?? 
var@@ 
user@@ 
=@@ 
await@@  
_productoRepository@@! 4
.@@4 5!
GetProductoByProducto@@5 J
(@@J K
usu@@K N
)@@N O
;@@O P
	productVMBB 
=BB 
newBB 
ProductoViewModelBB  1
(BB1 2
userBB2 6
)BB6 7
;BB7 8
}CC 
catchDD 
(DD 
	ExceptionDD 
)DD 
{EE 
}FF 
returnHH 
	productVMHH 
;HH 
}II 	
publicKK 
asyncKK 
TaskKK 
<KK 
ProductoViewModelKK +
>KK+ ,
GetProductoByIdKK- <
(KK< =
intKK= @
idKKA C
)KKC D
{LL 	
ProductoViewModelMM 
	productVMMM '
=MM( )
nullMM* .
;MM. /
tryNN 
{OO 
varPP 
userPP 
=PP 
awaitPP  
_productoRepositoryPP! 4
.PP4 5
GetProductoByIdPP5 D
(PPD E
idPPE G
)PPG H
;PPH I
	productVMRR 
=RR 
newRR 
ProductoViewModelRR  1
(RR1 2
userRR2 6
)RR6 7
;RR7 8
}SS 
catchTT 
(TT 
	ExceptionTT 
)TT 
{UU 
}VV 
returnXX 
	productVMXX 
;XX 
}YY 	
public[[ 
async[[ 
Task[[ 
<[[ 
List[[ 
<[[ 
ProductoViewModel[[ 0
>[[0 1
>[[1 2
GetProductos[[3 ?
([[? @
)[[@ A
{\\ 	
var]] 
products]] 
=]] 
await]]  
_productoRepository]]! 4
.]]4 5
GetProductos]]5 A
(]]A B
)]]B C
;]]C D
var__ 
	productsM__ 
=__ 
products__ $
.`` 
Select`` 
(`` 
u`` 
=>`` 
new``  
ProductoViewModel``! 2
(``2 3
u``3 4
)``4 5
)``5 6
.aa 
ToListaa 
(aa 
)aa 
;aa 
returncc 
	productsMcc 
;cc 
}dd 	
}ee 
}ff Ò
dD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\Services\Promocion\IPromocionService.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "
Services" *
.* +
	Promocion+ 4
{ 
public 

	interface 
IPromocionService &
{ 
Task		 
<		 
int		 
>		 
AddPromocion		 
(		 
PromocionModel		 -
newU		. 2
)		2 3
;		3 4
Task

 
<

 
bool

 
>

 
UpdatePromocion

 "
(

" #
PromocionModel

# 1
newU

2 6
)

6 7
;

7 8
Task 
< 
int 
> 
RemovePromocion !
(! "
int" %
id& (
)( )
;) *
Task 
< 
PromocionViewModel 
>  #
GetPromocionByPromocion! 8
(8 9
string9 ?
usu@ C
)C D
;D E
Task 
< 
PromocionViewModel 
>  
GetPromocionById! 1
(1 2
int2 5
id6 8
)8 9
;9 :
Task 
< 
List 
< 
PromocionViewModel $
>$ %
>% &
GetPromociones' 5
(5 6
)6 7
;7 8
} 
} ∂G
cD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\Services\Promocion\PromocionService.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "
Services" *
.* +
	Promocion+ 4
{ 
public		 

class		 
PromocionService		 !
:		" #
IPromocionService		$ 5
{

 
private 
readonly  
IPromocionRepository - 
_promocionRepository. B
;B C
public 
PromocionService 
(   
IPromocionRepository  4
promocionRepository5 H
)H I
{ 	 
_promocionRepository  
=! "
promocionRepository# 6
;6 7
} 	
public 
async 
Task 
< 
int 
> 
AddPromocion +
(+ ,
PromocionModel, :
newP; ?
)? @
{ 	
Core 
. 
Entities 
. 
	Promocion #
cliente$ +
=, -
new. 1
Core2 6
.6 7
Entities7 ?
.? @
	Promocion@ I
{ 
nombre 
= 
newP 
. 
nombre $
,$ %
descripcion 
= 
newP "
." #
descripcion# .
,. /
	fecInicio 
= 
newP  
.  !
	fecInicio! *
,* +
fecFin 
= 
newP 
. 
fecFin $
,$ %
porcentajeDescuento #
=$ %
newP& *
.* +
porcentajeDescuento+ >
,> ?
estado 
= 
newP 
. 
estado $
,$ %
fecRegistro 
= 
DateTime &
.& '
Now' *
,* +
fecModificacion 
=  !
DateTime" *
.* +
Now+ .
} 
; 
var 
id 
= 
await  
_promocionRepository /
./ 0
AddPromocion0 <
(< =
cliente= D
)D E
;E F
if!! 
(!! 
id!! 
!=!! 
$num!! 
)!! 
{"" 
foreach## 
(## 
int## 
pId##  
in##! #
newP##$ (
.##( )
productosIds##) 5
)##5 6
{$$ 
var%% 
	resAddDet%% !
=%%" #
await%%$ ) 
_promocionRepository%%* >
.%%> ?
AddPromocionDetalle%%? R
(%%R S
new%%S V
PromocionDetalle%%W g
{%%h i
idPromocion%%j u
=%%v w
id%%x z
,%%z {

idProducto	%%| Ü
=
%%á à
pId
%%â å
}
%%ç é
)
%%é è
;
%%è ê
}&& 
}'' 
return)) 
id)) 
;)) 
}** 	
public,, 
async,, 
Task,, 
<,, 
bool,, 
>,, 
UpdatePromocion,,  /
(,,/ 0
PromocionModel,,0 >
newP,,? C
),,C D
{-- 	
Core.. 
... 
Entities.. 
... 
	Promocion.. #
usuario..$ +
=.., -
new... 1
Core..2 6
...6 7
Entities..7 ?
...? @
	Promocion..@ I
{// 
id00 
=00 
newP00 
.00 
id00 
,00 
nombre11 
=11 
newP11 
.11 
nombre11 $
,11$ %
descripcion22 
=22 
newP22 "
.22" #
descripcion22# .
,22. /
	fecInicio33 
=33 
newP33  
.33  !
	fecInicio33! *
,33* +
fecFin44 
=44 
newP44 
.44 
fecFin44 $
,44$ %
porcentajeDescuento55 #
=55$ %
newP55& *
.55* +
porcentajeDescuento55+ >
,55> ?
estado66 
=66 
newP66 
.66 
estado66 $
,66$ %
fecModificacion77 
=77  !
DateTime77" *
.77* +
Now77+ .
}88 
;88 
var:: 
result:: 
=:: 
await::  
_promocionRepository:: 3
.::3 4
UpdatePromocion::4 C
(::C D
usuario::D K
)::K L
;::L M
if<< 
(<< 
result<< 
)<< 
{== 
var>> 
	resultUpd>> 
=>> 
await>>  % 
_promocionRepository>>& :
.>>: ;&
RemovePromocionDetalleTodo>>; U
(>>U V
newP>>V Z
.>>Z [
id>>[ ]
)>>] ^
;>>^ _
if@@ 
(@@ 
	resultUpd@@ 
)@@ 
{AA 
foreachBB 
(BB 
intBB  
pIdBB! $
inBB% '
newPBB( ,
.BB, -
productosIdsBB- 9
)BB9 :
{CC 
varDD 
	resAddDetDD %
=DD& '
awaitDD( - 
_promocionRepositoryDD. B
.DDB C
AddPromocionDetalleDDC V
(DDV W
newDDW Z
PromocionDetalleDD[ k
{DDl m
idPromocionDDn y
=DDz {
newP	DD| Ä
.
DDÄ Å
id
DDÅ É
,
DDÉ Ñ

idProducto
DDÖ è
=
DDê ë
pId
DDí ï
}
DDñ ó
)
DDó ò
;
DDò ô
}EE 
}FF 
}GG 
returnII 
resultII 
;II 
}JJ 	
publicLL 
asyncLL 
TaskLL 
<LL 
intLL 
>LL 
RemovePromocionLL .
(LL. /
intLL/ 2
idLL3 5
)LL5 6
{MM 	
varNN 
resultNN 
=NN 
awaitNN  
_promocionRepositoryNN 3
.NN3 4
RemovePromocionNN4 C
(NNC D
idNND F
)NNF G
;NNG H
returnPP 
resultPP 
;PP 
}QQ 	
publicSS 
asyncSS 
TaskSS 
<SS 
PromocionViewModelSS ,
>SS, -#
GetPromocionByPromocionSS. E
(SSE F
stringSSF L
usuSSM P
)SSP Q
{TT 	
varUU 
userUU 
=UU 
awaitUU  
_promocionRepositoryUU 1
.UU1 2#
GetPromocionByPromocionUU2 I
(UUI J
usuUUJ M
)UUM N
;UUN O
PromocionViewModelWW 
	productVMWW (
=WW) *
newWW+ .
PromocionViewModelWW/ A
(WWA B
userWWB F
)WWF G
;WWG H
returnYY 
	productVMYY 
;YY 
}ZZ 	
public\\ 
async\\ 
Task\\ 
<\\ 
PromocionViewModel\\ ,
>\\, -
GetPromocionById\\. >
(\\> ?
int\\? B
id\\C E
)\\E F
{]] 	
var^^ 
user^^ 
=^^ 
await^^  
_promocionRepository^^ 1
.^^1 2
GetPromocionById^^2 B
(^^B C
id^^C E
)^^E F
;^^F G
if`` 
(`` 
user`` 
!=`` 
null`` 
)`` 
{aa 
varbb 
idsbb 
=bb 
awaitbb  
_promocionRepositorybb  4
.bb4 5$
GetPromocionProductosIdsbb5 M
(bbM N
idbbN P
)bbP Q
;bbQ R
usercc 
.cc 
productosIdscc !
=cc" #
idscc$ '
;cc' (
}dd 
PromocionViewModelff 
	productVMff (
=ff) *
newff+ .
PromocionViewModelff/ A
(ffA B
userffB F
)ffF G
;ffG H
returnhh 
	productVMhh 
;hh 
}ii 	
publickk 
asynckk 
Taskkk 
<kk 
Listkk 
<kk 
PromocionViewModelkk 1
>kk1 2
>kk2 3
GetPromocioneskk4 B
(kkB C
)kkC D
{ll 	
varmm 
rolesmm 
=mm 
awaitmm  
_promocionRepositorymm 2
.mm2 3
GetPromocionesmm3 A
(mmA B
)mmB C
;mmC D
varoo 
rolesMoo 
=oo 
rolesoo 
.pp 
Selectpp 
(pp 
upp 
=>pp 
newpp  
PromocionViewModelpp! 3
(pp3 4
upp4 5
)pp5 6
)pp6 7
.qq 
ToListqq 
(qq 
)qq 
;qq 
returnss 
rolesMss 
;ss 
}tt 	
}uu 
}vv 
dD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\Services\Proveedor\IProveedorService.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "
Services" *
.* +
	Proveedor+ 4
{ 
public 

	interface 
IProveedorService &
{ 
Task		 
<		 
int		 
>		 
AddProveedor		 
(		 
ProveedorModel		 -
newU		. 2
)		2 3
;		3 4
Task

 
<

 
int

 
>

 
UpdateProveedor

 !
(

! "
ProveedorModel

" 0
newU

1 5
)

5 6
;

6 7
Task 
< 
int 
> 
RemoveProveedor !
(! "
int" %
id& (
)( )
;) *
Task 
< 
ProveedorViewModel 
>  #
GetProveedorByProveedor! 8
(8 9
string9 ?
usu@ C
)C D
;D E
Task 
< 
ProveedorViewModel 
>  
GetProveedorById! 1
(1 2
int2 5
id6 8
)8 9
;9 :
Task 
< 
List 
< 
ProveedorViewModel $
>$ %
>% &
GetProveedores' 5
(5 6
)6 7
;7 8
} 
} Ë5
cD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\Services\Proveedor\ProveedorService.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "
Services" *
.* +
	Proveedor+ 4
{ 
public 

class 
ProveedorService !
:" #
IProveedorService$ 5
{		 
private

 
readonly

  
IProveedorRepository

 - 
_proveedorRepository

. B
;

B C
public 
ProveedorService 
(   
IProveedorRepository  4
proveedorRepository5 H
)H I
{ 	 
_proveedorRepository  
=! "
proveedorRepository# 6
;6 7
} 	
public 
async 
Task 
< 
int 
> 
AddProveedor +
(+ ,
ProveedorModel, :
newU; ?
)? @
{ 	
Core 
. 
Entities 
. 
	Proveedor #
cliente$ +
=, -
new. 1
Core2 6
.6 7
Entities7 ?
.? @
	Proveedor@ I
{ 
nombre 
= 
newU 
. 
nombre $
,$ %
descripcion 
= 
newU "
." #
descripcion# .
,. /
	direccion 
= 
newU  
.  !
	direccion! *
,* +
telefono 
= 
newU 
.  
telefono  (
,( )
idTipoDocumento 
=  !
newU" &
.& '
idTipoDocumento' 6
,6 7
numeroDocumento 
=  !
newU" &
.& '
numeroDocumento' 6
,6 7
fecRegistro 
= 
DateTime &
.& '
Now' *
,* +
fecModificacion 
=  !
DateTime" *
.* +
Now+ .
} 
; 
var 
id 
= 
await  
_proveedorRepository /
./ 0
AddProveedor0 <
(< =
cliente= D
)D E
;E F
return   
id   
;   
}!! 	
public## 
async## 
Task## 
<## 
int## 
>## 
UpdateProveedor## .
(##. /
ProveedorModel##/ =
newU##> B
)##B C
{$$ 	
Core%% 
.%% 
Entities%% 
.%% 
	Proveedor%% #
usuario%%$ +
=%%, -
new%%. 1
Core%%2 6
.%%6 7
Entities%%7 ?
.%%? @
	Proveedor%%@ I
{&& 
id'' 
='' 
newU'' 
.'' 
id'' 
,'' 
nombre(( 
=(( 
newU(( 
.(( 
nombre(( $
,(($ %
descripcion)) 
=)) 
newU)) "
.))" #
descripcion))# .
,)). /
	direccion** 
=** 
newU**  
.**  !
	direccion**! *
,*** +
telefono++ 
=++ 
newU++ 
.++  
telefono++  (
,++( )
idTipoDocumento,, 
=,,  !
newU,," &
.,,& '
idTipoDocumento,,' 6
,,,6 7
numeroDocumento-- 
=--  !
newU--" &
.--& '
numeroDocumento--' 6
,--6 7
fecModificacion.. 
=..  !
DateTime.." *
...* +
Now..+ .
}// 
;// 
var11 
result11 
=11 
await11  
_proveedorRepository11 3
.113 4
UpdateProveedor114 C
(11C D
usuario11D K
)11K L
;11L M
return33 
result33 
;33 
}44 	
public66 
async66 
Task66 
<66 
int66 
>66 
RemoveProveedor66 .
(66. /
int66/ 2
id663 5
)665 6
{77 	
var88 
result88 
=88 
await88  
_proveedorRepository88 3
.883 4
RemoveProveedor884 C
(88C D
id88D F
)88F G
;88G H
return:: 
result:: 
;:: 
};; 	
public== 
async== 
Task== 
<== 
ProveedorViewModel== ,
>==, -#
GetProveedorByProveedor==. E
(==E F
string==F L
usu==M P
)==P Q
{>> 	
var?? 
user?? 
=?? 
await??  
_proveedorRepository?? 1
.??1 2#
GetProveedorByProveedor??2 I
(??I J
usu??J M
)??M N
;??N O
ProveedorViewModelAA 
	productVMAA (
=AA) *
newAA+ .
ProveedorViewModelAA/ A
(AAA B
userAAB F
)AAF G
;AAG H
returnCC 
	productVMCC 
;CC 
}DD 	
publicFF 
asyncFF 
TaskFF 
<FF 
ProveedorViewModelFF ,
>FF, -
GetProveedorByIdFF. >
(FF> ?
intFF? B
idFFC E
)FFE F
{GG 	
varHH 
userHH 
=HH 
awaitHH  
_proveedorRepositoryHH 1
.HH1 2
GetProveedorByIdHH2 B
(HHB C
idHHC E
)HHE F
;HHF G
ProveedorViewModelJJ 
	productVMJJ (
=JJ) *
newJJ+ .
ProveedorViewModelJJ/ A
(JJA B
userJJB F
)JJF G
;JJG H
returnLL 
	productVMLL 
;LL 
}MM 	
publicOO 
asyncOO 
TaskOO 
<OO 
ListOO 
<OO 
ProveedorViewModelOO 1
>OO1 2
>OO2 3
GetProveedoresOO4 B
(OOB C
)OOC D
{PP 	
varQQ 
rolesQQ 
=QQ 
awaitQQ  
_proveedorRepositoryQQ 2
.QQ2 3
GetProveedoresQQ3 A
(QQA B
)QQB C
;QQC D
varSS 
rolesMSS 
=SS 
rolesSS 
.TT 
SelectTT 
(TT 
uTT 
=>TT 
newTT  
ProveedorViewModelTT! 3
(TT3 4
uTT4 5
)TT5 6
)TT6 7
.UU 
ToListUU 
(UU 
)UU 
;UU 
returnWW 
rolesMWW 
;WW 
}XX 	
}YY 
}ZZ ›
hD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\Services\ReclamoTipo\IReclamoTipoService.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "
Services" *
.* +
ReclamoTipo+ 6
{ 
public 

	interface 
IReclamoTipoService (
{ 
Task 
< 
List 
<  
ReclamoTipoViewModel &
>& '
>' (
GetReclamoTipos) 8
(8 9
)9 :
;: ;
}		 
}

 ¨
gD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\Services\ReclamoTipo\ReclamoTipoService.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "
Services" *
.* +
ReclamoTipo+ 6
{ 
public 

class 
ReclamoTipoService #
:$ %
IReclamoTipoService& 9
{ 
private		 
readonly		 "
IReclamoTipoRepository		 /"
_reclamoTipoRepository		0 F
;		F G
public 
ReclamoTipoService !
(! ""
IReclamoTipoRepository" 8!
reclamoTipoRepository9 N
)N O
{ 	"
_reclamoTipoRepository "
=# $!
reclamoTipoRepository% :
;: ;
} 	
public 
async 
Task 
< 
List 
<  
ReclamoTipoViewModel 3
>3 4
>4 5
GetReclamoTipos6 E
(E F
)F G
{ 	
var 
roles 
= 
await "
_reclamoTipoRepository 4
.4 5
GetReclamoTipos5 D
(D E
)E F
;F G
var 
rolesM 
= 
roles 
. 
Select 
( 
u 
=> 
new   
ReclamoTipoViewModel! 5
(5 6
u6 7
)7 8
)8 9
. 
ToList 
( 
) 
; 
return 
rolesM 
; 
} 	
} 
} é

`D:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\Services\Reclamo\IReclamoService.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "
Services" *
.* +
Reclamo+ 2
{ 
public 

	interface 
IReclamoService $
{ 
Task		 
<		 
int		 
>		 

AddReclamo		 
(		 
ReclamoModel		 )
newU		* .
)		. /
;		/ 0
Task

 
<

 
int

 
>

 
UpdateReclamo

 
(

  
ReclamoModel

  ,
newU

- 1
)

1 2
;

2 3
Task 
< 
int 
> 
RemoveReclamo 
(  
int  #
id$ &
)& '
;' (
Task 
< 
ReclamoViewModel 
> 
GetReclamoById -
(- .
int. 1
id2 4
)4 5
;5 6
Task 
< 
List 
< 
ReclamoViewModel "
>" #
># $
GetReclamos% 0
(0 1
)1 2
;2 3
} 
} ÷-
_D:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\Services\Reclamo\ReclamoService.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "
Services" *
.* +
Reclamo+ 2
{ 
public 

class 
ReclamoService 
:  !
IReclamoService" 1
{		 
private

 
readonly

 
IReclamoRepository

 +
_reclamoRepository

, >
;

> ?
public 
ReclamoService 
( 
IReclamoRepository 0
reclamoRepository1 B
)B C
{ 	
_reclamoRepository 
=  
reclamoRepository! 2
;2 3
} 	
public 
async 
Task 
< 
int 
> 

AddReclamo )
() *
ReclamoModel* 6
newU7 ;
); <
{ 	
Core 
. 
Entities 
. 
Reclamo !
cliente" )
=* +
new, /
Core0 4
.4 5
Entities5 =
.= >
Reclamo> E
{ 
detalle 
= 
newU 
. 
detalle &
,& '
idPedido 
= 
newU 
.  
idPedido  (
,( )
idTipoReclamo 
= 
newU  $
.$ %
idTipoReclamo% 2
,2 3
	idUsuario 
= 
newU  
.  !
	idUsuario! *
,* +
	respuesta 
= 
newU  
.  !
	respuesta! *
,* +
fecRegistro 
= 
DateTime &
.& '
Now' *
,* +
fecModificacion 
=  !
DateTime" *
.* +
Now+ .
} 
; 
var 
id 
= 
await 
_reclamoRepository -
.- .

AddReclamo. 8
(8 9
cliente9 @
)@ A
;A B
return 
id 
; 
}   	
public"" 
async"" 
Task"" 
<"" 
int"" 
>"" 
UpdateReclamo"" ,
("", -
ReclamoModel""- 9
newU"": >
)""> ?
{## 	
Core$$ 
.$$ 
Entities$$ 
.$$ 
Reclamo$$ !
usuario$$" )
=$$* +
new$$, /
Core$$0 4
.$$4 5
Entities$$5 =
.$$= >
Reclamo$$> E
{%% 
id&& 
=&& 
newU&& 
.&& 
id&& 
,&& 
detalle'' 
='' 
newU'' 
.'' 
detalle'' &
,''& '
idPedido(( 
=(( 
newU(( 
.((  
idPedido((  (
,((( )
idTipoReclamo)) 
=)) 
newU))  $
.))$ %
idTipoReclamo))% 2
,))2 3
	idUsuario** 
=** 
newU**  
.**  !
	idUsuario**! *
,*** +
	respuesta++ 
=++ 
newU++  
.++  !
	respuesta++! *
,++* +
fecModificacion,, 
=,,  !
DateTime,," *
.,,* +
Now,,+ .
}-- 
;-- 
var// 
result// 
=// 
await// 
_reclamoRepository// 1
.//1 2
UpdateReclamo//2 ?
(//? @
usuario//@ G
)//G H
;//H I
return11 
result11 
;11 
}22 	
public44 
async44 
Task44 
<44 
int44 
>44 
RemoveReclamo44 ,
(44, -
int44- 0
id441 3
)443 4
{55 	
var66 
result66 
=66 
await66 
_reclamoRepository66 1
.661 2
RemoveReclamo662 ?
(66? @
id66@ B
)66B C
;66C D
return88 
result88 
;88 
}99 	
public;; 
async;; 
Task;; 
<;; 
ReclamoViewModel;; *
>;;* +
GetReclamoById;;, :
(;;: ;
int;;; >
id;;? A
);;A B
{<< 	
var== 
user== 
=== 
await== 
_reclamoRepository== /
.==/ 0
GetReclamoById==0 >
(==> ?
id==? A
)==A B
;==B C
ReclamoViewModel?? 
	productVM?? &
=??' (
new??) ,
ReclamoViewModel??- =
(??= >
user??> B
)??B C
;??C D
returnAA 
	productVMAA 
;AA 
}BB 	
publicDD 
asyncDD 
TaskDD 
<DD 
ListDD 
<DD 
ReclamoViewModelDD /
>DD/ 0
>DD0 1
GetReclamosDD2 =
(DD= >
)DD> ?
{EE 	
varFF 
rolesFF 
=FF 
awaitFF 
_reclamoRepositoryFF 0
.FF0 1
GetReclamosFF1 <
(FF< =
)FF= >
;FF> ?
varHH 
rolesMHH 
=HH 
rolesHH 
.II 
SelectII 
(II 
uII 
=>II 
newII  
ReclamoViewModelII! 1
(II1 2
uII2 3
)II3 4
)II4 5
.JJ 
ToListJJ 
(JJ 
)JJ 
;JJ 
returnLL 
rolesMLL 
;LL 
}MM 	
}NN 
}OO ±
`D:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\Services\Reporte\IReporteService.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "
Services" *
.* +
Reporte+ 2
{ 
public 

	interface 
IReporteService $
{ 
Task		 
<		 
List		 
<		 "
ReporteVentasViewModel		 (
>		( )
>		) *
GetReporteVentas		+ ;
(		; <
FiltroReporteModel		< N
filtroModel		O Z
)		Z [
;		[ \
Task

 
<

 
List

 
<

 #
ReportePedidosViewModel

 )
>

) *
>

* +
GetReportePedidos

, =
(

= >
FiltroReporteModel

> P
filtroModel

Q \
)

\ ]
;

] ^
Task 
< 
List 
< !
ReporteStockViewModel '
>' (
>( )
GetReporteStock* 9
(9 :
FiltroReporteModel: L
filtroModelM X
)X Y
;Y Z
Task 
< 
List 
< $
ReporteReclamosViewModel *
>* +
>+ ,
GetReporteReclamos- ?
(? @
FiltroReporteModel@ R
filtroModelS ^
)^ _
;_ `
Task 
< 
List 
< $
ReporteDeliveryViewModel *
>* +
>+ ,
GetReporteDelivery- ?
(? @
FiltroReporteModel@ R
filtroModelS ^
)^ _
;_ `
} 
} °U
_D:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\Services\Reporte\ReporteService.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "
Services" *
.* +
Reporte+ 2
{ 
public		 

class		 
ReporteService		 
:		  !
IReporteService		" 1
{

 
private 
readonly 
IReporteRepository +
_reporteRepository, >
;> ?
public 
ReporteService 
( 
IReporteRepository 0
reporteRepository1 B
)B C
{ 	
_reporteRepository 
=  
reporteRepository! 2
;2 3
} 	
public 
async 
Task 
< 
List 
< "
ReporteVentasViewModel 5
>5 6
>6 7
GetReporteVentas8 H
(H I
FiltroReporteModelI [
filtroModel\ g
)g h
{ 	
List 
< "
ReporteVentasViewModel '
>' (
result) /
=0 1
new2 5
List6 :
<: ;"
ReporteVentasViewModel; Q
>Q R
(R S
)S T
;T U
FiltroReporte 
filtro  
=! "
new# &
FiltroReporte' 4
{ 
	fecInicio 
= 
filtroModel '
.' (
	fecInicio( 1
,1 2
fecFin 
= 
filtroModel $
.$ %
fecFin% +
,+ ,
idPedido 
= 
filtroModel &
.& '
idPedido' /
} 
; 
try 
{ 
var 
reporte 
= 
await #
_reporteRepository$ 6
.6 7
GetReporteVentas7 G
(G H
filtroH N
)N O
;O P
result 
= 
reporte  
.   
Select   
(   
u   
=>   
new    "
ReporteVentasViewModel  ! 7
(  7 8
u  8 9
)  9 :
)  : ;
.!! 
ToList!! 
(!! 
)!! 
;!! 
}## 
catch$$ 
($$ 
	Exception$$ 
)$$ 
{%% 
result&& 
=&& 
new&& 
List&& !
<&&! ""
ReporteVentasViewModel&&" 8
>&&8 9
(&&9 :
)&&: ;
;&&; <
}'' 
return)) 
result)) 
;)) 
}** 	
public,, 
async,, 
Task,, 
<,, 
List,, 
<,, #
ReportePedidosViewModel,, 6
>,,6 7
>,,7 8
GetReportePedidos,,9 J
(,,J K
FiltroReporteModel,,K ]
filtroModel,,^ i
),,i j
{-- 	
List.. 
<.. #
ReportePedidosViewModel.. (
>..( )
result..* 0
=..1 2
new..3 6
List..7 ;
<..; <#
ReportePedidosViewModel..< S
>..S T
(..T U
)..U V
;..V W
FiltroReporte// 
filtro//  
=//! "
new//# &
FiltroReporte//' 4
{00 
	fecInicio11 
=11 
filtroModel11 '
.11' (
	fecInicio11( 1
,111 2
fecFin22 
=22 
filtroModel22 $
.22$ %
fecFin22% +
,22+ ,
idPedido33 
=33 
filtroModel33 &
.33& '
idPedido33' /
}44 
;44 
try55 
{66 
var77 
reporte77 
=77 
await77 #
_reporteRepository77$ 6
.776 7
GetReportePedidos777 H
(77H I
filtro77I O
)77O P
;77P Q
result99 
=99 
reporte99  
.:: 
Select:: 
(:: 
u:: 
=>:: 
new::  #
ReportePedidosViewModel::! 8
(::8 9
u::9 :
)::: ;
)::; <
.;; 
ToList;; 
(;; 
);; 
;;; 
}== 
catch>> 
(>> 
	Exception>> 
)>> 
{?? 
result@@ 
=@@ 
new@@ 
List@@ !
<@@! "#
ReportePedidosViewModel@@" 9
>@@9 :
(@@: ;
)@@; <
;@@< =
}AA 
returnCC 
resultCC 
;CC 
}DD 	
publicFF 
asyncFF 
TaskFF 
<FF 
ListFF 
<FF !
ReporteStockViewModelFF 4
>FF4 5
>FF5 6
GetReporteStockFF7 F
(FFF G
FiltroReporteModelFFG Y
filtroModelFFZ e
)FFe f
{GG 	
ListHH 
<HH !
ReporteStockViewModelHH &
>HH& '
resultHH( .
=HH/ 0
newHH1 4
ListHH5 9
<HH9 :!
ReporteStockViewModelHH: O
>HHO P
(HHP Q
)HHQ R
;HHR S
FiltroReporteII 
filtroII  
=II! "
newII# &
FiltroReporteII' 4
{JJ 
	fecInicioKK 
=KK 
filtroModelKK '
.KK' (
	fecInicioKK( 1
,KK1 2
fecFinLL 
=LL 
filtroModelLL $
.LL$ %
fecFinLL% +
,LL+ ,
idPedidoMM 
=MM 
filtroModelMM &
.MM& '
idPedidoMM' /
}NN 
;NN 
tryOO 
{PP 
varQQ 
reporteQQ 
=QQ 
awaitQQ #
_reporteRepositoryQQ$ 6
.QQ6 7
GetReporteStockQQ7 F
(QQF G
filtroQQG M
)QQM N
;QQN O
resultSS 
=SS 
reporteSS  
.TT 
SelectTT 
(TT 
uTT 
=>TT 
newTT  !
ReporteStockViewModelTT! 6
(TT6 7
uTT7 8
)TT8 9
)TT9 :
.UU 
ToListUU 
(UU 
)UU 
;UU 
}WW 
catchXX 
(XX 
	ExceptionXX 
)XX 
{YY 
resultZZ 
=ZZ 
newZZ 
ListZZ !
<ZZ! "!
ReporteStockViewModelZZ" 7
>ZZ7 8
(ZZ8 9
)ZZ9 :
;ZZ: ;
}[[ 
return]] 
result]] 
;]] 
}^^ 	
public`` 
async`` 
Task`` 
<`` 
List`` 
<`` $
ReporteReclamosViewModel`` 7
>``7 8
>``8 9
GetReporteReclamos``: L
(``L M
FiltroReporteModel``M _
filtroModel``` k
)``k l
{aa 	
Listbb 
<bb $
ReporteReclamosViewModelbb )
>bb) *
resultbb+ 1
=bb2 3
newbb4 7
Listbb8 <
<bb< =$
ReporteReclamosViewModelbb= U
>bbU V
(bbV W
)bbW X
;bbX Y
FiltroReportecc 
filtrocc  
=cc! "
newcc# &
FiltroReportecc' 4
{dd 
	fecInicioee 
=ee 
filtroModelee '
.ee' (
	fecInicioee( 1
,ee1 2
fecFinff 
=ff 
filtroModelff $
.ff$ %
fecFinff% +
,ff+ ,
idPedidogg 
=gg 
filtroModelgg &
.gg& '
idPedidogg' /
}hh 
;hh 
tryii 
{jj 
varkk 
reportekk 
=kk 
awaitkk #
_reporteRepositorykk$ 6
.kk6 7
GetReporteReclamoskk7 I
(kkI J
filtrokkJ P
)kkP Q
;kkQ R
resultmm 
=mm 
reportemm  
.nn 
Selectnn 
(nn 
unn 
=>nn 
newnn  $
ReporteReclamosViewModelnn! 9
(nn9 :
unn: ;
)nn; <
)nn< =
.oo 
ToListoo 
(oo 
)oo 
;oo 
}qq 
catchrr 
(rr 
	Exceptionrr 
)rr 
{ss 
resulttt 
=tt 
newtt 
Listtt !
<tt! "$
ReporteReclamosViewModeltt" :
>tt: ;
(tt; <
)tt< =
;tt= >
}uu 
returnww 
resultww 
;ww 
}xx 	
publiczz 
asynczz 
Taskzz 
<zz 
Listzz 
<zz $
ReporteDeliveryViewModelzz 7
>zz7 8
>zz8 9
GetReporteDeliveryzz: L
(zzL M
FiltroReporteModelzzM _
filtroModelzz` k
)zzk l
{{{ 	
List|| 
<|| $
ReporteDeliveryViewModel|| )
>||) *
result||+ 1
=||2 3
new||4 7
List||8 <
<||< =$
ReporteDeliveryViewModel||= U
>||U V
(||V W
)||W X
;||X Y
FiltroReporte}} 
filtro}}  
=}}! "
new}}# &
FiltroReporte}}' 4
{~~ 
	fecInicio 
= 
filtroModel '
.' (
	fecInicio( 1
,1 2
fecFin
ÄÄ 
=
ÄÄ 
filtroModel
ÄÄ $
.
ÄÄ$ %
fecFin
ÄÄ% +
,
ÄÄ+ ,
idPedido
ÅÅ 
=
ÅÅ 
filtroModel
ÅÅ &
.
ÅÅ& '
idPedido
ÅÅ' /
}
ÇÇ 
;
ÇÇ 
try
ÉÉ 
{
ÑÑ 
var
ÖÖ 
reporte
ÖÖ 
=
ÖÖ 
await
ÖÖ # 
_reporteRepository
ÖÖ$ 6
.
ÖÖ6 7 
GetReporteDelivery
ÖÖ7 I
(
ÖÖI J
filtro
ÖÖJ P
)
ÖÖP Q
;
ÖÖQ R
result
áá 
=
áá 
reporte
áá  
.
àà 
Select
àà 
(
àà 
u
àà 
=>
àà 
new
àà  &
ReporteDeliveryViewModel
àà! 9
(
àà9 :
u
àà: ;
)
àà; <
)
àà< =
.
ââ 
ToList
ââ 
(
ââ 
)
ââ 
;
ââ 
}
ãã 
catch
åå 
(
åå 
	Exception
åå 
)
åå 
{
çç 
result
éé 
=
éé 
new
éé 
List
éé !
<
éé! "&
ReporteDeliveryViewModel
éé" :
>
éé: ;
(
éé; <
)
éé< =
;
éé= >
}
èè 
return
ëë 
result
ëë 
;
ëë 
}
íí 	
}
ìì 
}îî Æ
XD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\Services\Rol\IRolService.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "
Services" *
.* +
Rol+ .
{ 
public 

	interface 
IRolService  
{ 
Task 
< 
List 
< 
RolViewModel 
> 
>  
GetRoles! )
() *
)* +
;+ ,
}		 
}

 ¶
WD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\Services\Rol\RolService.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "
Services" *
.* +
Rol+ .
{ 
public 

class 

RolService 
: 
IRolService )
{ 
private		 
readonly		 
IRolRepository		 '
_rolRepository		( 6
;		6 7
public 

RolService 
( 
IRolRepository (
rolRepository) 6
)6 7
{ 	
_rolRepository 
= 
rolRepository *
;* +
} 	
public 
async 
Task 
< 
List 
< 
RolViewModel +
>+ ,
>, -
GetRoles. 6
(6 7
)7 8
{ 	
var 
roles 
= 
await 
_rolRepository ,
., -
GetRoles- 5
(5 6
)6 7
;7 8
var 
rolesM 
= 
roles 
. 
Select 
( 
u 
=> 
new  
RolViewModel! -
(- .
u. /
)/ 0
)0 1
. 
ToList 
( 
) 
; 
return 
rolesM 
; 
} 	
} 
} ≥
bD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\Services\Security\ISecurityService.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "
Services" *
.* +
Security+ 3
{ 
public 

	interface 
ISecurityService %
{ 
string 
Hash 
( 
string 
password #
)# $
;$ %
bool 
Check 
( 
string 
hash 
, 
string  &
password' /
)/ 0
;0 1
} 
}		 ‘"
aD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\Services\Security\SecurityService.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "
Services" *
.* +
Security+ 3
{ 
public 

class 
SecurityService  
:! "
ISecurityService# 3
{		 
private

 
readonly

 
PasswordOptions

 (
_options

) 1
;

1 2
public 
SecurityService 
( 
IOptions '
<' (
PasswordOptions( 7
>7 8
options9 @
)@ A
{ 	
_options 
= 
options 
. 
Value $
;$ %
} 	
public 
bool 
Check 
( 
string  
hash! %
,% &
string' -
password. 6
)6 7
{ 	
var 
parts 
= 
hash 
. 
Split "
(" #
$char# &
)& '
;' (
if 
( 
parts 
. 
Length 
!= 
$num  !
)! "
{ 
throw 
new 
FormatException )
() *
$str* B
)B C
;C D
} 
var 

iterations 
= 
Convert $
.$ %
ToInt32% ,
(, -
parts- 2
[2 3
$num3 4
]4 5
)5 6
;6 7
var 
salt 
= 
Convert 
. 
FromBase64String /
(/ 0
parts0 5
[5 6
$num6 7
]7 8
)8 9
;9 :
var 
key 
= 
Convert 
. 
FromBase64String .
(. /
parts/ 4
[4 5
$num5 6
]6 7
)7 8
;8 9
using 
( 
var 
	algorithm  
=! "
new# &
Rfc2898DeriveBytes' 9
(9 :
password 
, 
salt 
, 

iterations 
) 
) 
{   
var!! 

keyToCheck!! 
=!!  
	algorithm!!! *
.!!* +
GetBytes!!+ 3
(!!3 4
_options!!4 <
.!!< =
KeySize!!= D
)!!D E
;!!E F
return"" 

keyToCheck"" !
.""! "
SequenceEqual""" /
(""/ 0
key""0 3
)""3 4
;""4 5
}## 
}$$ 	
public&& 
string&& 
Hash&& 
(&& 
string&& !
password&&" *
)&&* +
{'' 	
try)) 
{** 
using++ 
(++ 
var++ 
	algorithm++ $
=++% &
new++' *
Rfc2898DeriveBytes+++ =
(++= >
password,,  (
,,,( )
_options--  (
.--( )
SaltSize--) 1
,--1 2
_options..  (
...( )

Iterations..) 3
)//  !
)//! "
{00 
var11 
key11 
=11 
Convert11 %
.11% &
ToBase64String11& 4
(114 5
	algorithm115 >
.11> ?
GetBytes11? G
(11G H
_options11H P
.11P Q
KeySize11Q X
)11X Y
)11Y Z
;11Z [
var22 
salt22 
=22 
Convert22 &
.22& '
ToBase64String22' 5
(225 6
	algorithm226 ?
.22? @
Salt22@ D
)22D E
;22E F
return44 
$"44 
{44 
_options44 &
.44& '

Iterations44' 1
}441 2
$str442 3
{443 4
salt444 8
}448 9
$str449 :
{44: ;
key44; >
}44> ?
"44? @
;44@ A
}55 
}66 
catch77 
(77 
	Exception77 
)77 
{88 
return:: 
$str:: 
;:: 
};; 
}<< 	
}== 
}>> Î
mD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\Services\TipoDocumentos\ITipoDocumentoService.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "
Services" *
.* +
TipoDocumentos+ 9
{ 
public 

	interface !
ITipoDocumentoService *
{ 
Task 
< 
List 
< "
TipoDocumentoViewModel (
>( )
>) *
GetTipoDocumentos+ <
(< =
)= >
;> ?
}		 
}

 –
lD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\Services\TipoDocumentos\TipoDocumentoService.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "
Services" *
.* +
TipoDocumentos+ 9
{ 
public 

class  
TipoDocumentoService %
:& '!
ITipoDocumentoService( =
{ 
private		 
readonly		 $
ITipoDocumentoRepository		 1$
_tipoDocumentoRepository		2 J
;		J K
public  
TipoDocumentoService #
(# $$
ITipoDocumentoRepository$ <#
tipoDocumentoRepository= T
)T U
{ 	$
_tipoDocumentoRepository $
=% &#
tipoDocumentoRepository' >
;> ?
} 	
public 
async 
Task 
< 
List 
< "
TipoDocumentoViewModel 5
>5 6
>6 7
GetTipoDocumentos8 I
(I J
)J K
{ 	
var 
roles 
= 
await $
_tipoDocumentoRepository 6
.6 7
GetTipoDocumentos7 H
(H I
)I J
;J K
var 
rolesM 
= 
roles 
. 
Select 
( 
u 
=> 
new  "
TipoDocumentoViewModel! 7
(7 8
u8 9
)9 :
): ;
. 
ToList 
( 
) 
; 
return 
rolesM 
; 
} 	
} 
} Ç
`D:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\Services\Usuario\IUsuarioService.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "
Services" *
.* +
Usuario+ 2
{ 
public 

	interface 
IUsuarioService $
{ 
Task		 
<		 
int		 
>		 

AddUsuario		 
(		 
UsuarioModel		 )
newU		* .
)		. /
;		/ 0
Task

 
<

 
bool

 
>

 
UpdateUsuario

  
(

  !
UsuarioModel

! -
newU

. 2
)

2 3
;

3 4
Task 
< 
bool 
> 
RemoveUsuario  
(  !
int! $
id% '
)' (
;( )
Task 
< 
UsuarioViewModel 
> 
GetUserByUsuario /
(/ 0
string0 6
usu7 :
): ;
;; <
Task 
< 
UsuarioViewModel 
> 
GetUserById *
(* +
int+ .
id/ 1
)1 2
;2 3
Task 
< 
List 
< 
UsuarioViewModel "
>" #
># $
GetUsuarios% 0
(0 1
)1 2
;2 3
Task 
< 
UsuarioViewModel 
> 
GetUserByCorreo .
(. /
string/ 5
correo6 <
)< =
;= >
Task 
< 
bool 
> 
UpdateContrase√±a #
(# $
string$ *
correo+ 1
,1 2
string3 9
nuevaContrase√±a: I
)I J
;J K
} 
} ‡G
_D:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\Services\Usuario\UsuarioService.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "
Services" *
.* +
Usuario+ 2
{ 
public 

class 
UsuarioService 
:  !
IUsuarioService" 1
{		 
private

 
readonly

 
IUsuarioRepository

 +
_usuarioRepository

, >
;

> ?
public 
UsuarioService 
( 
IUsuarioRepository 0
usuarioRepository1 B
)B C
{ 	
_usuarioRepository 
=  
usuarioRepository! 2
;2 3
} 	
public 
async 
Task 
< 
int 
> 

AddUsuario )
() *
UsuarioModel* 6
newU7 ;
); <
{ 	
Core 
. 
Entities 
. 
Usuario !
usuario" )
=* +
new, /
Core0 4
.4 5
Entities5 =
.= >
Usuario> E
{ 
usuario 
= 
newU 
. 
usuario &
,& '
clave 
= 
newU 
. 
clave "
," #
correo 
= 
newU 
. 
correo $
,$ %
nombre 
= 
newU 
. 
nombre $
,$ %

apePaterno 
= 
newU !
.! "

apePaterno" ,
,, -

apeMaterno 
= 
newU !
.! "

apeMaterno" ,
,, -
telefono 
= 
newU 
.  
telefono  (
,( )
idRol 
= 
newU 
. 
idRol "
," #
fecRegistro 
= 
DateTime &
.& '
Now' *
,* +
fecModificacion 
=  !
DateTime" *
.* +
Now+ .
} 
; 
var$$ 
id$$ 
=$$ 
await$$ 
_usuarioRepository$$ -
.$$- .

AddUsuario$$. 8
($$8 9
usuario$$9 @
)$$@ A
;$$A B
return&& 
id&& 
;&& 
}'' 	
public)) 
async)) 
Task)) 
<)) 
bool)) 
>)) 
UpdateUsuario))  -
())- .
UsuarioModel)). :
newU)); ?
)))? @
{** 	
Core++ 
.++ 
Entities++ 
.++ 
Usuario++ !
usuario++" )
=++* +
new++, /
Core++0 4
.++4 5
Entities++5 =
.++= >
Usuario++> E
{,, 
id-- 
=-- 
newU-- 
.-- 
id-- 
,-- 
usuario.. 
=.. 
newU.. 
... 
usuario.. &
,..& '
clave// 
=// 
newU// 
.// 
clave// "
,//" #
correo00 
=00 
newU00 
.00 
correo00 $
,00$ %
nombre11 
=11 
newU11 
.11 
nombre11 $
,11$ %

apePaterno22 
=22 
newU22 !
.22! "

apePaterno22" ,
,22, -

apeMaterno33 
=33 
newU33 !
.33! "

apeMaterno33" ,
,33, -
telefono44 
=44 
newU44 
.44  
telefono44  (
,44( )
idRol55 
=55 
newU55 
.55 
idRol55 "
,55" #
fecModificacion66 
=66  !
DateTime66" *
.66* +
Now66+ .
}77 
;77 
var99 
result99 
=99 
await99 
_usuarioRepository99 1
.991 2
UpdateUsuario992 ?
(99? @
usuario99@ G
)99G H
;99H I
return;; 
result;; 
;;; 
}<< 	
public>> 
async>> 
Task>> 
<>> 
bool>> 
>>> 
RemoveUsuario>>  -
(>>- .
int>>. 1
id>>2 4
)>>4 5
{?? 	
var@@ 
result@@ 
=@@ 
await@@ 
_usuarioRepository@@ 1
.@@1 2
RemoveUsuario@@2 ?
(@@? @
id@@@ B
)@@B C
;@@C D
returnBB 
resultBB 
;BB 
}CC 	
publicEE 
asyncEE 
TaskEE 
<EE 
UsuarioViewModelEE *
>EE* +
GetUserByUsuarioEE, <
(EE< =
stringEE= C
usuEED G
)EEG H
{FF 	
UsuarioViewModelGG 
	productVMGG &
=GG' (
nullGG) -
;GG- .
tryII 
{JJ 
varKK 
userKK 
=KK 
awaitKK  
_usuarioRepositoryKK! 3
.KK3 4
GetUsuarioByUsuarioKK4 G
(KKG H
usuKKH K
)KKK L
;KKL M
	productVMMM 
=MM 
newMM 
UsuarioViewModelMM  0
(MM0 1
userMM1 5
)MM5 6
;MM6 7
}NN 
catchOO 
(OO 
	ExceptionOO 
)OO 
{PP 
}RR 
returnSS 
	productVMSS 
;SS 
}TT 	
publicVV 
asyncVV 
TaskVV 
<VV 
UsuarioViewModelVV *
>VV* +
GetUserByCorreoVV, ;
(VV; <
stringVV< B
correoVVC I
)VVI J
{WW 	
UsuarioViewModelXX 
	productVMXX &
=XX' (
nullXX) -
;XX- .
tryYY 
{ZZ 
var[[ 
user[[ 
=[[ 
await[[  
_usuarioRepository[[! 3
.[[3 4
GetUsuarioByCorreo[[4 F
([[F G
correo[[G M
)[[M N
;[[N O
	productVM]] 
=]] 
new]] 
UsuarioViewModel]]  0
(]]0 1
user]]1 5
)]]5 6
;]]6 7
}^^ 
catch__ 
(__ 
	Exception__ 
)__ 
{`` 
}aa 
returncc 
	productVMcc 
;cc 
}dd 	
publicff 
asyncff 
Taskff 
<ff 
UsuarioViewModelff *
>ff* +
GetUserByIdff, 7
(ff7 8
intff8 ;
idff< >
)ff> ?
{gg 	
UsuarioViewModelhh 
	productVMhh &
=hh' (
nullhh) -
;hh- .
tryii 
{jj 
varkk 
userkk 
=kk 
awaitkk  
_usuarioRepositorykk! 3
.kk3 4
GetUsuarioByIdkk4 B
(kkB C
idkkC E
)kkE F
;kkF G
	productVMmm 
=mm 
newmm 
UsuarioViewModelmm  0
(mm0 1
usermm1 5
)mm5 6
;mm6 7
}oo 
catchpp 
(pp 
	Exceptionpp 
)pp 
{qq 
}ss 
returnuu 
	productVMuu 
;uu 
}vv 	
publicxx 
asyncxx 
Taskxx 
<xx 
Listxx 
<xx 
UsuarioViewModelxx /
>xx/ 0
>xx0 1
GetUsuariosxx2 =
(xx= >
)xx> ?
{yy 	
varzz 
productszz 
=zz 
awaitzz  
_usuarioRepositoryzz! 3
.zz3 4
GetUsuarioszz4 ?
(zz? @
)zz@ A
;zzA B
var|| 
	productsM|| 
=|| 
products|| $
.}} 
Select}} 
(}} 
u}} 
=>}} 
new}}  
UsuarioViewModel}}! 1
(}}1 2
u}}2 3
)}}3 4
)}}4 5
.~~ 
ToList~~ 
(~~ 
)~~ 
;~~ 
return
ÄÄ 
	productsM
ÄÄ 
;
ÄÄ 
}
ÅÅ 	
public
ÉÉ 
async
ÉÉ 
Task
ÉÉ 
<
ÉÉ 
bool
ÉÉ 
>
ÉÉ 
UpdateContrase√±a
ÉÉ  0
(
ÉÉ0 1
string
ÉÉ1 7
correo
ÉÉ8 >
,
ÉÉ> ?
string
ÉÉ@ F
nuevaContrase√±a
ÉÉG V
)
ÉÉV W
{
ÑÑ 	
var
ÜÜ 
result
ÜÜ 
=
ÜÜ 
await
ÜÜ  
_usuarioRepository
ÜÜ 1
.
ÜÜ1 2
UpdateContrase√±a
ÜÜ2 B
(
ÜÜB C
correo
ÜÜC I
,
ÜÜI J
nuevaContrase√±a
ÜÜK Z
)
ÜÜZ [
;
ÜÜ[ \
return
àà 
result
àà 
;
àà 
}
ââ 	
}
ãã 
}åå í
[D:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\ViewModels\AlmacenViewModel.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "

ViewModels" ,
{ 
public 

class 
AlmacenViewModel !
{ 
public 
AlmacenViewModel 
(  
Almacen  '
almacen( /
)/ 0
{ 	
id		 
=		 
almacen		 
.		 
id		 
;		 
nombre

 
=

 
almacen

 
.

 
nombre

 #
;

# $
descripcion 
= 
almacen !
.! "
descripcion" -
;- .
	direccion 
= 
almacen 
.  
	direccion  )
;) *
telefono 
= 
almacen 
. 
telefono '
;' (
} 	
public 
int 
id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
nombre 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
descripcion !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
	direccion 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
telefono 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} É

]D:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\ViewModels\CategoriaViewModel.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "

ViewModels" ,
{ 
public 

class 
CategoriaViewModel #
{ 
public 
CategoriaViewModel !
(! "
	Categoria" +
usuario, 3
)3 4
{ 	
id		 
=		 
usuario		 
.		 
id		 
;		 
nombre

 
=

 
usuario

 
.

 
nombre

 #
;

# $
descripcion 
= 
usuario !
.! "
descripcion" -
;- .
} 	
public 
int 
id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
nombre 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
descripcion !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} £
[D:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\ViewModels\ClienteViewModel.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "

ViewModels" ,
{ 
public 

class 
ClienteViewModel !
{ 
public 
ClienteViewModel 
(  
Cliente  '
cli( +
)+ ,
{ 	
id		 
=		 
cli		 
.		 
id		 
;		 
nombre

 
=

 
cli

 
.

 
nombre

 
;

  

apePaterno 
= 
cli 
. 

apePaterno '
;' (

apeMaterno 
= 
cli 
. 

apeMaterno '
;' (
telefono 
= 
cli 
. 
telefono #
;# $
	direccion 
= 
cli 
. 
	direccion %
;% &
idTipoDocumento 
= 
cli !
.! "
idTipoDocumento" 1
;1 2
numeroDocumento 
= 
cli !
.! "
numeroDocumento" 1
;1 2
fecRegistro 
= 
cli 
. 
fecRegistro )
;) *
enviarPromociones 
= 
cli  #
.# $
enviarPromociones$ 5
;5 6
} 	
public 
int 
id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
nombre 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 

apePaterno  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 

apeMaterno  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
telefono 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
	direccion 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
estado 
{ 
get  
;  !
set" %
;% &
}' (
public 
DateTime 
fecRegistro #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
fecModificacion '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
int 
idTipoDocumento "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
numeroDocumento %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public   
bool   
enviarPromociones   %
{  & '
get  ( +
;  + ,
set  - 0
;  0 1
}  2 3
}!! 
}"" ˇ
[D:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\ViewModels\JWTTokenResponse.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "

ViewModels" ,
{ 
public 

class 
JWTTokenResponse !
{ 
public 
string 
? 
Token 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} „
\D:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\ViewModels\ProductoViewModel.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "

ViewModels" ,
{ 
public 

class 
ProductoViewModel "
{ 
public 
ProductoViewModel  
(  !
Producto! )
producto* 2
)2 3
{ 	
id		 
=		 
producto		 
.		 
id		 
;		 
nombre

 
=

 
producto

 
.

 
nombre

 $
;

$ %
descripcion 
= 
producto "
." #
descripcion# .
;. /
precio 
= 
producto 
. 
precio $
;$ %
idCategoria 
= 
producto "
." #
idCategoria# .
;. /
idProveedor 
= 
producto "
." #
idProveedor# .
;. /
fecRegistro 
= 
producto "
." #
fecRegistro# .
;. /
fecModificacion 
= 
producto &
.& '
fecModificacion' 6
;6 7
} 	
public 
int 
id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
nombre 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
descripcion !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
decimal 
precio 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
idCategoria 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
idProveedor 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
DateTime 
fecRegistro #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
fecModificacion '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} ’
]D:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\ViewModels\PromocionViewModel.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "

ViewModels" ,
{ 
public 

class 
PromocionViewModel #
{ 
public 
PromocionViewModel !
(! "
	Promocion" +
promo, 1
)1 2
{ 	
id		 
=		 
promo		 
.		 
id		 
;		 
nombre

 
=

 
promo

 
.

 
nombre

 !
;

! "
descripcion 
= 
promo 
.  
descripcion  +
;+ ,
	fecInicio 
= 
promo 
. 
	fecInicio '
;' (
fecFin 
= 
promo 
. 
fecFin !
;! "
porcentajeDescuento 
=  !
promo" '
.' (
porcentajeDescuento( ;
;; <
productosIds 
= 
promo  
.  !
productosIds! -
;- .
} 	
public 
int 
id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
nombre 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
descripcion !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
	fecInicio !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
fecFin 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
decimal 
porcentajeDescuento *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
bool 
estado 
{ 
get  
;  !
set" %
;% &
}' (
public 
DateTime 
fecRegistro #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
fecModificacion '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
List 
< 
int 
> 
productosIds %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} µ
]D:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\ViewModels\ProveedorViewModel.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "

ViewModels" ,
{ 
public 

class 
ProveedorViewModel #
{ 
public 
ProveedorViewModel !
(! "
	Proveedor" +
pro, /
)/ 0
{ 	
Id		 
=		 
pro		 
.		 
id		 
;		 
Nombre

 
=

 
pro

 
.

 
nombre

 
;

  
Descripcion 
= 
pro 
. 
descripcion )
;) *
	Direccion 
= 
pro 
. 
	direccion %
;% &
Telefono 
= 
pro 
. 
telefono #
;# $
idTipoDocumento 
= 
pro !
.! "
idTipoDocumento" 1
;1 2
numeroDocumento 
= 
pro !
.! "
numeroDocumento" 1
;1 2
} 	
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Nombre 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Descripcion !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
	Direccion 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Telefono 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
idTipoDocumento "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
numeroDocumento %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} õ

_D:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\ViewModels\ReclamoTipoViewModel.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "

ViewModels" ,
{ 
public 

class  
ReclamoTipoViewModel %
{ 
public  
ReclamoTipoViewModel #
(# $
ReclamoTipo$ /
reclamoTipo0 ;
); <
{ 	
id		 
=		 
reclamoTipo		 
.		 
id		 
;		  
nombre

 
=

 
reclamoTipo

  
.

  !
nombre

! '
;

' (
descripcion 
= 
reclamoTipo %
.% &
descripcion& 1
;1 2
} 	
public 
int 
id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
nombre 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
descripcion !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ﬁ
[D:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\ViewModels\ReclamoViewModel.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "

ViewModels" ,
{ 
public 

class 
ReclamoViewModel !
{ 
public 
ReclamoViewModel 
(  
Reclamo  '
reclamo( /
)/ 0
{ 	
id		 
=		 
reclamo		 
.		 
id		 
;		 
detalle

 
=

 
reclamo

 
.

 
detalle

 %
;

% &
	idUsuario 
= 
reclamo 
.  
	idUsuario  )
;) *
usuario 
= 
reclamo 
. 
usuario %
;% &
idPedido 
= 
reclamo 
. 
idPedido '
;' (
idTipoReclamo 
= 
reclamo #
.# $
idTipoReclamo$ 1
;1 2
tipoReclamo 
= 
reclamo !
.! "
tipoReclamo" -
;- .
	respuesta 
= 
reclamo 
.  
	respuesta  )
;) *
idUsuarioRespuesta 
=  
reclamo! (
.( )
idUsuarioRespuesta) ;
;; <
} 	
public 
int 
id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
detalle 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
	idUsuario 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
idUsuarioRespuesta %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
usuario 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
idPedido 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
idTipoReclamo  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
tipoReclamo !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
	respuesta 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} ≈
lD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\ViewModels\Reportes\ReporteDeliveryViewModel.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "

ViewModels" ,
., -
Reportes- 5
{ 
public 

class $
ReporteDeliveryViewModel )
{ 
public $
ReporteDeliveryViewModel '
(' (
ReporteDelivery( 7
reporte8 ?
)? @
{ 	
id		 
=		 
reporte		 
.		 
id		 
;		 
detalle

 
=

 
reporte

 
.

 
detalle

 %
;

% &
usuarioRegistro 
= 
reporte %
.% &
usuarioRegistro& 5
;5 6#
usuarioRegistroCompleto #
=$ %
reporte& -
.- .#
usuarioRegistroCompleto. E
;E F
fechaReclamo 
= 
reporte "
." #
fechaReclamo# /
;/ 0
tipoReclamo 
= 
reporte !
.! "
tipoReclamo" -
;- .
pedido 
= 
reporte 
. 
pedido #
;# $
cliente 
= 
reporte 
. 
cliente %
;% &
	respuesta 
= 
reporte 
.  
	respuesta  )
;) *
usuarioRespuesta 
= 
reporte &
.& '
usuarioRespuesta' 7
;7 8$
usuarioRespuestaCompleto $
=% &
reporte' .
.. /$
usuarioRespuestaCompleto/ G
;G H
fechaRespuesta 
= 
reporte $
.$ %
fechaRespuesta% 3
;3 4
} 	
public 
int 
id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
detalle 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
usuarioRegistro %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string #
usuarioRegistroCompleto -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
string 
fechaReclamo "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
tipoReclamo !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
pedido 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
cliente 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
	respuesta 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
usuarioRespuesta &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public   
string   $
usuarioRespuestaCompleto   .
{  / 0
get  1 4
;  4 5
set  6 9
;  9 :
}  ; <
public!! 
string!! 
fechaRespuesta!! $
{!!% &
get!!' *
;!!* +
set!!, /
;!!/ 0
}!!1 2
}"" 
}## ¡
kD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\ViewModels\Reportes\ReportePedidosViewModel.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "

ViewModels" ,
., -
Reportes- 5
{ 
public 

class #
ReportePedidosViewModel (
{ 
public #
ReportePedidosViewModel &
(& '
ReportePedidos' 5
reporte6 =
)= >
{ 	
id		 
=		 
reporte		 
.		 
id		 
;		 
detalle

 
=

 
reporte

 
.

 
detalle

 %
;

% &
usuarioRegistro 
= 
reporte %
.% &
usuarioRegistro& 5
;5 6#
usuarioRegistroCompleto #
=$ %
reporte& -
.- .#
usuarioRegistroCompleto. E
;E F
fechaReclamo 
= 
reporte "
." #
fechaReclamo# /
;/ 0
tipoReclamo 
= 
reporte !
.! "
tipoReclamo" -
;- .
pedido 
= 
reporte 
. 
pedido #
;# $
cliente 
= 
reporte 
. 
cliente %
;% &
	respuesta 
= 
reporte 
.  
	respuesta  )
;) *
usuarioRespuesta 
= 
reporte &
.& '
usuarioRespuesta' 7
;7 8$
usuarioRespuestaCompleto $
=% &
reporte' .
.. /$
usuarioRespuestaCompleto/ G
;G H
fechaRespuesta 
= 
reporte $
.$ %
fechaRespuesta% 3
;3 4
} 	
public 
int 
id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
detalle 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
usuarioRegistro %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string #
usuarioRegistroCompleto -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
string 
fechaReclamo "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
tipoReclamo !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
pedido 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
cliente 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
	respuesta 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
usuarioRespuesta &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public   
string   $
usuarioRespuestaCompleto   .
{  / 0
get  1 4
;  4 5
set  6 9
;  9 :
}  ; <
public!! 
string!! 
fechaRespuesta!! $
{!!% &
get!!' *
;!!* +
set!!, /
;!!/ 0
}!!1 2
}"" 
}## ≈
lD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\ViewModels\Reportes\ReporteReclamosViewModel.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "

ViewModels" ,
., -
Reportes- 5
{ 
public 

class $
ReporteReclamosViewModel )
{ 
public $
ReporteReclamosViewModel '
(' (
ReporteReclamos( 7
reporte8 ?
)? @
{ 	
id		 
=		 
reporte		 
.		 
id		 
;		 
detalle

 
=

 
reporte

 
.

 
detalle

 %
;

% &
usuarioRegistro 
= 
reporte %
.% &
usuarioRegistro& 5
;5 6#
usuarioRegistroCompleto #
=$ %
reporte& -
.- .#
usuarioRegistroCompleto. E
;E F
fechaReclamo 
= 
reporte "
." #
fechaReclamo# /
;/ 0
tipoReclamo 
= 
reporte !
.! "
tipoReclamo" -
;- .
pedido 
= 
reporte 
. 
pedido #
;# $
cliente 
= 
reporte 
. 
cliente %
;% &
	respuesta 
= 
reporte 
.  
	respuesta  )
;) *
usuarioRespuesta 
= 
reporte &
.& '
usuarioRespuesta' 7
;7 8$
usuarioRespuestaCompleto $
=% &
reporte' .
.. /$
usuarioRespuestaCompleto/ G
;G H
fechaRespuesta 
= 
reporte $
.$ %
fechaRespuesta% 3
;3 4
} 	
public 
int 
id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
detalle 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
usuarioRegistro %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string #
usuarioRegistroCompleto -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
string 
fechaReclamo "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
tipoReclamo !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
pedido 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
cliente 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
	respuesta 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
usuarioRespuesta &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public   
string   $
usuarioRespuestaCompleto   .
{  / 0
get  1 4
;  4 5
set  6 9
;  9 :
}  ; <
public!! 
string!! 
fechaRespuesta!! $
{!!% &
get!!' *
;!!* +
set!!, /
;!!/ 0
}!!1 2
}"" 
}## π
iD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\ViewModels\Reportes\ReporteStockViewModel.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "

ViewModels" ,
., -
Reportes- 5
{ 
public 

class !
ReporteStockViewModel &
{ 
public !
ReporteStockViewModel $
($ %
ReporteStock% 1
reporte2 9
)9 :
{ 	
id		 
=		 
reporte		 
.		 
id		 
;		 
detalle

 
=

 
reporte

 
.

 
detalle

 %
;

% &
usuarioRegistro 
= 
reporte %
.% &
usuarioRegistro& 5
;5 6#
usuarioRegistroCompleto #
=$ %
reporte& -
.- .#
usuarioRegistroCompleto. E
;E F
fechaReclamo 
= 
reporte "
." #
fechaReclamo# /
;/ 0
tipoReclamo 
= 
reporte !
.! "
tipoReclamo" -
;- .
pedido 
= 
reporte 
. 
pedido #
;# $
cliente 
= 
reporte 
. 
cliente %
;% &
	respuesta 
= 
reporte 
.  
	respuesta  )
;) *
usuarioRespuesta 
= 
reporte &
.& '
usuarioRespuesta' 7
;7 8$
usuarioRespuestaCompleto $
=% &
reporte' .
.. /$
usuarioRespuestaCompleto/ G
;G H
fechaRespuesta 
= 
reporte $
.$ %
fechaRespuesta% 3
;3 4
} 	
public 
int 
id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
detalle 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
usuarioRegistro %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string #
usuarioRegistroCompleto -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
string 
fechaReclamo "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
tipoReclamo !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
pedido 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
cliente 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
	respuesta 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
usuarioRespuesta &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public   
string   $
usuarioRespuestaCompleto   .
{  / 0
get  1 4
;  4 5
set  6 9
;  9 :
}  ; <
public!! 
string!! 
fechaRespuesta!! $
{!!% &
get!!' *
;!!* +
set!!, /
;!!/ 0
}!!1 2
}"" 
}## Ω
jD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\ViewModels\Reportes\ReporteVentasViewModel.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "

ViewModels" ,
., -
Reportes- 5
{ 
public 

class "
ReporteVentasViewModel '
{ 
public "
ReporteVentasViewModel %
(% &
ReporteVentas& 3
reporte4 ;
); <
{ 	
id		 
=		 
reporte		 
.		 
id		 
;		 
detalle

 
=

 
reporte

 
.

 
detalle

 %
;

% &
usuarioRegistro 
= 
reporte %
.% &
usuarioRegistro& 5
;5 6#
usuarioRegistroCompleto #
=$ %
reporte& -
.- .#
usuarioRegistroCompleto. E
;E F
fechaReclamo 
= 
reporte "
." #
fechaReclamo# /
;/ 0
tipoReclamo 
= 
reporte !
.! "
tipoReclamo" -
;- .
pedido 
= 
reporte 
. 
pedido #
;# $
cliente 
= 
reporte 
. 
cliente %
;% &
	respuesta 
= 
reporte 
.  
	respuesta  )
;) *
usuarioRespuesta 
= 
reporte &
.& '
usuarioRespuesta' 7
;7 8$
usuarioRespuestaCompleto $
=% &
reporte' .
.. /$
usuarioRespuestaCompleto/ G
;G H
fechaRespuesta 
= 
reporte $
.$ %
fechaRespuesta% 3
;3 4
} 	
public 
int 
id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
detalle 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
usuarioRegistro %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string #
usuarioRegistroCompleto -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
string 
fechaReclamo "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
tipoReclamo !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
pedido 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
cliente 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
	respuesta 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
usuarioRespuesta &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public   
string   $
usuarioRespuestaCompleto   .
{  / 0
get  1 4
;  4 5
set  6 9
;  9 :
}  ; <
public!! 
string!! 
fechaRespuesta!! $
{!!% &
get!!' *
;!!* +
set!!, /
;!!/ 0
}!!1 2
}"" 
}## Î	
WD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\ViewModels\RolViewModel.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "

ViewModels" ,
{ 
public 

class 
RolViewModel 
{ 
public 
RolViewModel 
( 
Rol 
usuario  '
)' (
{ 	
id		 
=		 
usuario		 
.		 
id		 
;		 
nombre

 
=

 
usuario

 
.

 
nombre

 #
;

# $
descripcion 
= 
usuario !
.! "
descripcion" -
;- .
} 	
public 
int 
id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
nombre 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
descripcion !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} É

aD:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\ViewModels\TipoDocumentoViewModel.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "

ViewModels" ,
{ 
public 

class "
TipoDocumentoViewModel '
{ 
public "
TipoDocumentoViewModel %
(% &
TipoDocumento& 3
doc4 7
)7 8
{ 	
id		 
=		 
doc		 
.		 
id		 
;		 
nombre

 
=

 
doc

 
.

 
nombre

 
;

  
descripcion 
= 
doc 
. 
descripcion )
;) *
} 	
public 
int 
id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
nombre 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
descripcion !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ˜
[D:\Proyectos\NetCore\UPC_PI2_Backend\PremierBeef.Application\ViewModels\UsuarioViewModel.cs
	namespace 	
PremierBeef
 
. 
Application !
.! "

ViewModels" ,
{ 
public 

class 
UsuarioViewModel !
{ 
public 
UsuarioViewModel 
(  
Usuario  '
usuario( /
)/ 0
{ 	
id		 
=		 
usuario		 
.		 
id		 
;		 
this

 
.

 
usuario

 
=

 
usuario

 "
.

" #
usuario

# *
;

* +
clave 
= 
usuario 
. 
clave !
;! "
correo 
= 
usuario 
. 
correo #
;# $
nombre 
= 
usuario 
. 
nombre #
;# $

apePaterno 
= 
usuario  
.  !

apePaterno! +
;+ ,

apeMaterno 
= 
usuario  
.  !

apeMaterno! +
;+ ,
telefono 
= 
usuario 
. 
telefono '
;' (
idRol 
= 
usuario 
. 
idRol !
;! "
fecRegistro 
= 
usuario !
.! "
fecRegistro" -
;- .
} 	
public 
int 
id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
usuario 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
clave 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
correo 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
nombre 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 

apePaterno  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 

apeMaterno  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
telefono 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
idRol 
{ 
get 
; 
set  #
;# $
}% &
public 
DateTime 
fecRegistro #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
fecModificacion '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
}   
}!! 