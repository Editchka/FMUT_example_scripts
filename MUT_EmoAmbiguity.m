%% Set-up

%Make sure all EEGLAB functions are on the MATLAB path
[ALLEEG, EEG, CURRENTSET, ALLCOM] = eeglab;
close all;

%Load GND file
load('filepath\EmoAmbiguity.GND', '-mat');

%% Full factorial design

GND = FmaxGND(GND, 'bins', 1:18, 'factor_names', {'Ambiguity', 'Emotion'}, 'factor_levels', [3, 6], 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_factorial.xlsx');
            
%% Pair-wise follow-ups for Emotion main effect

%Fear vs Anger
GND = FmaxGND(GND, 'bins', [52, 60], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_FearVsAnger.xlsx');

%Fear vs Disgust
GND = FmaxGND(GND, 'bins', [52, 68], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_FearVsDisgust.xlsx');

%Fear vs Happiness
GND = FmaxGND(GND, 'bins', [52, 76], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_FearVsHappiness.xlsx');

%Fear vs Sadness
GND = FmaxGND(GND, 'bins', [52, 84], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_FearVsSadness.xlsx');

%Fear vs Surprise
GND = FmaxGND(GND, 'bins', [52, 92], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_FearVsSurprise.xlsx');

%Anger vs Disgust
GND = FmaxGND(GND, 'bins', [60, 68], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_AngerVsDisgust.xlsx');

%Anger vs Happiness
GND = FmaxGND(GND, 'bins', [60, 76], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_AngerVsHappiness.xlsx');

%Anger vs Sadness
GND = FmaxGND(GND, 'bins', [60, 84], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_AngerVsSadness.xlsx');

%Anger vs Surprise
GND = FmaxGND(GND, 'bins', [60, 92], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_AngerVsSurprise.xlsx');

%Disgust vs Happiness
GND = FmaxGND(GND, 'bins', [68, 76], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_DisgustVsHappiness.xlsx');

%Disgust vs Sadness
GND = FmaxGND(GND, 'bins', [68, 84], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_DisgustVsSadness.xlsx');

%Disgust vs Surprise
GND = FmaxGND(GND, 'bins', [68, 92], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_DisgustVsSurprise.xlsx');

%Happiness vs Sadness
GND = FmaxGND(GND, 'bins', [76, 84], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_HappinessVsSadness.xlsx');

%Happiness vs Surprise
GND = FmaxGND(GND, 'bins', [76, 92], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_HappinessVsSurprise.xlsx');

%Sadness vs Surprise
GND = FmaxGND(GND, 'bins', [84, 92], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_SadnessVsSurprise.xlsx');
            
%% Pair-wise follow-ups for Ambiguity main effect

%50 vs 62
GND = FmaxGND(GND, 'bins', [22, 23], 'factor_names', 'Ambiguity', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_50vs62.xlsx');

%50 vs 74
GND = FmaxGND(GND, 'bins', [22, 24], 'factor_names', 'Ambiguity', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_50vs74.xlsx');

%62 vs 74
GND = FmaxGND(GND, 'bins', [23, 24], 'factor_names', 'Ambiguity', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_62vs74.xlsx');

%% Interaction follow-ups: Effect of Emotion at each Ambiguity level

%50
%Fear vs Anger 50
GND = FmaxGND(GND, 'bins', [1, 4], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_FearVsAnger_50.xlsx');

%Fear vs Disgust 50
GND = FmaxGND(GND, 'bins', [1, 7], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_FearVsDisgust_50.xlsx');

%Fear vs Happiness 50
GND = FmaxGND(GND, 'bins', [1, 10], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_FearVsHappiness_50.xlsx');

%Fear vs Sadness 50
GND = FmaxGND(GND, 'bins', [1, 13], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_FearVsSadness_50.xlsx');

%Fear vs Surprise 50
GND = FmaxGND(GND, 'bins', [1, 16], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_FearVsSurprise_50.xlsx');

%Anger vs Disgust 50
GND = FmaxGND(GND, 'bins', [4, 7], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_AngerVsDisgust_50.xlsx');

%Anger vs Happiness 50
GND = FmaxGND(GND, 'bins', [4, 10], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_AngerVsHappiness_50.xlsx');

%Anger vs Sadness 50
GND = FmaxGND(GND, 'bins', [4, 13], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_AngerVsSadness_50.xlsx');

%Anger vs Surprise 50
GND = FmaxGND(GND, 'bins', [4, 16], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_AngerVsSurprise_50.xlsx');

%Disgust vs Happiness 50
GND = FmaxGND(GND, 'bins', [7, 10], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_DisgustVsHappiness_50.xlsx');

%Disgust vs Sadness 50
GND = FmaxGND(GND, 'bins', [7, 13], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_DisgustVsSadness_50.xlsx');

%Disgust vs Surprise 50
GND = FmaxGND(GND, 'bins', [7, 16], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_DisgustVsSurprise_50.xlsx');

%Happiness vs Sadness 50
GND = FmaxGND(GND, 'bins', [10, 13], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_HappinessVsSadness_50.xlsx');

%Happiness vs Surprise 50
GND = FmaxGND(GND, 'bins', [10, 16], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_HappinessVsSurprise_50.xlsx');

%Sadness vs Surprise 50
GND = FmaxGND(GND, 'bins', [13, 16], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_SadnessVsSurprise_50.xlsx');

%62
%Fear vs Anger 62
GND = FmaxGND(GND, 'bins', [2, 5], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_FearVsAnger_62.xlsx');

%Fear vs Disgust 62
GND = FmaxGND(GND, 'bins', [2, 8], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_FearVsDisgust_62.xlsx');

%Fear vs Happiness 62
GND = FmaxGND(GND, 'bins', [2, 11], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_FearVsHappiness_62.xlsx');

%Fear vs Sadness 62
GND = FmaxGND(GND, 'bins', [2, 14], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_FearVsSadness_62.xlsx');

%Fear vs Surprise 62
GND = FmaxGND(GND, 'bins', [2, 17], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_FearVsSurprise_62.xlsx');

%Anger vs Disgust 62
GND = FmaxGND(GND, 'bins', [5, 8], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_AngerVsDisgust_62.xlsx');

%Anger vs Happiness 62
GND = FmaxGND(GND, 'bins', [5, 11], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_AngerVsHappiness_62.xlsx');

%Anger vs Sadness 62
GND = FmaxGND(GND, 'bins', [5, 14], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_AngerVsSadness_62.xlsx');

%Anger vs Surprise 62
GND = FmaxGND(GND, 'bins', [5, 17], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_AngerVsSurprise_62.xlsx');

%Disgust vs Happiness 62
GND = FmaxGND(GND, 'bins', [8, 11], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_DisgustVsHappiness_62.xlsx');

%Disgust vs Sadness 62
GND = FmaxGND(GND, 'bins', [8, 14], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_DisgustVsSadness_62.xlsx');

%Disgust vs Surprise 62
GND = FmaxGND(GND, 'bins', [8, 17], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_DisgustVsSurprise_62.xlsx');

%Happiness vs Sadness 62
GND = FmaxGND(GND, 'bins', [11, 14], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_HappinessVsSadness_62.xlsx');

%Happiness vs Surprise 62
GND = FmaxGND(GND, 'bins', [11, 17], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_HappinessVsSurprise_62.xlsx');

%Sadness vs Surprise 62
GND = FmaxGND(GND, 'bins', [14, 17], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_SadnessVsSurprise_62.xlsx');

%74
%Fear vs Anger 74
GND = FmaxGND(GND, 'bins', [3, 6], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_FearVsAnger_74.xlsx');

%Fear vs Disgust 74
GND = FmaxGND(GND, 'bins', [3, 9], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_FearVsDisgust_74.xlsx');

%Fear vs Happiness 74
GND = FmaxGND(GND, 'bins', [3, 12], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_FearVsHappiness_74.xlsx');

%Fear vs Sadness 74
GND = FmaxGND(GND, 'bins', [3, 15], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_FearVsSadness_74.xlsx');

%Fear vs Surprise 74
GND = FmaxGND(GND, 'bins', [3, 18], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_FearVsSurprise_74.xlsx');

%Anger vs Disgust 74
GND = FmaxGND(GND, 'bins', [6, 9], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_AngerVsDisgust_74.xlsx');

%Anger vs Happiness 74
GND = FmaxGND(GND, 'bins', [6, 12], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_AngerVsHappiness_74.xlsx');

%Anger vs Sadness 74
GND = FmaxGND(GND, 'bins', [6, 15], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_AngerVsSadness_74.xlsx');

%Anger vs Surprise 74
GND = FmaxGND(GND, 'bins', [6, 18], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_AngerVsSurprise_74.xlsx');

%Disgust vs Happiness 74
GND = FmaxGND(GND, 'bins', [9, 12], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_DisgustVsHappiness_74.xlsx');

%Disgust vs Sadness 74
GND = FmaxGND(GND, 'bins', [9, 15], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_DisgustVsSadness_74.xlsx');

%Disgust vs Surprise 74
GND = FmaxGND(GND, 'bins', [9, 18], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_DisgustVsSurprise_74.xlsx');

%Happiness vs Sadness 74
GND = FmaxGND(GND, 'bins', [12, 15], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_HappinessVsSadness_74.xlsx');

%Happiness vs Surprise 74
GND = FmaxGND(GND, 'bins', [12, 18], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_HappinessVsSurprise_74.xlsx');

%Sadness vs Surprise 74
GND = FmaxGND(GND, 'bins', [15, 18], 'factor_names', 'Emotion', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_SadnessVsSurprise_74.xlsx');

%% Interaction follow-ups: Effect of Ambiguity for each Emotion

%Fear
%Fear 50 vs 62
GND = FmaxGND(GND, 'bins', [1, 2], 'factor_names', 'Ambiguity', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_Fear_50vs62.xlsx');

%Fear 50 vs 74
GND = FmaxGND(GND, 'bins', [1, 3], 'factor_names', 'Ambiguity', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_Fear_50vs74.xlsx');

%Fear 62 vs 74
GND = FmaxGND(GND, 'bins', [2, 3], 'factor_names', 'Ambiguity', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_Fear_62vs74.xlsx');

%Anger
%Anger 50 vs 62
GND = FmaxGND(GND, 'bins', [4, 5], 'factor_names', 'Ambiguity', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_Anger_50vs62.xlsx');

%Anger 50 vs 74
GND = FmaxGND(GND, 'bins', [4, 6], 'factor_names', 'Ambiguity', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_Anger_50vs74.xlsx');

%Anger 62 vs 74
GND = FmaxGND(GND, 'bins', [5, 6], 'factor_names', 'Ambiguity', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_Anger_62vs74.xlsx');

%Disgust
%Disgust 50 vs 62
GND = FmaxGND(GND, 'bins', [7, 8], 'factor_names', 'Ambiguity', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_Disgust_50vs62.xlsx');

%Disgust 50 vs 74
GND = FmaxGND(GND, 'bins', [7, 9], 'factor_names', 'Ambiguity', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_Disgust_50vs74.xlsx');

%Disgust 62 vs 74
GND = FmaxGND(GND, 'bins', [8, 9], 'factor_names', 'Ambiguity', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_Disgust_62vs74.xlsx');

%Happiness
%Happiness 50 vs 62
GND = FmaxGND(GND, 'bins', [10, 11], 'factor_names', 'Ambiguity', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_Happiness_50vs62.xlsx');

%Happiness 50 vs 74
GND = FmaxGND(GND, 'bins', [10, 12], 'factor_names', 'Ambiguity', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_Happiness_50vs74.xlsx');

%Happiness 62 vs 74
GND = FmaxGND(GND, 'bins', [11, 12], 'factor_names', 'Ambiguity', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_Happiness_62vs74.xlsx');

%Sadness
%Sadness 50 vs 62
GND = FmaxGND(GND, 'bins', [13, 14], 'factor_names', 'Ambiguity', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_Sadness_50vs62.xlsx');

%Sadness 50 vs 74
GND = FmaxGND(GND, 'bins', [13, 15], 'factor_names', 'Ambiguity', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_Sadness_50vs74.xlsx');

%Sadness 62 vs 74
GND = FmaxGND(GND, 'bins', [14, 15], 'factor_names', 'Ambiguity', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_Sadness_62vs74.xlsx');

%Surprise
%Surprise 50 vs 62
GND = FmaxGND(GND, 'bins', [16, 17], 'factor_names', 'Ambiguity', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_Surprise_50vs62.xlsx');

%Surprise 50 vs 74
GND = FmaxGND(GND, 'bins', [16, 18], 'factor_names', 'Ambiguity', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_Surprise_50vs74.xlsx');

%Surprise 62 vs 74
GND = FmaxGND(GND, 'bins', [17, 18], 'factor_names', 'Ambiguity', 'factor_levels', 2, 'time_wind', [100 200], 'n_perm', 1e4, 'alpha', 0.05, 'save_GND', 'no', 'output_file', 'EmoAmbiguity_Surprise_62vs74.xlsx');
