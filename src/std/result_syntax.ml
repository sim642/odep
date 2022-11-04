let (>>=) = Result.bind

let (let*) = Result.bind
let (let+) x f = Result.map f x
