clc
clear all
close all

%% Before running my code
%% In my code " * " corresponds to 11 and 12 corresponds to " # " %%
%% Little explanation for code ;
%% Code works like a telephone keypad.For example if you press "1" after running the code , it only runs the "1" part on the for loop
%% After running you can press and see the decoding and encoding many times as you want . It works like a button.
%% I wanted to code with GUI interface on matlab but since I could not do it on given time I decided to make it in for loop.
%% On the components part , I entered the needed components for goertzel and filtering part.
%% I called my sound files by sound command and by audioread command I get the y and the sampling frequency parts.
%% Later on I used goertzel command which I explained on my report.
%% Finally we get the encoding part and we are able to see the Input and output and which key is pressed on our system.

%% IMPORTANT !! In order to get better shape we must use 8000 Fs in order to satisfy Goertzel algorithm so thats why I defined another sampler later on the code


rmain=2048*2;rmag=1024*2;
cn=9;cr=0.5;
cl=.25;ch=.28;
[b,a]=cheby1(cn,cr,cl);


%% The usage of the for loop is to take input from the user ; According to number that you entered , my code makes the decoding and shows the both multi tone frequencies and entered input signal

for i=1:1:10
    
    y = input('--Dial a number : ')
    
    
    if y == 0
        
        close all
        [y, Fs] = audioread('dtmf-0.mp3')
        
        sound(y, Fs, 16);
        
t=[0:0.000125:.05];
fs=8000;
f1=941;f2=1336;

yfilt1=filter(b,a,y);
h2=fft(yfilt1,rmain);
hmag2=abs(h2(1:rmag));
[b1,a1]=cheby1(cn,cr,ch,'high');
yfilt2=filter(b1,a1,y);
h3=fft(yfilt2,rmain);
hmag3=abs(h3(1:rmag));

Fs = 8000;
N = 205;
lo = sin(2*pi*941*(0:N-1)/Fs);
hi = sin(2*pi*1336*(0:N-1)/Fs);
data = lo + hi;

f = [697 770 852 941 1209 1336 1477];
freq_indices = round(f/Fs*N) + 1;   
dft_data = goertzel(data,freq_indices);

plot(y);
title('DTMF Input');xlabel('Time');
ylabel('Amplitude');grid;

figure

stem(f,abs(dft_data))

ax = gca;
ax.XTick = f;
xlabel('Frequency (Hz)')
title('DFT Magnitude')

f = msgbox('You have pressed the button 0 ');

display('You have pressed the button 0')

        
     
    end
    

if y == 1
    
    close all
        [y, Fs] = audioread('dtmf-1.mp3');
        

sound(y, Fs, 16);

t=[0:0.000125:.05];
fs=8000;
f1=697;f2=1209;

yfilt1=filter(b,a,y);
h2=fft(yfilt1,rmain);
hmag2=abs(h2(1:rmag));
[b1,a1]=cheby1(cn,cr,ch,'high');
yfilt2=filter(b1,a1,y);
h3=fft(yfilt2,rmain);
hmag3=abs(h3(1:rmag));

Fs = 8000;
N = 205;
lo = sin(2*pi*697*(0:N-1)/Fs);
hi = sin(2*pi*1209*(0:N-1)/Fs);
data = lo + hi;

f = [697 770 852 941 1209 1336 1477];
freq_indices = round(f/Fs*N) + 1;   
dft_data = goertzel(data,freq_indices);

plot(y);
title('DTMF Input');xlabel('Time');
ylabel('Amplitude');grid;

figure

stem(f,abs(dft_data))

ax = gca;
ax.XTick = f;
xlabel('Frequency (Hz)')
title('DFT Magnitude')

display('--YOU HAVE PRESSED THE 1 BUTTON')

f = msgbox('You have pressed the button 0 ');


end


if y == 2
    
    close all
        [y, Fs] = audioread('dtmf-2.mp3');

sound(y, Fs, 16);

t=[0:0.000125:.05];
fs=8000;
f1=697;f2=1336;

