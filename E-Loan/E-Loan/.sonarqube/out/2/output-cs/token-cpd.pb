◊
jC:\Users\selvaak\source\repos\.NET-NewYaksha-UseCase\E-Loan.BusinessLayer\Interfaces\ILoanAdminServices.cs
	namespace 	
E_Loan
 
. 
BusinessLayer 
. 

Interfaces )
{ 
public 

	interface 
ILoanAdminServices '
{		 
Task

 
<

 
string

 
>

 
Login

 
(

 
LoginViewModel

 )
model

* /
)

/ 0
;

0 1
Task 
< 
IdentityResult 
> 
Register %
(% &

UserMaster& 0
user1 5
,5 6
string7 =
password> F
)F G
;G H
Task 
< 
IdentityResult 
> 

CreateRole '
(' (
CreateRoleViewModel( ;
model< A
)A B
;B C
Task 
< 
IdentityResult 
> 
EditUsersInRole ,
(, -
UserRoleViewModel- >
model? D
,D E
stringF L
roleIdM S
)S T
;T U
Task 
< 
IdentityResult 
> 
ChangeUserPassword /
(/ 0#
ChangePasswordViewModel0 G
modelH M
)M N
;N O
Task 
< 
IdentityResult 
> 
EditRole %
(% &
EditRoleViewModel& 7
model8 =
)= >
;> ?
Task 
< 
IdentityRole 
> 
FindRoleByRoleName -
(- .
string. 4
roleName5 =
)= >
;> ?
Task 
< 
IdentityRole 
> 
FindRoleByRoleId +
(+ ,
string, 2
roleId3 9
)9 :
;: ;
Task 
< 
IEnumerable 
< 
IdentityRole %
>% &
>& '
ListAllRole( 3
(3 4
)4 5
;5 6
Task 
< 
IEnumerable 
< 

UserMaster #
># $
>$ %
ListAllUser& 1
(1 2
)2 3
;3 4
Task 
< 
IdentityResult 
> 
DisableUser (
(( )
string) /
userId0 6
)6 7
;7 8
Task 
< 
IdentityResult 
> 

EnableUser '
(' (
string( .
userId/ 5
)5 6
;6 7
Task 
< 

UserMaster 
> 
FindByEmailAsync )
() *
string* 0
email1 6
)6 7
;7 8
Task 
< 

UserMaster 
> 
FindUserByIdAsync *
(* +
string+ 1
userId2 8
)8 9
;9 :
} 
} ﬁ

jC:\Users\selvaak\source\repos\.NET-NewYaksha-UseCase\E-Loan.BusinessLayer\Interfaces\ILoanClerkServices.cs
	namespace 	
E_Loan
 
. 
BusinessLayer 
. 

Interfaces )
{ 
public 

	interface 
ILoanClerkServices '
{ 
Task		 
<		 
IEnumerable		 
<		 

LoanMaster		 #
>		# $
>		$ %
AllLoanApplication		& 8
(		8 9
)		9 :
;		: ;
Task

 
<

 
IEnumerable

 
<

 

LoanMaster

 #
>

# $
>

$ %#
ReceivedLoanApplication

& =
(

= >
)

> ?
;

? @
Task 
< 
IEnumerable 
< 

LoanMaster #
># $
>$ %&
NotReceivedLoanApplication& @
(@ A
)A B
;B C
Task 
< 
LoanProcesstrans 
> 
ProcessLoan *
(* +
LoanProcesstrans+ ;
loanProcesstrans< L
)L M
;M N
Task 
< 

LoanMaster 
> 
ReceivedLoan %
(% &
int& )
loanId* 0
)0 1
;1 2
} 
} ©
mC:\Users\selvaak\source\repos\.NET-NewYaksha-UseCase\E-Loan.BusinessLayer\Interfaces\ILoanCustomerServices.cs
	namespace 	
E_Loan
 
. 
BusinessLayer 
. 

Interfaces )
{ 
public 

	interface !
ILoanCustomerServices *
{ 
Task 
< 

LoanMaster 
> 
ApplyMortgage &
(& '

LoanMaster' 1

loanMaster2 <
)< =
;= >
Task		 
<		 

LoanMaster		 
>		 
UpdateMortgage		 '
(		' (

LoanMaster		( 2

loanMaster		3 =
)		= >
;		> ?
Task

 
<

 

LoanMaster

 
>

 
AppliedLoanStatus

 *
(

* +
int

+ .
loanId

/ 5
)

5 6
;

6 7
} 
} Æ
lC:\Users\selvaak\source\repos\.NET-NewYaksha-UseCase\E-Loan.BusinessLayer\Interfaces\ILoanManagerServices.cs
	namespace 	
E_Loan
 
. 
BusinessLayer 
. 

Interfaces )
{ 
public 

	interface  
ILoanManagerServices )
{ 
Task		 
<		 
IEnumerable		 
<		 

LoanMaster		 #
>		# $
>		$ %
AllLoanApplication		& 8
(		8 9
)		9 :
;		: ;
Task

 
<

 

LoanMaster

 
>

 !
AcceptLoanApplication

 .
(

. /
int

/ 2
loanId

3 9
,

9 :
string

; A
remark

B H
)

H I
;

I J
Task 
< 

LoanMaster 
> !
RejectLoanApplication .
(. /
int/ 2
loanId3 9
,9 :
string; A
remarkB H
)H I
;I J
Task 
< 
LoanApprovaltrans 
> 
SanctionedLoan  .
(. /
LoanApprovaltrans/ @
loanApprovaltransA R
)R S
;S T
Task 
< 

LoanMaster 
> 
CheckLoanStatus (
(( )
int) ,
loanId- 3
)3 4
;4 5
} 
} œ5
gC:\Users\selvaak\source\repos\.NET-NewYaksha-UseCase\E-Loan.BusinessLayer\Services\LoanAdminServices.cs
	namespace		 	
E_Loan		
 
.		 
BusinessLayer		 
.		 
Services		 '
{

 
public 

class 
LoanAdminServices "
:# $
ILoanAdminServices% 7
{ 
private 
readonly  
ILoanAdminRepository -
_adminRepository. >
;> ?
public 
LoanAdminServices  
(  ! 
ILoanAdminRepository! 5
loanAdminRepository6 I
)I J
{ 	
_adminRepository 
= 
loanAdminRepository 2
;2 3
} 	
public 
async 
Task 
< 
IdentityResult (
>( )

CreateRole* 4
(4 5
CreateRoleViewModel5 H
modelI N
)N O
{ 	
return 
await 
_adminRepository )
.) *

CreateRole* 4
(4 5
model5 :
): ;
;; <
} 	
public## 
async## 
Task## 
<## 
IdentityResult## (
>##( )
DisableUser##* 5
(##5 6
string##6 <
userId##= C
)##C D
{$$ 	
return%% 
await%% 
_adminRepository%% )
.%%) *
DisableUser%%* 5
(%%5 6
userId%%6 <
)%%< =
;%%= >
}&& 	
public,, 
async,, 
Task,, 
<,, 
IdentityResult,, (
>,,( )
EditRole,,* 2
(,,2 3
EditRoleViewModel,,3 D
model,,E J
),,J K
{-- 	
return.. 
await.. 
_adminRepository.. )
...) *
EditRole..* 2
(..2 3
model..3 8
)..8 9
;..9 :
}// 	
public66 
async66 
Task66 
<66 
IdentityResult66 (
>66( )
ChangeUserPassword66* <
(66< =#
ChangePasswordViewModel66= T
model66U Z
)66Z [
{77 	
return88 
await88 
_adminRepository88 )
.88) *
ChangeUserPassword88* <
(88< =
model88= B
)88B C
;88C D
}99 	
public@@ 
async@@ 
Task@@ 
<@@ 
IdentityResult@@ (
>@@( )
EditUsersInRole@@* 9
(@@9 :
UserRoleViewModel@@: K
model@@L Q
,@@Q R
string@@S Y
roleId@@Z `
)@@` a
{AA 	
returnBB 
awaitBB 
_adminRepositoryBB )
.BB) *
EditUsersInRoleBB* 9
(BB9 :
modelBB: ?
,BB? @
roleIdBBA G
)BBG H
;BBH I
}CC 	
publicII 
asyncII 
TaskII 
<II 
IdentityResultII (
>II( )

EnableUserII* 4
(II4 5
stringII5 ;
userIdII< B
)IIB C
{JJ 	
returnKK 
awaitKK 
_adminRepositoryKK )
.KK) *

