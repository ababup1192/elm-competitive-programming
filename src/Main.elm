module Main exposing (..)

import Platform exposing (Program)


main : Program () Int msg
main =
    Platform.worker
        { init = \_ -> ( 0, Cmd.none )
        , update = \_ model -> ( model, Cmd.none )
        , subscriptions = \_ -> Sub.none
        }
