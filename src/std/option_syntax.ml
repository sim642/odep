let (>>=) = Option.bind

let (let*) = Option.bind
let (let+) x f = Option.map f x
