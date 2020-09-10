type keloboo = Tru | Fls

type kelo = Kek of keloboo | Lol | Heh

let heho a = 
    match a with
        | Lol -> Fls
        | Kek (_) -> Tru
        | _ -> Fls