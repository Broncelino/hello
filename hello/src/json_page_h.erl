%% @doc Hello world handler.
-module(json_page_h).

-export([init/2]).

init(Req0, Opts) ->
    JsonString = <<"
{
  \"name\": \"John Doe\",
  \"age\": 30,
  \"city\": \"New York\",
  \"isStudent\": false,
  \"hobbies\": [\"reading\", \"coding\", \"hiking\"],
  \"address\": {
    \"street\": \"123 Main St\",
    \"city\": \"Anytown\",
    \"zipCode\": \"12345\"
  }
}
">>,
    Req = cowboy_req:reply(200, #{
        <<"content-type">> => <<"application/json">>
    }, JsonString, Req0),
    {ok, Req, Opts}.