EnableUserKK* 4
(KK4 5
userIdKK5 ;
)KK; <
;KK< =
}LL 	
publicRR 
asyncRR 
TaskRR 
<RR 

UserMasterRR $
>RR$ %
FindByEmailAsyncRR& 6
(RR6 7
stringRR7 =
emailRR> C
)RRC D
{SS 	
returnTT 
awaitTT 
_adminRepositoryTT )
.TT) *
FindByEmailAsyncTT* :
(TT: ;
emailTT; @
)TT@ A
;TTA B
}UU 	
public[[ 
async[[ 
Task[[ 
<[[ 
IdentityRole[[ &
>[[& '
FindRoleByRoleId[[( 8
([[8 9
string[[9 ?
roleId[[@ F
)[[F G
{\\ 	
return]] 
await]] 
_adminRepository]] )
.]]) *
FindRoleByRoleId]]* :
(]]: ;
roleId]]; A
)]]A B
;]]B C
}^^ 	
publicdd 
asyncdd 
Taskdd 
<dd 
IdentityRoledd &
>dd& '
FindRoleByRoleNamedd( :
(dd: ;
stringdd; A
roleNameddB J
)ddJ K
{ee 	
returnff 
awaitff 
_adminRepositoryff )
.ff) *
FindRoleByRoleNameff* <
(ff< =
roleNameff= E
)ffE F
;ffF G
}gg 	
publicll 
asyncll 
Taskll 
<ll 
IEnumerablell %
<ll% &
IdentityRolell& 2
>ll2 3
>ll3 4
ListAllRolell5 @
(ll@ A
)llA B
{mm 	
returnnn 
awaitnn 
_adminRepositorynn )
.nn) *
ListAllRolenn* 5
(nn5 6
)nn6 7
;nn7 8
}oo 	
publictt 
asynctt 
Tasktt 
<tt 
IEnumerablett %
<tt% &

UserMastertt& 0
>tt0 1
>tt1 2
ListAllUsertt3 >
(tt> ?
)tt? @
{uu 	
returnvv 
awaitvv 
_adminRepositoryvv )
.vv) *
ListAllUservv* 5
(vv5 6
)vv6 7
;vv7 8
}ww 	
public}} 
Task}} 
<}} 
string}} 
>}} 
Login}} !
(}}! "
LoginViewModel}}" 0
model}}1 6
)}}6 7
{~~ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
}
ÄÄ 	
public
ÜÜ 
async
ÜÜ 
Task
ÜÜ 
<
ÜÜ 

UserMaster
ÜÜ $
>
ÜÜ$ %
FindUserByIdAsync
ÜÜ& 7
(
ÜÜ7 8
string
ÜÜ8 >
userId
ÜÜ? E
)
ÜÜE F
{
áá 	
return
àà 
await
àà 
_adminRepository
àà )
.
àà) *
FindUserByIdAsync
àà* ;
(
àà; <
userId
àà< B
)
ààB C
;
ààC D
}
ââ 	
public
êê 
async
êê 
Task
êê 
<
êê 
IdentityResult
êê (
>
êê( )
Register
êê* 2
(
êê2 3

UserMaster
êê3 =
user
êê> B
,
êêB C
string
êêD J
password
êêK S
)
êêS T
{
ëë 	
return
íí 
await
íí 
_adminRepository
íí )
.
íí) *
Register
íí* 2
(
íí2 3
user
íí3 7
,
íí7 8
password
íí9 A
)
ííA B
;
ííB C
}
ìì 	
}
îî 
}ïï Ø
gC:\Users\selvaak\source\repos\.NET-NewYaksha-UseCase\E-Loan.BusinessLayer\Services\LoanClerkServices.cs
	namespace 	
E_Loan
 
. 
BusinessLayer 
. 
Services '
{		 
public

 

class

 
LoanClerkServices

 "
:

# $
ILoanClerkServices

% 7
{ 
private 
readonly  
ILoanClerkRepository -
_clerkRepository. >
;> ?
public 
LoanClerkServices  
(  ! 
ILoanClerkRepository! 5
loanClerkRepository6 I
)I J
{ 	
_clerkRepository 
= 
loanClerkRepository 2
;2 3
} 	
public 
async 
Task 
< 
IEnumerable %
<% &

LoanMaster& 0
>0 1
>1 2
AllLoanApplication3 E
(E F
)F G
{ 	
return 
await 
_clerkRepository )
.) *
AllLoanApplication* <
(< =
)= >
;> ?
} 	
public   
async   
Task   
<   
IEnumerable   %
<  % &

LoanMaster  & 0
>  0 1
>  1 2&
NotReceivedLoanApplication  3 M
(  M N
)  N O
{!! 	
return"" 
await"" 
_clerkRepository"" (
.""( )&
NotReceivedLoanApplication"") C
(""C D
)""D E
;""E F
}## 	
public)) 
async)) 
Task)) 
<)) 
LoanProcesstrans)) *
>))* +
ProcessLoan)), 7
())7 8
LoanProcesstrans))8 H
loanProcesstrans))I Y
)))Y Z
{** 	
throw,, 
new,, #
NotImplementedException,, -
(,,- .
),,. /
;,,/ 0
}.. 	
public44 
async44 
Task44 
<44 

LoanMaster44 $
>44$ %
ReceivedLoan44& 2
(442 3
int443 6
loanId447 =
)44= >
{55 	
return77 
await77 
_clerkRepository77 )
.77) *
ReceivedLoan77* 6
(776 7
loanId777 =
)77= >
;77> ?
}99 	
public>> 
async>> 
Task>> 
<>> 
IEnumerable>> %
<>>% &

LoanMaster>>& 0
>>>0 1
>>>1 2#
ReceivedLoanApplication>>3 J
(>>J K
)>>K L
{?? 	
return@@ 
await@@ 
_clerkRepository@@ )
.@@) *#
ReceivedLoanApplication@@* A
(@@A B
)@@B C
;@@C D
}BB 	
}CC 
}DD Â
jC:\Users\selvaak\source\repos\.NET-NewYaksha-UseCase\E-Loan.BusinessLayer\Services\LoanCustomerServices.cs
	namespace 	
E_Loan
 
