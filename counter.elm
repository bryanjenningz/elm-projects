import Html exposing (button, div, text)
import Html.Events exposing (onClick)
import StartApp.Simple as StartApp

main = StartApp.start { model = model, update = update, view = view }

type Action = Increment | Decrement

model = 0

view address model =
  div []
  [ button [ onClick address Increment ] [ text "+" ]
  , div [] [ text "Points: ", text (toString model) ]
  , button [ onClick address Decrement ] [ text "-" ]
  ]

update action model =
  case action of
    Increment -> model + 1
    Decrement -> model - 1
