clear 
clc

disp('Nama  : Rahmad Fanhar An')
disp('Nim   : 112022064')
disp('Kelas : D')
disp('Ujian : Ujian Akhir Semester')

disp('===================================================================')
disp('===================================================================')
%Catatan : Untuk melihat hasil atau jawaban dari code yang saya buat ini
%bisa dilakukan "RUN" pada software MATLAB
%=========================================================================
%jawaban Soal No. 1
disp('Jawaban No. 1');
% Matriks A
A = [4 4 4; 3 1 2; 2 3 3];

% Matriks B
B = [4 4 4; 4 2 3; 1 1 2];

% a) Nilai eigen dari matriks A dan matriks B
eigen_A = eig(A);
eigen_B = eig(B);

% b) Nilai singular dari matriks A dan matriks B
singular_A = svd(A);
singular_B = svd(B);

% c) Matriks segitiga dari matriks A dan matriks B
triangular_A = triu(A);
triangular_B = triu(B);

% d) Matriks segitiga bawah dari matriks A dan matriks B
lower_triangular_A = tril(A);
lower_triangular_B = tril(B);

% e) Nilai maksimum dari elemen-elemen matriks A dan matriks B
max_A = max(A(:));
max_B = max(B(:));

% f) Nilai minimum dari elemen-elemen matriks A dan matriks B
min_A = min(A(:));
min_B = min(B(:));

% g) Jumlah kolom elemen-elemen matriks A dan matriks B
sum_A = sum(A);
sum_B = sum(B);

% h) Diagonal dari matriks A dan matriks B
diagonal_A = diag(A);
diagonal_B = diag(B);

% Tampilkan hasil
disp('Matriks A:')
disp(A)
disp('Matriks B:')
disp(B)

disp('a) Nilai eigen dari matriks A:');
disp(eigen_A);
disp('Nilai eigen dari matriks B:');
disp(eigen_B);

disp('b) Nilai singular dari matriks A:');
disp(singular_A);
disp('Nilai singular dari matriks B:');
disp(singular_B);

disp('c) Matriks segitiga dari matriks A:');
disp(triangular_A);
disp('Matriks segitiga dari matriks B:');
disp(triangular_B);

disp('d) Matriks segitiga bawah dari matriks A:');
disp(lower_triangular_A);
disp('Matriks segitiga bawah dari matriks B:');
disp(lower_triangular_B);

disp('e) Nilai maksimum dari elemen-elemen matriks A:');
disp(max_A);
disp('Nilai maksimum dari elemen-elemen matriks B:');
disp(max_B);

disp('f) Nilai minimum dari elemen-elemen matriks A:');
disp(min_A);
disp('Nilai minimum dari elemen-elemen matriks B:');
disp(min_B);

disp('g) Jumlah kolom elemen-elemen matriks A:');
disp(sum_A);
disp('Jumlah kolom elemen-elemen matriks B:');
disp(sum_B);

disp('h) Diagonal dari matriks A:');
disp(diagonal_A);
disp('Diagonal dari matriks B:');
disp(diagonal_B);

disp('===================================================================')
disp('===================================================================')
%=========================================================================
disp('Jawaban No.2')
%disini saya menyelesaikan persamaan liniernya dengan cara matriks

% Koefisien matriks
C = [1, 4, 7; 
     2, -1, 4; 
     4, -2, 2];

% LHS vektor
D = [100; 100; 100];

% Menyelesaikan sistem persamaan linier
sistem_persamaan_linier = linsolve(C, D);

% Tampilkan Hasil
disp('Koefisien matriks:')
disp(C)

disp('LHS Vektor:')
disp(D)

disp('Menyelesaikan sistem persamaan linier:')
disp(sistem_persamaan_linier)

disp('===================================================================')
disp('===================================================================')
%=========================================================================
disp('Jawaban No.3A (di grafik yg muncul ketika di run')
% Membuat vektor x dan y dengan batasan yang diberikan
x = linspace(-4, 4, 100);
y = linspace(-4, 4, 100);

% Membuat matriks x dan y untuk membangun grid
[X, Y] = meshgrid(x, y);

% Menghitung nilai fungsi F pada setiap titik grid
F = 2 * sin(2*X) .* cos(3*Y);

% Plot menggunakan surf
figure;
surf(X, Y, F);
title('Plot 3D F(x, y) = 2 sin(2x) cos(3y)');
xlabel('x');
ylabel('y');
zlabel('F(x, y)');
colorbar;

% Plot menggunakan contour
figure;
contour(X, Y, F, 20); % 20 adalah jumlah kontur yang ingin ditampilkan
title('Contour Plot F(x, y) = 2 sin(2x) cos(3y)');
xlabel('x');
ylabel('y');
colorbar;

disp('===================================================================')
disp('===================================================================')
%=========================================================================
disp('Jawaban No.3B (di grafik yg muncul ketika di run')
% Menentukan rentang x
x = linspace(0, 2*pi, 1000);

% Menghitung nilai fungsi untuk setiap x
y1 = sin(2*x);
y2 = cos(6*x);
y3 = 2*cos(3*x).*sin(4*x);
y4 = 4*exp(1)*sin(6*x);

% Membuat plot dalam satu gambar dengan tiga cara tampilan yang berbeda
figure;

% Plot pertama dengan tampilan garis solid (default)
subplot(3,1,1);
plot(x, y1, x, y2, x, y3, x, y4);
title('Plot dengan Tampilan Default');
legend('y1', 'y2', 'y3', 'y4');
xlabel('x');
ylabel('y');
grid on;

% Plot kedua dengan tampilan marker dan garis putus-putus
subplot(3,1,2);
plot(x, y1, '-o', x, y2, '-s', x, y3, '-d', x, y4, '-^');
title('Plot dengan Tampilan Marker dan Garis Putus-putus');
legend('y1', 'y2', 'y3', 'y4');
xlabel('x');
ylabel('y');
grid on;

% Plot ketiga dengan tampilan area di bawah kurva
subplot(3,1,3);
fill(x, y1, 'r', x, y2, 'g', x, y3, 'b', x, y4, 'm', 'FaceAlpha', 0.3);
title('Plot dengan Tampilan Area di Bawah Kurva');
legend('y1', 'y2', 'y3', 'y4');
xlabel('x');
ylabel('y');
grid on;