. 
BusinessLayer 
. 
Services '
{ 
public

 

class

  
LoanCustomerServices

 %
:

& '!
ILoanCustomerServices

( =
{ 
private 
readonly #
ILoanCustomerRepository 0
_customerRepository1 D
;D E
public  
LoanCustomerServices #
(# $#
ILoanCustomerRepository$ ;"
loanCustomerRepository< R
)R S
{ 	
_customerRepository 
=  !"
loanCustomerRepository" 8
;8 9
} 	
public 
async 
Task 
< 

LoanMaster $
>$ %
ApplyMortgage& 3
(3 4

LoanMaster4 >

loanMaster? I
)I J
{ 	
return 
await 
_customerRepository ,
., -
ApplyMortgage- :
(: ;

loanMaster; E
)E F
;F G
} 	
public## 
async## 
Task## 
<## 

LoanMaster## $
>##$ %
AppliedLoanStatus##& 7
(##7 8
int##8 ;
loanId##< B
)##B C
{$$ 	
var%% 
result%% 
=%% 
await%% 
_customerRepository%% 2
.%%2 3
AppliedLoanStatus%%3 D
(%%D E
loanId%%E K
)%%K L
;%%L M
return&& 
result&& 
;&& 
}'' 	
public-- 
async-- 
Task-- 
<-- 

LoanMaster-- $
>--$ %
UpdateMortgage--& 4
(--4 5

LoanMaster--5 ?

loanMaster--@ J
)--J K
{.. 	
var// 
result// 
=// 
await// 
_customerRepository// 2
.//2 3
UpdateMortgage//3 A
(//A B

loanMaster//B L
)//L M
;//M N
return00 
result00 
;00 
}11 	
}22 
}33 †
iC:\Users\selvaak\source\repos\.NET-NewYaksha-UseCase\E-Loan.BusinessLayer\Services\LoanManagerServices.cs
	namespace 	
E_Loan
 
. 
BusinessLayer 
. 
Services '
{ 
public		 

class		 
LoanManagerServices		 $
:		% & 
ILoanManagerServices		' ;
{

 
private 
readonly "
ILoanManagerRepository /
_managerRepository0 B
;B C
public 
LoanManagerServices "
(" #"
ILoanManagerRepository# 9!
loanManagerRepository: O
)O P
{ 	
_managerRepository 
=  !
loanManagerRepository! 6
;6 7
} 	
public 
async 
Task 
< 

LoanMaster $
>$ %!
AcceptLoanApplication& ;
(; <
int< ?
loanId@ F
,F G
stringH N
remarkO U
)U V
{ 	
return 
await 
_managerRepository +
.+ ,!
AcceptLoanApplication, A
(A B
loanIdB H
,H I
remarkJ P
)P Q
;Q R
} 	
public!! 
async!! 
Task!! 
<!! 
IEnumerable!! %
<!!% &

LoanMaster!!& 0
>!!0 1
>!!1 2
AllLoanApplication!!3 E
(!!E F
)!!F G
{"" 	
return## 
await## 
_managerRepository## +
.##+ ,
AllLoanApplication##, >
(##> ?
)##? @
;##@ A
}$$ 	
public** 
async** 
Task** 
<** 

LoanMaster** $
>**$ %
CheckLoanStatus**& 5
(**5 6
int**6 9
loanId**: @
)**@ A
{++ 	
return,, 
await,, 
_managerRepository,, +
.,,+ ,
CheckLoanStatus,,, ;
(,,; <
loanId,,< B
),,B C
;,,C D
}-- 	
public44 
async44 
Task44 
<44 

LoanMaster44 $
>44$ %!
RejectLoanApplication44& ;
(44; <
int44< ?
loanId44@ F
,44F G
string44H N
remark44O U
)44U V
{55 	
return66 
await66 
_managerRepository66 +
.66+ ,!
RejectLoanApplication66, A
(66A B
loanId66B H
,66H I
remark66J P
)66P Q
;66Q R
}77 	
public== 
async== 
Task== 
<== 
LoanApprovaltrans== +
>==+ ,
SanctionedLoan==- ;
(==; <
LoanApprovaltrans==< M
loanApprovaltrans==N _
)==_ `
{>> 	
var?? 
result?? 
=?? 
await?? 
_managerRepository?? 1
.??1 2
SanctionedLoan??2 @
(??@ A
loanApprovaltrans??A R
)??R S
;??S T
return@@ 
result@@ 
;@@ 
}AA 	
}BB 
}CC ÷
uC:\Users\selvaak\source\repos\.NET-NewYaksha-UseCase\E-Loan.BusinessLayer\Services\Repository\ILoanAdminRepository.cs
	namespace 	
E_Loan
 
. 
BusinessLayer 
. 
Services '
.' (

Repository( 2
{ 
public 

	interface  
ILoanAdminRepository )
{		 
Task

 
<

 
IdentityResult

 
>

 
Register

 %
(

% &

UserMaster

& 0
user

1 5
,

5 6
string

7 =
password

> F
)

F G
;

G H
Task 
< 
IdentityResult 
> 

CreateRole '
(' (
CreateRoleViewModel( ;
model< A
)A B
;B C
Task 
< 
IdentityResult 
> 
EditUsersInRole ,
(, -
UserRoleViewModel- >
model? D
,D E
stringF L
roleIdM S
)S T
;T U
Task 
< 
IdentityResult 
> 
ChangeUserPassword /
(/ 0#
ChangePasswordViewModel0 G
modelH M
)M N
;N O
Task 
< 
IdentityResult 
> 
EditRole %
(% &
EditRoleViewModel& 7
model8 =
)= >
;> ?
Task 
< 
IdentityRole 
> 
FindRoleByRoleName -
(- .
string. 4
roleName5 =
)= >
;> ?
Task 
< 
IdentityRole 
> 
FindRoleByRoleId +
(+ ,
string, 2
roleId3 9
)9 :
;: ;
Task 
< 
IEnumerable 
< 
IdentityRole %
>% &
>& '
ListAllRole( 3
(3 4
)4 5
;5 6
Task 
< 
IEnumerable 
< 

UserMaster #
># $
>$ %
ListAllUser& 1
(1 2
)2 3
;3 4
Task 
< 
IdentityResult 
> 
DisableUser (
(( )
string) /
userId0 6
)6 7
;7 8
Task 
< 
IdentityResult 
> 

EnableUser '
(' (
string( .
userId/ 5
)5 6
;6 7
Task 
< 

UserMaster 
> 
FindByEmailAsync )
() *
string* 0
email1 6
)6 7
;7 8
Task 
< 

UserMaster 
> 
FindUserByIdAsync *
(* +
string+ 1
userId2 8
)8 9
;9 :
} 
} ê
uC:\Users\selvaak\source\repos\.NET-NewYaksha-UseCase\E-Loan.BusinessLayer\Services\Repository\ILoanClerkRepository.cs
	namespace 	
E_Loan
 
. 
BusinessLayer 
. 
Services '
.' (

Repository( 2
{ 
public 

	interface  
ILoanClerkRepository )
{ 
Task		 
<		 
IEnumerable		 
<		 

LoanMaster		 #
>		# $
>		$ %
AllLoanApplication		& 8
(		8 9
)		9 :
;		: ;
Task

 
<

 
IEnumerable

 
<

 

LoanMaster

 #
>

# $
>

$ %#
ReceivedLoanApplication

& =
(

= >
)

> ?
;

? @
Task 
< 
IEnumerable 
< 

LoanMaster #
># $
>$ %&
NotReceivedLoanApplication& @
(@ A
)A B
;B C
Task 
< 
LoanProcesstrans 
> 
ProcessLoan *
(* +
LoanProcesstrans+ ;
loanProcesstrans< L
)L M
;M N
Task 
< 

LoanMaster 
> 
ReceivedLoan %
(% &
int& )
loanId* 0
)0 1
;1 2
} 
} €
xC:\Users\selvaak\source\repos\.NET-NewYaksha-UseCase\E-Loan.BusinessLayer\Services\Repository\ILoanCustomerRepository.cs
	namespace 	
E_Loan
 
. 
BusinessLayer 
. 
Services '
.' (

Repository( 2
{ 
public 

	interface #
ILoanCustomerRepository ,
{ 
Task 
< 

LoanMaster 
> 
ApplyMortgage &
(& '

LoanMaster' 1

loanMaster2 <
)< =
;= >
Task		 
<		 

LoanMaster		 
>		 
UpdateMortgage		 '
(		' (

LoanMaster		( 2

loanMaster		3 =
)		= >
;		> ?
Task

 
<

 

LoanMaster

 
>

 
AppliedLoanStatus

 *
(

* +
int

+ .
loanId

/ 5
)

5 6
;

6 7
} 
} ‡
wC:\Users\selvaak\source\repos\.NET-NewYaksha-UseCase\E-Loan.BusinessLayer\Services\Repository\ILoanManagerRepository.cs
	namespace 	
E_Loan
 
. 
BusinessLayer 
. 
Services '
.' (

Repository( 2
{ 
public 

	interface "
ILoanManagerRepository +
{ 
Task		 
<		 
IEnumerable		 
<		 

LoanMaster		 #
>		# $
>		$ %
AllLoanApplication		& 8
(		8 9
)		9 :
;		: ;
Task

 
<

 

LoanMaster

 
>

 !
AcceptLoanApplication

 .
(

. /
int

/ 2
loanId

3 9
,

9 :
string

; A
remark

B H
)

H I
;

I J
Task 
< 

LoanMaster 
> !
RejectLoanApplication .
(. /
int/ 2
loanId3 9
,9 :
string; A
remarkB H
)H I
;I J
Task 
< 
LoanApprovaltrans 
> 
SanctionedLoan  .
(. /
LoanApprovaltrans/ @
loanApprovaltransA R
)R S
;S T
Task 
< 

LoanMaster 
> 
CheckLoanStatus (
(( )
int) ,
loanId- 3
)3 4
;4 5
} 
} îÅ
tC:\Users\selvaak\source\repos\.NET-NewYaksha-UseCase\E-Loan.BusinessLayer\Services\Repository\LoanAdminRepository.cs
	namespace		 	
E_Loan		
 
.		 
BusinessLayer		 
.		 
Services		 '
.		' (

Repository		( 2
{

 
public 

class 
LoanAdminRepository $
:% & 
ILoanAdminRepository' ;
{ 
private 
readonly 
UserManager $
<$ %

UserMaster% /
>/ 0
userManager1 <
;< =
private 
readonly 
RoleManager $
<$ %
IdentityRole% 1
>1 2
roleManager3 >
;> ?
private 
readonly 
IConfiguration '
_configuration( 6
;6 7
public 
LoanAdminRepository "
(" #
UserManager# .
<. /

UserMaster/ 9
>9 :
userManager; F
,F G
RoleManagerH S
<S T
IdentityRoleT `
>` a
roleManagerb m
,m n
IConfigurationo }
configuration	~ ã
)
ã å
{ 	
this 
. 
userManager 
= 
userManager *
;* +
this 
. 
roleManager 
= 
roleManager *
;* +
_configuration 
= 
configuration *
;* +
} 	
public 
async 
Task 
< 
IdentityResult (
>( )

CreateRole* 4
(4 5
CreateRoleViewModel5 H
modelI N
)N O
{ 	
try   
{!! 
IdentityRole"" 
identityRole"" )
=""* +
new"", /
IdentityRole""0 <
{""= >
Name""? C
=""D E
model""F K
.""K L
RoleName""L T
.""T U
Trim""U Y
(""Y Z
)""Z [
}""\ ]
;""] ^
IdentityResult## 
result## %
=##& '
await##( -
roleManager##. 9
.##9 :
CreateAsync##: E
(##E F
identityRole##F R
)##R S
;##S T
return$$ 
result$$ 
;$$ 
}%% 
catch&& 
(&& 
	Exception&& 
ex&& 
)&& 
{'' 
throw(( 
((( 
ex(( 
)(( 
;(( 
})) 
}** 	
public00 
async00 
Task00 
<00 
IdentityResult00 (
>00( )
DisableUser00* 5
(005 6
string006 <
userId00= C
)00C D
{11 	
var22 
user22 
=22 
await22 
FindUserByIdAsync22 .
(22. /
userId22/ 5
)225 6
;226 7
bool33 
	newStatus33 
=33 
true33 !
;33! "
try44 
{55 
user66 
.66 
Enabled66 
=66 
	newStatus66 (
;66( )
return77 
await77 
userManager77 (
.77( )
UpdateAsync77) 4
(774 5
user775 9
)779 :
;77: ;
}88 
catch99 
(99 
	Exception99 
ex99 
)99 
{:: 
throw;; 
(;; 
ex;; 
);; 
;;; 
}<< 
}== 	
publicCC 
asyncCC 
TaskCC 
<CC 
IdentityResultCC (
>CC( )
EditRoleCC* 2
(CC2 3
EditRoleViewModelCC3 D
modelCCE J
)CCJ K
{DD 	
varEE 
roleEE 
=EE 
awaitEE 
roleManagerEE (
.EE( )
FindByIdAsyncEE) 6
(EE6 7
modelEE7 <
.EE< =
IdEE= ?
)EE? @
;EE@ A
tryFF 
{GG 
roleHH 
.HH 
NameHH 
=HH 
modelHH !
.HH! "
RoleNameHH" *
;HH* +
returnII 
awaitII 
roleManagerII (
.II( )
UpdateAsyncII) 4
(II4 5
roleII5 9
)II9 :
;II: ;
}JJ 
catchKK 
(KK 
	ExceptionKK 
exKK 
)KK 
{LL 
throwMM 
(MM 
exMM 
)MM 
;MM 
}NN 
}OO 	
publicVV 
asyncVV 
TaskVV 
<VV 
IdentityResultVV (
>VV( )
ChangeUserPasswordVV* <
(VV< =#
ChangePasswordViewModelVV= T
modelVVU Z
)VVZ [
{WW 	
varXX 
userXX 
=XX 
awaitXX 
FindByEmailAsyncXX -
(XX- .
modelXX. 3
.XX3 4
EmailXX4 9
)XX9 :
;XX: ;
varYY 
tokenYY 
=YY 
awaitYY 
userManagerYY )
.YY) *+
GeneratePasswordResetTokenAsyncYY* I
(YYI J
userYYJ N
)YYN O
;YYO P
tryZZ 
{[[ 
return\\ 
await\\ 
userManager\\ '
.\\' (
ResetPasswordAsync\\( :
(\\: ;
user\\; ?
,\\? @
token\\A F
,\\F G
model\\H M
.\\M N
Password\\N V
)\\V W
;\\W X
}]] 
catch^^ 
(^^ 
	Exception^^ 
ex^^ 
)^^ 
{__ 
throw`` 
(`` 
ex`` 
)`` 
;`` 
}aa 
}bb 	
publicii 
asyncii 
Taskii 
<ii 
IdentityResultii (
>ii( )
EditUsersInRoleii* 9
(ii9 :
UserRoleViewModelii: K
modeliiL Q
,iiQ R
stringiiS Y
roleIdiiZ `
)ii` a
{jj 	
IdentityResultkk 
resultkk !
=kk" #
nullkk$ (
;kk( )
varll 
rolell 
=ll 
awaitll 
FindRoleByRoleIdll -
(ll- .
roleIdll. 4
)ll4 5
;ll5 6
trymm 
{nn 
varoo 
useroo 
=oo 
awaitoo  
userManageroo! ,
.oo, -
FindByEmailAsyncoo- =
(oo= >
modeloo> C
.ooC D
EmailooD I
)ooI J
;ooJ K
ifqq 
(qq 
!qq 
awaitqq 
userManagerqq &
.qq& '
IsInRoleAsyncqq' 4
(qq4 5
userqq5 9
,qq9 :
roleqq; ?
.qq? @
Nameqq@ D
)qqD E
)qqE F
{rr 
resultss 
=ss 
awaitss "
userManagerss# .
.ss. /
AddToRoleAsyncss/ =
(ss= >
userss> B
,ssB C
rolessD H
.ssH I
NamessI M
)ssM N
;ssN O
}tt 
elseuu 
ifuu 
(uu 
awaituu 
userManageruu *
.uu* +
IsInRoleAsyncuu+ 8
(uu8 9
useruu9 =
,uu= >
roleuu? C
.uuC D
NameuuD H
)uuH I
)uuI J
{vv 
resultww 
=ww 
awaitww "
userManagerww# .
.ww. /
RemoveFromRoleAsyncww/ B
(wwB C
userwwC G
,wwG H
rolewwI M
.wwM N
NamewwN R
)wwR S
;wwS T
}xx 
returnyy 
resultyy 
;yy 
}zz 
catch{{ 
({{ 
	Exception{{ 
e{{ 
){{ 
{|| 
throw}} 
(}} 
e}} 
)}} 
;}} 
}~~ 
} 	
public
ÖÖ 
async
ÖÖ 
Task
ÖÖ 
<
ÖÖ 
IdentityResult
ÖÖ (
>
ÖÖ( )

EnableUser
ÖÖ* 4
(
ÖÖ4 5
string
ÖÖ5 ;
userId
ÖÖ< B
)
ÖÖB C
{
ÜÜ 	
var
áá 
user
áá 
=
áá 
await
áá 
FindUserByIdAsync
áá .
(
áá. /
userId
áá/ 5
)
áá5 6
;
áá6 7
bool
àà 
	newStatus
àà 
=
àà 
false
àà "
;
àà" #
try
ââ 
{
ää 
user
ãã 
.
ãã 
Enabled
ãã 
=
ãã 
	newStatus
ãã (
;
ãã( )
return
åå 
await
åå 
userManager
åå (
.
åå( )
UpdateAsync
åå) 4
(
åå4 5
user
åå5 9
)
åå9 :
;
åå: ;
}
çç 
catch
éé 
(
éé 
	Exception
éé 
ex
éé 
)
éé  
{
èè 
throw
êê 
(
êê 
ex
êê 
)
êê 
;
êê 
}
ëë 
}
íí 	
public
òò 
async
òò 
Task
òò 
<
òò 

UserMaster
òò $
>
òò$ %
FindByEmailAsync
òò& 6
(
òò6 7
string
òò7 =
email
òò> C
)
òòC D
{
ôô 	
return
öö 
await
öö 
userManager
öö $
.
öö$ %
FindByEmailAsync
öö% 5
(
öö5 6
email
öö6 ;
)
öö; <
;
öö< =
}
õõ 	
public
°° 
async
°° 
Task
°° 
<
°° 
IdentityRole
°° &
>
°°& '
FindRoleByRoleId
°°( 8
(
°°8 9
string
°°9 ?
roleId
°°@ F
)
°°F G
{
¢¢ 	
return
££ 
await
££ 
roleManager
££ $
.
££$ %
FindByIdAsync
££% 2
(
££2 3
roleId
££3 9
)
££9 :
;
££: ;
}
§§ 	
public
™™ 
async
™™ 
Task
™™ 
<
™™ 
IdentityRole
™™ &
>
™™& ' 
FindRoleByRoleName
™™( :
(
™™: ;
string
™™; A
roleName
™™B J
)
™™J K
{
´´ 	
try
¨¨ 
{
≠≠ 
return
ÆÆ 
await
ÆÆ 
roleManager
ÆÆ (
.
ÆÆ( )
FindByNameAsync
ÆÆ) 8
(
ÆÆ8 9
roleName
ÆÆ9 A
)
ÆÆA B
;
ÆÆB C
}
ØØ 
catch
∞∞ 
(
∞∞ 
	Exception
∞∞ 
ex
∞∞ 
)
∞∞ 
{
±± 
throw
≤≤ 
(
≤≤ 
ex
≤≤ 
)
≤≤ 
;
≤≤ 
}
≥≥ 
}
¥¥ 	
public
ππ 
async
ππ 
Task
ππ 
<
ππ 
IEnumerable
ππ %
<
ππ% &
IdentityRole
ππ& 2
>
ππ2 3
>
ππ3 4
ListAllRole
ππ5 @
(
ππ@ A
)
ππA B
{
∫∫ 	
try
ªª 
{
ºº 
return
ΩΩ 
await
ΩΩ 
roleManager
ΩΩ (
.
ΩΩ( )
Roles
ΩΩ) .
.
ΩΩ. /
ToListAsync
ΩΩ/ :
(
ΩΩ: ;
)
ΩΩ; <
;
ΩΩ< =
}
ææ 
catch
øø 
(
øø 
	Exception
øø 
ex
øø 
)
øø  
{
¿¿ 
throw
¡¡ 
(
¡¡ 
ex
¡¡ 
)
¡¡ 
;
¡¡ 
}
¬¬ 
}
√√ 	
public
»» 
async
»» 
Task
»» 
<
»» 
IEnumerable
»» %
<
»»% &

UserMaster
»»& 0
>
»»0 1
>
»»1 2
ListAllUser
»»3 >
(
»»> ?
)
»»? @
{
…… 	
try
   
{
ÀÀ 
return
ÃÃ 
await
ÃÃ 
userManager
ÃÃ (
.
ÃÃ( )
Users
ÃÃ) .
.
ÃÃ. /
ToListAsync
ÃÃ/ :
(
ÃÃ: ;
)
ÃÃ; <
;
ÃÃ< =
}
ÕÕ 
catch
ŒŒ 
(
ŒŒ 
	Exception
ŒŒ 
ex
ŒŒ 
)
ŒŒ  
{
œœ 
throw
–– 
(
–– 
ex
–– 
)
–– 
;
–– 
}
—— 
}
““ 	
public
ÿÿ 
async
ÿÿ 
Task
ÿÿ 
<
ÿÿ 

UserMaster
ÿÿ $
>
ÿÿ$ %
FindUserByIdAsync
ÿÿ& 7
(
ÿÿ7 8
string
ÿÿ8 >
userId
ÿÿ? E
)
ÿÿE F
{
ŸŸ 	
try
⁄⁄ 
{
€€ 
return
‹‹ 
await
‹‹ 
userManager
‹‹ (
.
‹‹( )
FindByIdAsync
‹‹) 6
(
‹‹6 7
userId
‹‹7 =
)
‹‹= >
;
‹‹> ?
}
›› 
catch
ﬁﬁ 
(
ﬁﬁ 
	Exception
ﬁﬁ 
ex
ﬁﬁ 
)
ﬁﬁ 
{
ﬂﬂ 
throw
‡‡ 
(
‡‡ 
ex
‡‡ 
)
‡‡ 
;
‡‡ 
}
·· 
}
‚‚ 	
public
„„ 
async
„„ 
Task
„„ 
<
„„ 
IdentityResult
„„ (
>
„„( )
Register
„„* 2
(
„„2 3

UserMaster
„„3 =
user
„„> B
,
„„B C
string
„„D J
password
„„K S
)
„„S T
{
‰‰ 	
try
ÂÂ 
{
ÊÊ 
var
ÁÁ 
result
ÁÁ 
=
ÁÁ 
await
ÁÁ "
userManager
ÁÁ# .
.
ÁÁ. /
CreateAsync
ÁÁ/ :
(
ÁÁ: ;
user
ÁÁ; ?
,
ÁÁ? @
password
ÁÁA I
)
ÁÁI J
;
ÁÁJ K
if
ËË 
(
ËË 
result
ËË 
.
ËË 
	Succeeded
ËË #
)
ËË# $
{
ÈÈ 
if
ÍÍ 
(
ÍÍ 
!
ÍÍ 
await
ÍÍ 
roleManager
ÍÍ *
.
ÍÍ* +
RoleExistsAsync
ÍÍ+ :
(
ÍÍ: ;
$str
ÍÍ; B
)
ÍÍB C
)
ÍÍC D
await
ÎÎ 
roleManager
ÎÎ )
.
ÎÎ) *
CreateAsync
ÎÎ* 5
(
ÎÎ5 6
new
ÎÎ6 9
IdentityRole
ÎÎ: F
(
ÎÎF G
$str
ÎÎG N
)
ÎÎN O
)
ÎÎO P
;
ÎÎP Q
if
ÏÏ 
(
ÏÏ 
!
ÏÏ 
await
ÏÏ 
roleManager
ÏÏ *
.
ÏÏ* +
RoleExistsAsync
ÏÏ+ :
(
ÏÏ: ;
$str
ÏÏ; D
)
ÏÏD E
)
ÏÏE F
await
ÌÌ 
roleManager
ÌÌ )
.
ÌÌ) *
CreateAsync
ÌÌ* 5
(
ÌÌ5 6
new
ÌÌ6 9
IdentityRole
ÌÌ: F
(
ÌÌF G
$str
ÌÌG P
)
ÌÌP Q
)
ÌÌQ R
;
ÌÌR S
if
ÓÓ 
(
ÓÓ 
!
ÓÓ 
await
ÓÓ 
roleManager
ÓÓ *
.
ÓÓ* +
RoleExistsAsync
ÓÓ+ :
(
ÓÓ: ;
$str
ÓÓ; F
)
ÓÓF G
)
ÓÓG H
await
ÔÔ 
roleManager
ÔÔ )
.
ÔÔ) *
CreateAsync
ÔÔ* 5
(
ÔÔ5 6
new
ÔÔ6 9
IdentityRole
ÔÔ: F
(
ÔÔF G
$str
ÔÔG R
)
ÔÔR S
)
ÔÔS T
;
ÔÔT U
if
 
(
 
!
 
await
 
roleManager
 *
.
* +
RoleExistsAsync
+ :
(
: ;
$str
; E
)
E F
)
F G
await
ÒÒ 
roleManager
ÒÒ )
.
ÒÒ) *
CreateAsync
ÒÒ* 5
(
ÒÒ5 6
new
ÒÒ6 9
IdentityRole
ÒÒ: F
(
ÒÒF G
$str
ÒÒG Q
)
ÒÒQ R
)
ÒÒR S
;
ÒÒS T
if
ÛÛ 
(
ÛÛ 
await
ÛÛ 
roleManager
ÛÛ )
.
ÛÛ) *
RoleExistsAsync
ÛÛ* 9
(
ÛÛ9 :
$str
ÛÛ: D
)
ÛÛD E
)
ÛÛE F
{
ÙÙ 
await
ıı 
userManager
ıı )
.
ıı) *
AddToRoleAsync
ıı* 8
(
ıı8 9
user
ıı9 =
,
ıı= >
$str
ıı? I
)
ııI J
;
ııJ K
}
ˆˆ 
}
˜˜ 
return
¯¯ 
result
¯¯ 
;
¯¯ 
}
˘˘ 
catch
˙˙ 
(
˙˙ 
	Exception
˙˙ 
ex
˙˙ 
)
˙˙ 
{
˚˚ 
throw
¸¸ 
(
¸¸ 
ex
¸¸ 
)
¸¸ 
;
¸¸ 
}
˝˝ 
}
˛˛ 	
}
ˇˇ 
}ÄÄ ˇ1
tC:\Users\selvaak\source\repos\.NET-NewYaksha-UseCase\E-Loan.BusinessLayer\Services\Repository\LoanClerkRepository.cs
	namespace		 	
E_Loan		
 
.		 
BusinessLayer		 
.		 
Services		 '
.		' (

Repository		( 2
{

 
public 

class 
LoanClerkRepository $
:% & 
ILoanClerkRepository' ;
{ 
private 
readonly 
UserMasterDbContext ,
_loanContext- 9
;9 :
public 
LoanClerkRepository "
(" #
UserMasterDbContext# 6
userMasterDbContext7 J
)J K
{ 	
_loanContext 
= 
userMasterDbContext .
;. /
} 	
public 
async 
Task 
< 
IEnumerable %
<% &

LoanMaster& 0
>0 1
>1 2
AllLoanApplication3 E
(E F
)F G
{ 	
try 
{ 
var 
result 
= 
await "
_loanContext# /
./ 0
loanMasters0 ;
.; <
OrderByDescending !
(! "
x" #
=>$ &
x' (
.( )
Date) -
)- .
.. /
Take/ 3
(3 4
$num4 6
)6 7
.7 8
ToListAsync8 C
(C D
)D E
;E F
return 
result 
; 
}   
catch!! 
(!! 
	Exception!! 
ex!! 
)!!  
{"" 
throw## 
(## 
ex## 
)## 
;## 
}$$ 
}%% 	
public** 
async** 
Task** 
<** 
IEnumerable** %
<**% &

LoanMaster**& 0
>**0 1
>**1 2&
NotReceivedLoanApplication**3 M
(**M N
)**N O
{++ 	
try,, 
{-- 
var.. 
result.. 
=.. 
await.. "
_loanContext..# /
.../ 0
loanMasters..0 ;
...; <
Where// 
(// 
x// 
=>// 
x// 
.// 
Status// $
==//% '

LoanStatus//( 2
.//2 3
NotReceived//3 >
)//> ?
.//? @
Take//@ D
(//D E
$num//E G
)//G H
.//H I
ToListAsync//I T
(//T U
)//U V
;//V W
return00 
result00 
;00 
}11 
catch22 
(22 
	Exception22 
ex22 
)22  
{33 
throw44 
(44 
ex44 
)44 
;44 
}55 
}66 	
public<< 
async<< 
Task<< 
<<< 
LoanProcesstrans<< *
><<* +
ProcessLoan<<, 7
(<<7 8
LoanProcesstrans<<8 H
loanProcesstrans<<I Y
)<<Y Z
{== 	
try>> 
{?? 
await@@ 
_loanContext@@ "
.@@" #
loanProcesstrans@@# 3
.@@3 4
AddAsync@@4 <
(@@< =
loanProcesstrans@@= M
)@@M N
;@@N O
awaitAA 
_loanContextAA "
.AA" #
SaveChangesAsyncAA# 3
(AA3 4
)AA4 5
;AA5 6
returnBB 
loanProcesstransBB '
;BB' (
}CC 
catchDD 
(DD 
	ExceptionDD 
exDD 
)DD 
{EE 
throwFF 
(FF 
exFF 
)FF 
;FF 
}GG 
}HH 	
publicNN 
asyncNN 
TaskNN 
<NN 

LoanMasterNN $
>NN$ %
ReceivedLoanNN& 2
(NN2 3
intNN3 6
loanIdNN7 =
)NN= >
{OO 	
tryPP 
{QQ 
varRR 
findLoanRR 
=RR 
awaitRR $
_loanContextRR% 1
.RR1 2
loanMastersRR2 =
.RR= >
FirstOrDefaultAsyncRR> Q
(RRQ R
mRRR S
=>RRT V
mRRW X
.RRX Y
LoanIdRRY _
==RR` b
loanIdRRc i
)RRi j
;RRj k
ifSS 
(SS 
findLoanSS 
!=SS 
nullSS #
&&SS$ &
findLoanSS' /
.SS/ 0
StatusSS0 6
==SS7 9

LoanStatusSS: D
.SSD E
NotReceivedSSE P
)SSP Q
{TT 
findLoanUU 
.UU 
StatusUU #
=UU$ %

LoanStatusUU& 0
.UU0 1
ReceivedUU1 9
;UU9 :
awaitVV 
_loanContextVV &
.VV& '
SaveChangesAsyncVV' 7
(VV7 8
)VV8 9
;VV9 :
}WW 
returnXX 
findLoanXX 
;XX  
}YY 
catchZZ 
(ZZ 
	ExceptionZZ 
exZZ 
)ZZ 
{[[ 
throw\\ 
(\\ 
ex\\ 
)\\ 
;\\ 
}]] 
}^^ 	
publiccc 
asynccc 
Taskcc 
<cc 
IEnumerablecc %
<cc% &

