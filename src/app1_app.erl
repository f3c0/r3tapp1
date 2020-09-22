%%%-------------------------------------------------------------------
%% @doc app1 public API
%% external change 2
%% @end
%%%-------------------------------------------------------------------

-module(app1_app).

-behaviour(application).

-export([start/2, stop/1]).

-ifdef(PROD).
-define(V1, prod).
-else.
-define(V1, noprod).
-endif.

start(_StartType, _StartArgs) ->
    io:format("app1 >>> ~p~n", [?V1]),
    app1_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
