-module(lesson3_task3).%%недороблено
-export([split/2]).

split(BinText, Delete) ->
    split(BinText,Delete, <<>>, []).

split(<<>>, _Delete, Buffer, Result) ->
    lists:reverse([Buffer | Result]);

split(<<X, Rest/binary>>, Delete, Buffer, Result) when X =:= hd(Delete) ->
    split(Rest, Delete, <<>>, [Buffer | Result]);


split(<<X, Rest/binary>>, Delete, Buffer, Result) ->
    split(Rest, Delete, <<Buffer/binary, X:8>>, Result).





