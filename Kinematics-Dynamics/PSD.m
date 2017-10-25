Fs = 100;
x = [exp1(82:end,3); exp2(82:end,3); exp3(82:end,3); exp4(82:end,3);...
   exp5(82:end,3); exp6(82:end,3); exp7(82:end,3); exp8(82:end,3);...
   exp9(82:end,3); exp10(82:end,3); exp11(82:end,3); exp12(82:end,3);...
   exp13(82:end,3); exp14(82:end,3); exp15(82:end,3); exp16(82:end,3);...
   exp17(82:end,3); exp18(82:end,3); exp19(82:end,3); exp20(82:end,3);...
   exp21(82:end,3); exp22(82:end,3); exp23(82:end,3); exp24(82:end,3);...
   exp25(82:end,3); exp26(82:end,3); exp27(82:end,3); exp28(82:end,3);...
   exp29(82:end,3); exp30(82:end,3); exp31(82:end,3); exp32(82:end,3);...
   exp33(82:end,3); exp34(82:end,3); exp35(82:end,3); exp36(82:end,3);...
   exp37(82:end,3); exp38(82:end,3); exp39(82:end,3); exp40(82:end,3);...
   exp41(82:end,3); exp42(82:end,3)];

N = length(x);
xdft = fft(x);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq = 0:Fs/length(x):Fs/2;

plot(freq,10*log10(psdx))
grid on
title('Periodogram Using FFT')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')