uses crt;
procedure w;
begin
  writeln('Приблизительное значение - 1');
  writeln('Точное значение - 2');
  writeln('Абсолютная погрешность - 3 ');
  writeln('Относительная погрешность - 4');
  writeln('Очистить экран - 0');
end;
function f(x: real): real;
begin
  f :=1*(x*x*x)+2*(x*x)+5*x+5;                  
end;
function f1(x: real): real;
begin
  f1 := (1/4)*(x*x*x*x)+(2/3)*(x*x*x)+(5/2)*(x*x)+(5*x);         
end;
var a, b, h, s, y: real;
n, i, g: integer;
begin
  repeat
    write('Введите левую границу интервала от (-1.2;0) a=');
    readln(a);
  until (a >= -1.2) and (a <= 0);
  repeat
    write('Введите правую границу интервала (0;2) b=');
    readln(b);
  until (b >= 0) and (b > a) and (b <= 2);
  repeat
    write('Введите число промежутков (5;100) n=');
    readln(n);
  until (n >= 5) and (n <= 100);
  s := (f(a) + f(b)) / 2;  
  for i := 1 to n - 1 do
  begin
    s := s + f(a + i * ((b - a) / n));
  end; 
  s*=(b - a) / n;
  y := f1(b) - f1(a);
  begin
    repeat
      w;
      read(g);
      case g of
        1: begin writeln('Приблизительное значение =', Abs(s):0:5) end;
        2: begin writeln('Точное значение=', Abs(y):0:5) end;
        3: begin writeln('Абсолютная погрешность=', (y - s):0:5) end;
        4: begin writeln('Относительная погрешность=', abs(y - s) / y) end;
        0: begin ClrScr end;
      end;
    until g >= 5;
  end;
end.