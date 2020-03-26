Requirements:
numpy        1.14.5
scipy        1.3.1
scikit-learn 0.20.0
keras        2.2.4
tensorflow   1.14.0
pandas       0.25.1

All the preprocessed dataset used in the paper "Hyperbolic Node Embedding for TemporalNetworks" are in the directory "datasets" (arxiv,collegemsg,dblp,email,ppi)

How to run the code:
./pipeline_lp.sh

The default one is testing temporal link perdiction task on collegemsg dataset with dimension=20 and decay=0.3
