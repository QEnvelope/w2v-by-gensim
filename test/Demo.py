# -*- coding:utf-8 -*-

import gensim


# model = gensim.models.Word2Vec.load("../wiki.zh.final.model")

# print(model.most_similar(u"数学"))

model = gensim.models.KeyedVectors.load_word2vec_format("../wiki.zh.final.vector", binary=False)
print(model.most_similar("足球"))
