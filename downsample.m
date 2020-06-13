
function R = downsample(I, filter)

border_mode = 'symmetric';

% low pass, convolve with separable filter
R = imfilter(I,filter,border_mode);     %horizontal
R = imfilter(R,filter',border_mode);    %vertical

% decimate
r = size(I,1);
c = size(I,2);
R = R(1:2:r, 1:2:c, :);  