Requirements:
numpy        1.14.5
scipy        1.3.1
scikit-learn 0.20.0
keras        2.2.4
tensorflow   1.14.0
pandas       0.25.1

All the preprocessed dataset used in the paper "Hyperbolic Node Embedding for Temporal Networks" are in the directory "datasets" (arxiv,collegemsg,dblp,email,ppi)

How to run the code:
./pipeline_lp.sh

The default task is set to the temporal link prediction task on collegemsg dataset with dimension=20 and decay=0.3

Data set link:

arXiv hep-ph       http://konect.uni-koblenz.de/networks/ca-cit-HepPh

CollegeMsg         https://snap.stanford.edu/data/CollegeMsg.html

Email-Eu-core      https://snap.stanford.edu/data/email-Eu-core-temporal.html

PPI                https://github.com/urielsinger/Datasets

DBLP               http://dblp.uni-trier.de/xm
