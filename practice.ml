let b=[1;2;3;4];;
let a=[5;6;7;8];;


let rec append l1 l2 =
  match l1 with
  | h :: t -> h :: append t l2
  | [] -> l2

let rec append2 l1 l2=
    match l1,l2 with
    | [],_ -> l2
    | _,[] -> l1
    | h::t , h1::t1 -> if h < h1 then h :: append2 t l2 else h1 :: append2 l1 t1
    ;;
let rec merge xs ys =
   match xs, ys with
   | [], _ -> ys
   | _, [] -> xs
   | hx :: txs, hy :: tys ->
       if hx < hy then hx :: merge txs ys else hy :: merge xs tys
