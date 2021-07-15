%Make sure all EEGLAB functions are on the MATLAB path
[ALLEEG, EEG, CURRENTSET, ALLCOM] = eeglab;
close all;

%ERP sets to include in GND
subs = {'filepath\sub1.erp', 'filepath\sub2.erp', 'filepath\sub3.erp'};

%Create a GND structure
GND = erplab2GND(subs, 'exclude_chans', {'VEOG','HEOG'}, 'exp_name', 'EmoAmbiguity', 'out_fname', 'EmoAmbiguity.GND'); 

%Downsample the data in the GND from 500 Hz to 125 Hz using boxcar filter
%Filter averages together each time point with the surrounding 2 time
%points
GND = decimateGND(GND, 4);

% Visually examine data
gui_erp(GND)