yfilt1=filter(b,a,y);
h2=fft(yfilt1,rmain);
hmag2=abs(h2(1:rmag));
[b1,a1]=cheby1(cn,cr,ch,'high');
yfilt2=filter(b1,a1,y);
h3=fft(yfilt2,rmain);
hmag3=abs(h3(1:rmag));


Fs = 8000;
N = 205;
lo = sin(2*pi*941*(0:N-1)/Fs);
hi = sin(2*pi*1336*(0:N-1)/Fs);
data = lo + hi;

f = [697 770 852 941 1209 1336 1477];
freq_indices = round(f/Fs*N) + 1;   
dft_data = goertzel(data,freq_indices);

plot(y);
title('DTMF Input');xlabel('Time');
ylabel('Amplitude');grid;

figure

stem(f,abs(dft_data))

ax = gca;
ax.XTick = f;
xlabel('Frequency (Hz)')
title('DFT Magnitude')

if f1 == 941 & f2 == 1336

display('--YOU HAVE PRESSED THE 2 BUTTON')

f = msgbox('You have pressed the button 0 ');



end


end


if y == 3
    
    close all
        [y, Fs] = audioread('dtmf-3.mp3');

sound(y, Fs, 16);

t=[0:0.000125:.05];
fs=8000;
f1=697;f2=1447;


yfilt1=filter(b,a,y);
h2=fft(yfilt1,rmain);
hmag2=abs(h2(1:rmag));
[b1,a1]=cheby1(cn,cr,ch,'high');
yfilt2=filter(b1,a1,y);
h3=fft(yfilt2,rmain);
hmag3=abs(h3(1:rmag));

Fs = 8000;
N = 205;
lo = sin(2*pi*697*(0:N-1)/Fs);
hi = sin(2*pi*1447*(0:N-1)/Fs);
data = lo + hi;

f = [697 770 852 941 1209 1336 1477];
freq_indices = round(f/Fs*N) + 1;   
dft_data = goertzel(data,freq_indices);

plot(y);
title('DTMF Input');xlabel('Time');
ylabel('Amplitude');grid;

figure

stem(f,abs(dft_data))

ax = gca;
ax.XTick = f;
xlabel('Frequency (Hz)')
title('DFT Magnitude')

display('--YOU HAVE PRESSED THE 3 BUTTON')

f = msgbox('You have pressed the button 0 ');




end


if y == 4
    
    close all
        [y, Fs] = audioread('dtmf-4.mp3');

sound(y, Fs, 16);

t=[0:0.000125:.05];
fs=8000;
f1=770;f2=1209;

yfilt1=filter(b,a,y);
h2=fft(yfilt1,rmain);
hmag2=abs(h2(1:rmag));
[b1,a1]=cheby1(cn,cr,ch,'high');
yfilt2=filter(b1,a1,y);
h3=fft(yfilt2,rmain);
hmag3=abs(h3(1:rmag));

Fs = 8000;
N = 205;
lo = sin(2*pi*770*(0:N-1)/Fs);
hi = sin(2*pi*1209*(0:N-1)/Fs);
data = lo + hi;

f = [697 770 852 941 1209 1336 1477];
freq_indices = round(f/Fs*N) + 1;   
dft_data = goertzel(data,freq_indices);

plot(y);
title('DTMF Input');xlabel('Time');
ylabel('Amplitude');grid;

figure

stem(f,abs(dft_data))

ax = gca;
ax.XTick = f;
xlabel('Frequency (Hz)')
title('DFT Magnitude')

display('--YOU HAVE PRESSED THE 4 BUTTON')

f = msgbox('You have pressed the button 0 ');





end


if y == 5
    
    close all
        [y, Fs] = audioread('dtmf-5.mp3');

sound(y, Fs, 16);

t=[0:0.000125:.05];
fs=8000;
f1=770;f2=1336;


yfilt1=filter(b,a,y);
h2=fft(yfilt1,rmain);
hmag2=abs(h2(1:rmag));
[b1,a1]=cheby1(cn,cr,ch,'high');
yfilt2=filter(b1,a1,y);
h3=fft(yfilt2,rmain);
hmag3=abs(h3(1:rmag));

