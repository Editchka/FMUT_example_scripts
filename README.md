# FMUT Example Scripts

# Introduction

On this page, you will find example scripts for conducting mass univariate tests using the [Factorial Mass Univariate ERP Toolbox (FMUT)](https://github.com/ericcfields/FMUT/releases) developed by [Eric Fields (2017)](https://github.com/ericcfields/FMUT/wiki).

If you want to perform these tests with this toolbox, I recommend you visit [Eric Field’s page on FMUT](https://github.com/ericcfields/FMUT/wiki) for more information on how to install and use it.

# Example Scripts

The example scripts on this page were initially developed for a study investigating the effects of emotion and emotional ambiguity on early sensory ERPs (P1, N1, N170). 

In that study, photographs of a male face expressing the six basic emotions (anger, disgust, fear, happiness, sadness, and surprise) morphed with another emotion (in a proportion ranging from 26% to 74%, in 12% increments) were presented while EEG was recorded. It is noteworthy that only emotions that were dominant in the morph were analyzed (i.e. only emotions presented at 50%, 62%, and 74%).

Statistical analyses were conducted using a 6 (Emotion : anger, disgust, fear, happiness, sadness, and surprise) x 3 (Emotional Ambiguity : 50%, 62%, and 74%) design. These aimed at testing the main effects of Emotion and Emotional Ambiguity as well as the interaction between these two factors.

## ERP2GND

The first script is to create a grand average (GND) structure for mass univariate tests.

The **erplab2gnd** function converts a set of ERPLAB *.erp files to a GND structure. The parameters of this function are as below:

- **sub_ids**: the subjects to be included in the GND structure were previously specified.
- **bsln**: the default option where the function uses all time points before time 0 was used.
- **use_bins**: the default option where the function imports all bins created in ERPLAB was also used. In total, there were 99 bins created in ERPLAB and imported into the GND structure. These bins consisted of ERPs for each emotion presented at each ambiguity level (i.e. anger at 50%, disgust at 62%), but also of ERPs for combinations of different emotions displayed at a given ambiguity level (i.e. anger, disgust, fear, happiness, sadness, and surprise at 50%) or a given emotion presented at different ambiguity levels (i.e. anger at 50%, 62%, and 74%).
- **exclude_chans**: VEOG and HEOG were excluded.
- **include_chans**: this option could not be used since the exclude_chans option was used (they cannot both be used).
- **exp_name**: the experiment was named 'EmoAmbiguity'.
- **out_fname**: the GND variable was saved under the name 'EmoAmbiguity.GND'.
- **verblevel**: the default option that tells you “stuff you should know the first time you start working with a data set” was used.

The **decimateGND** function downsamples a set of ERPs, which can be useful to reduce the number of statistical tests (and therefore increase power). The parameters of this function are as below:

- **GND**: the GND previously created was used for downsampling.
- **decfactor**: the EEG data was sampled at 1000 Hz, then offline downsampled at 500 Hz in ERPLAB. It was further downsampled by a factor of 4 (from 500 Hz to 125 Hz) to reduce the number of tests, as recommended in [Groppe, Urbach, and Kutas (2011a)](https://doi.org/10.1111/j.1469-8986.2011.01273.x).
- **method**: the default option that uses a boxcar algorithm was used.
- **bsln_wind**: the default option that rebaselines all time points before 0 was also used to ensure that baseline mean amplitude was 0 after rebaselining, as recommended.
- **save_GND**: the default option that saves this newly decimated and rebaselined GND structure was used.
- **verblevel**: the default option that tells you “stuff you should know the first time you start working with a data set” was also used.

For the sake of parsimony, the default options have not been specified.

## MUT

The second script is to run mass univariate tests on the GND structure previously created.

The **FmaxGND** function conducts permutation tests for ANOVAs. The parameters of this function for the full factorial design are as below:

- **GND_or_fname**: the GND previously created was used for performing permutation tests.
- **bins**: bins from 1 to 18 were used. These corresponded to ERPs for each emotion presented at each ambiguity level (i.e. anger at 50%, 62%, and 74%, disgust at 50%, 62%, and 74%, and so on).
- **factor_names**: the names of factors for this study were Ambiguity and Emotion. As recommended, these were entered “in fastest to slowest moving order within the bins provided”. 
- **factor_levels**: the Ambiguity factor had 3 levels (50%, 62%, and 74%), while the Emotion factor had 6 (anger, disgust, fear, happiness, sadness, and surprise).
- **time_wind**: since this study was interested in the effects of Emotion and Emotional Ambiguity on early sensory ERPs (P1, N1, N170), the time window was defined as ranging from 100 to 200 ms.
- **mean_wind**: the default option where every single time point within the time window previously defined is tested was used. The mean time window option was therefore not used.
- **exclude_chans**: the default option where all channels were included was used. The exclude channels option was therefore not used.
- **include_chans**: the default option where all channels were included was used.
- **n_perm**: the default option where the number of permutations is set at 10 000 was used, as recommended by [Fields (2017)](https://github.com/ericcfields/FMUT/wiki/Using-FMUT).
- **alpha**: the default option where the family-wise alpha level is set at 0.05 was used.
- **plot_raster**: the default option where “a two-dimensional (time x channel) binary "raster" diagram is created to illustrate the results of the permutation tests” was used.
- **save_GND**: the GND variable was not saved to disk.
- **output_file**: the output file was saved under the name 'EmoAmbiguity_factorial.xlsx'.
- **reproduce_test**: the default option where a previous test was not reproduced was used.
- **verblevel**: the default option that tells you “stuff you should know the first time you start working with a data set” was also used.

Similar to the full factorial design, the **FmaxGND** can also perform permutation tests for the pairwise follow-up tests of the main effects of Emotion and Ambiguity as well as their interaction. However, the parameters of this function must be adjusted to reflect the pairwise follow-up test of interest (e.g. bins, factor_names, factor_levels, output_file).  

It is noteworthy that a correction for multiple comparisons is usually necessary when multiple pairwise tests are conducted to follow-up an omnibus main effect or interaction. However, as mentioned by [Fields (2017)](https://github.com/ericcfields/FMUT/wiki/Using-FMUT), FMUT does not currently have a function for applying such corrections, so these must be applied to the *p* values obtained by FMUT.

# References

Fields, E. C. (2017). Factorial Mass Univariate ERP Toolbox [Computer software]. Available from: https://github.com/ericcfields/FMUT/releases

Fields, E. C., & Kuperberg, G. R. (2020). Having your cake and eating it too: Flexibility and power with mass univariate statistics for ERP data. *Psychophysiology, 57*(2), e13468. https://doi.org/10.1111/psyp.13468

Groppe, D. M., Urbach, T. P., & Kutas, M. (2011a). Mass univariate analysis of event-related brain potentials/fields I: A critical tutorial review. *Psychophysiology, 48*(12), 1711-1725.  https://doi.org/10.1111/j.1469-8986.2011.01273.x

Groppe, D. M., Urbach, T. P., & Kutas, M. (2011b). Mass univariate analysis of event-related brain potentials/fields II: Simulation studies.  _Psychophysiology, 48_(12), 1726-1737.  [https://doi.org/10.1111/j.1469-8986.2011.01272.x](https://doi.org/10.1111/j.1469-8986.2011.01272.x)

Luck, S. (2014). The mass univariate approach and permutation statistics. _ERP analysis_, _561_. http://mitp-content-server.mit.edu:18180/books/content/sectbyfn?collid=books_pres_0&fn=Ch_13_Mass_Univariate_and_Permutations_0.pdf&id=8575
