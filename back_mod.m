%
% back_mod, January 2019
% (c) Rodrigo Dal Ben (dalbenwork@gmail.com)
%
% Function for modifying the background colored of RGB images from Black
% or White to Grey or Light Grey.
%
% ------------------------------------------------------------------------
% Permission to use, copy, or modify this software and its documentation
% for educational and research purposes only and without fee is hereby
% granted, provided that this copyright notice and the original authors'
% names appear on all copies and supporting documentation. This program
% shall not be used, rewritten, or adapted as the basis of a commercial
% software or hardware product without first obtaining permission of the
% authors. The authors make no representations about the suitability of
% this software for any purpose. It is provided "as is" without express
% or implied warranty.
%
% Please send suggestions or corrections to dalbenwork@gmail.com
% ------------------------------------------------------------------------

function back_mod
% Clear command window 
clc;
disp('backgorund_mod');

% Set OS
if ispc ==1
    sep1 = '\*';
    sep2 = '\';
else
    sep1 = '/*';
    sep2 = '/';
end

% Initial instructions and background setup
prompt = 'This script will change every black or white pixel from the provided images to grey.\nYour images have black (B) or white (W) background? (B/W)\n';
ans_1 = input(prompt, 's');
while ~((ans_1 == 'B') ||  (ans_1 == 'W'))
    prompt = 'Please, type B for Black or W for White\n';
    ans_1 = input(prompt, 's');
end

if ans_1 == 'B'
    old_back = 0;
else
    old_back = 255;
end

prompt = 'The new background should be grey (G) or light grey (L)? (G/L)\n';
ans_2 = input(prompt, 's');
while ~((ans_2 == 'G') ||  (ans_2 == 'L'))
    prompt = 'Please, type G for Grey or L for Light grey\n';
    ans_2 = input(prompt, 's');
end

if ans_2 == 'G'
    new_back = 127.5;
else
    new_back = 191.25;
end

% Set image format
prompt = 'What image format are you using?\n';
img_f = input(prompt,'s');
if isempty(img_f)
    img_f = '.jpg';
    disp('.jpg as default')
end
    
% Set input and output folder
input('Press "Return" to select the image input directory');
input_folder = uigetdir;
while input_folder == 0
    input('Press "Return" to select the image input directory');
    input_folder = uigetdir;
end
input('Set!\nNow, press "Return" to select the image output directory');
output_folder = uigetdir;
while output_folder == 0
    input('Press "Return" to select the image output directory');
    output_folder = uigetdir;
end

disp('Set!');

% Set input source and name pattern
src = dir(fullfile(strcat(input_folder, sep1, img_f))); % pattern to match filenames.
numim = length(src);

disp('Set! Please wait!')

%% Applying the new background to all images

for i = 1:numim
    % load images
    file_name = strcat(input_folder, sep2, src(i).name);
    I = imread(file_name);
        %figure,imshow(I); % Check if img were created correctly (delete %)

    [L,W,D] = size(I);
for j = 1:L
  for k = 1:W
      for l = 1:D
          if I(j,k,l) == old_back
              I(j,k,l) = new_back;
          end
      end
  end
end

%figure,imshow(I); % Check if img were transformed correctly (delete %)

save_grey = strcat(output_folder, sep2,'gb_', src(i).name);
    imwrite(I, save_grey);
    
end

disp('All done, check images.')

end 