Fs = 8000;
N = 205;
lo = sin(2*pi*770*(0:N-1)/Fs);
hi = sin(2*pi*1336*(0:N-1)/Fs);
data = lo + hi;

f = [697 770 852 941 1209 1336 1477];
freq_indices = round(f/Fs*N) + 1;   
dft_data = goertzel(data,freq_indices);

plot(y);
title('DTMF Input');xlabel('Time');
ylabel('Amplitude');grid;

figure

stem(f,abs(dft_data))

ax = gca;
ax.XTick = f;
xlabel('Frequency (Hz)')
title('DFT Magnitude')

display('--YOU HAVE PRESSED THE 5 BUTTON')

f = msgbox('You have pressed the button 0 ');


end


if y == 6
    
    close all
        [y, Fs] = audioread('dtmf-6.mp3');

sound(y, Fs, 16);

t=[0:0.000125:.05];
fs=8000;
f1=770;f2=1477;

yfilt1=filter(b,a,y);
h2=fft(yfilt1,rmain);
hmag2=abs(h2(1:rmag));
[b1,a1]=cheby1(cn,cr,ch,'high');
yfilt2=filter(b1,a1,y);
h3=fft(yfilt2,rmain);
hmag3=abs(h3(1:rmag));

Fs = 8000;
N = 205;
lo = sin(2*pi*770*(0:N-1)/Fs);
hi = sin(2*pi*1477*(0:N-1)/Fs);
data = lo + hi;

f = [697 770 852 941 1209 1336 1477];
freq_indices = round(f/Fs*N) + 1;   
dft_data = goertzel(data,freq_indices);

plot(y);
title('DTMF Input');xlabel('Time');
ylabel('Amplitude');grid;

figure

stem(f,abs(dft_data))

ax = gca;
ax.XTick = f;
xlabel('Frequency (Hz)')
title('DFT Magnitude')

display('--YOU HAVE PRESSED THE 6 BUTTON')

f = msgbox('You have pressed the button 0 ');


end


if y == 7
    
    close all
        [y, Fs] = audioread('dtmf-7.mp3');

sound(y, Fs, 16);

t=[0:0.000125:.05];
fs=8000;
f1=852;f2=1209;

yfilt1=filter(b,a,y);
h2=fft(yfilt1,rmain);
hmag2=abs(h2(1:rmag));
[b1,a1]=cheby1(cn,cr,ch,'high');
yfilt2=filter(b1,a1,y);
h3=fft(yfilt2,rmain);
hmag3=abs(h3(1:rmag));

Fs = 8000;
N = 205;
lo = sin(2*pi*852*(0:N-1)/Fs);
hi = sin(2*pi*1209*(0:N-1)/Fs);
data = lo + hi;

f = [697 770 852 941 1209 1336 1477];
freq_indices = round(f/Fs*N) + 1;   
dft_data = goertzel(data,freq_indices);


plot(y);
title('DTMF Input');xlabel('Time');
ylabel('Amplitude');grid;

figure

stem(f,abs(dft_data))

ax = gca;
ax.XTick = f;
xlabel('Frequency (Hz)')
title('DFT Magnitude')


display('--YOU HAVE PRESSED THE 7 BUTTON')

f = msgbox('You have pressed the button 0 ');




end


if y == 8
    
    close all
        [y, Fs] = audioread('dtmf-8.mp3');

sound(y, Fs, 16);

t=[0:0.000125:.05];
fs=8000;
f1=852;f2=1336;

yfilt1=filter(b,a,y);
h2=fft(yfilt1,rmain);
hmag2=abs(h2(1:rmag));
[b1,a1]=cheby1(cn,cr,ch,'high');
yfilt2=filter(b1,a1,y);
h3=fft(yfilt2,rmain);
hmag3=abs(h3(1:rmag));

Fs = 8000;
N = 205;
lo = sin(2*pi*852*(0:N-1)/Fs);
hi = sin(2*pi*1336*(0:N-1)/Fs);
data = lo + hi;

f = [697 770 852 941 1209 1336 1477];
freq_indices = round(f/Fs*N) + 1;   
dft_data = goertzel(data,freq_indices);

plot(y);
title('DTMF Input');xlabel('Time');
ylabel('Amplitude');grid;

