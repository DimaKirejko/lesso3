-module(lesson3_task1).
-export([first_word/1]).

first_word(BinText) ->
    first_word(BinText, <<>>).

first_word(<<>>, BinWord) ->
    BinWord;


first_word(<<X:8, Res/binary>>, BinWord) when X =/= 32 ->
    first_word(Res, <<BinWord/binary, X:8>>);

first_word(<<_X:8, _Res/binary>>, BinWord) ->
    BinWord.







