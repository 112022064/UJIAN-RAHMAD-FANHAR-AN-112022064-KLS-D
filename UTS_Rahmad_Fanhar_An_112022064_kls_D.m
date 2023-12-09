clear all
clc

disp('Nama  : Rahmad Fanhar An')
disp('Nim   : 112022064')
disp('Kelas : D')
disp('Ujian : Ujian Tengah Semester')

%catatan : untuk melihat hasil grafik no.2 bisa di lakukan RUN atau copy untuk
%setiap jawaban soal 2a, 2b, dan 2c dan dimasukkan di "command Windows"lalu enter

%Catatan : Untuk melihat hasil atau jawaban dari code yang saya buat ini
%bisa dilakukan "RUN" pada software MATLAB

%SOAL NO.1
%Tentukan penyelesaian umum dari persamaan linear diferensial orde dua yang
%direpresentasikan dalam bentuk persamaan berikut :
%a)Y” + 5y’ + 6y = 0
%b)Y" – 8y' + 16y = 2t + (xxx) ;untuk (xxx) menjadi 064 = 100
%c)Y" + y' – 2y = 4t + (xxx) ;untuk (xxx) menjadi 064 = 100
%d)Y" + 2y' – 3y = sin 2,xxxt ;untuk (xxx) menjadi 064 = 100
disp('===================================================================')


%JAWAB NO. 1
%untuk jawaban no 1 ada di paling bawah karena "PROMT syms" di software matlab laptop saya error
%jadi untuk supaya codingan grafik no.2 saya muncul ketika di run 
%itula kenapa jawaban no.1 saya buat di line paling bawah jawaban saya

%SOAL NO. 2
%a) Dengan menggunakan Matlab, plot fungsi pada persamaan berikut :
%X = sin(2,100t)
%Y = sin(2,100t)
%Z = 4t
%Untuk 0< t <20pi
%b) Dengan menggunakan Matlab, plot fungsi pada persamaan berikut :
%f1(x) = 2x2
%f2(x) = 4x2 + 1.(100)x
%Untuk -5< x < 5 dengan warna yang berbeda dan putus – putus
%c) dengan menggunakan matlab , plot fungsi pada persamaan berikut:
%f1(x) = 4x3
%f2 (x) = x4 + 2x2 + 3,100
%Untuk -5< x < 5 dengan warna yang berbeda dan putus – putus.
disp('===================================================================')
%===================================================================================


%JAWAB NO. 2
%JAWABAN NO. 2A
%===================================================================================
% Definisikan rentang waktu 0 < t < 20*pi
t = linspace(0, 20*pi, 1000);

% Hitung nilai X, Y, dan Z
X = sin(2*pi*100*t);
Y = sin(2*pi*100*t);
Z = 4*t;

% Plot 3D
figure;
plot3(X, Y, Z, 'LineWidth', 2);
title('(jawaban no.2A)Plot Fungsi X, Y, dan Z');
xlabel('X');
ylabel('Y');
zlabel('Z');
grid on;

% Optional: Tambahkan garis waktu
hold on;
plot3(X(1), Y(1), Z(1), 'ro', 'MarkerSize', 10); % Titik awal
plot3(X(end), Y(end), Z(end), 'go', 'MarkerSize', 10); % Titik akhir
hold off;
%===================================================================================


%JAWABAN NO. 2B
%===================================================================================
% Membuat rentang nilai x dari -5 hingga 5 dengan selang 0.1
x = -5:0.1:5;

% Menghitung nilai f1(x) dan f2(x) sesuai dengan persamaan yang diberikan
f1 = 2 * x.^2;
f2 = 4 * x.^2 + 1.1 * 100 * x;

% Membuat plot untuk f1(x) dengan garis putus-putus (--) dan warna biru
plot(x, f1, '--b', 'LineWidth', 2);
hold on; % Menahan plot untuk menambahkan plot berikutnya

% Membuat plot untuk f2(x) dengan garis putus-putus (--) dan warna merah
plot(x, f2, '--r', 'LineWidth', 2);

% Menambahkan label sumbu x dan y
xlabel('Nilai x');
ylabel('Nilai f(x)');

% Menambahkan judul plot
title('(jawaban no.2B) Plot Fungsi f1(x) dan f2(x)');

% Menambahkan legenda untuk membedakan f1(x) dan f2(x)
legend('f1(x) = 2x^2', 'f2(x) = 4x^2 + 1.1(100)x');

% Menampilkan grid pada plot
grid on;
%===================================================================================


%JAWABAN NO. 2C
%===================================================================================
% Definisi fungsi-fungsi
x = linspace(-5, 5, 100); % Membuat vektor x dari -5 hingga 5

f1 = 4 * x.^3;
f2 = x.^4 + 2 * x.^2 + 3.1;

% Membuat plot dengan warna berbeda dan garis putus-putus
figure;

plot(x, f1, '--r', 'LineWidth', 2); % Plot f1 dengan garis putus-putus merah
hold on;

plot(x, f2, '--b', 'LineWidth', 2); % Plot f2 dengan garis putus-putus biru

% Menambahkan label dan judul
xlabel('x');
ylabel('f(x)');
title('(jawaban no.2C)Plot Fungsi-fungsi');
legend('f1(x) = 4x^3', 'f2(x) = x^4 + 2x^2 + 3.1');
grid on;

hold off;

%===================================================================================
%===================================================================================
%no 2a( penulisan ulang karena grafikny hanya 2 yg muncul)
t = linspace(0, 20*pi, 1000);

% Hitung nilai X, Y, dan Z
X = sin(2*pi*100*t);
Y = sin(2*pi*100*t);
Z = 4*t;

% Plot 3D
figure;
plot3(X, Y, Z, 'LineWidth', 2);
title('(jawaban no.2A)Plot Fungsi X, Y, dan Z');
xlabel('X');
ylabel('Y');
zlabel('Z');
grid on;

% Optional: Tambahkan garis waktu
hold on;
plot3(X(1), Y(1), Z(1), 'ro', 'MarkerSize', 10); % Titik awal
plot3(X(end), Y(end), Z(end), 'go', 'MarkerSize', 10); % Titik akhir
hold off;


%===================================================================================
%jAWABAN NO. 1
% A. Y" + 5y' + 6y = 0
a = dsolve('D2y = -5*Dy - 6*y')

% B. Y"-8y'+16y = 2t + (100)
b = dsolve('D2y = 8*Dy - 16*+y2*t + 100')

% C. Y" + y'=2y = 4t + (100)
c = dsolve ('D2y = -Dy + 2*y + 4*t + 100')

% D. Y" + 2y'-3y = sin 2,064t
d = dsolve ('D2y = -2*Dy + 3*y + sin(2.100*t)')
%===================================================================================