figure

stem(f,abs(dft_data))

ax = gca;
ax.XTick = f;
xlabel('Frequency (Hz)')
title('DFT Magnitude')


display('--YOU HAVE PRESSED THE 8 BUTTON')

f = msgbox('You have pressed the button 0 ');


end


if y == 9
    
    close all
        [y, Fs] = audioread('dtmf-9.mp3');

sound(y, Fs, 16);

t=[0:0.000125:.05];
fs=8000;
f1=852;f2=1477;

yfilt1=filter(b,a,y);
h2=fft(yfilt1,rmain);
hmag2=abs(h2(1:rmag));
[b1,a1]=cheby1(cn,cr,ch,'high');
yfilt2=filter(b1,a1,y);
h3=fft(yfilt2,rmain);
hmag3=abs(h3(1:rmag));

Fs = 8000;
N = 205;
lo = sin(2*pi*852*(0:N-1)/Fs);
hi = sin(2*pi*1447*(0:N-1)/Fs);
data = lo + hi;

f = [697 770 852 941 1209 1336 1477];
freq_indices = round(f/Fs*N) + 1;   
dft_data = goertzel(data,freq_indices);

plot(y);
title('DTMF Input');xlabel('Time');
ylabel('Amplitude');grid;

figure

stem(f,abs(dft_data))

ax = gca;
ax.XTick = f;
xlabel('Frequency (Hz)')
title('DFT Magnitude')


display('--YOU HAVE PRESSED THE 9 BUTTON')

f = msgbox('You have pressed the button 0 ');


end


if y == 11
    
    close all
        [y, Fs] = audioread('dtmf-star.mp3');

sound(y, Fs, 16);

t=[0:0.000125:.05];
fs=8000;
f1=697;f2=1663;


yfilt1=filter(b,a,y);
h2=fft(yfilt1,rmain);
hmag2=abs(h2(1:rmag));
[b1,a1]=cheby1(cn,cr,ch,'high');
yfilt2=filter(b1,a1,y);
h3=fft(yfilt2,rmain);
hmag3=abs(h3(1:rmag));

Fs = 8000;
N = 205;
lo = sin(2*pi*697*(0:N-1)/Fs);
hi = sin(2*pi*1663*(0:N-1)/Fs);
data = lo + hi;

f = [697 770 852 941 1209 1336 1477];
freq_indices = round(f/Fs*N) + 1;   
dft_data = goertzel(data,freq_indices);

plot(y);
title('DTMF Input');xlabel('Time');
ylabel('Amplitude');grid;

figure

stem(f,abs(dft_data))

ax = gca;
ax.XTick = f;
xlabel('Frequency (Hz)')
title('DFT Magnitude')

display('--YOU HAVE PRESSED THE * BUTTON')

f = msgbox('You have pressed the button 0 ');




end


if y == 12
    
    close all
        [y, Fs] = audioread('dtmf-hash.mp3');

sound(y, Fs, 16);

t=[0:0.000125:.05];
fs=8000;
f1=770;f2=1633;


yfilt1=filter(b,a,y);
h2=fft(yfilt1,rmain);
hmag2=abs(h2(1:rmag));
[b1,a1]=cheby1(cn,cr,ch,'high');
yfilt2=filter(b1,a1,y);
h3=fft(yfilt2,rmain);
hmag3=abs(h3(1:rmag));

Fs = 8000;
N = 205;
lo = sin(2*pi*770*(0:N-1)/Fs);
hi = sin(2*pi*1663*(0:N-1)/Fs);
data = lo + hi;

f = [697 770 852 941 1209 1336 1477];
freq_indices = round(f/Fs*N) + 1;   
dft_data = goertzel(data,freq_indices);

plot(y);
title('DTMF Input');xlabel('Time');
ylabel('Amplitude');grid;

figure

stem(f,abs(dft_data))

ax = gca;
ax.XTick = f;
xlabel('Frequency (Hz)')
title('DFT Magnitude')

display('--YOU HAVE PRESSED THE # BUTTON')

f = msgbox('You have pressed the button 0 ');



end


 
end