LoanMastercc& 0
>cc0 1
>cc1 2#
ReceivedLoanApplicationcc3 J
(ccJ K
)ccK L
{dd 	
tryee 
{ff 
vargg 
resultgg 
=gg 
awaitgg "
_loanContextgg# /
.gg/ 0
loanMastersgg0 ;
.gg; <
Wherehh 
(hh 
xhh 
=>hh 
xhh 
.hh 
Statushh #
==hh$ &

LoanStatushh' 1
.hh1 2
Receivedhh2 :
)hh: ;
.hh; <
Takehh< @
(hh@ A
$numhhA C
)hhC D
.hhD E
ToListAsynchhE P
(hhP Q
)hhQ R
;hhR S
returnii 
resultii 
;ii 
}jj 
catchkk 
(kk 
	Exceptionkk 
exkk 
)kk 
{ll 
throwmm 
(mm 
exmm 
)mm 
;mm 
}nn 
}oo 	
}pp 
}qq ∂
wC:\Users\selvaak\source\repos\.NET-NewYaksha-UseCase\E-Loan.BusinessLayer\Services\Repository\LoanCustomerRepository.cs
	namespace 	
E_Loan
 
. 
BusinessLayer 
. 
Services '
.' (

Repository( 2
{ 
public		 

class		 "
LoanCustomerRepository		 '
:		( )#
ILoanCustomerRepository		* A
{

 
private 
readonly 
UserMasterDbContext ,
_loanContext- 9
;9 :
public "
LoanCustomerRepository %
(% &
UserMasterDbContext& 9
userMasterDbContext: M
)M N
{ 	
_loanContext 
= 
userMasterDbContext .
;. /
} 	
public 
async 
Task 
< 

LoanMaster $
>$ %
ApplyMortgage& 3
(3 4

LoanMaster4 >

loanMaster? I
)I J
{ 	
try 
{ 
await 
_loanContext "
." #
loanMasters# .
.. /
AddAsync/ 7
(7 8

loanMaster8 B
)B C
;C D
await 
_loanContext "
." #
SaveChangesAsync# 3
(3 4
)4 5
;5 6
return 

loanMaster !
;! "
} 
catch   
(   
	Exception   
ex   
)   
{!! 
throw"" 
("" 
ex"" 
)"" 
;"" 
}## 
}$$ 	
public** 
async** 
Task** 
<** 

LoanMaster** $
>**$ %
AppliedLoanStatus**& 7
(**7 8
int**8 ;
loanId**< B
)**B C
{++ 	
try,, 
{-- 
return.. 
await.. 
_loanContext.. )
...) *
loanMasters..* 5
...5 6
FirstOrDefaultAsync..6 I
(..I J
m..J K
=>..L N
m..O P
...P Q
LoanId..Q W
==..X Z
loanId..[ a
)..a b
;..b c
}// 
catch00 
(00 
	Exception00 
ex00 
)00 
{11 
throw22 
(22 
ex22 
)22 
;22 
}33 
}44 	
public:: 
async:: 
Task:: 
<:: 

LoanMaster:: $
>::$ %
UpdateMortgage::& 4
(::4 5

LoanMaster::5 ?

loanMaster::@ J
)::J K
{;; 	
try== 
{>> 
_loanContext?? 
.?? 
loanMasters?? (
.??( )
Update??) /
(??/ 0

loanMaster??0 :
)??: ;
;??; <
await@@ 
_loanContext@@ "
.@@" #
SaveChangesAsync@@# 3
(@@3 4
)@@4 5
;@@5 6
returnAA 

loanMasterAA !
;AA! "
}BB 
catchCC 
(CC 
	ExceptionCC 
exCC 
)CC 
{DD 
throwEE 
(EE 
exEE 
)EE 
;EE 
}FF 
}GG 	
}HH 
}II «7
vC:\Users\selvaak\source\repos\.NET-NewYaksha-UseCase\E-Loan.BusinessLayer\Services\Repository\LoanManagerRepository.cs
	namespace		 	
