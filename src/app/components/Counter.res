@@directive("'use client'")

type action = Inc | Dec
type state = {count: int}

let reducer = (state, action) => {
  switch action {
  | Inc => {count: state.count + 1}
  | Dec => {count: state.count - 1}
  }
}

@react.component
let make = () => {
  let (state, dispatch) = React.useReducer(reducer, {count: 0})

  let className = "bg-teal-600 hover:bg-teal-500 px-4 py-1 min-w-8"

  <>
    {React.string("Count: " ++ Belt.Int.toString(state.count))}
    <div className="flex gap-2">
      <button className onClick={_ => dispatch(Dec)}> {React.string("-")} </button>
      <button className onClick={_ => dispatch(Inc)}> {React.string("+")} </button>
    </div>
  </>
}
