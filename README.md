# Word2vec 4 Wikipedia
Train Word2vec Model based on Wikipedia by Python Gensim

preprocess:
python3 process_wiki.py *.bz2 outfileName
如果是中文需要执行简繁转换,分词，编码转换等

train:
python3 train_word2vec_model.py fileName modelName vectorName

load:
gensim.models.KeyedVectors.load_word2vec_format("../wiki.zh.final.vector", binary=False)
或
gensim.models.Word2Vec.load("../wiki.zh.final.model")