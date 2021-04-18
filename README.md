# Amazon_Vine_Analysis

## Overview

This repository hosts analysis for Amazon reviews for Digital Video Games. During the analysis, a temporary Relatoinal Database was set up using Amazon Web Services (AWS). Then data from Amazon's review datasets (found [here](https://s3.amazonaws.com/amazon-reviews-pds/tsv/index.txt))- specifically the review dataset for Digital Video Games; was extracted and transformed using PySpark from Google Colab platform then loaded onto the database through PostgreSQL. Additional analysis was then done (described later in the Results section)

## Resources

Languages and tools used in the analysis include:

Tools:

* PySpark
* Hadoop
* PostgreSQL
* Google Colab
* Python Pandas

Language:

* SQL
* Python

## Results

The tables ETL'd into PostgreSQL are as follows: 

* Customer Table
![customer_table](/Resources/customers_table.png)

* Products Table
![products_table](/Resources/products_table.png)

* Review ID table
![review_table](/Resources/review_id_table.png)

* Vine Table
![vine_table](/Resources/vine_table.png)

Additional analysis was done on the Vine Table data. In particular filtering off of products that have less than 20 reviews (to avoid products that could end up as outliers) and where the number of helpful comment votes is greater than or equal 50% (as a check to ensure reviews are actually useful to the consumer). These two filters are shown below.

![>20_review](/Resources/2.1.png)

![>=50%Helpful](/Resources/2.2.png)

Coincidentally, there were no reviews that were Vine reviews and a total of 1685 of filtered reviews that were not Vine reviews.

![vine=Y/N](/Resources/2.3-4.png)

The breakdown of 5-star reviews specifically can be seen by the dataframe below.

![5starReview](/Resources/2.5.png)

A total of 631 of the products reviewed had 5 stars and as shown earlier, none of them were Vine reviews. This results in a 37.44% of products receiving a 5-star-review-rating.

## Summary

There is no positivity bias for reviews of the products in this program. This is beceause there are no Vine reviews to create a bias. Referring back to the filter where vine == 'Y', there are zero entries for products that would have reviews. It could be possible to widen the scope to check further for bias by filtering for products that have more than 10 reviews rather than more than 20 reviews where there may be potentially actual Vine reviews. Alternatively, a positivity bias can be checked by adjusting the filter for more than just 5 star reviews and including 4 star reviews since 4 star reviews would still be positive just not a perfect 5.