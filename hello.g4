lexer grammar hello;
PPD: ('#include <stdio.h>'|'#include <stdlib.h>'|'#include <limits.h>'| '#include <time.h>'| '#include <string.h>' | '#include <math.h>'| '#include <assert.h>')->skip;
CHARKEY:'char';
INTEGER:'int';
DOUBLE:'double';
RETKEY: 'return';
CASEKEY:'case';
SIZEOFKEY:'sizeof';
LONGKEY:'long';
SHORTKEY:'short';
TYPKEY:'typedef';
SWITCHKEY:'switch';
UNSIGNKEY:'unsigned';
VOIDKEY:'void';
STATICKEY:'static';
STRUCTKEY:'struct';
GOTOKEY:'goto';
MAINKEY:'main';
AUTOKEY:'auto';
ELSE:'else';
IF:'if';
BREAK:'break';
ENUM:'enum';
REGISTER:'register';
EXTERN:'extern';
UNION:'union';
FLOAT:'float';
CONSTKEY:'const';
FOR:'for';
SIGNKEY:'signed';
CONTINUE:'continue';
VOLATILEKEY:'volatile';
DEFAULTKEY:'default';
WHILE:'while';
DO:'do';
PACKEDKEY:'_Packed';
STRINGLIT:'"' ( '\\' [btnfr"'\\] | ~[\r\n\\"] )+ '"';
COMMA : ',';
COLEN : ':';
MULEQ: '*=';
DIVEQ: '/=';
SUMEQ: '+=';
SUBEQ: '-=';
MODEQ: '%=';
EQUAL : '=' ;
SEMICOLEN : ';';
OPENB : '(';
CLOSEB : ')';
DQUOTE: '"';
ADD : '+' ;
SUB : '-';
MUL : '*';
DOT:'.';
MOD:'%';
SLASH:'/';
BITAND:'&';
BITOR:'|';
SHIFTLT:'<<';
SHIFTRT:'>>';
BITCOMP:'~';
BITXOR:'^';
LOGAND:'&&';
LOGOR:'||';
LOGNOT:'!';
GT:'>';
LT:'<';
GTE:'>=';
LTE:'<=';
EQ:'==';
INC:'++';
DEC:'--';
ID : ('a'..'z'|'A'..'Z'|'_')('a'..'z'| '0'..'9'|'A'..'Z'|'_')*;
NUM : ('0'..'9')+;
HASH:'#';
DOLLAR:'$';
ATT:'@';
LB:'{';
RB:'}';
LSQ:'[';
RSQ:']';
MULTCMT: '/*' .*? '*/' ->skip;
SINGLECMT: '//'~[\r]* ->skip;
WS : [ \r\n\t]+ -> skip;
