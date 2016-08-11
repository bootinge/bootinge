#!/bin/bash
curl -XPUT http://localhost:9200/korean/ -d '{
  "settings": {
    "analysis": {
      "analyzer": {
        "korean" : {
          "type" : "standard",
          "tokenizer": "korean_tokenizer",
          "filter" : ["synonym", "my_keyword", "stop", "lowercase", "trim"]
        },
        "ngram_analyzer" : {
            "type" : "custom",
            "tokenizer" : "ngram_tokenizer",
            "filter" : ["synonym", "my_keyword", "lowercase", "trim"]
        },
        "edge_ngram_analyzer" : {
            "type" : "custom",
            "tokenizer" : "edge_ngram_tokenizer",
            "filter" : ["synonym", "my_keyword", "lowercase", "trim"]
        }
      },
      "tokenizer": {
        "korean_tokenizer": {
          "type": "mecab_ko_standard_tokenizer",
          "compound_noun_min_length": 100
        },
        "ngram_tokenizer" : {
            "type" : "nGram",
            "min_gram" : "1",
            "max_gram" : "5",
            "token_chars": [ "letter", "digit", "punctuation", "symbol" ]
        },
        "edge_ngram_tokenizer" : {
            "type" : "edgeNGram",
            "min_gram" : "1",
            "max_gram" : "5",
            "token_chars": [ "letter", "digit", "punctuation", "symbol" ]
        }        
      },
      "filter": {
        "my_keyword" : {
            "type" : "keyword_marker",
            "keywords" : ["ttt"]
        },
        "synonym" : {
            "type" : "synonym",
            "synonyms" : [
                "11번가, 11st",
                "g마켓, 지마켓"
            ]
        }
      }
    }
  }, 
  "mappings": {
    "movie" : {
      "analyzer" : "korean",
      "index_analyzer" : "edge_ngram_analyzer",
      "search_analyzer" : "edge_ngram_analyzer",
      "properties": {
        "title" : {
          "type": "string", 
          "fields" : {
            "h_pf" : {"type" : "string", "store" : "no", "index" : "not_analyzed", "omit_norms" : true, "index_options" : "offsets", "term_vector" : "with_positions_offsets", "include_in_all" : false, "boost": 20},
            "h_ko" : {"type" : "string", "index_analyzer" : "korean", "boost": 3},
            "h_ng" : {"type" : "string", "index_analyzer" : "ngram_analyzer", "boost": 1},
            "h_ed" : {"type" : "string", "index_analyzer" : "edge_ngram_analyzer", "boost": 2}
          }
        }
      }
    }
  }
}'

curl -XPOST 'http://localhost:9200/korean/text' -d '{"text": "아버지가 방에 들어간다"}'
curl -XGET http://localhost:9200/korean16/_analyze\?analyzer\=korean\&pretty\=true -d '아버지가 방에 들어간다.'
