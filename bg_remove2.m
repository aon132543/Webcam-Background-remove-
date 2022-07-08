function [BW,maskedRGBImage] = createMask(RGB)
I = RGB;
channel1Min = 15.000;
channel1Max = 255.000;
channel2Min = 14.000;
channel2Max = 240.000;

channel3Min = 0.000;
channel3Max = 121.000;

sliderBW = (I(:,:,1) >= channel1Min ) & (I(:,:,1) <= channel1Max) & ...
    (I(:,:,2) >= channel2Min ) & (I(:,:,2) <= channel2Max) & ...
    (I(:,:,3) >= channel3Min ) & (I(:,:,3) <= channel3Max);
BW = sliderBW;

maskedRGBImage = RGB;
maskedRGBImage(repmat(~BW,[1 1 3])) = 0;

end
