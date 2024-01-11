%% @doc Hello world handler.
-module(log_in_h).

-export([init/2]).

init(Req0, Opts) ->
        Req = cowboy_req:reply(200, #{
                <<"content-type">> => <<"text/html">>
        }, <<"<!DOCTYPE html>
        <html lang='en'>
        <head>
            <meta charset='UTF-8'>
            <meta name='viewport' content='width=device-width, initial-scale=1.0'>
            <title>Login Form</title>
        </head>
        <body>
            <h2>Login</h2>
            <form action='/login' method='post'>
                <label for='username'>Username:</label>
                <input type='text' id='username' name='username' required><br><br>
        
                <label for='password'>Password:</label>
                <input type='password' id='password' name='password' required><br><br>
        
                <input type='submit' value='Login'>
            </form>
        </body>
        </html>
        ">>, Req0),
        {ok, Req, Opts}.