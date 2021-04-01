port module Main exposing (..)

import Platform exposing (Program)


port submit : String -> Cmd msg



-- ここを書き換える。 solveN : List String -> String な関数を作れば基本大丈夫。


solveA : List String -> String
solveA inputs =
    case List.filterMap String.toInt inputs of
        n :: a :: [] ->
            String.fromInt <| n * n - a

        _ ->
            "fail"


solveB : List String -> String
solveB inputs =
    case inputs of
        _ :: ki :: xs :: [] ->
            let
                k =
                    Maybe.withDefault 0 <| String.toInt ki

                xss =
                    List.filterMap String.toInt (String.split " " xs)
            in
            String.fromInt <| List.sum <| List.map (\x -> 2 * min (k - x) x) xss

        _ ->
            "fail"


main : Program (List String) Int msg
main =
    Platform.worker
        -- ここをsolveAなど切り替える
        { init = \inputs -> ( 0, submit <| solveB inputs )
        , update = \_ model -> ( model, Cmd.none )
        , subscriptions = \_ -> Sub.none
        }