E_Loan		
 
.		 
BusinessLayer		 
.		 
Services		 '
.		' (

Repository		( 2
{

 
public 

class !
LoanManagerRepository &
:' ("
ILoanManagerRepository) ?
{ 
private 
readonly 
UserMasterDbContext ,
_loanContext- 9
;9 :
public !
LoanManagerRepository $
($ %
UserMasterDbContext% 8
userMasterDbContext9 L
)L M
{ 	
_loanContext 
= 
userMasterDbContext .
;. /
} 	
public 
async 
Task 
< 

LoanMaster $
>$ %!
AcceptLoanApplication& ;
(; <
int< ?
loanId@ F
,F G
stringH N
remarkO U
)U V
{ 	
try 
{ 
var 
findLoan 
= 
await $
_loanContext% 1
.1 2
loanMasters2 =
.= >
FirstOrDefaultAsync> Q
(Q R
mR S
=>T V
mW X
.X Y
LoanIdY _
==` b
loanIdc i
)i j
;j k
if   
(   
findLoan   
.   
Status   #
==  $ &

LoanStatus  ' 1
.  1 2
Received  2 :
)  : ;
{!! 
findLoan"" 
."" 
Status"" #
=""$ %

LoanStatus""& 0
.""0 1
Accept""1 7
;""7 8
findLoan## 
.## 
ManagerRemark## *
=##+ ,
remark##- 3
;##3 4
await$$ 
_loanContext$$ &
.$$& '
SaveChangesAsync$$' 7
($$7 8
)$$8 9
;$$9 :
}%% 
return&& 
findLoan&& 
;&&  
}'' 
catch(( 
((( 
	Exception(( 
ex(( 
)((  
{)) 
throw** 
(** 
ex** 
)** 
;** 
}++ 
},, 	
public11 
async11 
Task11 
<11 
IEnumerable11 %
<11% &

LoanMaster11& 0
>110 1
>111 2
AllLoanApplication113 E
(11E F
)11F G
{22 	
try33 
{44 
var55 
result55 
=55 
await55 "
_loanContext55# /
.55/ 0
loanMasters550 ;
.55; <
Where66 
(66 
x66 
=>66 
x66 
.66 
Status66 #
==66$ &

LoanStatus66' 1
.661 2
Received662 :
)66: ;
.66; <
Take66< @
(66@ A
$num66A C
)66C D
.66D E
ToListAsync66E P
(66P Q
)66Q R
;66R S
return77 
result77 
;77 
}88 
catch99 
(99 
	Exception99 
ex99 
)99  
{:: 
throw;; 
(;; 
ex;; 
);; 
;;; 
}<< 
}== 	
publicDD 
asyncDD 
TaskDD 
<DD 

LoanMasterDD $
>DD$ %!
RejectLoanApplicationDD& ;
(DD; <
intDD< ?
loanIdDD@ F
,DDF G
stringDDH N
remarkDDO U
)DDU V
{EE 	
tryFF 
{GG 
varHH 
findLoanHH 
=HH 
awaitHH $
_loanContextHH% 1
.HH1 2
loanMastersHH2 =
.HH= >
FirstOrDefaultAsyncHH> Q
(HHQ R
mHHR S
=>HHT V
mHHW X
.HHX Y
LoanIdHHY _
==HH` b
loanIdHHc i
)HHi j
;HHj k
ifII 
(II 
findLoanII 
.II 
StatusII #
==II$ &

LoanStatusII' 1
.II1 2
ReceivedII2 :
)II: ;
{JJ 
findLoanKK 
.KK 
StatusKK #
=KK$ %

LoanStatusKK& 0
.KK0 1
RejectedKK1 9
;KK9 :
findLoanLL 
.LL 
ManagerRemarkLL *
=LL+ ,
remarkLL- 3
;LL3 4
awaitMM 
_loanContextMM &
.MM& '
SaveChangesAsyncMM' 7
(MM7 8
)MM8 9
;MM9 :
}NN 
returnOO 
findLoanOO 
;OO  
}PP 
catchQQ 
(QQ 
	ExceptionQQ 
exQQ 
)QQ  
{RR 
throwSS 
(SS 
exSS 
)SS 
;SS 
}TT 
}UU 	
public[[ 
async[[ 
Task[[ 
<[[ 
LoanApprovaltrans[[ +
>[[+ ,
SanctionedLoan[[- ;
([[; <
LoanApprovaltrans[[< M
loanApprovaltrans[[N _
)[[_ `
{\\ 	
try]] 
{^^ 
await__ 
_loanContext__ "
.__" #
loanApprovaltrans__# 4
.__4 5
AddAsync__5 =
(__= >
loanApprovaltrans__> O
)__O P
;__P Q
await`` 
_loanContext`` "
.``" #
SaveChangesAsync``# 3
(``3 4
)``4 5
;``5 6
returnaa 
loanApprovaltransaa (
;aa( )
}bb 
catchcc 
(cc 
	Exceptioncc 
excc 
)cc  
{dd 
throwee 
(ee 
exee 
)ee 
;ee 
}ff 
}gg 	
publicmm 
asyncmm 
Taskmm 
<mm 

LoanMastermm $
>mm$ %
CheckLoanStatusmm& 5
(mm5 6
intmm6 9
loanIdmm: @
)mm@ A
{nn 	
tryoo 
{pp 
varqq 
findLoanqq 
=qq 
awaitqq $
_loanContextqq% 1
.qq1 2
loanMastersqq2 =
.qq= >
FirstOrDefaultAsyncqq> Q
(qqQ R
mqqR S
=>qqT V
mqqW X
.qqX Y
LoanIdqqY _
==qq` b
loanIdqqc i
)qqi j
;qqj k
ifrr 
(rr 
findLoanrr 
.rr 
Statusrr #
==rr$ &

LoanStatusrr' 1
.rr1 2
Acceptrr2 8
)rr8 9
{ss 
returntt 
findLoantt #
;tt# $
}uu 
returnvv 
findLoanvv 
;vv  
}ww 
catchxx 
(xx 
	Exceptionxx 
exxx 
)xx  
{yy 
throwzz 
(zz 
exzz 
)zz 
;zz 
}{{ 
}|| 	
}}} 
}~~ á
oC:\Users\selvaak\source\repos\.NET-NewYaksha-UseCase\E-Loan.BusinessLayer\ViewModels\ChangePasswordViewModel.cs
	namespace 	
E_Loan
 
. 
BusinessLayer 
{ 
public 

class #
ChangePasswordViewModel (
{ 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 3
)3 4
]4 5
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[

 	
EmailAddress

	 
]

 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 4
)4 5
]5 6
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 7
)7 8
]8 9
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
[ 	
Compare	 
( 
$str 
, 
ErrorMessage )
=* +
$str, b
)b c
]c d
public 
string 
ConfirmPassword %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
Contact 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Address 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ê
kC:\Users\selvaak\source\repos\.NET-NewYaksha-UseCase\E-Loan.BusinessLayer\ViewModels\CreateRoleViewModel.cs
	namespace 	
E_Loan
 
. 
BusinessLayer 
{ 
public 

class 
CreateRoleViewModel $
{ 
[ 	
Required	 
] 
public 
string 
RoleName 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
}  
iC:\Users\selvaak\source\repos\.NET-NewYaksha-UseCase\E-Loan.BusinessLayer\ViewModels\EditRoleViewModel.cs
	namespace 	
E_Loan
 
. 
BusinessLayer 
{ 
public 

class 
EditRoleViewModel "
{ 
public 
EditRoleViewModel  
(  !
)! "
{ 	
Users		 
=		 
new		 
List		 
<		 
string		 #
>		# $
(		$ %
)		% &
;		& '
}

 	
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
RoleName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
List 
< 
string 
> 
Users !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ‹
mC:\Users\selvaak\source\repos\.NET-NewYaksha-UseCase\E-Loan.BusinessLayer\ViewModels\LoanApprovalViewModel.cs
	namespace 	
E_Loan
 
. 
BusinessLayer 
. 

ViewModels )
{ 
public 

class !
LoanApprovalViewModel &
{		 
public

 !
LoanApprovalViewModel

 $
(

$ %
)

% &
{ 	
double 
intrestRate 
=  
$num! $
;$ %
double 

monthlyPay 
= 
PMT  #
(# $
intrestRate$ /
,/ 0
(1 2
int2 5
)5 6

Termofloan6 @
,@ A
SanctionedAmountB R
)R S
;S T
MonthlyPayment 
= 

monthlyPay '
;' (
var 
cloaserDate 
= 
PaymentStartDate .
.. /
	AddMonths/ 8
(8 9
(9 :
int: =
)= >

Termofloan> H
)H I
;I J
LoanCloserDate 
= 
cloaserDate (
;( )
} 	
public 
static 
double 
PMT  
(  !
double! '
yearlyInterestRate( :
,: ;
int< ?
totalNumberOfMonths@ S
,S T
doubleU [

loanAmount\ f
)f g
{ 	
var 
rate 
= 
( 
double 
) 
yearlyInterestRate 1
/2 3
$num4 7
/8 9
$num: <
;< =
var 
denominator 
= 
Math "
." #
Pow# &
(& '
(' (
$num( )
+* +
rate, 0
)0 1
,1 2
totalNumberOfMonths3 F
)F G
-H I
$numJ K
;K L
return 
( 
rate 
+ 
( 
rate  
/! "
denominator# .
). /
)/ 0
*1 2

loanAmount3 =
;= >
} 	
[ 	
Required	 
] 
[ 	
Display	 
( 
Name 
= 
$str +
)+ ,
], -
public 
double 
SanctionedAmount &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
[ 	
Required	 
] 
[ 	
Display	 
( 
Name 
= 
$str +
)+ ,
], -
public 
double 

Termofloan  
{! "
get# &
;& '
set( +
;+ ,
}- .
[   	
Required  	 
]   
[!! 	
Display!!	 
(!! 
Name!! 
=!! 
$str!! ,
)!!, -
]!!- .
public"" 
DateTime"" 
PaymentStartDate"" (
{"") *
get""+ .
;"". /
set""0 3
;""3 4
}""5 6
public## 
DateTime## 
LoanCloserDate## &
{##' (
get##) ,
;##, -
set##. 1
;##1 2
}##3 4
[$$ 	
Display$$	 
($$ 
Name$$ 
=$$ 
$str$$ )
)$$) *
]$$* +
public%% 
double%% 
MonthlyPayment%% $
{%%% &
get%%' *
;%%* +
set%%, /
;%%/ 0
}%%1 2
public&& 
DateTime&& 
	UpdatedOn&& !
{&&" #
get&&$ '
;&&' (
set&&) ,
;&&, -
}&&. /
=&&0 1
DateTime&&2 :
.&&: ;
Now&&; >
;&&> ?
}'' 
}(( Ö
fC:\Users\selvaak\source\repos\.NET-NewYaksha-UseCase\E-Loan.BusinessLayer\ViewModels\LoginViewModel.cs
	namespace 	
E_Loan
 
. 
BusinessLayer 
{ 
public 

class 
LoginViewModel 
{ 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 8
)8 9
]9 :
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[

 	
Required

	 
(

 
ErrorMessage

 
=

  
$str

! 7
)

7 8
]

8 9
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} Ω
oC:\Users\selvaak\source\repos\.NET-NewYaksha-UseCase\E-Loan.BusinessLayer\ViewModels\UserMasterRegisterModel.cs
	namespace 	
E_Loan
 
. 
BusinessLayer 
{ 
public 

class #
UserMasterRegisterModel (
{ 
public #
UserMasterRegisterModel &
(& '
)' (
{		 	
Enabled

 
=

 
false

 
;

 
} 	
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 3
)3 4
]4 5
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
EmailAddress	 
] 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 4
)4 5
]5 6
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 7
)7 8
]8 9
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
[ 	
Compare	 
( 
$str 
, 
ErrorMessage )
=* +
$str, b
)b c
]c d
public 
string 
ConfirmPassword %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
Contact 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Address 
{ 
get  #
;# $
set% (
;( )
}* +
public 
IdProofType 
? 
IdproofTypes (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
string 
IdProofNumber #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
bool 
Enabled 
{ 
get !
;! "
set# &
;& '
}( )
} 
} Ô
iC:\Users\selvaak\source\repos\.NET-NewYaksha-UseCase\E-Loan.BusinessLayer\ViewModels\UserRoleViewModel.cs
	namespace 	
E_Loan
 
. 
BusinessLayer 
{ 
public 

class 
UserRoleViewModel "
{ 
public 
string 
UserId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
} 
}		 