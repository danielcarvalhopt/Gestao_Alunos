Program gestao_escola;
uses crt;

type infoescola = record
        nome, mail, morada, site: String;
        telefone: LongInt;
        proprietario: String;
        curso: array [1..4] of String;

        end;

type direcrec = record
        nome, cargo, morada, mail: String;
        telefone, telemovel: Longint;
        salario: Real;
        end;

type profrec = record
        nome, morada, discip, mail, turmas:String;
        telefone, telemovel: LongInt;
        salario: Real;
        end;

type alunosrec = record
        nome, morada, mail, ano, curso:String;
        telefone, telemovel, numero:LongInt;
        media:real;
        end;

type funcrec = record
        nome, morada, cargo:String;
        telefone, telemovel:LongInt;
        salario: real;
        end;

type adminrec = record
        nome, morada, cargo, mail:String;
        telefone, telemovel:LongInt;
        salario:Real;
        end;

var escola: infoescola;
var prof:profrec;
var direc: direcrec;
var alunos:alunosrec;
var func:funcrec;
var admin:adminrec;



var direcreg, profreg, alunosreg,funcreg, adminreg: text;




var menu, menu2, menu3, menu4, menu5, menu6, menu7,menu8,menu9,menu10,menureset,menureset1,menureset2,menureset3,menureset4,menureset5,menureset6,menuexit,a,b,c,d,quantos1,quantos2,quantos3,quantos4,quantos6:Integer;

label gomenu_1, gomenu_2, gomenu_3, gomenu_4, gomenu_5, gomenu_6,gomenu_7;





Begin

{Atribui��o dos valores das variaveis:}
escola.nome:='Escola Europeia de Ensino Profissional';
escola.proprietario:='D. Manuel Rodr�gueZ Su�reZ';
escola.morada:='Rua do Caires, 4700 Maximinos, Braga';
escola.site:='www.escolaeuropeia.com';
escola.mail:='escolaeuropeia@gmail.com';
escola.telefone:=253666666;
escola.curso[1]:='Operador de Inform�tica';
escola.curso[2]:='T�cnico de Gest�o de Equipamentos Inform�ticos';
escola.curso[3]:='T�cnico de Programa��o';
escola.curso[4]:='T�cnico Auxuliar Prot�sico';


writeln('');
textcolor(green);writeln ('         Bem-vindo ao programa de gest�o da Escola Europeia!');
writeln ('         Se � a primeira vez que executa o programa, ter� que criar os registos.');
writeln ('         Para tal, no menu principal prima 7, Criar/Reiniciar Registos.');
writeln ('');
writeln ('         Loading...');
delay(150);write ('         X');delay(150);write ('X');delay(150);write ('X');delay(150);write ('X');delay(150);write ('X');
delay(150);write ('X');delay(150);write ('X');delay(150);write ('X');delay(150);write ('X');delay(150);write ('X');
delay(150);write ('X');delay(150);write ('X');delay(150);write ('X');delay(150);write ('X');delay(150);write ('X');
delay(150);write ('X');delay(150);write ('X');delay(150);write ('X');delay(150);write ('X');delay(150);write ('X');
delay(150);write ('X');delay(150);write ('X');delay(150);write ('X');delay(150);write ('X');delay(150);write ('X');
delay(150);write ('X');delay(150);write ('X');delay(150);write ('X');delay(150);write ('X');delay(150);write ('X');
delay(150);write ('X');delay(150);write ('X');delay(150);write ('X');delay(150);write ('X');delay(150);write ('X');
delay(150);write ('X');delay(150);write ('X');delay(150);write ('X');delay(150);write ('X');delay(150);write ('X');
delay(150);write ('X');delay(150);write ('X');delay(150);write ('X');delay(150);write ('X');delay(150);write ('X');Writeln('');
Writeln('');
textcolor(white+blink);Writeln ('             Prima qualquer tecla para continuar.');
textcolor(red); Writeln ('');
Repeat;
Until Keypressed;
goto gomenu_1;





gomenu_1:
clrscr;
textcolor(red);writeln ('       |-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-|');
textcolor(red);writeln ('       |X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X|');
textcolor(red);writeln ('       |-X-                                                         -X-|');
textcolor(red);writeln ('       |X-X Bem-vindo �: <-Escola Europeia de Ensino Profissional-> X-X|');
textcolor(red);writeln ('       |-X-                                                         -X-|');
textcolor(red);writeln ('       |X-X  #####   #####   #####  #####  Escolha uma das op��es:  X-X|');
textcolor(red);writeln ('       |-X-  ##      ##      ##     ##   #                      _   -X-|');
textcolor(red);writeln ('       |X-X  #####   #####   #####  ##   #   1. Informa��es    |2|  X-X|');
textcolor(red);writeln ('       |-X-  ##      ##      ##     #####    2. Direc��o       |8|  -X-|');
textcolor(red);writeln ('       |X-X  #####   #####   #####  ##       3. Professores    |0|  X-X|');
textcolor(red);Writeln ('       |-X-                                  4. Alunos         |6|  -X-|');
textcolor(red);Writeln ('       |X-X           6. Administra��o       5. Funcion�rios   <->  X-X|');
textcolor(red);Writeln ('       |-X-                                                         -X-|');
textcolor(red);Writeln ('       |X-X  7. Criar\Reiniciar registos  8. Sair   9. Sobre...     X-X|');
textcolor(red);Writeln ('       |-X-                                                         -X-|');
textcolor(red);Writeln ('       |X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X|');
textcolor(red);writeln ('       |-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-|');
writeln ('');
textcolor(lightblue);Write ('        Indique a op��o: ');

