# Kaggle Competition: Ion Switching

<font size=4>Ref.:</font>

Source: https://www.kaggle.com/c/liverpool-ion-switching

https://en.wikipedia.org/wiki/Ion_channel

http://book.bionumbers.org/how-many-ions-pass-through-an-ion-channel-per-second/

https://www.nature.com/articles/s42003-019-0729-3

https://journals.physiology.org/doi/full/10.1152/advan.00006.2002


| a|b|
|-|-|
|<img src="https://upload.wikimedia.org/wikipedia/commons/2/2f/Ion_channel.png" width="250"/> | <img src="http://book.bionumbers.org/wp-content/uploads/2014/08/427-f1-ChannelOpenClose-11.png" width="300"/>|

|c|
|-|
|<img src="http://book.bionumbers.org/wp-content/uploads/2014/08/427-f3-IonChannelCalc-1.png" width="560"/>|


- The opening of an ion channel is a fleeting event within a few milliseconds

- Single-channel records can be obtained using the appropriate electrophysiological technique (e.g., patch clamp), and from these records the open probability and the channel conductance can be calculated. 
***

<font size=4>Figure out the current through a single channel:</font>

- In a certain sweep (e.g. N=1000 points), use the differences ($y_i$) of succesive points along the sweep to calculate the variance, i.e.
$$y_i = \frac{1}{2}(x_i - x_{i+1})\tag{1}$$
where i is the current of the i-th point along the sweep. \
The variance is given by
$$\sigma_i^2 = \frac{2}{N-1}\sum_i^N (y_i - \bar{y})^2 \tag{2}$$
where $\bar{y}$ is the mean current of the sweep. We can get the plot:

<img src="https://www.researchgate.net/profile/Osvaldo_Alvarez2/publication/11024671/figure/fig5/AS:394575848984579@1471085621134/Plot-of-the-variance-vs-the-mean-current-computed-for-each-of-the-1-000-isochrones-of-a.png" width="400"/>

- The current through singe channel $i$ can be obtained by fitting the parabola with Eq. (2)
