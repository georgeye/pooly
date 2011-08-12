%%% -------------------------------------------------------------------
%%% Author  : Andrew Berman
%%% Description :
%%%
%%% Created : Aug 4, 2011
%%% -------------------------------------------------------------------
-module(pooly_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================
start(_StartType, _StartArgs) ->	
    case pooly_sup:start_link() of 
		{ok, Pid} -> 
			{ok, Pid};
		Other -> 
			{error, Other}
	end.

stop(_State) ->    
    ok.