Readln (menu);

Case menu of

        1:
        Begin
        clrscr;
        textcolor(red);writeln ('        -X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-');
        textcolor(red);writeln ('        X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X');
        textcolor(red);writeln ('        -X-                                                         -X-');
        textcolor(white);writeln ('        X-X   1. Voltar ao menu anterior                            X-X');
        textcolor(white);writeln ('        -X-             2. Scroll Down autom�tico                   -X-');
        textcolor(white);writeln ('        X-X                       3. Ir para o fundo da p�gina      X-X');
        textcolor(white);writeln ('        -X-                                      4. Sair            -X-');
        textcolor(red);writeln ('        X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X');
        textcolor(red);writeln ('        -X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-');
        Writeln ('');
        textcolor(green);Writeln ('        Escolha uma das op��es do menu acima: ');
        writeln ('');
        delay(300);textcolor(lightblue);Writeln ('        Nome: ', escola.nome);
        delay(300);textcolor(lightblue);Writeln ('        Propriet�rio: ', escola.proprietario);
        delay(300);textcolor(lightblue);Writeln ('        Morada: ', escola.morada);
        delay(300);textcolor(lightblue);Writeln ('        Website: ', escola.site);
        delay(300);Writeln ('');
        delay(300);textcolor(lightblue);Writeln ('        Contactos:');
        delay(300);textcolor(lightblue);Writeln ('        E-mail: ', escola.mail);
        delay(300);textcolor(lightblue);Writeln ('        Telefone: ', escola.telefone);
        delay(300);Writeln ('');
        delay(300);textcolor(lightblue);Writeln ('        Cursos Profissionais: ');
        delay(300);Writeln ('');
        delay(300);textcolor(lightblue);Writeln ('        Nivel II: ');
        delay(300);textcolor(lightblue);Writeln ('        ', escola.curso[1]);
        delay(300);Writeln ('');
        delay(300);textcolor(lightblue);Writeln ('        Nivel III: ');
        delay(300);textcolor(lightblue);Writeln ('        ', escola.curso[2]);
        delay(300);textcolor(lightblue);Writeln ('        ', escola.curso[3]);
        delay(300);textcolor(lightblue);Writeln ('        ', escola.curso[4]);
        delay(3000);gotoxy(1,1);
        gomenu_2:
        delay(100);gotoxy(47,11);

        Readln (menu2);




                Case menu2 of

                1: Begin
                clrscr;
                goto gomenu_1;
                end;

                2: Begin
                delay(500);gotoxy(1,24);
                delay(500);gotoxy(1,25);
                delay(500);gotoxy(1,26);
                delay(500);gotoxy(1,27);
                delay(500);gotoxy(1,28);
                delay(500);gotoxy(1,29);
                delay(500);gotoxy(1,30);
                delay(500);gotoxy(1,31);
                goto gomenu_2;
                end;


                3: Begin
                gotoxy(1,31);
                goto gomenu_2;
                end;

                4: Begin
                clrscr;
                Writeln ('Prima 1 para continuar e sair, ou prima 2 para voltar ao menu principal.');
                Readln (menuexit);
                        Case menuexit of
                        1: Begin
                        exit;
                        end;
                        2: Begin
                        goto gomenu_1;
                        end;
                end;
                end;
                end;
                end;
        2: Begin
        gomenu_3:
        clrscr;
        textcolor(red);writeln ('        -X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-');
        textcolor(red);writeln ('        X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X');
        textcolor(red);writeln ('        -X-                                                         -X-');
        textcolor(white);writeln ('        X-X    1. Listar membros                                    X-X');
        textcolor(white);writeln ('        -X-           2. Registar novos membros                     -X-');
        textcolor(white);writeln ('        X-X                     3. Voltar ao menu anterior          X-X');
        textcolor(white);writeln ('        -X-                                            4. Sair      -X-');
        textcolor(red);writeln ('        X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X');
        textcolor(red);writeln ('        -X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-');
        Writeln ('');
        textcolor(green);Writeln ('        Escolha uma das op��es do menu acima: ');
        writeln('');
        delay(100);gotoxy (47,11);
        Readln (menu3);

                Case menu3 of

                1:Begin
                clrscr;
                textcolor(red);writeln ('        -X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-');
                textcolor(red);writeln ('        X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X');
                textcolor(red);writeln ('        -X-                                                         -X-');
                textcolor(white);writeln ('        X-X   1. Voltar ao menu anterior                            X-X');
                textcolor(white);writeln ('        -X-                 2. Voltar ao menu principal             -X-');
                textcolor(white);writeln ('        X-X                                        3. Sair          X-X');
                textcolor(red);writeln ('        -X-                                                         -X-');
                textcolor(red);writeln ('        X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X');
                textcolor(red);writeln ('        -X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-');
                Writeln ('');
                textcolor(green);Writeln ('        Escolha uma das op��es do menu acima: ');
                writeln ('');
                textcolor(lightgray);Writeln('         Membros da Direc��o: ');
                Assign (direcreg, 'Direc.txt');
                Reset (direcreg);
                While not eof (direcreg) Do
                Begin
                        Readln (direcreg,direc.nome);
                        Readln (direcreg,direc.cargo);
                        Readln (direcreg,direc.salario);
                        Readln (direcreg,direc.morada);
                        Readln (direcreg,direc.telefone);
                        Readln (direcreg,direc.telemovel);
                        Readln (direcreg,direc.mail);
                        Writeln ('');
                        Writeln ('');
                        Writeln ('         Nome: ', direc.nome);
                        Writeln ('         Fun��o: ', direc.cargo);
                        Writeln ('         Sal�rio: ', direc.salario:8:2,' euros');
                        Writeln ('         Morada: ', direc.morada);
                        Writeln ('         Telefone: ', direc.telefone);
                        Writeln ('         Telem�vel: ', direc.telemovel);
                        Writeln ('         E-mail: ', direc.mail);
                        end;
                        Close (direcreg);
                        delay(100);gotoxy (1,1);
                        delay(100);gotoxy (47,11);
                        readln (menu4);

                        Case menu4 of

                        1:Begin
                        goto gomenu_3;
                        end;
                        2:Begin
                        goto gomenu_1;
                        end;
                        3:Begin
                        clrscr;
                        Writeln ('Prima 1 para continuar e sair, ou prima 2 para voltar ao menu principal.');
                        Readln (menuexit);
                                Case menuexit of
                                1: Begin
                                exit;
                                end;
                                2: Begin
                                goto gomenu_1;
                                end;
                                end;
                        end;
                        end;
                        end;
                2:Begin
                clrscr;
                Assign (direcreg, 'Direc.txt');
                Reset (direcreg);
                Append (direcreg);
                Write ('         Quantos membros pretende adicionar � Direc��o? ');
                Readln (quantos1);
                Writeln('');
                        For a:=1 to quantos1 Do
                        Begin
                        Writeln ('');
                        textcolor(green);Write ('         Nome: '); Readln (direc.nome);
                        Write ('         Fun��o: '); Readln (direc.cargo);
                        Write ('         Sal�rio em euros: '); Readln (direc.salario);
                        Write ('         Morada: '); Readln (direc.morada);
                        Write ('         Telefone: '); Readln (direc.telefone);
                        Write ('         Telem�vel: '); Readln (direc.telemovel);
                        Write ('         E-mail: '); Readln (direc.mail);
                        Writeln (direcreg, direc.nome);
                        Writeln (direcreg, direc.cargo);
                        Writeln (direcreg, direc.salario:8:2);
                        Writeln (direcreg, direc.morada);
                        Writeln (direcreg, direc.telefone);
                        Writeln (direcreg, direc.telemovel);
                        Writeln (direcreg, direc.mail);
                        end;
                        Close (direcreg);
                        goto gomenu_3;
                        end;

                3:Begin
                goto gomenu_1;
                end;

                4:Begin
                clrscr;
                        Writeln ('Prima 1 para continuar e sair, ou prima 2 para voltar ao menu principal.');
                        Readln (menuexit);
                                Case menuexit of
                                1: Begin
                                exit;
                                end;
                                2: Begin
                                goto gomenu_1;
                                end;
                                end;
                        end;
                end;
                end;
        3:begin
        gomenu_4:
        clrscr;
        textcolor(red);writeln ('        -X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-');
        textcolor(red);writeln ('        X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X');
        textcolor(red);writeln ('        -X-                                                         -X-');
        textcolor(white);writeln ('        X-X    1. Listar professores                                X-X');
        textcolor(white);writeln ('        -X-           2. Registar novos professores                 -X-');
        textcolor(white);writeln ('        X-X                     3. Voltar ao menu anterior          X-X');
        textcolor(white);writeln ('        -X-                                            4. Sair      -X-');
        textcolor(red);writeln ('        X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X');
        textcolor(red);writeln ('        -X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-');
        Writeln ('');
        textcolor(green);Writeln ('        Escolha uma das op��es do menu acima: ');
        writeln('');
        delay(100);gotoxy (47,11);
        Readln (menu4);

                Case menu4 of

                1:Begin
                clrscr;
                textcolor(red);writeln ('        -X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-');
                textcolor(red);writeln ('        X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X');
                textcolor(red);writeln ('        -X-                                                         -X-');
                textcolor(white);writeln ('        X-X   1. Voltar ao menu anterior                            X-X');
                textcolor(white);writeln ('        -X-                 2. Voltar ao menu principal             -X-');
                textcolor(white);writeln ('        X-X                                        3. Sair          X-X');
                textcolor(red);writeln ('        -X-                                                         -X-');
                textcolor(red);writeln ('        X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X');
                textcolor(red);writeln ('        -X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-');
                Writeln ('');
                textcolor(green);Writeln ('        Escolha uma das op��es do menu acima: ');
                writeln ('');
                textcolor(lightgray);Writeln('         Professores: ');
                Assign (profreg, 'Prof.txt');
                Reset (profreg);
                While not eof (profreg) Do
                Begin
                        Readln (profreg,prof.nome);
                        Readln (profreg,prof.discip);
                        Readln (profreg,prof.turmas);
                        Readln (profreg,prof.salario);
                        Readln (profreg,prof.morada);
                        Readln (profreg,prof.telemovel);
                        Readln (profreg,prof.mail);
                        Readln (profreg,prof.telefone);

                        Writeln ('');
                        writeln ('');
                        Writeln ('         Nome: ', prof.nome);
                        Writeln ('         Disciplinas: ', prof.discip);
                        Writeln ('         Turmas (Ano e Curso): ', prof.turmas);
                        Writeln ('         Sal�rio: ', prof.salario:8:2, ' euros');
                        Writeln ('         Morada: ', prof.morada);
                        Writeln ('         Telefone: ', prof.telefone);
                        Writeln ('         Telem�vel: ', prof.telemovel);
                        Writeln ('         E-mail: ', prof.mail);
                        end;
                        Close (profreg);
                        delay(100);gotoxy (1,1);
                        delay(100);gotoxy (47,11);
                        readln (menu5);

                        Case menu5 of

                        1:Begin
                        goto gomenu_4;
                        end;
                        2:Begin
                        goto gomenu_1;
                        end;
                        3:Begin
                        clrscr;
                        Writeln ('Prima 1 para continuar e sair, ou prima 2 para voltar ao menu principal.');
                        Readln (menuexit);
                                Case menuexit of
                                1: Begin
                                exit;
                                end;
                                2: Begin
                                goto gomenu_1;
                                end;
                                end;
                        end;
                        end;
                        end;
                2:Begin
                clrscr;
                Assign (profreg, 'Prof.txt');
                Reset (profreg);
                Append (profreg);
                Writeln('Info: No caso de leccionar v�rias turmas e disciplinas, separar com v�rgula no campo de escrita.');
                Writeln ('');
                Write ('         Quantos professores pretende adicionar? ');
                Readln (quantos2);
                Writeln('');
                        For b:=1 to quantos2 Do
                        Begin
                        Writeln ('');
                        textcolor(green);
                        Write ('         Nome: '); Readln (prof.nome);
                        Write ('         Disciplinas: '); Readln (prof.discip);
                        Write ('         Turmas (Ano e Curso): '); Readln (prof.turmas);
                        Write ('         Sal�rio: '); Readln (prof.salario);
                        Write ('         Morada: '); Readln (prof.morada);
                        Write ('         Telefone: '); Readln (prof.telefone);
                        Write ('         Telemovel: '); Readln (prof.telemovel);
                        Write ('         E-mail: '); Readln (prof.mail);
                        Writeln (profreg, prof.nome);
                        Writeln (profreg, prof.discip);
                        Writeln (profreg, prof.turmas);
                        Writeln (profreg, prof.salario:8:2);
                        Writeln (profreg, prof.morada);
                        Writeln (profreg, prof.telemovel);
                        Writeln (profreg, prof.telefone);
                        Writeln (profreg, prof.mail);
                        end;
                        Close (profreg);
                        goto gomenu_4;
                        end;

                3:Begin
                goto gomenu_1;
                end;

                4:Begin
                clrscr;
                        Writeln ('Prima 1 para continuar e sair, ou prima 2 para voltar ao menu principal.');
                        Readln (menuexit);
                                Case menuexit of
                                1: Begin
                                exit;
                                end;
                                2: Begin
                                goto gomenu_1;
                                end;
                                end;

                        end;
                        end;
                        end;


        4:begin
        gomenu_5:
        clrscr;
        textcolor(red);writeln ('        -X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-');
        textcolor(red);writeln ('        X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X');
        textcolor(red);writeln ('        -X-                                                         -X-');
        textcolor(white);writeln ('        X-X    1. Listar alunos                                     X-X');
        textcolor(white);writeln ('        -X-           2. Registar alunos                            -X-');
        textcolor(white);writeln ('        X-X                     3. Voltar ao menu anterior          X-X');
        textcolor(white);writeln ('        -X-                                            4. Sair      -X-');
        textcolor(red);writeln ('        X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X');
        textcolor(red);writeln ('        -X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-');
        Writeln ('');
        textcolor(green);Writeln ('        Escolha uma das op��es do menu acima: ');
        writeln('');
        delay(100);gotoxy (47,11);
        Readln (menu5);

                Case menu5 of

                1:Begin
                clrscr;
                textcolor(red);writeln ('        -X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-');
                textcolor(red);writeln ('        X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X');
                textcolor(red);writeln ('        -X-                                                         -X-');
                textcolor(white);writeln ('        X-X   1. Voltar ao menu anterior                            X-X');
                textcolor(white);writeln ('        -X-                 2. Voltar ao menu principal             -X-');
                textcolor(white);writeln ('        X-X                                        3. Sair          X-X');
                textcolor(red);writeln ('        -X-                                                         -X-');
                textcolor(red);writeln ('        X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X');
                textcolor(red);writeln ('        -X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-');
                Writeln ('');
                textcolor(green);Writeln ('        Escolha uma das op��es do menu acima: ');
                writeln ('');
                textcolor(lightgray);Writeln('         Alunos: ');
                Assign (alunosreg, 'Alunos.txt');
                Reset (alunosreg);
                While not eof (alunosreg) Do
                Begin
                        Readln (alunosreg, alunos.numero);
                        Readln (alunosreg, alunos.nome);
                        Readln (alunosreg, alunos.ano);
                        Readln (alunosreg, alunos.curso);
                        Readln (alunosreg, alunos.media);
                        Readln (alunosreg, alunos.morada);
                        Readln (alunosreg, alunos.telemovel);
                        Readln (alunosreg, alunos.telefone);
                        Readln (alunosreg, alunos.mail);

                        Writeln ('');
                        writeln ('');
                        Writeln ('         N�mero: ', alunos.numero,'    Nome: ', alunos.nome);
                        Writeln ('         Turma: ', alunos.ano, ' Ano ', alunos.curso);
                        Writeln ('         M�dia:',alunos.media:8:2);
                        Writeln ('         Morada: ', alunos.morada);
                        Writeln ('         Telefone: ', alunos.telefone, '    Telem�vel: ',alunos.telemovel);
                        Writeln ('         E-mail: ', alunos.mail);
                        end;
                        Close (alunosreg);
                        delay(100);gotoxy (1,1);
                        delay(100);gotoxy (47,11);
                        readln (menu5);

                        Case menu5 of

                        1:Begin
                        goto gomenu_5;
                        end;
                        2:Begin
                        goto gomenu_1;
                        end;
                        3:Begin
                        clrscr;
                        Writeln ('Prima 1 para continuar e sair, ou prima 2 para voltar ao menu principal.');
                        Readln (menuexit);
                                Case menuexit of
                                1: Begin
                                exit;
                                end;
                                2: Begin
                                goto gomenu_1;
                                end;
                                end;
                        end;
                        end;
                        end;
                2:Begin
                clrscr;
                Assign (alunosreg, 'Alunos.txt');
                Reset (alunosreg);
                Append (alunosreg);
                Writeln ('');
                Write ('         Quantos alunos pretende adicionar? ');
                Readln (quantos3);
                Writeln('');
                        For c:=1 to quantos3 Do
                        Begin
                        Writeln ('');
                        textcolor(green);
                        Write ('         N�mero: '); Readln (alunos.numero);
                        Write ('         Nome: '); Readln (alunos.nome);
                        Write ('         Ano: '); Readln (alunos.ano);
                        Write ('         Curso: '); Readln (alunos.curso);
                        Write ('         M�dia: '); Readln (alunos.media);
                        Write ('         Morada: '); Readln (alunos.morada);
                        Write ('         Telefone: '); Readln (alunos.telefone);
                        Write ('         Telemovel: '); Readln (alunos.telemovel);
                        Write ('         E-mail: '); Readln (alunos.mail);
                        Writeln (alunosreg, alunos.numero);
                        Writeln (alunosreg, alunos.nome);
                        Writeln (alunosreg, alunos.ano);
                        Writeln (alunosreg, alunos.curso);
                        Writeln (alunosreg, alunos.media);
                        Writeln (alunosreg, alunos.morada);
                        Writeln (alunosreg, alunos.telemovel);
                        Writeln (alunosreg, alunos.telefone);
                        Writeln (alunosreg, alunos.mail);
                        end;
                        Close (alunosreg);
                        goto gomenu_5;
                        end;

                3:Begin
                goto gomenu_1;
                end;

                4:Begin
                clrscr;
                        Writeln ('Prima 1 para continuar e sair, ou prima 2 para voltar ao menu principal.');
                        Readln (menuexit);
                                Case menuexit of
                                1: Begin
                                exit;
                                end;
                                2: Begin
                                goto gomenu_1;
                                end;
                                end;

                        end;
                        end;
                        end;

        5:begin
        gomenu_6:
        clrscr;
        textcolor(red);writeln ('        -X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-');
        textcolor(red);writeln ('        X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X');
        textcolor(red);writeln ('        -X-                                                          -X-');
        textcolor(white);writeln ('        X-X    1. Listar funcion�rios                               X-X');
        textcolor(white);writeln ('        -X-           2. Registar funcion�rios                      -X-');
        textcolor(white);writeln ('        X-X                     3. Voltar ao menu anterior          X-X');
        textcolor(white);writeln ('        -X-                                            4. Sair      -X-');
        textcolor(red);writeln ('        X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X');
        textcolor(red);writeln ('        -X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-');
        Writeln ('');
        textcolor(green);Writeln ('        Escolha uma das op��es do menu acima: ');
        writeln('');
        delay(100);gotoxy (47,11);
        Readln (menu7);

                Case menu7 of

                1:Begin
                clrscr;
                textcolor(red);writeln ('        -X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-');
                textcolor(red);writeln ('        X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X');
                textcolor(red);writeln ('        -X-                                                         -X-');
                textcolor(white);writeln ('        X-X   1. Voltar ao menu anterior                            X-X');
                textcolor(white);writeln ('        -X-                 2. Voltar ao menu principal             -X-');
                textcolor(white);writeln ('        X-X                                        3. Sair          X-X');
                textcolor(red);writeln ('        -X-                                                         -X-');
                textcolor(red);writeln ('        X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X');
                textcolor(red);writeln ('        -X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-');
                Writeln ('');
                textcolor(green);Writeln ('        Escolha uma das op��es do menu acima: ');
                writeln ('');
                textcolor(lightgray);Writeln('         Funcion�rios: ');
                Assign (funcreg, 'Func.txt');
                Reset (funcreg);
                While not eof (funcreg) Do
                Begin
                        Readln (funcreg, func.nome);
                        Readln (funcreg, func.cargo);
                        Readln (funcreg, func.morada);;
                        Readln (funcreg, func.telemovel);
                        Readln (funcreg, func.telefone);
                        Readln (funcreg, func.salario);

                        Writeln ('');
                        writeln ('');
                        Writeln ('         Nome: ', func.nome);
                        Writeln ('         Fun��o: ', func.cargo,'    Sal�rio:',func.salario:8:2, ' euros');
                        Writeln ('         Morada: ', func.morada);
                        Writeln ('         Telefone: ', func.telefone, '    Telem�vel: ',func.telemovel);
                        end;
                        Close (funcreg);
                        delay(100);gotoxy (1,1);
                        delay(100);gotoxy (47,11);
                        readln (menu8);

                        Case menu8 of

                        1:Begin
                        goto gomenu_6;
                        end;
                        2:Begin
                        goto gomenu_1;
                        end;
                        3:Begin
                        clrscr;
                        Writeln ('Prima 1 para continuar e sair, ou prima 2 para voltar ao menu principal.');
                        Readln (menuexit);
                                Case menuexit of
                                1: Begin
                                exit;
                                end;
                                2: Begin
                                goto gomenu_1;
                                end;
                                end;
                        end;
                        end;
                        end;
                2:Begin
                clrscr;
                Assign (funcreg, 'Func.txt');
                Reset (funcreg);
                Append (funcreg);
                Writeln ('');
                Write ('         Quantos funcion�rios pretende adicionar? ');
                Readln (quantos4);
                Writeln('');
                        For c:=1 to quantos4 Do
                        Begin
                        Writeln ('');
                        textcolor(green);
                        Write ('         Nome: '); Readln (func.nome);
                        Write ('         Fun��o: '); Readln (func.cargo);
                        Write ('         Morada: '); Readln (func.morada);
                        Write ('         Telefone: '); Readln (func.telefone);
                        Write ('         Telemovel: '); Readln (func.telemovel);
                        Write ('         Sal�rio em euros: '); Readln (func.salario);
                        Writeln (funcreg, func.nome);
                        Writeln (funcreg, func.cargo);
                        Writeln (funcreg, func.morada);;
                        Writeln (funcreg, func.telemovel);
                        Writeln (funcreg, func.telefone);
                        Writeln (funcreg, func.salario:8:2);
                        end;
                        Close (funcreg);
                        goto gomenu_6;
                        end;

                3:Begin
                goto gomenu_1;
                end;

                4:Begin
                clrscr;
                        Writeln ('Prima 1 para continuar e sair, ou prima 2 para voltar ao menu principal.');
                        Readln (menuexit);
                                Case menuexit of
                                1: Begin
                                exit;
                                end;
                                2: Begin
                                goto gomenu_1;
                                end;
                                end;

                        end;
                        end;
                        end;

        6: Begin
        gomenu_7:
        clrscr;
        textcolor(red);writeln ('        -X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-');
        textcolor(red);writeln ('        X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X');
        textcolor(red);writeln ('        -X-                                                         -X-');
        textcolor(white);writeln ('        X-X    1. Listar Administradores                            X-X');
        textcolor(white);writeln ('        -X-           2. Registar novos Administradores             -X-');
        textcolor(white);writeln ('        X-X                     3. Voltar ao menu anterior          X-X');
        textcolor(white);writeln ('        -X-                                            4. Sair      -X-');
        textcolor(red);writeln ('        X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X');
        textcolor(red);writeln ('        -X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-');
        Writeln ('');
        textcolor(green);Writeln ('        Escolha uma das op��es do menu acima: ');
        writeln('');
        delay(100);gotoxy (47,11);
        Readln (menu9);

                Case menu9 of

                1:Begin
                clrscr;
                textcolor(red);writeln ('        -X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-');
                textcolor(red);writeln ('        X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X');
                textcolor(red);writeln ('        -X-                                                         -X-');
                textcolor(white);writeln ('        X-X   1. Voltar ao menu anterior                            X-X');
                textcolor(white);writeln ('        -X-                 2. Voltar ao menu principal             -X-');
                textcolor(white);writeln ('        X-X                                        3. Sair          X-X');
                textcolor(red);writeln ('        -X-                                                         -X-');
                textcolor(red);writeln ('        X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X');
                textcolor(red);writeln ('        -X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-');
                Writeln ('');
                textcolor(green);Writeln ('        Escolha uma das op��es do menu acima: ');
                writeln ('');
                textcolor(lightgray);Writeln('         Membros da Administra��o: ');
                Assign (adminreg, 'Admin.txt');
                Reset (adminreg);
                While not eof (adminreg) Do
                Begin
                        Readln (adminreg,admin.nome);
                        Readln (adminreg,admin.cargo);
                        Readln (adminreg,admin.salario);
                        Readln (adminreg,admin.morada);
                        Readln (adminreg,admin.telefone);
                        Readln (adminreg,admin.telemovel);
                        Readln (adminreg,admin.mail);
                        Writeln ('');
                        Writeln ('');
                        Writeln ('         Nome: ', admin.nome);
                        Writeln ('         Fun��o: ', admin.cargo);
                        Writeln ('         Sal�rio: ', admin.salario:8:2,' euros');
                        Writeln ('         Morada: ', admin.morada);
                        Writeln ('         Telefone: ', admin.telefone);
                        Writeln ('         Telem�vel: ', admin.telemovel);
                        Writeln ('         E-mail: ', admin.mail);
                        end;
                        Close (adminreg);
                        delay(100);gotoxy (1,1);
                        delay(100);gotoxy (47,11);
                        readln (menu10);

                        Case menu10 of

                        1:Begin
                        goto gomenu_7;
                        end;
                        2:Begin
                        goto gomenu_1;
                        end;
                        3:Begin
                        clrscr;
                        Writeln ('Prima 1 para continuar e sair, ou prima 2 para voltar ao menu principal.');
                        Readln (menuexit);
                                Case menuexit of
                                1: Begin
                                exit;
                                end;
                                2: Begin
                                goto gomenu_1;
                                end;
                                end;
                        end;
                        end;
                        end;
                2:Begin
                clrscr;
                Assign (adminreg, 'Admin.txt');
                Reset (adminreg);
                Append (adminreg);
                Write ('         Quantos membros pretende adicionar � Administra��o? ');
                Readln (quantos6);
                Writeln('');
                        For a:=1 to quantos6 Do
                        Begin
                        Writeln ('');
                        textcolor(green);Write ('         Nome: '); Readln (admin.nome);
                        Write ('         Fun��o: '); Readln (admin.cargo);
                        Write ('         Sal�rio em euros: '); Readln (admin.salario);
                        Write ('         Morada: '); Readln (admin.morada);
                        Write ('         Telefone: '); Readln (admin.telefone);
                        Write ('         Telem�vel: '); Readln (admin.telemovel);
                        Write ('         E-mail: '); Readln (admin.mail);
                        Writeln (adminreg, admin.nome);
                        Writeln (adminreg, admin.cargo);
                        Writeln (adminreg, admin.salario:8:2);
                        Writeln (adminreg, admin.morada);
                        Writeln (adminreg, admin.telefone);
                        Writeln (adminreg, admin.telemovel);
                        Writeln (adminreg, admin.mail);
                        end;
                        Close (adminreg);
                        goto gomenu_7;
                        end;

                3:Begin
                goto gomenu_1;
                end;

                4:Begin
                clrscr;
                        Writeln ('Prima 1 para continuar e sair, ou prima 2 para voltar ao menu principal.');
                        Readln (menuexit);
                                Case menuexit of
                                1: Begin
                                exit;
                                end;
                                2: Begin
                                goto gomenu_1;
                                end;
                                end;
                        end;
                end;
                end;







        7:Begin
        clrscr;
                textcolor(red);writeln ('        -X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-');
                textcolor(red);writeln ('        X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X');
                textcolor(red);writeln ('        -X-                                                         -X-');
                textcolor(White);writeln ('        X-X  Criar/Reiniciar Registos                               X-X');
                textcolor(White);writeln ('        -X-  1. Direc��o   2. Professores   3. Alunos               -X-');
                textcolor(White);writeln ('        X-X                4. Funcion�rios  5. Administra��o        X-X');
                textcolor(white);writeln ('        -X-                                   6. Todos              -X-');
                textcolor(red);writeln ('        X-X                                                         X-X');
                textcolor(White);writeln ('        -X-                 7. Voltar ao menu principal             -X-');
                textcolor(White);writeln ('        X-X                                        8. Sair          X-X');
                textcolor(red);writeln ('        -X-                                                         -X-');
                textcolor(red);writeln ('        X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X');
                textcolor(red);writeln ('        -X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-');
                Writeln ('');
                Write ('         Escolha um das op��es: ');
                Read (menureset);

                Case menureset of
                        1:Begin
                        Clrscr;
                        Writeln ('Criar/reiniciar registo prima 1. Menu principal prima 2.');
                        Write ('Escolha uma das op��es: ');
                                Readln (menureset1);
                                Case menureset1 of

                                1: Begin
                                clrscr;
                                Assign (direcreg, 'Direc.txt');
                                Rewrite (direcreg);
                                Close (direcreg);
                                Writeln ('Registo criado/Reiniciado. Prima qualquer tecla para voltar ao menu inicial');
                                Repeat;
                                Until Keypressed;
                                goto gomenu_1;
                                Writeln ('Error! Error! You brought apocalypse upon all ov us! You doomed us! xD');
                                end;

                                2: Begin
                                Clrscr;
                                goto gomenu_1;
                                end;

                                end;
                                end;
                        2:Begin
                        Clrscr;
                        Writeln ('Criar/reiniciar registo prima 1. Menu principal prima 2.');
                        Write ('Escolha uma das op��es: ');
                                Readln (menureset2);
                                Case menureset2 of

                                1: Begin
                                clrscr;
                                Assign (profreg, 'Prof.txt');
                                Rewrite (profreg);
                                Close (profreg);
                                Writeln ('Registo criado/Reiniciado. Prima qualquer tecla para voltar ao menu inicial');
                                Repeat;
                                Until Keypressed;
                                goto gomenu_1;
                                Writeln ('Error! Error! You brought apocalypse upon all ov us! You doomed us! xD');
                                end;

                                2: Begin
                                Clrscr;
                                goto gomenu_1;
                                end;

                                end;
                                end;

                        3:Begin
                        Clrscr;
                        Writeln ('Criar/reiniciar registo prima 1. Menu principal prima 2.');
                        Write ('Escolha uma das op��es: ');
                                Readln (menureset3);
                                Case menureset3 of

                                1: Begin
                                clrscr;
                                Assign (alunosreg, 'Alunos.txt');
                                Rewrite (alunosreg);
                                Close (alunosreg);
                                Writeln ('Registo criado/Reiniciado. Prima qualquer tecla para voltar ao menu inicial');
                                Repeat;
                                Until Keypressed;
                                goto gomenu_1;
                                Writeln ('Error! Error! You brought apocalypse upon all ov us! You doomed us! xD');
                                end;

                                2: Begin
                                Clrscr;
                                goto gomenu_1;
                                end;
                                end;
                                end;

                        4:Begin
                        Clrscr;
                        Writeln ('Criar/reiniciar registo prima 1. Menu principal prima 2.');
                        Write ('Escolha uma das op��es: ');
                                Readln (menureset4);
                                Case menureset4 of

                                1: Begin
                                clrscr;
                                Assign (funcreg, 'Funcion.txt');
                                Rewrite (funcreg);
                                Close (funcreg);
                                Writeln ('Registo criado/Reiniciado. Prima qualquer tecla para voltar ao menu inicial');
                                Repeat;
                                Until Keypressed;
                                goto gomenu_1;
                                Writeln ('Error! Error! You brought apocalypse upon all ov us! You doomed us all! xD');
                                end;

                                2: Begin
                                Clrscr;
                                goto gomenu_1;
                                end;
                                end;
                                end;

                        5:Begin
                        Clrscr;
                        Writeln ('Criar/reiniciar registo prima 1. Menu principal prima 2.');
                        Write ('Escolha uma das op��es: ');
                                Readln (menureset5);
                                Case menureset5 of

                                1: Begin
                                clrscr;
                                Assign (adminreg, 'Admin.txt');
                                Rewrite (adminreg);
                                Close (adminreg);
                                Writeln ('Registo criado/Reiniciado. Prima qualquer tecla para voltar ao menu inicial');
                                Repeat;
                                Until Keypressed;
                                goto gomenu_1;
                                Writeln ('Error! Error! You brought apocalypse upon all ov us! You doomed us all! xD');
                                end;

                                2: Begin
                                Clrscr;
                                goto gomenu_1;
                                end;
                                end;
                                end;

                        6:Begin
                        Clrscr;
                        Writeln ('Criar/reiniciar registos prima 1. Menu principal prima 2.');
                        Write ('Escolha uma das op��es: ');
                                Readln (menureset6);
                                Case menureset6 of

                                1: Begin
                                clrscr;
                                Assign (direcreg, 'Direc.txt');
                                Rewrite (direcreg);
                                Close (direcreg);
                                Assign (alunosreg, 'Alunos.txt');
                                Rewrite (alunosreg);
                                Close (alunosreg);
                                Assign (funcreg, 'Func.txt');
                                Rewrite (funcreg);
                                Close (funcreg);
                                Assign (profreg, 'Prof.txt');
                                Rewrite (profreg);
                                Close (profreg);
                                Assign (adminreg, 'Admin.txt');
                                Rewrite (adminreg);
                                Close (adminreg);
                                Writeln ('Registos criados/Reiniciados. Prima qualquer tecla para voltar ao menu inicial');
                                Repeat;
                                Until Keypressed;
                                goto gomenu_1;
                                Writeln ('Error! Error! You brought apocalypse upon all ov us! You doomed us all! xD');
                                end;

                                2: Begin
                                Clrscr;
                                goto gomenu_1;
                                end;
                                end;
                                end;

                        7: Begin
                        clrscr;
                        goto gomenu_1;
                        end;

                        8:Begin
                        clrscr;
                        Writeln ('Prima 1 para continuar e sair, ou prima 2 para voltar ao menu principal.');
                        Readln (menuexit);
                                Case menuexit of
                                1: Begin
                                exit;
                                end;
                                2: Begin
                                goto gomenu_1;
                                end;
                                end;

                                end;

                        end;

                end;



        8: Begin
                clrscr;
                Writeln ('Prima 1 para continuar e sair, ou prima 2 para voltar ao menu principal.');
                Readln (menuexit);
                        Case menuexit of
                        1: Begin
                        exit;
                        end;
                        2: Begin
                        goto gomenu_1;
                        end;
                        end;
                        end;


        9: Begin
                clrscr;
                textcolor(lightgray);writeln ('       |-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-|');
                textcolor(lightgray);writeln ('       |X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X|');
                textcolor(lightgray);writeln ('       |-X-                                                         -X-|');
                textcolor(lightgray);writeln ('       |X-X Bem-vindo �: <-Escola Europeia de Ensino Profissional-> X-X|');
                textcolor(lightgray);writeln ('       |-X-                                                         -X-|');
                textcolor(lightgray);writeln ('       |X-X  #####   #####   #####  #####   Programa realizado por: X-X|');
                textcolor(lightgray);writeln ('       |-X-  ##      ##      ##     ##   #  Daniel Carvalho         -X-|');
                textcolor(lightgray);writeln ('       |X-X  #####   #####   #####  ##   #  2806 2� Gest�o          X-X|');
                textcolor(lightgray);writeln ('       |-X-  ##      ##      ##     #####   S.D.A.C.                -X-|');
                textcolor(lightgray);writeln ('       |X-X  #####   #####   #####  ##      Prof. S�rgio Silva      X-X|');
                textcolor(lightgray);Writeln ('       |-X-                                                         -X-|');
                textcolor(lightgray);Writeln ('       |X-X  daniel_apcarvalho@hotmail.com                          X-X|');
                textcolor(lightgray);Writeln ('       |-X-                                                         -X-|');
                textcolor(lightgray);Writeln ('       |X-X                                                         X-X|');
                textcolor(lightgray);Writeln ('       |-X-                               ->Virtual Pascal v2.1<-   -X-|');
                textcolor(lightgray);Writeln ('       |X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X|');
                textcolor(lightgray);writeln ('       |-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-|');
                textcolor(lightgray);writeln ('');
                textcolor(green+blink);writeln ('        Prima qualquer tecla para voltar ao menu principal.');textcolor(Red);
                Repeat;
                Until Keypressed;
                goto gomenu_1;
                end;



        Else
        Writeln ('Op��o Inv�lida');
        goto gomenu_1;






{fim menu principal}

end;
Readln;
end.
