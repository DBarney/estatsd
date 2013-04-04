-module(estatsd_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1, enable/0, disable/0]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    estatsd_sup:start_link().

stop(_State) ->
    ok.